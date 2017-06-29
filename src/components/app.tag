import './state-accordion/state-accordion.tag'
import './state-accordion/accordion-legend.tag'

<cor-mj-states-accordion class={ getClass('app-wrapper') }>
  <accordion-legend ref='accordion-legend' />
  <state-accordion ref='state-accordion' data={ opts.data } config={ opts.config }/>
  <accordion-legend ref='accordion-legend' />
</cor-mj-states-accordion>
