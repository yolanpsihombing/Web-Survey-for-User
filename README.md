# Web-Survey-for-User

NOTES:
a. Menyesuaikan dan merapikan front end sesuai UI Design yang ada di Figma
b. Belum bisa redirect kalau mengakses pages, jadi harus diubah di bagian URL. 
Contoh: - http://127.0.0.1:8000/start/
        - http://127.0.0.1:8000/survei/
        - http://127.0.0.1:8000/layanan/
        - http://127.0.0.1:8000/responden/
	- http://127.0.0.1:8000/pertanyaan/

c. Fungsi Create, Show, Edit pada table Responden belum selesai.
d. Fungsi Delete Layanan belum selesai


-- INSTALL CONFIGURATION SYMFONYY FRAMEWORK -- 

1. Cara melihat versi php = symfony php --version (PHP version 7.4.16)
2. Melakukan install konfigurasi di symfony melalui terminal:
- php bin/console doctrine:migrations:migrate
- composer require symfony/twig-bundle
- composer update --prefer-source --prefer-dist
- composer require white-october/pagerfanta-bundle
- composer require symfony/monolog-bundle
- composer require --dev symfony/profiler-pack
- composer require symfony/serializer
- composer require symfony/serializer-pack

3. Create new DB "db_sikemas.sql" dan import database

4. Cara compile projek di symfony = 
- symfony server:start
- php bin/console server:run
- Copy URL ke browser web = http://127.0.0.1:8000
- akan muncul error di package "src/templates/home/index.html.twig" 
- beri tag comment pada bagian package "src/templates/home/index.html.twig" : {# <div class="col-md-6 col-sm-12">
                    								<img class="img-fluid" alt="illustration" src="{{ asset('build/img/illustrasion.png') }}">		
										</div> #}
- Bagian html nya ada di folder "src/templates"
- Bagian bootstrap nya ada di folder "../TAD3TI-Group09/vendor/twbs/bootstrap/site/static/docs/4.6/assets/

5. Link Prototype Design Figma (ada di folder Web Survey) : https://www.figma.com/file/dUL64d1MjjoeVbbn992hOf/Survey-App?node-id=97%3A437
6. Contoh kompetitor survey Tebing Tinggi : https://sikemas.tebingtinggikota.go.id/


