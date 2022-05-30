FROM cp.icr.io/cp/appc/ace-server-prod@sha256:f31b9adcfd4a77ba8c62b92c6f34985ef1f2d53e8082f628f170013eaf4c9003
ENV LICENSE accept
COPY bars /home/aceuser/initial-config/bars
USER 0
RUN bash -c "cd /home/aceuser \ 
 && export LICENSE=accept \ 
 && chmod -R 777 /home/aceuser/initial-config/bars"
USER aceuser
