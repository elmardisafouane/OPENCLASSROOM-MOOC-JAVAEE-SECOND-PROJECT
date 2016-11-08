package com.sdzee.dao;

import com.sdzee.beans.Utilisateur;

public interface UtilisateurDao {

    public abstract void creer( Utilisateur utilisateur ) throws DAOException;

    public abstract Utilisateur trouver( String email ) throws DAOException;

}