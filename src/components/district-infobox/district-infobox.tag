import '../entypo/entypo-svg.tag'

<district-infobox class={ getClass() }>
  <header class={ getClass('header') }>
    <h3 class={ getClass('title') }>{ opts.state.name }</h3>
    <span class={ getClass('population') }><strong>{ opts.data.t_total_pop }</strong>&nbsp;Einwohner</span>
  </header>

  <section class={ getClass('section') }>
    <span class={ getClass('annotation') }><strong>Ausschließlich</strong> geringfügig Beschäftigte (25-65 Jahre)</span>
    <dl>
      <dt>{ _f(opts.data.f_main_rel) }&nbsp;%</dt>
      <dt class="-small">{ opts.data.f_main }</dt>
      <dd class="badge --color-bg-female">Frauen</dd>
    </dl>
    <dl>
      <dt>{ _f(opts.data.m_main_rel) }&nbsp;%</dt>
      <dt class="-small">{ opts.data.m_main }</dt>
      <dd class="badge --color-bg-male">Männer</dd>
    </dl>
    <dl>
      <dt>{ _f(opts.data.t_main_rel) }&nbsp;%</dt>
      <dt class="-small">{ opts.data.t_main }</dt>
      <dd class="badge --color-bg-total">Gesamt</dd>
    </dl>
    <span class="-clear-" />
    <h4 class={ getClass('section__title') }>Tabellarische Daten</h4>
    <a href={ getUrl('kreise', 'csv') } class={ getClass('download-url') }>
      <entypo-svg symbol="download" />Kreise</a>
    <a href={ getUrl('gemeinden', 'csv') } class={ getClass('download-url') }>
      <entypo-svg symbol="download" />Gemeinden</a>
    <span class="-clear-" />
    <span class={ getClass('download-annotation') }>
      Minijobs-Daten als CSV-Tabelle zum Download
    </span>
    <h4 class={ getClass('section__title') }>Geo-Daten</h4>
    <a href={ getUrl('kreise', 'geojson') } class={ getClass('download-url') }>
      <entypo-svg symbol="download" />Kreise</a>
    <a href={ getUrl('gemeinden', 'geojson') } class={ getClass('download-url') }>
      <entypo-svg symbol="download" />Gemeinden</a>
    <span class="-clear-" />
    <span class={ getClass('download-annotation') }>
      Minijobs-Daten als <a href="http://geojson.org/">GeoJSON</a> zum Download
    </span>
  </section>

  this.getUrl = (suffix, format) => `${this.opts.path}/data/minijobs_${this.opts.state.slug}_${suffix}.${format}`
</district-infobox>
