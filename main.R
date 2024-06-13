box::use(. / m1[foo])

pryr::object_size(foo)

box::use(. / m2[bar])

pryr::object_size(foo)
pryr::object_size(bar)

ls(environment(foo))
ls(environment(bar))

box::use(. / m3[baz])

pryr::object_size(foo)
pryr::object_size(bar)
pryr::object_size(baz)
