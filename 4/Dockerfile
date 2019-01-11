FROM chicken4:4.13.0

# I'll need to figure out the build cache and development workflow
# to determine which dependencies to install in a separate RUN step.

# Also, for development, we want to build from local source, not
# henrietta. This may be true for some dependencies as well, which
# makes things more complicated.

RUN chicken-install chickadee

EXPOSE 8080

# Need to create a chicken-doc repository, either here, in a separate
# container (mounted in us), or mounting local dir.
# Untested: if file locking works properly.

# VOLUME /Users/jim/scheme/chicken-doc-admin/4:/usr/local/share/chicken/chicken-doc:ro

# FIXME: chicken-doc relies on 'less'. Not required for chickadee, but useful in
# development.
RUN ln -s /bin/more /bin/less

CMD ["chickadee", "serve"]
