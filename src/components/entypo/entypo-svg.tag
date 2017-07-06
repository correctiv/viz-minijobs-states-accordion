const symbols = {
  download: require('raw!./download.svg'),
  info: require('raw!./info-with-circle.svg'),
  close: require('raw!./circle-with-cross.svg')
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
