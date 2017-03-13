DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` VARCHAR,
  `age` INTEGER,
  `cohort_id` INTEGER
)
