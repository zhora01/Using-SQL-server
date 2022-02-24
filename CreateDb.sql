CREATE DATABASE Laba7DB;

CREATE TABLE Result(
    ExaminationSheet INT NOT NULL,
    IdSubject INT NOT NULL,
    Score INT NOT NULL
);

CREATE TABLE Department(
    IdDepartment INT NOT NULL,
    DepartmentName NVARCHAR(255) NOT NULL,
    IdFaculty INT NOT NULL,
    NumberSeats INT NOT NULL
);

ALTER TABLE
    Department ADD CONSTRAINT department_iddepartment_primary PRIMARY KEY(IdDepartment);

CREATE TABLE Film(
    IdFaculty INT NOT NULL,
    FacultyName NVARCHAR(255) NOT NULL
);

ALTER TABLE
    Faculty ADD CONSTRAINT faculty_idfaculty_primary PRIMARY KEY(IdFaculty);

CREATE TABLE "Group"(
    IdGroup INT NOT NULL,
    GroupNumber NCHAR(255) NOT NULL,
    IdFlow INT NOT NULL
);

ALTER TABLE
    "Group" ADD CONSTRAINT group_idgroup_primary PRIMARY KEY(IdGroup);

CREATE TABLE Flow(IdFlow INT NOT NULL);

ALTER TABLE
    Flow ADD CONSTRAINT flow_idflow_primary PRIMARY KEY(IdFlow);
CREATE TABLE Subject(
    IdSubject INT NOT NULL,
    SubjectName NCHAR(255) NOT NULL
);

ALTER TABLE
    Subject ADD CONSTRAINT subject_idsubject_primary PRIMARY KEY(IdSubject);

CREATE TABLE Timetable(
    IdSubject INT PRIMARY KEY NOT NULL,
    IdFlow INT NOT NULL,
    DateConsultation DATETIME NOT NULL,
    Room INT NOT NULL,
);

CREATE TABLE Cinema(
    FilmIdINT NOT NULL,
    FilmName NVARCHAR(255) NOT NULL,
    FilmLocation NVARCHAR(255) NOT NULL
);

ALTER TABLE
    EducationalInstitution ADD CONSTRAINT educationalinstitution_educationalid_primary PRIMARY KEY(EducationalId);

CREATE TABLE Film(
    FilmName INT NOT NULL,
    Price NVARCHAR(255) NOT NULL,
    Name NVARCHAR(255) NOT NULL,
    MiddleName NVARCHAR(255) NOT NULL,
    FilmId NVARCHAR(255) NOT NULL,
    FilmTypeNCHAR(255) NOT NULL,
    FilmNumber INT NOT NULL,
    FilmWhon NVARCHAR(255) NOT NULL,
    FilmDate DATE NOT NULL,

);

ALTER TABLE
    Film ADD CONSTRAINT student_examinationsheet_primary PRIMARY KEY(ExaminationSheet);

CREATE UNIQUE INDEX student_passportid_unique ON
    Film(PassportId);

ALTER TABLE
    Film ADD CONSTRAINT student_educationalid_foreign FOREIGN KEY(EducationalId) REFERENCES EducationalInstitution(EducationalId);

ALTER TABLE
    Film ADD CONSTRAINT student_iddepartment_foreign FOREIGN KEY(IdDepartment) REFERENCES Department(IdDepartment);

ALTER TABLE
    Film ADD CONSTRAINT student_idgroup_foreign FOREIGN KEY(IdGroup) REFERENCES "Group"(IdGroup);

ALTER TABLE
    Department ADD CONSTRAINT department_idfaculty_foreign FOREIGN KEY(IdFaculty) REFERENCES Faculty(IdFaculty);
ALTER TABLE
    "Group" ADD CONSTRAINT group_idflow_foreign FOREIGN KEY(IdFlow) REFERENCES Flow(IdFlow);

ALTER TABLE
    Timetable ADD CONSTRAINT timetable_idsubject_foreign FOREIGN KEY(IdSubject) REFERENCES Subject(IdSubject);

ALTER TABLE
    Timetable ADD CONSTRAINT timetable_idflow_foreign FOREIGN KEY(IdFlow) REFERENCES Flow(IdFlow);

ALTER TABLE
    Result ADD CONSTRAINT result_examinationsheet_foreign FOREIGN KEY(ExaminationSheet) REFERENCES Film(ExaminationSheet);

ALTER TABLE
    Result ADD CONSTRAINT result_idsubject_foreign FOREIGN KEY(IdSubject) REFERENCES Subject(IdSubject); 
