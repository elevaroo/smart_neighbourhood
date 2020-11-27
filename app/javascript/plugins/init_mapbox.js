import mapboxgl from 'mapbox-gl';

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/elevaroo/ckhxi09ie0upa19qrzjylvj3h'
  });
};

const addMarkersToMap = (map, markers) => {
  if (markers.length === undefined) {
    new mapboxgl.Marker()
      .setLngLat([ markers.lng, markers.lat ])
      .addTo(map);
    } else {
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });
  }
};

const fitMapToMarkers = (map, markers) => {
  if (markers.length === undefined) {
      const bounds = new mapboxgl.LngLatBounds();
      bounds.extend([ markers.lng, markers.lat ]);
      map.fitBounds(bounds, { padding: 70, maxZoom: 15 });

  } else {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    if (markers) {
      addMarkersToMap(map, markers);
      fitMapToMarkers(map, markers);
    }
  }
};


export { initMapbox };
