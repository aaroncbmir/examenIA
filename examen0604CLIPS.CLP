(deffacts robotboxes (robot 1 piezasCargadas 0 piezasQueCoge 0 box 2 piezas 2 box 3 piezas 8 box 4 piezas 4))

(defrule moverpiezaHaciaDerecha
    ?f1 <- (robot ?x piezasCargadas ?pc piezasQueCoge ?pqc)
    ?f2 <- (box ?pos piezas ?p )

    (test ( > ?x 0) and (<= ?x 4))
    (test ( <= ?pqc (- ?pc ?p)))
    (test ( >= ?pc 0) and ( ?pc <= 8 ))
    (test ( >= ?pos 1) and (<= ?pos 3))
    (test ( >= ?p 0))

    =>

    (retract ?f1)
    (assert robot (+ 1 ?x) piezasCargadas (+ ?p ?pc)
    (retract ?f2)
    (assert box ?pos piezas (- ?p ?pqc) )
    
    )

(defrule moverpiezaHaciaIzquierda
    ?f1 <- (robot ?x piezasCargadas ?pc piezasQueCoge ?pqc)
    ?f2 <- (box ?pos piezas ?p )

    (test ( > ?x 0) and (<= ?x 4))
    (test ( <= ?pqc (- ?pc ?p)))
    (test ( >= ?pc 0) and ( ?pc <= 8 ))
    (test ( >= ?pos 2) and (<= ?pos 4))

    =>

    (retract ?f1)
    (assert robot (- 1 ?x) piezasCargadas (+ ?p ?pc)
    (retract ?f2)
    (assert box ?pos piezas (- ?p ?pqc) )
    
    )

(defrule final

    ?f1 <- (robot ?x piezasCargadas ?pc piezasQueCoge ?pqc)
    ?f2 <- (box ?pos piezas ?p )

    (test ( = box 1 piezas ?p 1))
    (test ( = box 4 piezas ?p 8))
    (test ( = box 3 piezas ?p 4))

    =>

    (halt)
    
    )
