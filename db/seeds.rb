# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'

ConsultationMedication.destroy_all
puts "ConsultationMedication destroyed"
Medication.destroy_all
puts "Medication destroyed"
Consultation.destroy_all
puts "Consultation destroyed"
Message.destroy_all
puts "Message destroyed"
Chatroom.destroy_all
puts "Chatroom destroyed"
Patient.destroy_all
puts "Patient destroyed"
Doctor.destroy_all
puts "Doctor destroyed"
puts "--------------------------------------"

my_doctor_1 = Doctor.new(
  email: "hugo.vidal@gmail.com",
  password: "123456",
  first_name: "Hugo",
  last_name: "Vidal",
  phone_number: "076 456 78 92",
  city: "Lausanne",
  zip: "1006",
  street: "Boulevard de Grancy 4"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599040891/1_2_zf5art.png')
my_doctor_1.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_doctor_1.save!

puts "1 new doctor created"
puts "--------------------------------------"

my_patient_1 = Patient.new(
  email: "zachariah.moraly@gmail.com",
  password: "123456",
  first_name: "Zachariah",
  last_name: "Moraly",
  phone_number: "076 319 36 13",
  city: "Lausanne",
  zip: "1006",
  street: "Avenue de France 32",
  avs_number: "756.4423.6040.23"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599040951/jerem_fsfakh.png')
my_patient_1.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_1.save!

my_patient_2 = Patient.new(
  email: "adriana.Companile@gmail.com",
  password: "123456",
  first_name: "Adriana",
  last_name: "Companile",
  phone_number: "021 384 69 87",
  city: "Corseaux",
  zip: "1802",
  street: "Chemin de Pierre-à-Fleur 23",
  avs_number: "453.9769.5008.90"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041167/Adriana-Companile_k294ef.jpg')
my_patient_2.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_2.save!

my_patient_3 = Patient.new(
  email: "adrien.richard@gmail.com",
  password: "123456",
  first_name: "Adrien",
  last_name: "Richard",
  phone_number: "021 586 09 18",
  city: "Prilly",
  zip: "1008",
  street: "Route de Cery 12",
  avs_number: "477.9935.9357.12"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041167/Adrien_Richard_klz8rq.jpg')
my_patient_3.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_3.save!

my_patient_4 = Patient.new(
  email: "andreas.thomas@gmail.com",
  password: "123456",
  first_name: "Andreas",
  last_name: "Thomas",
  phone_number: "022 779 61 14",
  city: "Lausanne",
  zip: "1006",
  street: "Chemin des Trois-Rois 17",
  avs_number: "816.1458.8920.32"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041166/Andreas_Thomas_ruyacr.jpg')
my_patient_4.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_4.save!

my_patient_5 = Patient.new(
  email: "audrey.samuel@gmail.com",
  password: "123456",
  first_name: "Audrey",
  last_name: "Samuel",
  phone_number: "032 867 83 32",
  city: "Pully",
  zip: "1009",
  street: "Avenue Général-Guisan 95",
  avs_number: "153.7569.0051.48"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041167/Audree_Samuel_hfc3pf.jpg')
my_patient_5.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_5.save!

my_patient_6 = Patient.new(
  email: "ange.dubois@gmail.com",
  password: "123456",
  first_name: "Ange",
  last_name: "Dubois",
  phone_number: "021 346 67 31",
  city: "Lausanne",
  zip: "1003",
  street: "Avenue de la Gare 10",
  avs_number: "169.7924.1231.58"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041167/Ange_Dubois_rvwctz.jpg')
my_patient_6.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_6.save!

my_patient_7 = Patient.new(
  email: "beatrice.olivier@gmail.com",
  password: "123456",
  first_name: "Béatrice",
  last_name: "Olivier",
  phone_number: "031 754 53 47",
  city: "Vevey",
  zip: "1800",
  street: "Avenue de la Gare 2",
  avs_number: "751.6574.9658.32"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041167/Beatrice_Olivier_paqwva.jpg')
my_patient_7.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_7.save!

my_patient_8 = Patient.new(
  email: "dorothee.Vincent@gmail.com",
  password: "123456",
  first_name: "Dorothée",
  last_name: "Vincent",
  phone_number: "021 167 53 16",
  city: "Attalens",
  zip: "1616",
  street: "Grand-Rue 11",
  avs_number: "453.9769.5008.90"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041167/Dorothee_Vincent_mchhiv.jpg')
my_patient_8.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_8.save!

my_patient_9 = Patient.new(
  email: "ellis.Myers@gmail.com",
  password: "123456",
  first_name: "Ellis",
  last_name: "Myers",
  phone_number: "021 384 69987",
  city: "Savigny",
  zip: "1073",
  street: "Chemin de la Porat 9",
  avs_number: "193.3933.9894.63"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041167/Ellis_Myers_zkyvn9.jpg')
my_patient_9.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_9.save!

my_patient_10 = Patient.new(
  email: "gerard.martinez@gmail.com",
  password: "123456",
  first_name: "Gérard",
  last_name: "Martinez",
  phone_number: "079 304 28 10",
  city: "Savigny",
  zip: "1073",
  street: "Route de Nialin 7",
  avs_number: "303.4059.1293.28"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041167/Gerard_Martinez_msohyr.jpg')
my_patient_10.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_10.save!

my_patient_11 = Patient.new(
  email: "hayley.robert@gmail.com",
  password: "123456",
  first_name: "Hayley",
  last_name: "Robert",
  phone_number: "022 394 20 38",
  city: "Savigny",
  zip: "1073",
  street: "Route de Saint-Amour 7",
  avs_number: "453.9769.5008.90"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041167/Hayley_Robert_gvxyvi.jpg')
my_patient_11.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_11.save!

my_patient_12 = Patient.new(
  email: "jenna.Diaz@gmail.com",
  password: "123456",
  first_name: "Jenna",
  last_name: "Diaz",
  phone_number: "079 112 39 22",
  city: "Forel",
  zip: "1072",
  street: "Le Frêne 44",
  avs_number: "442.9102.2201.10"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041168/Jenna_Diaz_ugv28c.jpg')
my_patient_12.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_12.save!

my_patient_13 = Patient.new(
  email: "lilianne.bernard@gmail.com",
  password: "123456",
  first_name: "Lilianne",
  last_name: "Bernard",
  phone_number: "021 322 23 56",
  city: "Forel",
  zip: "1072",
  street: "Chemin des Granges 2",
  avs_number: "722.2454.4003.12"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041168/Lilianne_Bernard_a2imgn.jpg')
my_patient_13.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_13.save!

my_patient_14 = Patient.new(
  email: "marc.austin@gmail.com",
  password: "123456",
  first_name: "Marc",
  last_name: "Austin",
  phone_number: "078 223 44 43",
  city: "Cully",
  zip: "1096",
  street: "Chemin des Colombaires 15",
  avs_number: "642.8452.0012.37"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041168/Marc_Austin_lvertg.jpg')
my_patient_14.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_14.save!

my_patient_15 = Patient.new(
  email: "marcel.patel@gmail.com",
  password: "123456",
  first_name: "Marcel",
  last_name: "Patel",
  phone_number: "021 355 39 18",
  city: "Cully",
  zip: "1096",
  street: "Chemin des Colombaires 16",
  avs_number: "453.9269 4308.12"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041168/Marcelle_Patel_iyax1s.jpg')
my_patient_15.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_15.save!

my_patient_16 = Patient.new(
  email: "remi.martinez@gmail.com",
  password: "123456",
  first_name: "Rémi",
  last_name: "Martinez",
  phone_number: "021 123 47 42",
  city: "Ecublens",
  zip: "1024",
  street: "Chemin du Bugnon 8",
  avs_number: "069.7516 4296.92"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041168/Remi_Martinez_wucavo.jpg')
my_patient_16.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_16.save!

my_patient_17 = Patient.new(
  email: "shantay.martin@gmail.com",
  password: "123456",
  first_name: "Shantay",
  last_name: "Martin",
  phone_number: "021 344 69 27",
  city: "La Tour-de-Peilz",
  zip: "1814",
  street: "Chemin du Crotton 10",
  avs_number: "703.4402.1092.12"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041169/Shantay_Martin_ewhpmg.jpg')
my_patient_17.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_17.save!

my_patient_18 = Patient.new(
  email: "toni.moreau@gmail.com",
  password: "123456",
  first_name: "Toni",
  last_name: "Moreau",
  phone_number: "078 900 29 10",
  city: "La Tour-de-Peilz",
  zip: "1814",
  street: "Route de Blonay 253",
  avs_number: "902.3302.1102.23"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041169/Toni_Moreau_al0pxe.jpg')
my_patient_18.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_18.save!

my_patient_19 = Patient.new(
  email: "xiang.simon@gmail.com",
  password: "123456",
  first_name: "Xiang",
  last_name: "Simon",
  phone_number: "076 993 82 47",
  city: "Châtel-Saint-Denis",
  zip: "1618",
  street: "Chemin des Rochettes 91",
  avs_number: "442.2311.7890.34"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041166/Xiang_Simon_pvnuqz.jpg')
my_patient_19.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_19.save!

my_patient_20 = Patient.new(
  email: "geoffrey.martin@gmail.com",
  password: "123456",
  first_name: "Geoffrey",
  last_name: "Martin",
  phone_number: "079 338 19 02",
  city: "Châtel-Saint-Denis",
  zip: "1618",
  street: "Route de Pra de Plan 10",
  avs_number: "433.9732.5001.20"
)
photo = URI.open('https://res.cloudinary.com/dsszx2brq/image/upload/v1599041166/Zachariah_Martin_pbamps.jpg')
my_patient_20.photo.attach(io: photo, filename: 'nes.png', content_type: 'image/png')
my_patient_20.save!

puts "Creating 20 new patients"
puts "--------------------------------------"

my_consultation_1 = Consultation.new(
  title: "Première entrevue",
  date: DateTime.new(2020,7,3,10,30,0),
  public_report: "Réfléchissez à la raison qui a poussé vos proches à prendre contact avec moi, afin que vous puissiez suivre ces séances.",
  private_report: "Zachariah ne souhaite pas être là. Il prétend perdre son temps. Il dit cependant qu'il reviendra.",
  patient: my_patient_1,
  doctor: my_doctor_1
)
my_consultation_1.save!

my_consultation_2 = Consultation.new(
  title: "Seconde séance",
  date: DateTime.new(2020,7,10,10,0,0),
  public_report: "Bravo pour votre engagement. Ne mettez-vous aucune pression. Chaque chose en son temps.",
  private_report: "Zachariah semble être prêt à suivre la thérapie. Il évoque des problèmes qui ne parvient pas à résoudre depuis des années. Il ne souhaite pas en dire d'avantage pour l'instant.",
  patient: my_patient_1,
  doctor: my_doctor_1
)
my_consultation_2.save!

my_consultation_3 = Consultation.new(
  title: "Consulation hebdomadaire",
  date: DateTime.new(2020,7,14,12,15,0),
  public_report: "Demandez-vous si vos proches sont fiers de vous. Pensez à la réaction de votre mère lors que vous avez obtenu votre diplôme.",
  private_report: "Zachariah évoque le harcèlement subi enfant qui influence ces relations actuelles. Il a l'impression de ne pas être respecté pour ce qu'il est par son entourage.",
  patient: my_patient_1,
  doctor: my_doctor_1
)
my_consultation_3.save!

my_consultation_4 = Consultation.new(
  title: "Suivi hebdomadaire",
  date: DateTime.new(2020,7,22,17,15,0),
  public_report: "Pensez aux moments positifs partagés avec votre père. Quel était votre état d'esprit ?",
  private_report: "Zachariah semble soulagé. Sa mère semble très fière de son fils unique. La relation avec son père est cependant problématique. A creuser.",
  patient: my_patient_1,
  doctor: my_doctor_1
)
my_consultation_4.save!

my_consultation_5 = Consultation.new(
  title: "Séance hebdomadaire",
  date: DateTime.new(2020,7,30,14,0,0),
  public_report: "Trouvez 5 éléments que vous pourriez améliorer dans votre quotidien.",
  private_report: "Zachariah admet ne plus parler avec son père depuis cinq ans (séparation de ses parents). Son père n'a jamais accepté son burnout. Le qualifie de personne fragile.",
  patient: my_patient_1,
  doctor: my_doctor_1
)
my_consultation_5.save!

my_consultation_6 = Consultation.new(
  title: "Consultation hebdomadaire",
  date: DateTime.new(2020,8,4,16,15,0,0),
  public_report: "Félicitations pour votre reprise. Pensez à ce que vous ressentez lors que vous rentrez d'une journée de travail.",
  private_report: "Zachariah reprend son travail après 12 mois d'arrêt maladie. Il semble reprendre confiance.",
  patient: my_patient_1,
  doctor: my_doctor_1
)
my_consultation_6.save!

my_consultation_7 = Consultation.new(
  title: "Suivi hebdomadaire",
  date: DateTime.new(2020,8,12,11,45,0),
  public_report: "Pensez peut-être à annoncer la bonne nouvelle à votre père.",
  private_report: "Zachariah se sent mieux. Aime son travail. Hésite à annoncer la nouvelle à son père.",
  patient: my_patient_1,
  doctor: my_doctor_1
)
my_consultation_7.save!

my_consultation_8 = Consultation.new(
  title: "Consultation hebdomadaire",
  date: DateTime.new(2020,8,20,8,15,0),
  public_report: "Et si vous proposiez à votre père de me recontrer ?",
  private_report: "Zachariah évoque le message à son père. Son père lui répond après quelques jours. Zachariah ne parvient pas à décrire ce qu'il ressent.",
  patient: my_patient_1,
  doctor: my_doctor_1
)
my_consultation_8.save!

my_consultation_9 = Consultation.new(
  title: "Séance hebdomadaire",
  date: DateTime.new(2020,8,26,15,0,0),
  public_report: "Repensez à notre entrevue avec votre père. Avez-vous pu lui poser toutes les questions que vous aviez en tête ?",
  private_report: "Rencontre avec le père de Zachariah. Un personnage très strict. A de grands besoins de contrôle. Se méfie de mes questions. Zachariah n'ose pas s'exprimer devant lui.",
  patient: my_patient_1,
  doctor: my_doctor_1
)
my_consultation_9.save!

my_consultation_10 = Consultation.new(
  title: "Suivi hebdomadaire",
  date: DateTime.new(2020,9,1,10,30,0),
  public_report: "Réfléchissez aux raisons qui vous poussent à admirer votre père.",
  private_report: "Le père de Zachariah prétend avoir été humilié lors de la séance. Zachariah culpabilise et me reproche cette thérapie familiale. Il n'a pas reparlé à son père depuis.",
  patient: my_patient_1,
  doctor: my_doctor_1
)
my_consultation_10.save!

my_consultation_P2 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_2,
  doctor: my_doctor_1
)
my_consultation_P2.save!

my_consultation_P3 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_3,
  doctor: my_doctor_1
)
my_consultation_P3.save!

my_consultation_P4 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_4,
  doctor: my_doctor_1
)
my_consultation_P4.save!

my_consultation_P5 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_5,
  doctor: my_doctor_1
)
my_consultation_P5.save!

my_consultation_P6 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_6,
  doctor: my_doctor_1
)
my_consultation_P6.save!

my_consultation_P7 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_7,
  doctor: my_doctor_1
)
my_consultation_P7.save!

my_consultation_P8 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_8,
  doctor: my_doctor_1
)
my_consultation_P8.save!

my_consultation_P9 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_9,
  doctor: my_doctor_1
)
my_consultation_P9.save!

my_consultation_P10 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_10,
  doctor: my_doctor_1
)
my_consultation_P10.save!

my_consultation_P11 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_11,
  doctor: my_doctor_1
)
my_consultation_P11.save!

my_consultation_P12 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_12,
  doctor: my_doctor_1
)
my_consultation_P12.save!

my_consultation_P13 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_13,
  doctor: my_doctor_1
)
my_consultation_P13.save!

my_consultation_P14 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_14,
  doctor: my_doctor_1
)
my_consultation_P14.save!

my_consultation_P15 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_15,
  doctor: my_doctor_1
)
my_consultation_P15.save!

my_consultation_P16 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_16,
  doctor: my_doctor_1
)
my_consultation_P16.save!

my_consultation_P17 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_17,
  doctor: my_doctor_1
)
my_consultation_P17.save!

my_consultation_P18 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_18,
  doctor: my_doctor_1
)
my_consultation_P18.save!

my_consultation_P19 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_19,
  doctor: my_doctor_1
)
my_consultation_P19.save!

my_consultation_P20 = Consultation.new(
  title: "Consultation checkup",
  date: "2020,8,28,17,0,0",
  patient: my_patient_20,
  doctor: my_doctor_1
)
my_consultation_P20.save!

puts "New consultations created"
puts "--------------------------------------"

url = "https://www.doctissimo.fr/classe-PL-ANTIDEPRESSEURS.htm"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.multi-columns-2 li a').each do |element|
  my_medication = Medication.new(
    name: element.text.strip
  )
  my_medication.save
end

puts "270 new medication created"
puts "--------------------------------------"

my_consultation_medication_1 = ConsultationMedication.new(
  consultation: my_consultation_1,
  medication: Medication.all.where(name: "PROZAC").first,
  quantity: 3,
  description: "Matin midi et soir"
)
my_consultation_medication_1.save!

my_consultation_medication_2 = ConsultationMedication.new(
  consultation: my_consultation_1,
  medication:Medication.all.where(name: "FLUOXETINE BAYER").first,
  quantity: 2,
  description: "Au déjeuner"
)
my_consultation_medication_2.save!

my_consultation_medication_3 = ConsultationMedication.new(
  consultation: my_consultation_1,
  medication: Medication.all.where(name: "NARDIL").first,
  quantity: 2,
  description: "Optionnel, en cas de crise de panique"
)
my_consultation_medication_3.save!

my_consultation_medication_4 = ConsultationMedication.new(
  consultation: my_consultation_2,
  medication: Medication.all.where(name: "PROZAC").first,
  quantity: 3,
  description: "Matin midi et soir"
)
my_consultation_medication_4.save!

my_consultation_medication_5 = ConsultationMedication.new(
  consultation: my_consultation_2,
  medication:Medication.all.where(name: "FLUOXETINE BAYER").first,
  quantity: 2,
  description: "Au déjeuner"
)
my_consultation_medication_5.save!

my_consultation_medication_6 = ConsultationMedication.new(
  consultation: my_consultation_2,
  medication: Medication.all.where(name: "NARDIL").first,
  quantity: 2,
  description: "Optionnel, en cas de crise de panique"
)
my_consultation_medication_6.save!

my_consultation_medication_7 = ConsultationMedication.new(
  consultation: my_consultation_3,
  medication: Medication.all.where(name: "PROZAC").first,
  quantity: 3,
  description: "Matin midi et soir"
)
my_consultation_medication_7.save!

my_consultation_medication_8 = ConsultationMedication.new(
  consultation: my_consultation_3,
  medication: Medication.all.where(name: "NARDIL").first,
  quantity: 2,
  description: "Optionnel, en cas de crise de panique"
)
my_consultation_medication_8.save!

my_consultation_medication_9 = ConsultationMedication.new(
  consultation: my_consultation_4,
  medication: Medication.all.where(name: "PROZAC").first,
  quantity: 3,
  description: "Matin midi et soir"
)
my_consultation_medication_9.save!

my_consultation_medication_10 = ConsultationMedication.new(
  consultation: my_consultation_4,
  medication: Medication.all.where(name: "NARDIL").first,
  quantity: 2,
  description: "Optionnel, en cas de crise de panique"
)
my_consultation_medication_10.save!

my_consultation_medication_11 = ConsultationMedication.new(
  consultation: my_consultation_5,
  medication: Medication.all.where(name: "PROZAC").first,
  quantity: 3,
  description: "Matin midi et soir"
)
my_consultation_medication_11.save!

my_consultation_medication_12 = ConsultationMedication.new(
  consultation: my_consultation_5,
  medication: Medication.all.where(name: "NARDIL").first,
  quantity: 2,
  description: "Optionnel, en cas de crise de panique"
)
my_consultation_medication_12.save!

my_consultation_medication_13 = ConsultationMedication.new(
  consultation: my_consultation_6,
  medication: Medication.all.where(name: "PROZAC").first,
  quantity: 3,
  description: "Matin midi et soir"
)
my_consultation_medication_13.save!

my_consultation_medication_14 = ConsultationMedication.new(
  consultation: my_consultation_6,
  medication:Medication.all.where(name: "FLUOXETINE BAYER").first,
  quantity: 2,
  description: "Au déjeuner"
)
my_consultation_medication_14.save!

my_consultation_medication_15 = ConsultationMedication.new(
  consultation: my_consultation_6,
  medication: Medication.all.where(name: "NARDIL").first,
  quantity: 2,
  description: "Optionnel, en cas de crise de panique"
)
my_consultation_medication_15.save!

my_consultation_medication_16 = ConsultationMedication.new(
  consultation: my_consultation_7,
  medication:Medication.all.where(name: "FLUOXETINE BAYER").first,
  quantity: 2,
  description: "Au déjeuner"
)
my_consultation_medication_16.save!

my_consultation_medication_17 = ConsultationMedication.new(
  consultation: my_consultation_7,
  medication: Medication.all.where(name: "NARDIL").first,
  quantity: 2,
  description: "Optionnel, en cas de crise de panique"
)
my_consultation_medication_17.save!

my_consultation_medication_18 = ConsultationMedication.new(
  consultation: my_consultation_8,
  medication: Medication.all.where(name: "NARDIL").first,
  quantity: 2,
  description: "Optionnel, en cas de crise de panique"
)
my_consultation_medication_18.save!

my_consultation_medication_19 = ConsultationMedication.new(
  consultation: my_consultation_9,
  medication: Medication.all.where(name: "NARDIL").first,
  quantity: 2,
  description: "Optionnel, en cas de crise de panique"
)
my_consultation_medication_19.save!

my_consultation_medication_20 = ConsultationMedication.new(
  consultation: my_consultation_10,
  medication: Medication.all.where(name: "PROZAC").first,
  quantity: 3,
  description: "Matin midi et soir"
)
my_consultation_medication_20.save!

my_consultation_medication_21 = ConsultationMedication.new(
  consultation: my_consultation_10,
  medication:Medication.all.where(name: "FLUOXETINE BAYER").first,
  quantity: 2,
  description: "Au déjeuner"
)
my_consultation_medication_21.save!

my_consultation_medication_22 = ConsultationMedication.new(
  consultation: my_consultation_10,
  medication: Medication.all.where(name: "NARDIL").first,
  quantity: 2,
  description: "Optionnel, en cas de crise de panique"
)
my_consultation_medication_22.save!

puts "Prescriptions added for all consultations"
puts "--------------------------------------"

puts "Seeding done"

