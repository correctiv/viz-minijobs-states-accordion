import './district-map-legend.tag'
import renderDistrictMap from './render_district_map.js'

<district-map class={ getClass() }>

  <div data-d3={ opts.data.state } class={ getClass('d3-container') }/>
  <district-map-legend ref='district-map-legend' />

  this.on('mount', () => {
    renderDistrictMap({
      stateId: this.opts.data.state,
      getClass: n => `${this.getClass()}__${n}`,
      data: this.opts.data.districts
    })
  })

</district-map>
