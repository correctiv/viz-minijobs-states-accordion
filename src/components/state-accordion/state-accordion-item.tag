import '../div-bar/stacked-div-bar.tag'
import '../district-map/district-map.tag'
import '../district-infobox/district-infobox.tag'
import '../entypo/entypo-svg.tag'

<state-accordion-item class="{ getClass() } { -active: opts.active }">

  <header class={ getClass('header') } onclick={ parent.onClick }>
    <h3 class={ getClass('header__title') }>{ opts.state.name }</h3>
    <span class={ getClass('header__subtitle') }>Insgesamt: { opts.data.t_all_rel }&nbsp;%</span>
    <span class='-clear-' />
  </header>
  <div class={ getClass('bar-wrapper') } onclick={ parent.onClick }>
    <stacked-div-bar values={ stackedValues } ratio={ parent.ratio / 2 }/>
  </div>
  <span class='-clear-' />
  <div class={ getClass('info-btn') } onclick={ parent.onClick }>
    <entypo-svg symbol={ opts.active ? 'close' : 'info' }/>
  </div>
  <section class={ getClass('info-container') }>
    <section class={ getClass('info-section') }>
      <section class={ getClass('info-section__section') }>
        <district-map ref='district-map' data={ opts.data } />
      </section>
      <section class={ getClass('info-section__section') }>
        <district-infobox ref='district-infobox' data={ opts.data } state={ opts.state } />
      </section>
    </section>
  </section>

  this.stackedValues = ['f_all_rel', 'm_all_rel'].map((k, i) => {
    return {
      value: this.opts.data[k],
      colorClass: ['female', 'male'][i]
    }
  })

</state-accordion-item>
