#!/usr/bin/env python
import pika
credentials = pika.PlainCredentials('user','password')
parameters = pika.ConnectionParameters(host='localhost',credentials=credentials)
connection = pika.BlockingConnection()
channel = connection.channel()
channel.queue_declare(queue='BOYS',durable=True,passive=True)
channel.basic_publish(exchange='test-x',
                      routing_key='hello',
                      body='Hello World!')
print(" [x] Sent 'Hello World!'")
connection.close()
