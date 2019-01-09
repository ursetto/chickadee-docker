Chickadee compiles and works fine on
  - chicken4:4.13.0, FROM buildpack-deps:stretch + no deps (859MB)
  - chicken4:4.13.0-slim, FROM debian:stretch-slim + deps  (186MB)
  - chicken4:4.13.0-alpine, FROM alpine:3.8 + deps (128MB)
  
Note much of the size of alpine is from installed gcc. If we can remove it somehow (by uninstalling and squashing, or by copying the contents of /usr/local/share/chicken into a clean image) then a production deploy could be tiny.
