import '../entypo/entypo-svg.tag'

<district-infobox class={ getClass() }>
  <header class={ getClass('header') }>
    <h3 class={ getClass('title') }>{ opts.state }</h3>
    <span class={ getClass('population') }><strong>{ opts.data.t_total_pop }</strong>&nbsp;Einwohner</span>
  </header>

  <section class={ getClass('section') }>
    <h4 class={ getClass('section__title') }>Anteil der Minijobber</h4>
    <span class={ getClass('annotation') }>Anteil der <strong>ausschließlich geringfügig Beschäftigten</strong> an der Gesamtbevölkerung</span>
    <dl>
      <dt>{ opts.data.f_main_rel }&nbsp;%</dt>
      <dt class="-small">{ opts.data.f_main }</dt>
      <dd class="badge --color-bg-female">Frauen</dd>
    </dl>
    <dl>
      <dt>{ opts.data.m_main_rel }&nbsp;%</dt>
      <dt class="-small">{ opts.data.m_main }</dt>
      <dd class="badge --color-bg-male">Männer</dd>
    </dl>
    <dl>
      <dt>{ opts.data.t_main_rel }&nbsp;%</dt>
      <dt class="-small">{ opts.data.t_main }</dt>
      <dd class="badge --color-bg-total">Gesamt</dd>
    </dl>
    <span class="-clear-" />
    <a href="/" class={ getClass('download-url') }>
      <entypo-svg symbol="download" />Kreise</a>
    <a href="/" class={ getClass('download-url') }>
      <entypo-svg symbol="download" />Gemeinden</a>
    <span class="-clear-" />
    <span class={ getClass('download-annotation') }>
      Minijobs-Daten als CSV-Tabelle zum Download für alle Kreise und Gemeinden in { opts.state }.
    </span>
  </section>
</district-infobox>
