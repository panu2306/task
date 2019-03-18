# task
### Data Modeling:-
Data model is the  logical design and structure of a database. Data model defines how data will be stored, accessed and updated in a database management system. It defines data elements and relationships among various data elements for a specified system and the constraints to maintain data integrity.

### Normalization:- 
1. First Normal Form (1NF)
For a table to be in the First Normal Form, it should follow the following 4 rules:
It should only have single(atomic) valued attributes/columns.
Values stored in a column should be of the same domain
All the columns in a table should have unique names.
And the order in which data is stored, does not matter.

2. Second Normal Form (2NF)
For a table to be in the Second Normal Form,
It should be in the First Normal form.
And, it should not have Partial Dependency(" Every non key attribute of a table should fully depend on Primary key, but not on part of the Primary Key").

3. Third Normal Form (3NF)
A table is said to be in the Third Normal Form when,
It is in the Second Normal form.
And, it doesn't have Transitive Dependency.
Here is the Third Normal Form tutorial. But we suggest you to first study about the second normal form and then head over to the third normal form.

4. Boyce and Codd Normal Form (BCNF)
A relational schema S is considered to be in Boyce–Codd normal form (BCNF) if, for every dependencies X → Y, one of the following conditions holds true:
   -  X → Y is a trivial functional dependency (i.e., Y is a subset of X)
   -  X is a super key for schema S
So the Boyce-Codd normal form is described as “Each attribute must represent a fact about the key, the whole key, and nothing but the key ITSELF.”

5. Fourth Normal Form (4NF)
A table is said to be in the Fourth Normal Form when,

It is in the Boyce-Codd Normal Form.
And, it doesn't have Multi-Valued Dependency.
Here is the Fourth Normal Form tutorial. But we suggest you to understand other normal forms before you head over to the fourth normal form.

