FROM cadquery/oce:latest
LABEL source="https://github.com/CadQuery/pythonocc-core/tree/master/Dockerfile" \
      issues="https://github.com/CadQuery/pythonocc-core/issues" \
      license="https://github.com/CadQuery/pythonocc-core/blob/master/LICENSE"

# Install dependencies
RUN apt-get install -y swig python3 python3-dev python3-pip
RUN pip3 install six
# pyparsing

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/
COPY . /pythonocc-core
WORKDIR /pythonocc-core
RUN mkdir cmake-build

RUN cd cmake-build && \
    cmake -DOCE_INCLUDE_PATH=/usr/local/include/oce -DOCE_LIB_PATH=/usr/local/lib ..

RUN cd cmake-build && \
    make -j$(nproc)

RUN cd cmake-build && \
    make install

RUN rm -rf cmake-build

RUN cd test && \
    python3 run_tests.py
