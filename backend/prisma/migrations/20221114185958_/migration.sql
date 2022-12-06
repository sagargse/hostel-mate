/*
  Warnings:

  - A unique constraint covering the columns `[id,belongsToId]` on the table `Product` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `imageURL` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Product" ADD COLUMN     "imageURL" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Product_id_belongsToId_key" ON "Product"("id", "belongsToId");
