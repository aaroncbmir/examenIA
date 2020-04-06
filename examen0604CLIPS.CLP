(deffacts robotboxes (robot 1 piezasCargadas 0 box 2 piezas 2 box 3 piezas 8 box 4 piezas 4))

(defrule moverpiezaADerecha
    ?f1 <- (robot ?x piezasCargadas ?pc)
    ?f2 <- (box ?pos piezas ?p )

    (test ( > ?x 0) and (<= ?x 4))
    (test ( >= ?pc 0) and ( ?pc <= 8 ))

    

    =>

    (retract ?f1)
    (assert robot (+ 1 ?x) piezasCargadas (+ ?p ?pc)
    (retract ?f2)
    (assert box ?pos piezas (- 1 ?p) )
    
    )
