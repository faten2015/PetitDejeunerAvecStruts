package fr.treeptik.jpa.dao;

import java.util.List;


public interface Dao<T> {

  T find(int id);
  
  List<T> findAll();

  T persist(T obj);

  void delete(T obj);
}