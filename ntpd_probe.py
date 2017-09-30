import ntplib
import sys
import logging

ip = '127.0.0.1'
port = 123

try:
    client = ntplib.NTPClient()
    response = client.request(ip, port=port, version=3)
    logging.info('NTP probe offset:{}'.format(response.offset))
except:
    logging.error('NTP probe error')
    sys.exit(1)
