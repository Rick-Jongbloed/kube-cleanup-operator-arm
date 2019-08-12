    
FROM arm32v7/alpine
#MAINTAINER Sergey Nuzhdin <ipaq.lw@gmail.com>
RUN addgroup -S kube-operator && adduser -S -g kube-operator kube-operator
USER kube-operator
COPY kube-cleanup-operator .
RUN pwd && ls -la && ls -la / && ls .
ENTRYPOINT ["/kube-cleanup-operator"]