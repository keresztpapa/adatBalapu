Futtatás:

Az application/config.js-ben a konfigurációs adatok szerepelnek! (itt szerepel egyikőnk h-s azonosítója és belépési jelszója, ha nem muszáj ne tessék megnyitni... SSH-val van megoldva a csatlakozás)


Operációs rendszertől függően kellhet az oracle instant client 64-bites verzió, 
amit be kell másolni ide: 

...\adatBalapu\Application\node_modules\oracledb\build\Release
(így kell hogy kinézzen: https://imgur.com/a/AmTbjgB)

illetve a klienst hozzá is kell adni a PATH-hez.

Emellett szükség van NPM-re (https://www.npmjs.com), és node-ra (https://nodejs.org/en).
 
Az "Application" mappán belül egy parancssori 'npm install', majd 'npm start', ezután böngészőben: localhost:3000.
