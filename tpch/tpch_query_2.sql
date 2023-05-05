SELECT
    l_returnflag,
    l_linestatus,
    SUM(l_extendedprice * (1 - l_discount)) AS revenue,
    SUM(l_extendedprice * (1 - l_discount) * (1 + l_tax)) AS total_revenue
FROM
    lineitem
WHERE
    l_shipdate <= DATE '1998-12-01'
GROUP BY
    l_returnflag,
    l_linestatus
ORDER BY
    l_returnflag,
    l_linestatus;