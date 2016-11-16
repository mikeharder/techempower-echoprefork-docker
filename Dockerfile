FROM golang                              
                                         
EXPOSE 8080                              
                                         
WORKDIR /app                             
COPY . .                                 
                                         
ENV GOPATH=/app                          
                                         
RUN go get github.com/labstack/echo/...  
RUN go get github.com/lib/pq             
RUN go get github.com/valyala/fasthttp   
RUN go get github.com/valyala/tcplisten  
                                         
WORKDIR /app/src/github.com/labstack/echo
RUN git checkout v2                      
WORKDIR /app                             
                                         
RUN go install standard fasthttp         
                                         
CMD bin/fasthttp -prefork
