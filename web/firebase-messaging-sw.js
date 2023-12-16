importScripts('https://www.gstatic.com/firebasejs/8.4.1/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.4.1/firebase-messaging.js');

   /*Update with yours config*/
  const firebaseConfig = {
         apiKey: 'AIzaSyDQ6RhsFW40ieD6zg_lR7EnCt8qriINHoM',
         appId: '1:183516945189:web:edbb667e85f50ab2e018cc',
         messagingSenderId: '183516945189',
         projectId: 'prouixflutter',
         authDomain: 'prouixflutter.firebaseapp.com',
         storageBucket: 'prouixflutter.appspot.com',
         measurementId: 'G-706Z2MVXGK'
 };
  firebase.initializeApp(firebaseConfig);
  const messaging = firebase.messaging();

  /*messaging.onMessage((payload) => {
  console.log('Message received. ', payload);*/
  messaging.onBackgroundMessage(function(payload) {
    console.log('Received background message ', payload);

    const notificationTitle = payload.notification.title;
    const notificationOptions = {
      body: payload.notification.body,
    };

    self.registration.showNotification(notificationTitle,
      notificationOptions);
  });