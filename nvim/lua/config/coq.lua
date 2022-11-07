vim.g.coq_settings = {
    auto_start = true,
}

require("coq_3p") {
  { src = "nvimlua", short_name = "nLUA", conf_only = true },
}
