-- 1
SELECT Surname, Name, MiddleName, PlaceId, CinemaSeries, FilmPrice, FilmName, FilmDate, FilmTime 
FROM PlaceId
WHERE Film.FilmName = '������� ����'
AND Surname = '���������';

-- 2
SELECT SubjectName, Ticket
FROM Subject
INNER JOIN Result ON Subject.IdSubject = Result.IdSubject
INNER JOIN Viewer ON Result.Sheet = Sheet
WHERE Surname = '�������';


-- 3
SELECT Surname, Name, MiddleName, PlaceId, CinemaSeries, FilmPrice, FilmName, FilmDate, FilmTime 
FROM PlaceId
WHERE Film.FilmName = '������� ����'
AND Surname = '���������';
AND PlaceId = '42';