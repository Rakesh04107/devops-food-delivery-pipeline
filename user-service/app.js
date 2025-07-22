const express = require('express');
const app = express();
app.use(express.json());

app.get('/health', (req, res) => {
  res.send('User service is healthy');
});

app.post('/register', (req, res) => {
  const { username, password } = req.body;
  res.status(201).json({ message: `User ${username} registered` });
});

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => console.log(`User service running on port ${PORT}`));
