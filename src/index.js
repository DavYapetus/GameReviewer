import express from 'express';
import { PrismaClient } from '@prisma/client';

const app = express();
const prisma = new PrismaClient();

app.use(express.json());

app.get('/', (req, res) => {
  res.send('Servidor funcionando!');
});

app.listen(3000, () => {
  console.log('Servidor rodando em http://localhost:3000');
});

async function main() {
  const newUser = await prisma.user.create({
    data: {
      name: 'John Doe',
      email: 'john@example.com',
      password: 'password123',
    },
  });

  console.log(newUser);
}

main()
  .catch(e => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
