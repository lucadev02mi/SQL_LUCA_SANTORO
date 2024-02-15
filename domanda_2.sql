SELECT i.film, i.incasso FROM incassi as i
inner join cast as b on i.film = b.film
where b.attore in (SELECT c.attore FROM cast as c GROUP BY c.attore HAVING COUNT(*)>=2)
and i.anno = 'X'
order by i.incasso desc
