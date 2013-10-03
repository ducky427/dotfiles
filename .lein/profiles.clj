{:user {:dependencies [[org.clojure/tools.namespace "0.2.4"]
                       [spyscope "0.1.3"]
                       [criterium "0.4.2"]]
        :plugins [[lein-cloverage "1.0.2"]
                  [lein-vanity "0.1.0"]
                  [lein-ancient "0.4.4"]
                  [lein-kibit "0.0.8"]]
        :injections [(require '(clojure.tools.namespace repl find))
                     ; try/catch to workaround an issue where `lein repl` outside a project dir
                     ; will not load reader literal definitions correctly:
                     (try (require 'spyscope.core)
                       (catch RuntimeException e))]}}
