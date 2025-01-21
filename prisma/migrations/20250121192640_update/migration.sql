/*
  Warnings:

  - You are about to drop the column `function` on the `ArtilheiroBrasileiro` table. All the data in the column will be lost.
  - Added the required column `team` to the `ArtilheiroBrasileiro` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ArtilheiroBrasileiro" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "team" TEXT NOT NULL
);
INSERT INTO "new_ArtilheiroBrasileiro" ("id", "name") SELECT "id", "name" FROM "ArtilheiroBrasileiro";
DROP TABLE "ArtilheiroBrasileiro";
ALTER TABLE "new_ArtilheiroBrasileiro" RENAME TO "ArtilheiroBrasileiro";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
