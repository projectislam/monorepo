# Convert primary key into string

Convert auto increment id (primary key) into string (char varying) to define custom ids

## Step 1: Alter the column type

```sql
-- Change the column type from integer to varchar
ALTER TABLE your_table_name
ALTER COLUMN id TYPE VARCHAR(255);
```

## Step 2: Update the primary key constraint (optional)

```sql
-- Ensure that the id column is still the primary key
ALTER TABLE your_table_name
DROP CONSTRAINT IF EXISTS your_table_name_pkey;

ALTER TABLE your_table_name
ADD PRIMARY KEY (id);
```

## Step 3: Change column constraints

1. Go into pgAdmin
2. Go to table columns
3. Pick id columns and select properties
4. Go to Constraints and replace default value with this `NULL::character varying`
5. Click save

## Step 4: Drop the sequence for auto-increment (if applicable)

```sql
-- Optional: drop the sequence if the id is a SERIAL type
DROP SEQUENCE IF EXISTS your_table_id_seq;
```

It will automatically reflect the changes on directus dashboard sometime require a refresh or restart a server.
