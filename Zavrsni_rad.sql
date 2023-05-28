

drop database teretana;
create database teretana;
use teretana;
create table operater(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    datum_rodenja datetime.
    e_mail varchar(50),
    broj_mobitela varchar(50)
);
create table clan(
    sifra int not null primary key auto_increment,
    osoba int,
    broj_kartice varchar(25),
    usluga int
);
create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    datum_rodenja date,
    e_mail varchar(50),
    broj_mobitela varchar(50),
    spol boolean
)
create table usluga(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    vrijeme_pocetka time,
    vrijme_zavrsetka time,
    cijna decimal(18,2),
    prostorija int
);
create table prostorija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    broj_prostorije varchar(10)
);
create table trener(
    sifra int not null primary key auto_increment,
    osoba int,
    clan_trener int
);
create table clan_trener(
    sifra int not null primary key auto_increment,
    osoba int not null,
    trener int not null
);

alter table clan add foreign key (osoba)
references osoba(sifra);

alter table trener add foreign key (osoba)
references osoba(sifra);

alter table clan_trener add foreign key (osoba)
references osoba(sifra);

alter table korisnik add foreign key (usluga)
references usluga(sifra);

alter table usluga add foreign key (prostorija)
references prostorija(sifra);