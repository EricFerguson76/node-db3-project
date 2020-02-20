const db = require('../data/db-config.js');

module.exports = {
  find,
  findByID,
  findSteps,
  add,
  update,
  remove
};

function find() {
  return db('schemes');
}

function findById(id) {
  return db('schemes')
    .where({ id })
    .first();
}

function findSteps(id) {
  return db('schemes as sc')
    .select('sc.scheme_name', 'st.step_number', 'st.instructions')
    .join('steps as st', 'sc.id', 'st.scheme_id')
    .orderBy('st.step_number')
    .where('scheme_id', id);
}

function add(scheme) {
  return db('schemes').insert(scheme, 'id');
}

function update(id, changes) {
  return db('schemes')
    .where({ id })
    .update(changes);
}

function remove(id) {
  return db('scheme')
    .where({ id })
    .del();
}
