FROM centos:centos7
ADD loop.sh /bin/uuidgen-loop.sh
RUN chmod 755 /bin/uuidgen-loop.sh
ENTRYPOINT ["/bin/uuidgen-loop.sh"]
CMD ["10"]
