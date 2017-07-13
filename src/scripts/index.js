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
riot.mixin(getClass(config.global.cssNamespace))

// data
import data from '../data/entry.js'

// mount app
import '../components/app.tag'
riot.mount('[data-riot-mount="cor-mj-states-accordion"]',
  'cor-mj-states-accordion', {config, data}
)
