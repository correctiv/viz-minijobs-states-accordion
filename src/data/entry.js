import * as d3 from '../scripts/lib/d3.js'

const statesData = {}
d3.csvParse(require('raw!./states.csv')).map(d => statesData[d.state] = d)

const districtsData = d3.csvParse(require('raw!./districts.csv'))

module.exports = {statesData, districtsData}
