```
select * from movie
join staff on staff.movie_id = movie.id
join person on staff.person_id = person.id
```

```
SELECT movie.id, movie.label, movie.released
FROM movie
JOIN cast ON cast.movie_id = movie.id
JOIN person ON cast.person_id = person.id
WHERE person.label LIKE 'Elizabeth Young' OR person.label = 'Kevin Scott'
```
