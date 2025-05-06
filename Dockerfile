FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    wget\
    python3\
    python3-pip
COPY search_path.sh /tmp/search_path.sh \
     exstract_path_value.py /tmp/exstract_path_value.py \
     config.txt /tmp/config.txt
RUN chmod +x /tmp/search_path.sh && /tmp/exstract_path_value.py
