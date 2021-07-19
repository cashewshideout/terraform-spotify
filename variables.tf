variable "spotify_api_key" {
  type        = string
  description = "Set this as the APIKey that the authorization proxy server outputs"
}

variable "playlist_title" {
  type        = string
  description = "Title of your Spotify playlist"
}

variable "playlist_description" {
  type        = string
  description = "Description of your Spotify playlist"
}

variable "artist_list" {
  type        = list(any)
  description = "List of artists to include in your Spotify playlist."
}

variable "playlist_length" {
  type        = number
  description = "Number of songs to include in your Spotify playlist."
}
