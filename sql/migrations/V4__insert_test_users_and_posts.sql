INSERT INTO users (name)
VALUES
    ('Alice'),
    ('Bob');

INSERT INTO posts (text, owner_id)
VALUES
    ('Post from Alice', (SELECT id FROM users WHERE name = 'Alice' LIMIT 1)),
    ('Post from Bob', (SELECT id FROM users WHERE name = 'Bob' LIMIT 1));
