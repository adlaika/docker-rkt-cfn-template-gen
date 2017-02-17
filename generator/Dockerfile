FROM debian:jessie

RUN apt-get update \
  && apt-get install -y curl \
  && rm -rf /var/lib/apt/lists/*

RUN curl http://mirror.racket-lang.org/installers/6.8/racket-minimal-6.8-x86_64-linux.sh >install.sh
RUN bash install.sh
ENV PATH /usr/racket/bin:$PATH

# packages install, but report error on building docs, so exit 0
RUN raco pkg install --auto scripty; exit 0
RUN raco pkg install --auto aws-cloudformation-template-lib; exit 0

COPY ./entrypoint.sh /

VOLUME /templates

ENTRYPOINT [ "./entrypoint.sh" ]
