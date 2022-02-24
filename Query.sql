-- 1
SELECT Surname, Name, MiddleName, PlaceId, CinemaSeries, FilmPrice, FilmName, FilmDate, FilmTime 
FROM PlaceId
WHERE Film.FilmName = 'Человек паук'
AND Surname = 'Аверченко';

-- 2
SELECT SubjectName, Ticket
FROM Subject
INNER JOIN Result ON Subject.IdSubject = Result.IdSubject
INNER JOIN Viewer ON Result.Sheet = Sheet
WHERE Surname = 'Сидоров';


-- 3
SELECT Surname, Name, MiddleName, PlaceId, CinemaSeries, FilmPrice, FilmName, FilmDate, FilmTime 
FROM PlaceId
WHERE Film.FilmName = 'Человек паук'
AND Surname = 'Аверченко';
AND PlaceId = '42';