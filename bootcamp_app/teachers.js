const { Pool } = require('pg');

const args = process.argv.slice(2);


const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = [args[0] || 'JUL02'];
const queryString = `
SELECT DISTINCT teachers.name AS teacher, 
cohorts.name AS cohort
FROM teachers 
JOIN assistance_requests ON teacher_id=teachers.id
JOIN students ON students.id=student_id
JOIN cohorts ON cohorts.id=cohort_id
WHERE cohorts.name = $1
ORDER BY teacher
`;

pool.query(queryString, cohort)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
}).catch(err => console.error('query error', err.stack));