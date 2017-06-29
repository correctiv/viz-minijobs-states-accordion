const symbols = {
  download: require('raw!./download.svg'),
  info: require('raw!./info-with-circle.svg')
}

<entypo-svg class="entypo-svg">

  this.updateContent = () => {
    this.root.innerHTML = symbols[this.opts.symbol]
  }

  this.on('update', () => {
    this.updateContent()
  })

  this.updateContent()
</entypo-svg>
