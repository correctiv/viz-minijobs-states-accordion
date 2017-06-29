// store
// const S = {
//   breakpoint: null,
//   getActiveBreakpoint: null
// }

// event names
const E = {
  // windowResize: 'w',
  // breakpointChanged: 'b',
  updateTooltip: 'u'
}

// event bus
const C = riot.observable()

// trigger actual breakpoint
// C.on(E.windowResize, width => {
//   const bp = S.getActiveBreakpoint(width)
//   if (S.breakpoint !== bp) {
//     S.breakpoint = bp
//     C.trigger(E.breakpointChanged, bp)
//   }
// })

// make available
// riot.STORE = S
riot.EVT = E
riot.control = C
