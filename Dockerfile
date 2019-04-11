FROM alpine:3.8

LABEL "com.github.actions.name"="rebase-check"
LABEL "com.github.actions.description"="Fail commit/branch status if needs rebase against master."
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/pvdvreede/rebase-check-action"
LABEL "homepage"="http://github.com/pvdvreede"
LABEL "maintainer"="pvdvreede"

RUN apk add -U git bash curl
COPY ./rebase-check /usr/bin/

ENTRYPOINT [ "/usr/bin/rebase-check" ]
