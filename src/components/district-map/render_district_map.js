import * as topojson from 'topojson'
import * as d3 from '../../scripts/lib/d3.js'
import getColor from './get_color.js'

const topoSrc = require('json!../../data/landkreise_simplify200.topo.json')
const geoSrc = topojson.feature(topoSrc, topoSrc.objects.landkreise_sim200)

export default ({stateId, getClass, data}) => {

  const geoData = {
    type: geoSrc.type,
    crs: geoSrc.crs,
    features: geoSrc.features.filter(f => f.properties.SN_L === stateId).map(f => {
      f.properties = data[f.properties.RS]
      return f
    })
  }

  const path = d3.geoPath().projection(d3.geoMercator())
  path.projection().fitSize([500, 500], geoData)

  d3.select(`[data-d3="${stateId}"]`)
    .append('svg')
      .attr('preserveAspectRatio', 'xMinYMin meet')
      .attr('viewBox', '0 0 500 500')
      .attr('class', getClass('svg'))
    .append('g').selectAll('path').data(geoData.features).enter().append('path')
      .attr('class', getClass('path'))
      .attr('d', path)
      .attr('fill', d => getColor(d.properties.t_all_rel))
}
