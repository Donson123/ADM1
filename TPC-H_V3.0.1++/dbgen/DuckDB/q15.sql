CREATE VIEW revenue0 (supplier_no, total_revenue) AS
    SELECT
        l_suppkey,
        sum(l_extendedprice * (1 - l_discount))
    FROM
        lineitem
    WHERE
        l_shipdate >= CAST('1996-01-01' AS date)
        AND l_shipdate < CAST('1996-04-01' AS date)
    GROUP BY
        l_suppkey;

SELECT
    s_suppkey,
    s_name,
    s_address,
    s_phone,
    total_revenue
FROM
    supplier,
    revenue0
WHERE
    s_suppkey = supplier_no
    AND total_revenue = (
        SELECT
            max(total_revenue)
        FROM
            revenue0
    )
ORDER BY
    s_suppkey;

DROP VIEW revenue0;
