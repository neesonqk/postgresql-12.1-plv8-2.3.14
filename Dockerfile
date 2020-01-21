FROM postgres:12.1

RUN apt-get -y update
RUN apt-get install libc++-dev -y

COPY plv8-2.3.14.so /usr/lib/postgresql/12/lib/
COPY plv8--2.3.14.sql /usr/share/postgresql/12/extension/
COPY plv8.control /usr/share/postgresql/12/extension/


####################################################################################################
# To compile from the source code, enable below dependencies, comment out above lines from 3 - 8.###
####################################################################################################

# ADD plv8-2.3.14 /plv8

# RUN apt-get -y update
# RUN apt-get install libc++-dev -y
# RUN apt-get install subversion -y
# RUN apt-get install git -y
# RUN apt-get install make -y
# RUN apt-get install python -y
# RUN export GYP_CHROMIUM_NO_ACTION=0
# RUN apt-get install libtinfo5 -y
# RUN apt-get install g++ -y

# RUN apt-get install postgresql-server-dev-12 -y

# RUN apt-get install python-psycopg2 -y

# RUN cd plv8 && make static

 