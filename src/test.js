// test.js
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  const games = await prisma.game.findMany(); // substitua por um model que exista no seu schema
  console.log(games);
}

main()
  .catch(e => console.error(e))
  .finally(() => prisma.$disconnect());
