abandonned in favor of https://github.com/fenollp/dockerhost-tools--yt-dlp/blob/94587acf41e4a8c010b6cb8e5d646afd62f66d99/Dockerfile

https://github.com/Trevelopment/vlc-super-skipper
https://github.com/Anndrey24/VLC_Speed_Controller/blob/main/vlc_speed_controller.lua

<h1 align="center">Sponsor Skip</h1>
<h3 align="center">For VLC Media Player</h3>
<h4 align="center">SponsorBlock, skip intro, adapt playback speed automatically</h4>
<h5 align="center"><a href="https://addons.videolan.org/browse/">VLC Addons page</a></h5>

## Features
* Skip sponsor time ranges
	* based on [SponsorBlock](https://sponsor.ajay.app/)
	* looks for YouTube video ID in file name

https://gist.github.com/ajayyy/aa9f8ded2b573d4f73a3ffa0ef74f796
	https://github.com/ajayyy/SponsorBlock/wiki/K-Anonymity

```shell
https://sponsor.ajay.app/api/skipSegments/d2f6?categories=[%22sponsor%22,%22intro%22,%22outro%22,%22selfpromo%22,%22music_offtopic%22,%22preview%22]
```
```json
[
{
"videoID": "lgZBlD-TCFE",
"hash": "d2f628107f0ae76a68b4d12d7721487d3c8df53175374abeafab47ddc83e2909",
"segments": [
{
"category": "sponsor",
"actionType": "skip",
"segment": [
0,
4.3414435
],
"UUID": "5628bf6192e5e46734402f742dd12a16b43576af986a3dc8acabc32f5f7adfac2",
"videoDuration": 772.7833
},
{
"category": "sponsor",
"actionType": "skip",
"segment": [
323.69843,
349.76633
],
"UUID": "53d4b642508df77c98a31bba3b47e95250f1c377081c434290ec116ffbde5bcd9",
"videoDuration": 772.761
},
{
"category": "intro",
"actionType": "skip",
"segment": [
46.50564,
54.391968
],
"UUID": "5c4352e24344bd49e02f69170a5d6d647057a9b58b239035fcf0d22db901e7660",
"videoDuration": 772.761
},
{
"category": "selfpromo",
"actionType": "skip",
"segment": [
328.2623,
350.13525
],
"UUID": "5403b39ee39fe2f34875f0d55049874ee238fe0af00c63200a404a2a1cfe415f4",
"videoDuration": 772.761
},
{
"category": "outro",
"actionType": "skip",
"segment": [
745.3736,
763.9684
],
"UUID": "5d3e8ad507d448a095578eecf5fe13df259cf3ba9b2a8d912eb2cff06b1741444",
"videoDuration": 772.761
}
]
},
{
```

## Installation
Put the LUA file in: (create the directories if they do not exist)
- **Windows (all users)**
	+ `%ProgramFiles%\VideoLAN\VLC\lua\extensions\`
- **Windows (current user)**
	+ `%APPDATA%\VLC\lua\extensions\`
- **Linux (all users)**
	+ `/usr/lib/vlc/lua/extensions/`
- **Linux (current user)**
	+ `~/.local/share/vlc/lua/extensions/`
- **Mac OS X (all users)**
	+ `/Applications/VLC.app/Contents/MacOS/share/lua/extensions/`
- **Mac OS X (current user)**
	+ `/Users/%your_name%/Library/ApplicationSupport/org.videolan.vlc/lua/extensions/`
Then relaunch VLC.
