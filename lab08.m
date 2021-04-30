function [] = lab08()

    str = 'my-first-email#craigslist.gov';
    expr = '^[^0-9]+@[a-z]+(\.[a-z]+)?\.[a-z]+$';
    result = regexp(str, expr, 'match')
    
end