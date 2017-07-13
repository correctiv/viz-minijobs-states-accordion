'use strict'

if (module.hot) {
  module.hot.accept()
}

// import 'babel-polyfill'
import '../styles/index.scss'

// load config
const config = require('json!../config.json')

// mixins
import getClass from './mixins/class_name.js'
import numberFormat from './mixins/number_format.js'
riot.mixin(getClass(config.global.cssNamespace))
riot.mixin(numberFormat)

// data
import data from '../data/entry.js'

// app component
import '../components/app.tag'

// get path from data attribute
const selector = '[data-riot-mount="cor-mj-states-accordion"]'
const element = document.querySelector(selector)
if (element) {
  const path = element.dataset.path
  config.path = path ? path + 'dist' : ''

  // mount app
  riot.mount(selector, 'cor-mj-states-accordion', {config, data})
}
