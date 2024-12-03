;; Base de conocimiento

(deftemplate cromatico
    0 10
    (
        (poco (4 1) (6 0.5) (7 0))
        (medio (3 0) (5 1) (6 1) (8 0))
        (doradas (5 0) (7 1))
    )
)

(deftemplate temperatura
    0 250
    (
        (baja (150 0) (160 1) (180 1) (190 0))
        (media (170 0) (190 1) (210 1) (230 0))
        (alta (210 0) (220 1) (240 1) (250 0))
    )
)

(defrule regla_1
    (cromatico poco)
    =>
    (assert (temperatura media))
)

(defrule regla_2
    (cromatico medio)
    =>
    (assert (temperatura alta))
)

(defrule regla_3
    (cromatico doradas)
    =>
    (assert (temperatura baja))
)