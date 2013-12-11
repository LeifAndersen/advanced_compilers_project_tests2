(letrec ((lp1 (λ (i x)
                 (if (= 0 i) x
                     (letrec ((lp2 (λ (j f y) (if (= 0 j)
                                                  (lp1 (- i 1) y)
                                                  (lp2 (- j 1) f
                                                       (f y))))))
                       (lp2 10 (λ (n) (+ n i)) x))))))
  (lp1 10 0))
