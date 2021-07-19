# Terraform and Spotify

## Notes
This is expanding on the scripts from the "Create a Spotify Playlist with Terraform" tutorial.

Follow along with the tutorial at [learn.hashicorp.com](https://learn.hashicorp.com/tutorials/terraform/spotify-playlist).

Original Repository can be found at [https://github.com/hashicorp/learn-terraform-spotify](https://github.com/hashicorp/learn-terraform-spotify)

## Prerequisits

To use these scripts you will need:

- Terraform version 1.0+
- Docker Desktop
- Spotify developer account

Links to create these and how to set up the spotify developer access can be found in the original tutorial.

## Description

This terraform script creates a Spotify playlist with a specified number of songs from a listed artist.

## Example

```
# terraform.tfvars

spotify_api_key = ""
playlist_length = 7
artist_list     = ["Queen"]
playlist_title = "Terraform Summer Playlist"
playlist_description = "This play list was created with Terraform"
```

![Created Spotify Playlist with 7 tracks from the artist Queen](/images/spotify-playlist.jpg)