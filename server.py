from SimpleHTTPServer import SimpleHTTPRequestHandler
from SimpleHTTPServer import test as run_server 
from subprocess import call

class BookServer(SimpleHTTPRequestHandler):
    """The stupidest possible server that will run make.py for us when we request
    a directory or an HTML file."""
    def do_GET(self):
        if self.path.endswith("/") or self.path.endswith(".html"):
            self.log_message("running make.py")
            call("./make.py", shell=True)
        SimpleHTTPRequestHandler.do_GET(self)

if __name__ == "__main__":
    run_server(HandlerClass=BookServer)
