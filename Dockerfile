FROM bash:5.0.18

COPY script.sh /

CMD ["bash", "/script.sh"] 