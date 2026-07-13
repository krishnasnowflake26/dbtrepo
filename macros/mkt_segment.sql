{% macro mkt_segment(c1) %}
 case   when {{ c1 }}='AUTOMOBILE' then 'Machine_category_1'
        when {{ c1 }}='MACHINERY' then 'Machine_category_2'
        when {{ c1 }}='BUILDING' then 'House_category_1'
        when {{ c1 }}='HOUSEHOLD' then 'House_category_2'
        when {{ c1 }}='FURNITURE' then 'House_category_3' 
else 'NA' 
end           
{% endmacro %}