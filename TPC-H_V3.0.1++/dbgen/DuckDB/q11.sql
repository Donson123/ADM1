SELECT
    ps_partkey,
    sum(ps_supplycost * ps_availqty) AS value
FROM
    partsupp,
    supplier,
    nation
WHERE
    ps_suppkey = s_suppkey
    AND s_nationkey = n_nationkey
    AND n_name = 'GERMANY'
GROUP BY
    ps_partkey
HAVING
    sum(ps_supplycost * ps_availqty) > (
        SELECT
            sum(ps_supplycost * ps_availqty) * 0.0001000000
            --	                               ^^^^^^^^^^^^
            -- The above constant needs to be adjusted according
            -- to the scale factor (SF): constant = 0.0001 / SF, i.e.,
            -- SF-1:	0.0001000000
            -- SF-3: 	0.0000333333
            -- SF-10: 	0.0000100000
            -- SF-30: 	0.0000033333
            -- SF-100: 	0.0000010000
            -- SF-300: 	0.0000003333
            -- SF-1000: 	0.0000001000
            -- SF-3000:	0.0000000333
            -- (qgen does this automatically with option "-s SF".)
        FROM
            partsupp,
            supplier,
            nation
        WHERE
            ps_suppkey = s_suppkey
            AND s_nationkey = n_nationkey
            AND n_name = 'GERMANY'
    )
ORDER BY
    value DESC;
