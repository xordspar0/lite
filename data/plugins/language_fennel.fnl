(local syntax (require :core.syntax))

(syntax.add {:files "%.fnl$"
             :comment ";"
             :patterns {1 {:type :comment :pattern ";.-\n"}
                        2 {:type :string :pattern {1 "\"" 2 "\"" 3 "\\"}}
                        3 {:type :number :pattern "0x[%da-fA-F]+"}
                        4 {:type :number :pattern "-?%d+[%d%.]*"}
                        5 {:type :number :pattern "-?%.?%d+"}
                        6 {:type :function :pattern "%f[^(][^()'%s\"]+"}
                        7 {:type :symbol :pattern "[^()'%s\"]+"}}
             :symbols {:nil :literal
                       :not :keyword2
                       :or :keyword2
                       :set-forcibly! :keyword2
                       :true :literal
                       :while :keyword2
                       :include :keyword2
                       :macros :keyword2
                       :collect :keyword2
                       :each :keyword2
                       :icollect :keyword2
                       :let :keyword2
                       :$2 :keyword
                       :fn :keyword2
                       :lambda :keyword2
                       "λ" :keyword2
                       :macro :keyword2
                       :eval-compiler :keyword2
                       :$4 :keyword
                       := :keyword
                       :$5 :keyword
                       :$6 :keyword
                       :-> :keyword
                       :->> :keyword
                       :-?> :keyword
                       :-?>> :keyword
                       :$8 :keyword
                       :$9 :keyword
                       :- :keyword
                       :. :keyword
                       :bnot :keyword2
                       :lshift :keyword2
                       :rshift :keyword2
                       :band :keyword2
                       :bor :keyword2
                       :bxor :keyword2
                       :comment :keyword2
                       :lua :keyword2
                       :.. :keyword
                       :$7 :keyword
                       :$3 :keyword
                       "%" :keyword
                       :$ :keyword
                       :accumulate :keyword2
                       :partial :keyword2
                       :>= :keyword
                       :> :keyword
                       :// :keyword
                       "#" :keyword
                       :quote :keyword2
                       :<= :keyword
                       :values :keyword2
                       :hashfn :keyword2
                       :+ :keyword
                       :require-macros :keyword2
                       :when :keyword2
                       :?. :keyword
                       :doto :keyword2
                       :doc :keyword2
                       :length :keyword2
                       :tset :keyword2
                       :not= :keyword2
                       :var :keyword2
                       :^ :keyword
                       :* :keyword
                       :/ :keyword
                       :< :keyword
                       :pick-args :keyword2
                       :... :keyword
                       :pick-values :keyword2
                       :and :keyword2
                       :import-macros :keyword2
                       :do :keyword2
                       :macrodebug :keyword2
                       :set :keyword2
                       :global :keyword2
                       :false :literal
                       :for :keyword2
                       ":" :keyword
                       :$1 :keyword
                       :if :keyword2
                       :match :keyword2
                       :local :keyword2}})

