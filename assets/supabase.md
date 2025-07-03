# Supabase Integration Notes

## Intended Dummy Table

This project attempted to create a placeholder table with the following structure:

| Column      | Type      | Properties                               |
|-------------|-----------|------------------------------------------|
| id          | integer   | Primary Key, Auto Increment (SERIAL)     |
| description | text      | Nullable                                 |
| created_at  | timestamp | Nullable, Default: now()                 |

Equivalent SQL:
```sql
CREATE TABLE IF NOT EXISTS dummy_table (
  id SERIAL PRIMARY KEY,
  description TEXT,
  created_at TIMESTAMP DEFAULT now()
);
```

## Issue Encountered

Supabase API returned this error when attempting to create a table or run SQL:

```
Could not find the function public.run_sql(query) in the schema cache
```

It means that the project's Supabase instance does not expose the Postgres function interface needed for dynamic SQL execution or DDL actions.

**Action Required:**  
A Supabase admin may need to enable the necessary function or grant appropriate API access to allow backend-driven table creation.

## Supabase Project Details

- Project: project_2025_calculator
- URL: https://tcjrrjljficpkfcjsgnq.supabase.co

**Last attempted integration:** [dummy_table creation via API]
