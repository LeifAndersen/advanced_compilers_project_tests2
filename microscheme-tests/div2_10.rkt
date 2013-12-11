(letrec ((div2* (λ (n s)
                   (if (= (* 2 n) s)
                       n
                       (if (= (+ (* 2 n) 1) s)
                           n
                           (div2* (- n 1) s))))))
  (letrec ((div2 (λ (n)
                    (div2* n n))))
    (div2 10)))
