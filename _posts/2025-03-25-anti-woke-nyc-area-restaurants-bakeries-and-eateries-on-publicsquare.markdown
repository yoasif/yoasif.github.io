---
layout: post
title:  "Anti-Woke NYC-area Restaurants, Bakeries and Eateries on PublicSquare"
date:   2025-03-25 16:24:03 -0500
categories: social posts
tags: maps
external-url:
image: /assets/images/social-previews/seinfeld-the-couch.jpg
---

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin=""/>
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin=""></script>

<!-- Add the Papaparse library for CSV parsing -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.3.0/papaparse.min.js"></script>

<style>
        html, body {
            height: 100%;
            margin: 0;
        }
        .leaflet-container {
            height: 400px;
            width: 600px;
            max-width: 100%;
            max-height: 100%;
        }
</style>

<div id="map" style="width: 1200px; height: 800px;"></div>

<script>
    const map = L.map('map').setView([40.712778, -74.006111], 11);

    const tiles = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    // Function to load CSV and add markers to the map
    function loadMarkers() {
        // Load your CSV file using Papaparse
        Papa.parse('{{site.url}}/assets/data/publicsquare/markers.csv', {
            download: true, // Downloads the file
            header: true, // Assumes the first row contains headers
            debug: true, // Enable debug for more info in the console
            complete: function(results) {
                // For each row in the CSV, create a marker
                results.data.forEach(function(row) {
                    const lat = parseFloat(row.latitude);
                    const lon = parseFloat(row.longitude);
                    const title = row.title;
                    const link = row.link;

                    // Ensure lat/lon are valid
                    if (isNaN(lat) || isNaN(lon)) {
                        console.error('Invalid coordinates for marker:', row);
                        return; // Skip this marker if the coordinates are invalid
                    }

                    // Add a simple marker to the map (no custom icon)
                    const marker = L.marker([lat, lon]).addTo(map)
                        .bindPopup(`<b>${title}</b><br /><a href="${link}" target="_blank">Link</a>`);
                });
            },
            error: function(error) {
                console.error("Error loading CSV file", error);
            }
        });
    }

    // Call the function to load the markers when the page loads
    loadMarkers();
</script>

I recently learned about [Public Square](https://en.wikipedia.org/wiki/Public_Square_(company)), an "[anti-woke](https://archive.ph/Doas5)" online marketplace. When I searched for a list of places in NYC that were on it, I found the Public Square website, which is a great canonical source, but I don't really want to direct people to it.

I've been curious about how to accomplish setting up pins on a webpage for a while now, ever since learning about the [NYC Bathroom Map](https://www.got2gonyc.com) - and there was no way I was going to use Google Maps to do it.

It was really easy to put this together with [Leaflet](https://leafletjs.com/examples/quick-start/), and I definitely think I have more custom map ideas for the future.

Leaflet was created by [Volodymyr Agafonkin](https://agafonkin.com/), a Ukrainian citizen living in Kyiv - 🇺🇦 [StandWithUkraine](https://stand-with-ukraine.pp.ua/).

The map above is populated by the contents of [a CSV]({{site.url}}/assets/data/publicsquare/markers.csv) file.

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).

