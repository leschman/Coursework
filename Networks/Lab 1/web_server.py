#import socket module 
from socket import *
PORT = 8000                                   
serverSocket = socket(AF_INET, SOCK_STREAM) 

#Prepare a sever socket
serverSocket.setsockopt(SOL_SOCKET, SO_REUSEADDR, 1)
serverSocket.bind(('localhost',PORT))
serverSocket.listen(1) 

while True: 
    #Establish the connection 
    print 'Ready to serve...' 
    connectionSocket, addr = serverSocket.accept()
    print 'connected to: ', addr
    try: 
        message =  '' ###Fill in start          ###Fill in end
        filename = message.split()[1]                  
        f = open(filename[1:])                         
        outputdata = ''###Fill in start       ###Fill in end                    
        #Send one HTTP header line into socket 
        ###Fill in start 
        ###Fill in end                 
        #Send the content of the requested file to the client 
        for i in range(0, len(outputdata)):
            connectionSocket.send(outputdata[i]) 
        connectionSocket.close() 
    except IOError:
        print 'error'
        #Send response message for file not found 
        ###Fill in start         
        ###Fill in end 
        #Close client socket 
        ###Fill in start 
        ###Fill in end             
serverSocket.close()   
