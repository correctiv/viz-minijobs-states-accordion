<stacked-div-bar class={ getClass() }>

  <div each={ opts.values }
    class="{ getClass('stacked-div') } --color-bg-{ colorClass }"
    style='width:{ value * parent.opts.ratio }%;'>
    <span class={ getClass('stacked-div__label') }>{ _f(value) }&nbsp;%</span>
  </div>

</stacked-div-bar>
