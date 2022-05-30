FROM cp.icr.io/cp/appc/ace-server-prod@sha256:04bc376391a00ff1923d9122f93911b0f8e9700c7dda132f24676e383c0283cc
COPY bars /home/aceuser/initial-config/bars
USER 0
RUN bash -c "cd /home/aceuser \ 
 && export LICENSE=accept \ 
 && chmod -R 777 /home/aceuser/initial-config/bars"
USER aceuser
