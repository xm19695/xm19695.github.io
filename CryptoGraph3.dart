{
  "$schema": "https://vega.github.io/schema/vega-lite/v5.json",


 "title": {
  "text": "Bitcoin: long run",
  "subtitle":"Daily BTC price in USD. Source: Coinbase via FRED",
  "subtitleFontStyle":"italic",
  "subtitleFontSize":10,
  "anchor": "start",
  "color": "#179fdb",
  "subtitleColor":"#179fdb"},

"config": {
  "background":"#122b39",
  "view": {
    "stroke": "transparent"}},



  "width":290,
  "height":300,


  "data": {
    "name":"myData",
    "url": "https://raw.githubusercontent.com/RDeconomist/RDeconomist.github.io/main/charts/crypto/dataFREDbtcCoinbase.csv"},


  "mark": {
  "type": "line",
  "point": false,
  "interpolate": "linear",
  "color":"#f4c245"
},


  "transform": [
    {"calculate": "timeParse(datum.DATE, '%d/%m/%Y')", "as": "date"},
    {"calculate": "year(datum.date)", "as": "year"},

    {"filter": "datum.year>=minYear"},
    {"filter": "datum.year<=maxYear"}
],

  "params": [    
    {"name":"minYear", "value":2016,
       "bind":{
         "input": "range",
         "min": 2016, 
         "max": 2021, 
         "step": 1,
         "name": "Start year:"}
    },

    {"name":"maxYear", "value":2021,
       "bind":{
         "input": "range",
         "min": 2016, 
         "max": 2021, 
         "step": 1,
         "name": "End year:"}
    }
  ],



  "encoding": {
    
   
  "x": {
    "field": "date",
    "type": "temporal",
    "axis": {
      "title": null,
      "grid": false,
      "labelSeparation": 10,
      "domainColor":"dimgrey",
      "labelColor":"#00a767",
      "tickColor":"pink",
      "gridColor":"dimgrey"
    }},

  "y": {
    "field": "CBBTCUSD",
    "type": "quantitative",
    "title": "",
    "axis": {
      "grid": false,
      "domainColor":"dimgrey",
      "labelColor":"#00a767",
      "tickColor":"pink",
      "gridColor":"dimgrey",
      "format":"$,.5"}
      }
   }
}