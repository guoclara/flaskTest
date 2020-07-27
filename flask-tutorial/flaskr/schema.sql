DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE post (
    id integer primary key AUTOINCREMENT,
    author_id integer not null,
    created timestamp not null default CURRENT_TIMESTAMP,
    title text not null,
    body text not null,
    foreign key (author_id) references user (id)
)