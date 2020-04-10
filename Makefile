FILES=Koha/Plugin/Fr/Bulac/Mannequin.pm Koha/Plugin/Fr/Bulac/Mannequin/tool-mannequin.tt Koha/Plugin/Fr/Bulac/Mannequin/i18n/default.inc Koha/Plugin/Fr/Bulac/Mannequin/i18n/en.inc Koha/Plugin/Fr/Bulac/Mannequin/i18n/fr-FR.inc

all: koha-module-mannequin.kpz
	zip koha-module-mannequin.kpz $(FILES)

koha-module-mannequin.kpz: $(FILES)

clean:
	find . -name '*~' -delete
