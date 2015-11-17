User.create!({email: "admin@live.com",
              password: "password",
              country: "Fake Country",
              is_admin: true})

ga = Committee.create!({name: "United Nations General Assembly"})
nato = Committee.create!({name: "North Atlantic Treaty Organization"})
sc = Committee.create!({name: "United Nations Security Council"})
who = Committee.create!({name: "World Health Organization (Novice)"})
ecosoc = Committee.create!({name: "United Nation Economic and Social Council"})
au = Committee.create!({name: "The African Union"})
eu = Committee.create!({name: "The Council of the European Union"})
las = Committee.create!({name: "The League of Arab States"})
asean = Committee.create!({name: "The Association of South East Asian Nations"})
oas = Committee.create!({name: "The Council of the Organization of American States"})
usa = Committee.create!({name: "Cabinet of the United States"})
rus = Committee.create!({name: "Cabinet of the Russian Federation"})
chi = Committee.create!({name: "Cabinet of the People’s Republic of China"})
uk = Committee.create!({name: "Cabinet of the United Kingdom of Great Britain and Northern Ireland"})
hga = Committee.create!({name: "General Assembly (2003)"})
hsc = Committee.create!({name: "Security Council (2003)"})
hlas = Committee.create!({name: "The League of Arab States (2003)"})
sen = Committee.create!({name: "US Senate (2003)"})
fre = Committee.create!({name: "Cabinet of the French Republic (2003)"})
hus = Committee.create!({name: "Cabinet of the United States of America (2003)"})
iraq = Committee.create!({name: "Cabinet of Republic of Iraq (2003)"})
iran = Committee.create!({name: "Cabinet of the Islamic Republic of Iran (2003)"})
ksa = Committee.create!({name: "Cabinet of Kingdom of Saudi Arabia (2003)"})
icj = Committee.create!({name: "International Court of Justice"})
bp = Committee.create!({name: "Black Paper"})

#============================================================

##TOPICS BY COMMITTEE

#Black Paper - Default
Topic.create!({name: "Black Paper", committee_id: bp.id})

#ICJ
Topic.create!({name: "Republic of Congo v France", committee_id: icj.id})
Topic.create!({name: "El Salvador v Honduras", committee_id: icj.id})
Topic.create!({name: "USA v Mexico", committee_id: icj.id})

#HGA
Topic.create!({name: "Weapons of Mass Destruction and Disarmament in the Middle East", committee_id: hga.id})
Topic.create!({name: "International Sanctions Against Human Aggressors", committee_id: hga.id})
Topic.create!({name: "International Freedom of the Press", committee_id: hga.id})

#HSC
Topic.create!({name: "An Overview of Middle East Peace", committee_id: hsc.id})
Topic.create!({name: "International Sanctions Against Human Aggressors", committee_id: hsc.id})
Topic.create!({name: "Combatting International Terrorism", committee_id: hsc.id})

#HLAS
Topic.create!({name: "Opposition Against US Plans for an Invasion of Iraq", committee_id: hlas.id})
Topic.create!({name: "Maintaining International Stability and Security in the Middle East", committee_id: hlas.id})

#SEN
Topic.create!({name: "The Department of Homeland Security/Confirmation of Secretary Ridge", committee_id: sen.id})
Topic.create!({name: "Implementation of the USA PATRIOT Act and Relevant Agencies", committee_id: sen.id})
Topic.create!({name: "International Sanctions", committee_id: sen.id})

#FRE
Topic.create!({name: "Opposition to the Iraq War", committee_id: fre.id})
Topic.create!({name: "The Threat of Domestic Terrorism", committee_id: fre.id})

#HUS
Topic.create!({name: "Weapons of Mass Destruction in Iraq", committee_id: hus.id})
Topic.create!({name: "The War on Terror", committee_id: hus.id})

#IRAN
Topic.create!({name: "Iranian Nuclear Policy", committee_id: iran.id})
Topic.create!({name: "The Fall of the Regime of Saddam Hussein", committee_id: iran.id})

#IRAQ
Topic.create!({name: "Strengthening Regional Alliances", committee_id: iraq.id})
Topic.create!({name: "Preparations for an American Invasion", committee_id: iraq.id})

#KSA
Topic.create!({name: "Maintaining Saudi Arabia's Status in the International Community as a Leading Muslim Nation", committee_id: ksa.id})
Topic.create!({name: "Implications of a Potential U.S. Invasion of Iraq", committee_id: ksa.id})

#ASEAN
Topic.create!({name: "Furthering Integration in Southeast Asia", committee_id: asean.id})
Topic.create!({name: "The Threat of Cyber Terrorism to Economic Infrastructures", committee_id: asean.id})
Topic.create!({name: "The Role of Women in Sustainable Development", committee_id: asean.id})

#AU
Topic.create!({name: "The Situation in South Sudan", committee_id: au.id})
Topic.create!({name: "The Threat of Islamic Extremism", committee_id: au.id})
Topic.create!({name: "The Economic Impact of HIV/AIDS", committee_id: au.id})

#ECOSOC
Topic.create!({name: "Food Security in the Developing World", committee_id: ecosoc.id})
Topic.create!({name: "The Post-2015 Development Agenda", committee_id: ecosoc.id})
Topic.create!({name: "Programme of Action for Least Developed Countries (LDCs)", committee_id: ecosoc.id})

#EU
Topic.create!({name: "Ensuring Access to Reliable Energy Supplies", committee_id: eu.id})
Topic.create!({name: "The Threat of Cyber Terrorism", committee_id: eu.id})
Topic.create!({name: "The European Migration Crisis", committee_id: eu.id})

#LAS
Topic.create!({name: "Strengthening Relations between Member States", committee_id: las.id})
Topic.create!({name: "The Conflict in Yemen", committee_id: las.id})
Topic.create!({name: "Countering the Potential Cyberwarfare Capabilities of Israel", committee_id: las.id})

#NATO
Topic.create!({name: "Strengthening Member Nations against Cyber Warfare", committee_id: nato.id})
Topic.create!({name: "Regional Security Challenges in the Mediterranean and the Levant", committee_id: nato.id})
Topic.create!({name: "Revisiting the Doctrine on the Use of Force: the Application of R2P on Non-Alliance Nations", committee_id: nato.id})

#OAS
Topic.create!({name: "The Threat of Cyber Weapons", committee_id: oas.id})
Topic.create!({name: "Determining Possession of Border Conflict Zones", committee_id: oas.id})
Topic.create!({name: "Multidimensional Approaches to the Security of American States", committee_id: oas.id})

#GA
Topic.create!({name: "Moving Towards Sustainable Development Goals", committee_id: ga.id})
Topic.create!({name: "Women in International Peace and Security", committee_id: ga.id})
Topic.create!({name: "International Consensus on Access to Renewable Energy", committee_id: ga.id})

#SC
Topic.create!({name: "Achieving Stability in the Middle East", committee_id: sc.id})
Topic.create!({name: "The Threat of Cyberwarfare", committee_id: sc.id})
Topic.create!({name: "Examining the Prospects of Security Council Reform", committee_id: sc.id})

#WHO
Topic.create!({name: "Learning from Ebola: Improving International Responses to Infectious Diseases", committee_id: who.id})
Topic.create!({name: "Ensuring the Safety of International Aid Workers", committee_id: who.id})
Topic.create!({name: "Providing for Workers' Safety in the Developing World", committee_id: who.id})

#CHI
Topic.create!({name: "Re-Examining Policies towards the Middle East", committee_id: chi.id})
Topic.create!({name: "The Threat of Domestic Terrorism", committee_id: chi.id})

#UK
Topic.create!({name: "Latin American Relations", committee_id: uk.id})
Topic.create!({name: "The Future of European Integration", committee_id: uk.id})

#USA
Topic.create!({name: "Assessing the Mission against the Islamic State", committee_id: usa.id})
Topic.create!({name: "The Threat of Cyberwarfare and Cyberterrorism", committee_id: usa.id})

#RUS
Topic.create!({name: "Securing Russian Assets against the Threat of Cyberattack", committee_id: rus.id})
Topic.create!({name: "Stabilizing Energy Partnerships in Central Asia", committee_id: rus.id})
