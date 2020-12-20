import jester
const port{.intdefine.} = 8888

router myrouter:
  get "/":
    const data = "Hello, World!"
    resp data, "text/plain"
  get "/@p1/@p2":
    const data = "Hello, World!"
    resp data, "text/plain"

when isMainModule:
  let p = port.Port
  let conf = newSettings(port=p)
  var server = initJester(myrouter, settings=conf)
  server.serve()