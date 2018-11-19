def optimized_binary(name, **kwargs):
    in_file = name + '.in'
    out_file = name + '.cc'
    native.genrule(
        name = name + "_optimize",
        srcs = [ in_file ],
        outs = [ out_file ],
        tools = [ "//src/optimize" ],
        cmd = "$(location //src/optimize) <$< >$@",
    )
    native.cc_binary(
        name = name,
        srcs = [ out_file ],
        **kwargs
    )
