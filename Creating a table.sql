/* Using this code to create a table to PostgreSQL */

create table special(
    carer_id serial PRIMARY KEY,
    carer varchar(100) ,
    end_of_life date,
    hsc_two date,
    hsc_three date,
    learning_disabilities date,
    aba_pmva_pbs date,
    autism date,
    challenging date,
    food_hygiene date,
    dysphagia date,
    makaton date,
    keep_children date,
    children_epilepsy date,
    children_safe date
)

/* Exported this table to my computer and added data from my file in Excel
and after imported again to be able to work with the data from the trainings
in the comapany that i work */

/* Grouping all cares with all trainings they have done */
SELECT carer,end_of_life, hsc_two, hsc_three, learning_disabilities, aba_pmva_pbs,
autism, challenging, food_hygiene, dysphagia, makaton, keep_children, children_epilepsy,
children_safe FROM special
GROUP BY carer, end_of_life, hsc_two, hsc_three, learning_disabilities, aba_pmva_pbs,
autism, challenging, food_hygiene, dysphagia, makaton, keep_children, children_epilepsy,
children_safe
ORDER BY carer asc

/* To update the table I used ALTER statenent */

/* To add column */
ALTER TABLE special 
ADD column care_certificate data;

/* To delete column */
ALTER TABLE special
drop care_certificate

/* To rename the table */
ALTER TABLE special
RENAME TO special_people;

/* To Add Constraints */
ALTER TABLE table_name
ADD CONSTRAINT NOT NULL (learning_disabilities);

/* To Delete Constraints */
ALTER TABLE table_name
DROP CONSTRAINT NOT NULL (learning_disabilities);