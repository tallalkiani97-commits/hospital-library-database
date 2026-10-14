# Hospital & Library Database

**Relational database design starter covering hospital operations and library circulation.**

This repository demonstrates how related operational domains can be modelled with normalized entities, keys and relationships. It is useful as a SQL portfolio project and as a base for building REST APIs or reporting queries.

## Design goals

- Keep entities focused and reusable.
- Represent relationships with explicit foreign keys.
- Avoid duplicated department, member and book data.
- Make future reporting queries straightforward.

## Included schema

- Hospital: `Department`, `Patient`, `Doctor`, `Appointment`.
- Library: `LibraryMember`, `Book`, `Loan`.
- Primary and foreign key constraints.
- Small seed dataset for quick inspection.

## Quick start

Open `schema.sql` in SQL Server Management Studio. The schema uses SQL Server-friendly types. For PostgreSQL or MySQL, adapt identity and datetime types as needed.

## Example relationship flow

```text
Department → Doctor
Department → Patient
Patient + Doctor → Appointment
LibraryMember + Book → Loan
```

## Roadmap

- Add indexes and uniqueness constraints.
- Add stored procedures for appointment and loan workflows.
- Add views for operational reporting.
- Add migration files and automated schema tests.
- Connect a secure backend API.

## Data note

The seed values are fictional examples. This schema is not a certified healthcare or library production system.

## Tech stack

SQL · relational modelling · ER/EER concepts · database constraints

## Author

Built by **Tallal Kiani**.
