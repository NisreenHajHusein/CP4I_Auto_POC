FROM cp.icr.io/cp/appc/ace-server-prod@sha256:0214e90f08f57574f02b39d847180f7502cc1c17fe93a31829f11f9b8a7794d1
ENV LICENSE accept
COPY bars /home/aceuser/initial-config/bars
USER 0
RUN bash -c "cd /home/aceuser \ 
 && export LICENSE=accept \ 
 && chmod -R 777 /home/aceuser/initial-config/bars"
USER aceuser
