#'Look at this graph
#'
#'\code{nickelgraph} Look at this graph
#'
#'@import audio
#'@import stringr
#'  
#'  
#'@return NULL
#'  
#' @examples
#' # 
#' nickelgraph()
#' 
#'@export
nickelgraph <- function() {
    sound_path <- system.file("sounds/nickelgraph.wav", package="martherus")
    tryCatch(play_file(sound_path), error = function(ex) {
      warning("nickelgraph() could not play the sound due to the following error:\n", ex)
    })
}

is_wav_fname <- function(fname) {
  stringr::str_detect(fname, regex("\\.wav$", ignore_case = TRUE))
}

escape_spaces <- function(s) {
  stringr::str_replace_all(s, " ", "\\\\ ")
}

play_vlc <- function(fname) {
  fname <- escape_spaces(fname)
  system(paste0("vlc -Idummy --no-loop --no-repeat --playlist-autostart --no-media-library --play-and-exit ", fname), 
         ignore.stdout = TRUE, ignore.stderr=TRUE,wait = FALSE)
  invisible(NULL)
}

play_paplay <- function(fname) {
  fname <- escape_spaces(fname)
  system(paste0("paplay ", fname), ignore.stdout = TRUE, ignore.stderr=TRUE,wait = FALSE)
  invisible(NULL)
}

play_aplay <- function(fname) {
  fname <- escape_spaces(fname)
  system(paste0("aplay --buffer-time=48000 -N -q ", fname), ignore.stdout = TRUE, ignore.stderr=TRUE,wait = FALSE)
  invisible(NULL)
}

play_audio <- function(fname) {
  sfx <- audio::load.wave(fname)
  audio::play(sfx)
}

play_file <- function(fname) {
  if(Sys.info()["sysname"] == "Linux") {
    if(is_wav_fname(fname) && nchar(Sys.which("paplay")) >= 1) {
      play_paplay(fname)
    } else if(is_wav_fname(fname) && nchar(Sys.which("aplay")) >= 1) {
      play_aplay(fname)
    } else if(nchar(Sys.which("vlc")) >= 1) {
      play_vlc(fname)
    } else {
      play_audio(fname)
    }
  } else {
    play_audio(fname)
  }
}
