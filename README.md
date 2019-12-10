# Oracle-Project

# ==> ** Voilà ce que résout ce projet ** <==


On vous donne le schéma de base de données ADMMEDIC suivant qui représente les visites dans un nouveau centre médical.

Medecin(matricule, nom_med, prenom_med, specialite),<br/>
Patient(noss,nom_pat, prenom_pat, nbpriseMax, quantiteMax),
Medicament(code_med, libelle),<br/>
Consultation(Num_consul, date_consult, #matricule, #noss),<br/>
Prescription(#code_med, #Num_consul, nbprise, quantite).

Travail demandé :
En utilisant Oracle comme système de gestion de base des données, on vous demande de répondre aux questions suivantes :

1. Création des tables.<br/>
2. Remplissage des tables par des données fictives.<br/>
3. Création des séquences et des trigger nécessaires pour l’alimentation des clés primaires des tables.<br/>
4. Créer un trigger qui permet de vérifier lors de l’insertion d’une ligne dans la table Prescription, si le nbprise ou la quantite ne dépassent pas les valeurs maximales indiquées dans la table médicament. Si c’est le cas il faut afficher un message d’alarme pour notifier le médecin qu’il a dépassé les doses normales.<br/>
5. Nous voulons créer un package contenant les fonctions et procédures suivantes :<br/>
• Pour chaque table création d’une procédure PinsertNomTable qui prend en entrée autant de paramètres que d’attributs dans la table et permet d’insérer une nouvelle ligne dans cette dernière.<br/>
• Pour chaque table création d’une procédure PUpdateNomTable qui prend en entrée autant de paramètres que d’attributs dans la table et permet de mettre-à-jours la ligne dont la clé-primaire correspond au numéro passé en paramètre.<br/>
• Pour chaque table création d’une procédure PDeleteNomTable qui prend en entrée un nombre p_id et permet de supprimer la ligne dont la clé-primaire correspond au numéro p_id passé en paramètre.<br/>
• Une procédure qui permet d’afficher la liste des noms et prénoms des médecins sachant leur spécialité.<br/>
• Une fonction qui calcule et renvoie pour un médecin donné (dont la matricule est passée en paramètre) le pourcentage de consultation (PC) effectué par celui-ci ; sachant que PC est calculé comme suit : <br/> PC = nb_consultation_medecin/nb_consultations_total .<br/>
• Une procédure qui permet d’afficher pour un patient donné (dont le numéro de sécurité sociale est passé en paramètre) la liste des noms des médecins avec lesquels il a fait des consultations et les dates des consultations. La liste doit être ordonnée dans l’ordre chronologique des consultations.<br/>
• Une procédure qui permet d’afficher pour un patient donné (dont le numéro de sécurité sociale est passé en paramètre) la liste des médicaments qui lui ont été prescrit et leurs nombres de prises.<br/>
NB
- Dans toutes les fonctions et procédures il faut prévoir de programmer la partie gestion des exceptions.
