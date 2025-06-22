import { Server } from '@widgetbot/embed-api';

const api = new Server({ id: 'test' });

api.on('sendMessage', (message) => {
  console.log('Mensaje recibido:', message);
});

api.emit('message', { id: 'msg1', content: 'Servidor listo!' });

console.log('Servidor embed-api corriendo...');
