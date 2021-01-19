-- select c.*, array_to_json(array_agg(i.*)) images from cars as c left join images as i on c.id = i.carId
--  where c.id = $1 group by 1, 2;
select c.*, array_to_json(array_agg(i.*)) images from cars as c left join images as i on c.id = i.carId
  where c.id = $1 group by c.id;
