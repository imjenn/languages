package com.codingdojo.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.languages.models.Language;
import com.codingdojo.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	private LanguageRepository languageRepository;
	
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	
	// Create a language
	public Language createLanguage(Language l) {
		return languageRepository.save(l);
	}
	
	// Retrieve all languages 
	public List<Language> allLanguages() {
		return languageRepository.findAll();
	}
	
	// Retrieve one language
	public Language findLanguage(Long id) {
		Optional<Language> optionalLanguage = languageRepository.findById(id);
		if(optionalLanguage.isPresent()) {
			return optionalLanguage.get();
		}
		return null;
	}
	
	// Update
	public Language updateLanguage(Long id, Language lang) {
		if(languageRepository.findById(id).isPresent()) {
			Language l = languageRepository.findById(id).get();
			
			l.setName(lang.getName());
			l.setCreator(lang.getCreator());
			l.setVersion(lang.getVersion());
			
			return languageRepository.save(l);
		}
		return null;
	}
	
	// Delete 
	public void deleteLanguage(Long id) {
		languageRepository.deleteById(id);
	}

}
