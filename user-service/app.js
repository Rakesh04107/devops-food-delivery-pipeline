const express = require('express');
const app = express();
const port = 3001;

app.get('/', (req, res) => {
  res.send('✅ User service is running!');
});

app.get('/health', (req, res) => {
  res.send('User service is healthy');
});

app.listen(port, () => {
  console.log(`User service running on port ${port}`);
});

