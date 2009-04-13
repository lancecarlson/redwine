(ns src.redwine.server
  (:use src.redwine.request)
  (:require (ring backtrace file-info file dump jetty))
  (:import (java.io File)))

(def app
  (ring.backtrace/wrap
    (ring.file-info/wrap
      (ring.file/wrap (File. "public")
        (fn [req]
          ;(println (headers req))
          (if (= "/error" (:uri req))
            (throw (Exception. "Demonstrating ring.backtrace"))
            (ring.dump/app req)))))))
                   
(ring.jetty/run {:port 8080} app)