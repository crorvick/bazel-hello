def not_really_a_test(name, binary):
    native.sh_test(
        name = name,
        srcs = [ "test.sh" ],
        args = [ "$(location %s)" % binary ],
        data = [ binary ],
    )
