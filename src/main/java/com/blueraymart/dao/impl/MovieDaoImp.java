/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao.impl;

import com.blueraymart.dao.MovieDao;
import com.blueraymart.model.Movie;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author NanoX
 */
@Repository
@Transactional
public class MovieDaoImp implements MovieDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Movie> getMovieList() {
        Session session = sessionFactory.getCurrentSession();
        org.hibernate.Query query = session.createQuery("from Movie");

        List<Movie> movies  = query.list();
        session.flush();

        return movies;
    }

    @Override
    public Movie getMovieById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Movie movie = (Movie) session.get(Movie.class, id);
        session.flush();

        return movie;
    }

    @Override
    public void addMovie(Movie movie) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(movie);
        session.flush();
    }

    @Override
    public void editMovie(Movie movie) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(movie);
        session.flush();
    }

    @Override
    public void deleteMovie(Movie movie) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(movie);
        session.flush();
    }

    @Override
    public List<Movie> getLatestMovies() {
        Session session = sessionFactory.getCurrentSession();
        org.hibernate.Query query = session.createQuery("FROM Movie ORDER BY movieId DESC");

        query.setMaxResults(3);
        List<Movie> movies = query.list();
        session.flush();

        return movies;
    }

    @Override
    public List<Movie> getUpcomingMovies() {
        Session session = sessionFactory.getCurrentSession();
        org.hibernate.Query query = session.createQuery("FROM Movie WHERE movieStatus='Coming Soon'");

        query.setMaxResults(3);
        List<Movie> upcommingMovies = query.list();
        session.flush();

        return upcommingMovies;
    }

    @Override
    public List<Movie> getMoviesByGenere(String Genere) {
        Session session = sessionFactory.getCurrentSession();
        org.hibernate.Query query = session.createQuery("FROM Movie WHERE movieGenre='"+Genere+"'");
        List<Movie> movies = query.list();
        session.flush();

        return movies;
    }
    
    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request!")
    public void handleClientErrors (Exception e) {}

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Server Error!")
    public void handleServerErrors (Exception e) {}

}
