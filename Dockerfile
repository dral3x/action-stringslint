FROM dral3x/stringslint:swift-5
LABEL version="1.1.0"
LABEL repository="https://github.com/dral3x/action-stringslint"
LABEL homepage="https://github.com/dral3x/action-stringslint"
LABEL maintainer="Alessandro Calzavara <alessandro.calzavara@gmail.com>"

LABEL "com.github.actions.name"="GitHub Action for StringsLint"
LABEL "com.github.actions.description"="Ensure your localized strings are complete and never unused."
LABEL "com.github.actions.icon"="shield"
LABEL "com.github.actions.color"="orange"

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
