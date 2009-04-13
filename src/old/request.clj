(ns src.redwine.request)

(defn headers
  "Returns the raw headers for the request."
  [req]
  (:headers req))