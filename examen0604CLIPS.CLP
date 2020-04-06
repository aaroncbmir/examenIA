(deffacts robotboxes (robot 1 piezasCargadas 0 box 2 piezas 2 box 3 piezas 8 box 4 piezas 4))

(defrule moverpiezaDerecha
    ?f1 <- (robot ?x piezasCargadas ?pc)
    ?f2 <- (box ?pos piezas ?p )

    (test ( > ?x 0))
    (test ( >= ?pc 0))

    =>
    
    )
