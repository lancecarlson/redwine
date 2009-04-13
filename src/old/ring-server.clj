(ns ring.examples.hello-world
  (:require ring.jetty)
  (:import java.util.Date java.text.SimpleDateFormat))
 
(def formatter (SimpleDateFormat. "HH:mm:ss"));
 
(defn app
  [req]
  {:status  200
   :headers {"Content-Type" "text/html"}
   :body    (str "<h3>Hello World from Ring</h3>"
                 "<p>The current time is " 
                 (.format formatter (Date.)) ".</p>")})
 
(ring.jetty/run {:port 8080} app)