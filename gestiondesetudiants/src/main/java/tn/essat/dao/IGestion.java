package tn.essat.dao;

import java.util.List;

import tn.essat.model.Etudiant;

public interface IGestion {
	public List<Etudiant> getALLEtudiant();
	public void addEtudiant(Etudiant et);
	public void deleteEtudiant(int id);
	public void modifierEtudiant(Etudiant et);	

	

}
