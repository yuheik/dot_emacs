;; proxy
(setq url-proxy-services
      ;; '(("http" . "proxy.kanto.sony.co.jp:10080")
      ;;   ("https" . "proxy.kanto.sony.co.jp:10080")))
      '(("http" . "proxy.rmt.sony.co.jp:10080")
        ("https" . "proxy.rmt.sony.co.jp:10080")))
(setq url-http-proxy-basic-auth-storage
      ;; '(("proxy.kanto.sony.co.jp:10080" ("Proxy" . "base64string"))))
      '(("proxy.rmt.sony.co.jp:10080" ("Proxy" . "base64string"))))
