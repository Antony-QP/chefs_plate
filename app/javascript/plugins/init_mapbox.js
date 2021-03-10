import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox = () => {
    const mapElement = document.getElementById('map');

    if (mapElement) { // only build a map if there's a div#map to inject into
        mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
        const map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v10'
        });
        const markers = JSON.parse(mapElement.dataset.markers);
        markers.forEach((marker) => {
            const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

            const element = document.createElement("div");
            element.className = "marker";
            element.style.backgroundImage = `url('${marker.image_url}')`;
            element.style.backgroundSize = "contain";
            element.style.width = "30px";
            element.style.height = "30px";
            element.style.fill = "#F4F4F4";
            element.style.backgroundColor = "rgba(25, 29, 14, 0.9)";
            element.style.borderRadius = "50%";
            element.style.color = "#F4F4F4";

            new mapboxgl.Marker(element)
                .setLngLat([marker.lng, marker.lat])
                .setPopup(popup) // add this
                .addTo(map);
        });
        const fitMapToMarkers = (map, markers) => {
            const bounds = new mapboxgl.LngLatBounds();
            markers.forEach((marker) => bounds.extend([marker.lng, marker.lat]));
            // map.fitBounds(bounds, { padding: 50, maxZoom: 25, duration: 0 });
            map.fitBounds(bounds, { top: 50, left: 90, maxZoom: 20 });
        };
        map.addControl(new MapboxGeocoder({
            accessToken: mapboxgl.accessToken,
            mapboxgl: mapboxgl
        }));
        fitMapToMarkers(map, markers);
    }
};

export { initMapbox };

