# Dice

A sample Flutter game - Liar's Dice

## Project Idea

It's really a sample app for playing with a Supabase backend, but might as well make a game out of it :)

## Development

### Code Generation

`flutter pub run build_runner build --delete-conflicting-outputs`

### Supabase

#### Install

- [Docker](https://docs.docker.com/desktop/mac/install/)
- Supabase CLI: `brew install supabase/tap/supabase`

#### Run

1. Run `supabase init`
1. Run `supabase start`
1. Add a `.env` file to the root directory with the following:
   1. `SUPABASE_URL` for release build URL, from the console
   1. `SUPABASE_ANON_KEY` for release build token, from the console
   1. `SUPABASE_DEV_URL` for debug build URL, from the output of `supabase start`
   1. `SUPABASE_DEV_ANON_KEY` for debug build token, from the output of `supabase start`

### Develop Locally

#### Working over LAN

- Set SUPABASE_DEV_URL to ip:port where ip is the local IP for the machine running the Supabase instance
- Run Flutter web app manually `flutter run -d web-server --web-hostname 0.0.0.0 --web-port 8989` and then access it through the machines local ip address
