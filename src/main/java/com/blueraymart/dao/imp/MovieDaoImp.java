/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao.imp;

import com.blueraymart.dao.MovieDao;
import com.blueraymart.model.Movie;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author NanoX
 */
@Repository
public class MovieDaoImp implements MovieDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addMovie(Movie movie) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(movie);
        session.flush();
    }

    @Override
    public void deleteMovie(String Id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getMovieById(Id));
        
        session.flush();
    }

    @Override
    public Movie getMovieById(String Id) {
        Session session = sessionFactory.getCurrentSession();
        Movie movie = (Movie) session.get(Movie.class, Id);
        session.flush();

        return movie;
    }

    @Override
    public List<Movie> getAllMovies() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Movie");

        List<Movie> movies = query.getResultList();
        session.flush();

        return movies;
    }

}
