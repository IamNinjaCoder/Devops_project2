from flask import Flask
app = Flask(__name__)

@app.route('/get-ip', methods=['GET'])
def create_app():
    import socket

# Get the hostname of the local machine
    hostname = socket.gethostname()

    # Get the IP address associated with the hostname
    try:
        ip_address = socket.gethostbyname(hostname)
        print(f"Hostname: {hostname}")
        print(f"IP Address: {ip_address}")
    except socket.gaierror:
        print("Could not resolve hostname to IP address.")

app.run(host="0.0.0.0",port=5000, debug=True)
