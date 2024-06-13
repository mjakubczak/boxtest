# Box object size issue - minimal example

## With renv

```
docker build -t boxtest_renv -f Dockerfile_renv .
docker run boxtest_renv
```

Output
```
>>> loading object foo from m1
object foo size
188.04 kB

>>> loading object bar from m2
object foo size
195.20 kB
object bar size
195.20 kB

foo environment
[1] "dummy" "foo"  
bar environment
[1] "bar"

>>> loading object baz from m3
object foo size
203.02 kB
object bar size
203.02 kB
object baz size
203.02 kB
```

## Without renv

```
docker build -t boxtest_norenv -f Dockerfile_norenv .
docker run boxtest_norenv
```

```
>>> loading object foo from m1
object foo size
24.75 kB

>>> loading object bar from m2
object foo size
24.75 kB
object bar size
22.64 kB

foo environment
[1] "dummy" "foo"  
bar environment
[1] "bar"

>>> loading object baz from m3
object foo size
24.75 kB
object bar size
22.64 kB
object baz size
23.44 kB
```
