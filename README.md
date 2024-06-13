# Box object size issue - minimal example

## With renv

```
docker build -t boxtest_renv -f Dockerfile_renv .
docker run boxtest_renv
```

Output
```
> box::use(. / m1[foo])
> 
> pryr::object_size(foo)
188.04 kB
> 
> box::use(. / m2[bar])
> 
> pryr::object_size(foo)
195.20 kB
> pryr::object_size(bar)
195.20 kB
> 
> ls(environment(foo))
[1] "dummy" "foo"  
> ls(environment(bar))
[1] "bar"
> 
> box::use(. / m3[baz])
> 
> pryr::object_size(foo)
203.02 kB
> pryr::object_size(bar)
203.02 kB
> pryr::object_size(baz)
203.02 kB

```

## Without renv

```
docker build -t boxtest_norenv -f Dockerfile_norenv .
docker run boxtest_norenv
```

Output
```
> box::use(. / m1[foo])
> 
> pryr::object_size(foo)
24.75 kB
> 
> box::use(. / m2[bar])
> 
> pryr::object_size(foo)
24.75 kB
> pryr::object_size(bar)
22.64 kB
> 
> ls(environment(foo))
[1] "dummy" "foo"  
> ls(environment(bar))
[1] "bar"
> 
> box::use(. / m3[baz])
> 
> pryr::object_size(foo)
24.75 kB
> pryr::object_size(bar)
22.64 kB
> pryr::object_size(baz)
23.44 kB
```
