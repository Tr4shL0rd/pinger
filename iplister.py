ip = input ("enter first 3 blocks of the ip(eg. 192.168.254.): ")
ip = str(ip)

if len(ip) > 10:
    ip = ip[:-1]
    endIP = input ("enter the ip address you want to stop on(eg. 255): ")
    for i in range(0,endIP):
        print (str(ip) + str(i))
else:
    endIp = input ("enter the ip address you want to stop on(eg. 255): ")
    for i in range(0,endIP):
        print (str(ip) + str(i))
#print(ipRes)
