% Règles pour recommander des joueurs à une équipe

% Règle pour recommander des joueurs en fonction du salaire
recommend_low_salary(PlayerId, Team) :- 
    wage_eur(PlayerId , Wage), 
    Wage < 50000,  
    potential(PlayerId, Potential), 
    Potential >= 85, 
    assertz(recommended(PlayerId, Team)).

% Règle pour recommander des joueurs en fonction de la nationalité
recommend_same_nationality(PlayerId, Team) :- 
    nationality(PlayerId, Nationality), 
    club(Team, TeamClub), 
    plays_in_national_team(Nationality, TeamClub), 
    assertz(recommended(PlayerId, Team)).

% Règle pour recommander des capitaines potentiels
recommend_captain_potential(PlayerId, Team) :- 
    leadership(PlayerId, Leadership), 
    Leadership >= 85,  
    assertz(recommended(PlayerId, Team)).

% Règle pour recommander des joueurs expérimentés
recommend_experienced_player(PlayerId, Team) :- 
    age(PlayerId, Age), 
    Age >= 30,  
    assertz(recommended(PlayerId, Team)).

% Règle pour recommander des joueurs polyvalents
recommend_versatile_player(PlayerId, Team) :- 
    versatility(PlayerId, Versatility), 
    Versatility >= 80, 
    assertz(recommended(PlayerId, Team)).

% Règle pour recommander des joueurs en fonction de la note globale (overall)
recommend_high_overall(PlayerId, Team) :- 
    overall(PlayerId, Overall), 
    Overall >= 85,  
    assertz(recommended(PlayerId, Team)).

% Règle pour recommander des joueurs en fonction de leur poste
recommend_position(PlayerId, Team, Position) :- 
    player_position(PlayerId, PlayerPosition), 
    Position == PlayerPosition, 
    assertz(recommended(PlayerId, Team)).

% Règle pour recommander des joueurs en fonction de la qualité de leur pied préféré
recommend_preferred_foot(PlayerId, Team, PreferredFoot) :- 
    preferred_foot(PlayerId, Foot), 
    Foot == PreferredFoot, 
    assertz(recommended(PlayerId, Team)).

% Règle pour recommander des joueurs avec des compétences spécifiques
recommend_skill(PlayerId, Team, SkillMove) :- 
    skill_move(PlayerId, SkillMove), 
    SkillMove >= 4,  
    assertz(recommended(PlayerId, Team)).

% Règle pour recommander des joueurs en fonction du club actuel
recommend_current_club(PlayerId, Team, CurrentClub) :- 
    club(PlayerId, CurrentClub), 
    assertz(recommended(PlayerId, Team)).

% Règle pour recommander des joueurs avec une certaine caractéristique physique
recommend_body_type(PlayerId, Team, BodyType) :- 
    body_type(PlayerId, Body), 
    Body == BodyType, 
    assertz(recommended(PlayerId, Team)).


% Règles de style de jeu

style_de_jeu('tiki-taka').
style_de_jeu('contre-attaque').
style_de_jeu('jeu direct').
style_de_jeu('jeu de possession').
style_de_jeu('pressing haut').
style_de_jeu('contre-pressing').
style_de_jeu('jeu de possession rapide').
style_de_jeu('jeu défensif').
style_de_jeu('contre-attaque rapide').
style_de_jeu('jeu collectif').
style_de_jeu('jeu aérien').
style_de_jeu('jeu physique').
style_de_jeu('jeu technique').
style_de_jeu('jeu créatif').
style_de_jeu('jeu direct').
style_de_jeu('jeu offensif').
style_de_jeu('jeu défensif compact').
style_de_jeu('jeu long').
style_de_jeu('jeu en transition').
style_de_jeu('jeu offensif rapide').

% Styles de jeu des équipes
style_de_jeu('FC Barcelona', 'tiki-taka').
style_de_jeu('RealMadrid', 'counter-attack').
style_de_jeu('Liverpool FC', 'high-pressing').
style_de_jeu('Manchester City', 'possession play').
style_de_jeu('Bayern Munich', 'high pressing').
style_de_jeu('Paris Saint-Germain', 'attacking play').
style_de_jeu('Chelsea FC', 'defensive play').
style_de_jeu('Manchester United', 'direct play').
style_de_jeu('Arsenal FC', 'possession play').
style_de_jeu('AC Milan', 'counter-attack').
style_de_jeu('Borussia Dortmund', 'high pressing').
style_de_jeu('Atletico Madrid', 'defensive counter-attacks').
style_de_jeu('Juventus', 'possession play').
style_de_jeu('Tottenham Hotspur', 'high-pressing').
style_de_jeu('Inter Milan', 'counter-attack').
style_de_jeu('Ajax', 'attacking play').
style_de_jeu('FC Porto', 'defensive play').
style_de_jeu('Napoli', 'possession play').
style_de_jeu('Leicester City', 'counter-attack').
style_de_jeu('Everton FC', 'high pressing').
style_de_jeu('Sevilla FC', 'high-pressing').
style_de_jeu('Boca Juniors', 'counter-attack').
style_de_jeu('Lyon', 'attacking play').
style_de_jeu('Leeds United', 'high pressing').
style_de_jeu('Benfica', 'possession play').
style_de_jeu('Rangers FC', 'defensive play').
style_de_jeu('Celtic FC', 'direct play').
style_de_jeu('Ajax', 'possession play').

% Entraîneurs connus
strategie_entraineur('Pep Guardiola', 'possession play').
strategie_entraineur('Jurgen Klopp', 'high pressing').
strategie_entraineur('Diego Simeone', 'defensive counter-attacks').
strategie_entraineur('Carlo Ancelotti', 'possession play').
strategie_entraineur('Zinedine Zidane', 'counter-attack').
strategie_entraineur('Thomas Tuchel', 'attacking play').
strategie_entraineur('Antonio Conte', 'defensive play').
strategie_entraineur('Ole Gunnar Solskjaer', 'direct play').
strategie_entraineur('Mikel Arteta', 'possession play').
strategie_entraineur('Stefano Pioli', 'counter-attack').
strategie_entraineur('Marco Rose', 'high pressing').
strategie_entraineur('Sergio Conceicao', 'defensive play').
strategie_entraineur('Massimiliano Allegri', 'possession play').
strategie_entraineur('Nuno Espirito Santo', 'high pressing').
strategie_entraineur('Simone Inzaghi', 'counter-attack').
strategie_entraineur('Erik ten Hag', 'attacking play').
strategie_entraineur('Sérgio Conceição', 'defensive play').
strategie_entraineur('Luciano Spalletti', 'possession play').
strategie_entraineur('Brendan Rodgers', 'counter-attack').
strategie_entraineur('Rafa Benítez', 'high pressing').
strategie_entraineur('Marcelo Bielsa', 'high pressing').
strategie_entraineur('Jorge Jesus', 'attacking play').
strategie_entraineur('Marcelino', 'defensive play').
strategie_entraineur('Andrea Pirlo', 'possession play').
strategie_entraineur('Steven Gerrard', 'counter-attack').
strategie_entraineur('Diego Maradona', 'direct play').
strategie_entraineur('Ronald Koeman', 'possession play').


recommander_joueur_style(X, Y) :-
    joueur(X),
    club(X, Club),
    style_de_jeu(Club, Style),
    style_de_jeu(Y, Style),
    X \= Y.

% Règles pour recommander des joueurs en fonction des performances des joueurs
recommander_joueur_perf(X, Y) :-
    joueur(X),
    overall(X, OverallX),
    potential(X, PotentialX),
    overall(Y, OverallY),
    potential(Y, PotentialY),
    X \= Y,
    OverallX >= 85,
    PotentialX >= 90,
    OverallY >= 85,
    PotentialY >= 90.

recommander_joueur_strategie(X, Y) :-
    joueur(X),
    club(X, Club),
    strategie_entraineur(Entraineur, Strategie),
    club_entraineur(Club, Entraineur),
    club(Y, Club),
    X \= Y,
    club_strategie(Y, Strategie).

correspond_style_de_jeu(X, 'tiki-taka') :-
    joueur(X),
    possession_de_balle(X, 'Elevee'),
    passes_courtes(X, 'Elevees'),
    rapidite_circulation(X, 'Elevee').

correspond_style_de_jeu(X, 'contre-attaque') :-
    joueur(X),
    vitesse(X, 'Elevee'),
    exploitation_espaces_libres(X, 'Elevee'),
    jeu_transition(X, 'Eleve').

correspond_style_de_jeu(X, 'jeu physique') :-
    joueur(X),
    force(X, 'Elevee'),
    puissance_physique(X, 'Elevee'),
    jeu_aerien(X, 'Eleve').

correspond_style_de_jeu(X, 'jeu direct') :-
    joueur(X),
    passes_longues(X, 'Elevees'),
    recherche_rapide_buts(X, 'Elevee').

correspond_style_de_jeu(X, 'pressing haut') :-
    joueur(X),
    agressivite(X, 'Elevee'),
    jeu_demi_terrain_adverse(X, 'Eleve').