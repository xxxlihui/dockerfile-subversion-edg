FROM registry.cn-hangzhou.aliyuncs.com/lhn/jre8-python2:1

MAINTAINER lhn <cabopkll@sina.com>

WORKDIR /var/sytech

RUN addgroup -S svn && adduser -S svn svn
USER svn

RUN  \
     curl -o svn.tar https://file.seater.cn/svn/CollabNetSubversionEdge-5.2.2_linux-x86_64.tar \
    && tar -xvf svn.tar \
    && rm -f svn.tar

WORKDIR /var/sytech/csvn

CMD ["bin/csvn start"]
