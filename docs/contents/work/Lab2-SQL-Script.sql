SELECT
    c_city,
    c_region,
    COUNT(*)
FROM
    ssb.customer c_high
GROUP BY
    c_region,
    c_city
ORDER BY
    COUNT(*);

-- other SSB Queries

SELECT
    SUM(lo_extendedprice * lo_discount) AS revenue
FROM
    ssb.lineorder,
    ssb.dwdate
WHERE
    lo_orderdate = d_datekey
    AND d_yearmonthnum = 199401
    AND lo_discount BETWEEN 4 AND 6
    AND lo_quantity BETWEEN 26 AND 35;

SELECT
    SUM(lo_extendedprice * lo_discount) AS revenue
FROM
    ssb.lineorder,
    ssb.dwdate
WHERE
    lo_orderdate = d_datekey
    AND d_year = 1993
    AND lo_discount BETWEEN 1 AND 3
    AND lo_quantity < 25;

SELECT
    SUM(lo_extendedprice * lo_discount) AS revenue
FROM
    ssb.lineorder,
    ssb.dwdate
WHERE
    lo_orderdate = d_datekey
    AND d_weeknuminyear = 6
    AND d_year = 1994
    AND lo_discount BETWEEN 5 AND 7
    AND lo_quantity BETWEEN 26 AND 35;

SELECT
    SUM(lo_revenue),
    d_year,
    p_brand1
FROM
    ssb.lineorder,
    ssb.dwdate,
    ssb.part,
    ssb.supplier
WHERE
    lo_orderdate = d_datekey
    AND lo_partkey = p_partkey
    AND lo_suppkey = s_suppkey
    AND p_category = 'MFGR#12'
    AND s_region = 'AMERICA'
GROUP BY
    d_year,
    p_brand1
ORDER BY
    d_year,
    p_brand1;

SELECT
    SUM(lo_revenue),
    d_year,
    p_brand1
FROM
    ssb.lineorder,
    ssb.dwdate,
    ssb.part,
    ssb.supplier
WHERE
    lo_orderdate = d_datekey
    AND lo_partkey = p_partkey
    AND lo_suppkey = s_suppkey
    AND p_brand1 BETWEEN 'MFGR#2221' AND 'MFGR#2228'
    AND s_region = 'ASIA'
GROUP BY
    d_year,
    p_brand1
ORDER BY
    d_year,
    p_brand1;

SELECT
    SUM(lo_revenue),
    d_year,
    p_brand1
FROM
    ssb.lineorder,
    ssb.dwdate,
    ssb.part,
    ssb.supplier
WHERE
    lo_orderdate = d_datekey
    AND lo_partkey = p_partkey
    AND lo_suppkey = s_suppkey
    AND p_brand1 = 'MFGR#2221'
    AND s_region = 'EUROPE'
GROUP BY
    d_year,
    p_brand1
ORDER BY
    d_year,
    p_brand1;

SELECT
    c_nation,
    s_nation,
    d_year,
    SUM(lo_revenue) AS revenue
FROM
    ssb.customer,
    ssb.lineorder,
    ssb.supplier,
    ssb.dwdate
WHERE
    lo_custkey = c_custkey
    AND lo_suppkey = s_suppkey
    AND lo_orderdate = d_datekey
    AND c_region = 'ASIA'
    AND s_region = 'ASIA'
    AND d_year >= 1992
    AND d_year <= 1997
GROUP BY
    c_nation,
    s_nation,
    d_year
ORDER BY
    d_year ASC,
    revenue DESC;

SELECT
    c_city,
    s_city,
    d_year,
    SUM(lo_revenue) AS revenue
FROM
    ssb.customer,
    ssb.lineorder,
    ssb.supplier,
    ssb.dwdate
WHERE
    lo_custkey = c_custkey
    AND lo_suppkey = s_suppkey
    AND lo_orderdate = d_datekey
    AND c_nation = 'UNITED STATES'
    AND s_nation = 'UNITED STATES'
    AND d_year >= 1992
    AND d_year <= 1997
GROUP BY
    c_city,
    s_city,
    d_year
ORDER BY
    d_year ASC,
    revenue DESC;

SELECT
    c_city,
    s_city,
    d_year,
    SUM(lo_revenue) AS revenue
FROM
    ssb.customer,
    ssb.lineorder,
    ssb.supplier,
    ssb.dwdate
WHERE
    lo_custkey = c_custkey
    AND lo_suppkey = s_suppkey
    AND lo_orderdate = d_datekey
    AND ( c_city = 'UNITED KI1'
          OR c_city = 'UNITED KI5' )
    AND ( s_city = 'UNITED KI1'
          OR s_city = 'UNITED KI5' )
    AND d_year >= 1992
    AND d_year <= 1997
GROUP BY
    c_city,
    s_city,
    d_year
ORDER BY
    d_year ASC,
    revenue DESC;

SELECT
    c_city,
    s_city,
    d_year,
    SUM(lo_revenue) AS revenue
FROM
    ssb.customer,
    ssb.lineorder,
    ssb.supplier,
    ssb.dwdate
WHERE
    lo_custkey = c_custkey
    AND lo_suppkey = s_suppkey
    AND lo_orderdate = d_datekey
    AND ( c_city = 'UNITED KI1'
          OR c_city = 'UNITED KI5' )
    AND ( s_city = 'UNITED KI1'
          OR s_city = 'UNITED KI5' )
    AND d_yearmonth = 'Dec1997'
GROUP BY
    c_city,
    s_city,
    d_year
ORDER BY
    d_year ASC,
    revenue DESC;

SELECT
    d_year,
    c_nation,
    SUM(lo_revenue - lo_supplycost) AS profit
FROM
    ssb.dwdate,
    ssb.customer,
    ssb.supplier,
    ssb.part,
    ssb.lineorder
WHERE
    lo_custkey = c_custkey
    AND lo_suppkey = s_suppkey
    AND lo_partkey = p_partkey
    AND lo_orderdate = d_datekey
    AND c_region = 'AMERICA'
    AND s_region = 'AMERICA'
    AND ( p_mfgr = 'MFGR#1'
          OR p_mfgr = 'MFGR#2' )
GROUP BY
    d_year,
    c_nation
ORDER BY
    d_year,
    c_nation;

SELECT
    d_year,
    s_nation,
    p_category,
    SUM(lo_revenue - lo_supplycost) AS profit
FROM
    ssb.dwdate,
    ssb.customer,
    ssb.supplier,
    ssb.part,
    ssb.lineorder
WHERE
    lo_custkey = c_custkey
    AND lo_suppkey = s_suppkey
    AND lo_partkey = p_partkey
    AND lo_orderdate = d_datekey
    AND c_region = 'AMERICA'
    AND s_region = 'AMERICA'
    AND ( d_year = 1997
          OR d_year = 1998 )
    AND ( p_mfgr = 'MFGR#1'
          OR p_mfgr = 'MFGR#2' )
GROUP BY
    d_year,
    s_nation,
    p_category
ORDER BY
    d_year,
    s_nation,
    p_category;

SELECT
    d_year,
    s_city,
    p_brand1,
    SUM(lo_revenue - lo_supplycost) AS profit
FROM
    ssb.dwdate,
    ssb.customer,
    ssb.supplier,
    ssb.part,
    ssb.lineorder
WHERE
    lo_custkey = c_custkey
    AND lo_suppkey = s_suppkey
    AND lo_partkey = p_partkey
    AND lo_orderdate = d_datekey
    AND c_region = 'AMERICA'
    AND s_nation = 'UNITED STATES'
    AND ( d_year = 1997
          OR d_year = 1998 )
    AND p_category = 'MFGR#14'
GROUP BY
    d_year,
    s_city,
    p_brand1
ORDER BY
    d_year,
    s_city,
    p_brand1;

-- SSB Analytic Views

SELECT
    dwdate_hier.member_name     AS year,
    part_hier.member_name       AS part,
    customer_hier.c_region,
    customer_hier.member_name   AS customer,
    lo_quantity,
    lo_revenue
FROM
    ssb.ssb_av HIERARCHIES (
        dwdate_hier,
        part_hier,
        customer_hier
    )
WHERE
    dwdate_hier.d_year = '1998'
    AND dwdate_hier.level_name = 'MONTH'
    AND part_hier.level_name = 'MANUFACTURER'
    AND customer_hier.c_region = 'AMERICA'
    AND customer_hier.level_name = 'NATION'
ORDER BY
    dwdate_hier.hier_order,
    part_hier.hier_order,
    customer_hier.hier_order;

SELECT
    dwdate_hier.member_name     AS time,
    part_hier.member_name       AS part,
    customer_hier.member_name   AS customer,
    supplier_hier.member_name   AS supplier,
    lo_quantity,
    lo_supplycost
FROM
    ssb.ssb_av HIERARCHIES (
        dwdate_hier,
        part_hier,
        customer_hier,
        supplier_hier
    )
WHERE
    dwdate_hier.d_year = '1998'
    AND dwdate_hier.level_name = 'MONTH'
    AND part_hier.level_name = 'MANUFACTURER'
    AND customer_hier.c_region = 'AMERICA'
    AND customer_hier.c_nation = 'CANADA'
    AND customer_hier.level_name = 'CITY'
    AND supplier_hier.s_region = 'ASIA'
    AND supplier_hier.level_name = 'REGION'
ORDER BY
    dwdate_hier.hier_order,
    part_hier.hier_order,
    customer_hier.hier_order,
    supplier_hier.hier_order;

SELECT
    dwdate_hier.member_name     AS year,
    part_hier.member_name       AS part,
    customer_hier.member_name   AS customer,
    supplier_hier.member_name   AS supplier,
    lo_quantity,
    lo_revenue,
    lo_supplycost
FROM
    ssb.ssb_av HIERARCHIES (
        dwdate_hier,
        part_hier,
        customer_hier,
        supplier_hier
    )
WHERE
    dwdate_hier.d_yearmonth = 'Apr1998'
    AND dwdate_hier.level_name = 'DAY'
    AND part_hier.level_name = 'MANUFACTURER'
    AND customer_hier.c_region = 'AMERICA'
    AND customer_hier.c_nation = 'CANADA'
    AND customer_hier.level_name = 'CITY'
    AND supplier_hier.level_name = 'REGION'
ORDER BY
    dwdate_hier.hier_order,
    part_hier.hier_order,
    customer_hier.hier_order,
    supplier_hier.hier_order;

SELECT
    dwdate_hier.member_name     AS year,
    part_hier.member_name       AS part,
    supplier_hier.member_name   AS supplier,
    lo_quantity,
    lo_extendedprice,
    lo_ordtotalprice,
    lo_revenue,
    lo_supplycost
FROM
    ssb.ssb_av HIERARCHIES (
        dwdate_hier,
        part_hier,
        supplier_hier
    )
WHERE
    dwdate_hier.level_name = 'YEAR'
    AND part_hier.level_name = 'MANUFACTURER'
    AND supplier_hier.level_name = 'SUPPLIER'
    AND supplier_hier.s_suppkey = '23997';

SELECT
    dwdate_hier.member_name   AS time,
    part_hier.p_container,
    part_hier.member_name     AS part,
    lo_quantity,
    lo_extendedprice,
    lo_ordtotalprice,
    lo_revenue,
    lo_supplycost
FROM
    ssb.ssb_av HIERARCHIES (
        dwdate_hier,
        part_hier
    )
WHERE
    dwdate_hier.member_name = 'June 10, 1998     '
    AND dwdate_hier.level_name = 'DAY'
    AND part_hier.level_name = 'PART'
    AND part_hier.p_size = 32;

SELECT
    dwdate_hier.member_name   AS time,
    part_hier.member_name     AS part,
    part_hier.p_name,
    part_hier.p_color,
    lo_quantity,
    lo_revenue,
    lo_supplycost,
    lo_revenue - lo_supplycost AS profit
FROM
    ssb.ssb_av HIERARCHIES (
        dwdate_hier,
        part_hier
    )
WHERE
    dwdate_hier.d_yearmonth = 'Aug1996'
    AND dwdate_hier.d_dayofweek = 'Friday   '
    AND dwdate_hier.level_name = 'DAY'
    AND part_hier.level_name = 'PART'
    AND part_hier.p_color IN (
        'ivory',
        'coral'
    )
ORDER BY
    dwdate_hier.hier_order,
    part_hier.hier_order;
