all: listings.csv reviews.csv

listings.csv, reviews.csv: download.R
	R --vanilla < download.R

df_grouped.csv: clean.R
	R --vanilla < clean.R

df_pivot.csv: pivot_table.R
	R --vanilla < pivot_table.R

df_plot.pdf: plot.R
	R --vanilla < plot_Antwerp.R

df_plot_all.pdf: plot_all.R
	R --vanilla < plot_all.R
