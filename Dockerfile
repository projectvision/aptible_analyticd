FROM relateiq/oracle-java8
MAINTAINER Varun Gupta vxg@projectvisionhealth.com

RUN apt-get update -y
RUN apt-get install -y vim
RUN apt-get install -y unzip

RUN mkdir -p /usr/local/

#Copy the analyticsd folder to correct location.
COPY analyticsd /usr/local/analyticsd

RUN mkdir -p /usr/local/analyticsd/conf
COPY analyticsdOverride.properties /usr/local/analyticsd/conf/
