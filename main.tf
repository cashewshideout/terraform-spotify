terraform {
  required_providers {
    spotify = {
      version = "~> 0.1.5"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

# Create a list of the length specified from the original list of tracks
# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/shuffle
resource "random_shuffle" "trackList" {
  input        = data.spotify_search_track.by_artist.tracks.*.id
  result_count = var.playlist_length
}

resource "spotify_playlist" "playlist" {
  name        = var.playlist_title
  description = var.playlist_description
  public      = true

  tracks = random_shuffle.trackList.result
}

data "spotify_search_track" "by_artist" {
  artists = var.artist_list
}

output "tracks" {
  value = data.spotify_search_track.by_artist.tracks
}
