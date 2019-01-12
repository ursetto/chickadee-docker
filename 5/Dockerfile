FROM chicken:5.0.0-alpine

WORKDIR /usr/src

# Explicitly install most dependencies ahead of time so we don't need to
# rebuild them when our source changes.
RUN chicken-install \
        fmt \
        matchable \
        regex \
        srfi-1 \
        srfi-13 \
        srfi-69 \
        sxml-transforms

# html-parser
# svnwiki-sxml

# Try to split these up so a change to chickadee doesn't require a rebuild
# of the world. But it will require a rebuild of all chickadee dependencies,
# since there is no separate step for dependency build.

COPY ./src/chicken-doc /usr/src/chicken-doc
RUN cd chicken-doc && chicken-install
COPY ./src/chicken-doc-admin /usr/src/chicken-doc-admin
RUN cd chicken-doc-admin && chicken-install
COPY ./src/chickadee /usr/src/chickadee
RUN cd chickadee && chicken-install

# Chicken doesn't have a way to only build deps of an egg.
# You could hack this by taking the .egg file, stripping out
# everything except the dependencies section, putting the result in a
# temp dir, and `chicken-install -n` from there.

# But even so, a change to chicken-doc-admin would force a redownload
# of all chickadee deps. We might hack around this be manually installing
# some common deps as a first step, such as fmt, utf8, and srfi-*.

# The chicken5 install cache could come in handy if kept on a persistent
# volume, but I don't think you can do this during the Docker build phase.

# Once the container is up, you can chicken-install without penalty. So
# instead of recreating the container and COPYing files anew on each
# compilation, you may just want to mount the source directories into
# the container, and do your work live.

EXPOSE 8080

COPY init.sh /usr/src

CMD ["sh"]
#CMD ["chickadee", "serve"]
