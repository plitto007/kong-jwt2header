local typedefs = require "kong.db.schema.typedefs"

return {
  name = "kong-jwt2header",
  fields = {
    {
      consumer = typedefs.no_consumer,
    },
    {
      protocols = typedefs.protocols_http,
    },
    {
      config = {
        type = "record",
        fields = {
            {  strip_claims = { type     = "string", required = true, default  = "false" }, },
            {  token_required = { type     = "string", required = true, default  = "true" }, },          
        },
      },
    },
  },
}
