import * as d3 from '../../scripts/lib/d3.js'
import './state-accordion-item.tag'

<state-accordion class={ getClass() }>
  <state-accordion-item
    ref='state-accordion-item'
    each={ states }
    state={ name }
    active={ parent.active === id}
    data={ parent.getData(id) }
  />

  this.statesData = this.opts.data.statesData

  this.states = this.opts.config.states.sort((a, b) => {
    return this.statesData[b.id].t_all_rel - this.statesData[a.id].t_all_rel
  })

  this.ratio = 100 / d3.max(Object.keys(this.opts.data.statesData).map(k => +this.opts.data.statesData[k].t_all_rel))

  this.onClick = ({item}) => {
    const active = this.active === item.id ? null : item.id
    this.update({active})
  }

  this.getData = id => {
    const {statesData, districtsData} = this.opts.data
    const data = statesData[id]
    data.districts = {}
    districtsData.filter(d => d.state === id).map(d => {
      data.districts[d.rs] = d
    })
    return data
  }
</state-accordion>
