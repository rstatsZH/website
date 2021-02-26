# header ------------------------------------------------------------------

# Description: A script to theme xaringan slides. All xaringan options are 
# set here outside of another setup.Rmd. This script will be run whenever a
# new argument was added to the xaringan theme.

# load packages -----------------------------------------------------------

library(xaringanthemer)


# set options -------------------------------------------------------------

style_mono_accent(
  base_color = "#0F4C81", # Pantone Classic Blue
  header_font_google = google_font("Montserrat"),
  code_font_google = google_font("Fira Mono"), 
  code_font_size = "1.2rem",
  text_font_size = "1.4rem", 
  header_h1_font_size = "2.0rem",
  header_h2_font_size = "1.75rem",
  header_h3_font_size = "1.5rem",
  footnote_font_size = "0.8rem",
  footnote_position_bottom = "20px",
  header_background_padding = "2rem",
  outfile = here::here("slides/assets/css/xaringan-themer.css")
)
