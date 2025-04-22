/*
  Warnings:

  - You are about to drop the column `desenvolvedora` on the `Game` table. All the data in the column will be lost.
  - You are about to drop the column `lancamento` on the `Game` table. All the data in the column will be lost.
  - You are about to drop the column `nome` on the `Game` table. All the data in the column will be lost.
  - You are about to drop the column `nome` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `senha` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `dataJogou` on the `UserGameData` table. All the data in the column will be lost.
  - You are about to drop the column `favorito` on the `UserGameData` table. All the data in the column will be lost.
  - You are about to drop the column `nota` on the `UserGameData` table. All the data in the column will be lost.
  - Added the required column `developer` to the `Game` table without a default value. This is not possible if the table is not empty.
  - Added the required column `launchDate` to the `Game` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Game` table without a default value. This is not possible if the table is not empty.
  - Added the required column `publisher` to the `Game` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `password` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `datePlayed` to the `UserGameData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `favorite` to the `UserGameData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rating` to the `UserGameData` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Game" DROP COLUMN "desenvolvedora",
DROP COLUMN "lancamento",
DROP COLUMN "nome",
ADD COLUMN     "developer" TEXT NOT NULL,
ADD COLUMN     "launchDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "publisher" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "nome",
DROP COLUMN "senha",
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "password" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "UserGameData" DROP COLUMN "dataJogou",
DROP COLUMN "favorito",
DROP COLUMN "nota",
ADD COLUMN     "datePlayed" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "favorite" BOOLEAN NOT NULL,
ADD COLUMN     "rating" DOUBLE PRECISION NOT NULL;
