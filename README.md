# Der Chor Website

Built with middleman, build and deploy via netlify

## To run locally

Use the following commands to install and run, all necessary packages.

* 1x `bundle install`
* 1x `yarn`
* `middleman`

## To Note

* I started to include TailwindCSS for future stylings, but the rest was done in SCSS, however I only imported the scss output when tranistioning to middleman
* Netlify CMS Definition may not be up to date yet, so have some patience :-)


## How to update

Gehe zu https://derchor.netlify.com/admin und logge dich dort ein, falls du authorisiert bist (via Netlify Identity).


## TODO: with middleman:

* restructure the design
* Correct all the imagepaths
* Or configure the uploadpaths accordingly
* Coro Flamenco scheint nicht die neusten Daten drin zu haben, besser nochmals nachschauen, ob ich nicht doch veraltete Daten haben.
* Der Instagram Link neben dem Facebook Link
* Die neue Rubrik Gönner
* Auf der Kontaktseite habe ich die nächsten Anpassungen, welche im Herbst aktuell werden, schon auskommentiert vorbereitet, dass ich jeweils die Vorlage schon habe.
* Die Durchklickrichtung bei den Pfeilen habe ich "logischer" ausgerichtet, dass man in die gleiche Richtung klicken kann, wie auch die Bilder der Konzertflyer abgebildet sind.
* Alle Links, welche innerhalb der Seite waren, habe ich von relativen /webseite/goenner.html o.ä. zu https://www.derchor.ch/website/goenner.html o.ä. abgeändert. So funktionieren die Bezüge wieder.
* Und was auch super wäre, wenn du schon grad dran bist, könntest du eventuell schauen, dass die Linkliste, welche beim Computerbrowser links ist und z.B. auf dem Smartphone oben, dass auf dem Smartphone auch alle Links sichtbar sind im Hochkant-Modus. Aktuell sieht man z.B. Facebook und Insta nicht, weil zu wenig Platz. Was meinst du? Kann man dies im responsiven Design beim Smartphone 2-zeilig machen?
* Liedtexte template wieder übernehmen?
* Alte Files komplett entfernen (travis, jekyll stuff...)
* people Seiten und template
