/*
  Warnings:

  - The primary key for the `Employee` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `Employee` table. All the data in the column will be lost.
  - The primary key for the `Task` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `Task` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Task" DROP CONSTRAINT "Task_employeeEId_fkey";

-- AlterTable
ALTER TABLE "Employee" DROP CONSTRAINT "Employee_pkey",
DROP COLUMN "id",
ADD COLUMN     "eId" SERIAL NOT NULL,
ADD CONSTRAINT "Employee_pkey" PRIMARY KEY ("eId");

-- AlterTable
ALTER TABLE "Task" DROP CONSTRAINT "Task_pkey",
DROP COLUMN "id",
ADD COLUMN     "tId" SERIAL NOT NULL,
ADD CONSTRAINT "Task_pkey" PRIMARY KEY ("tId");

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_employeeEId_fkey" FOREIGN KEY ("employeeEId") REFERENCES "Employee"("eId") ON DELETE CASCADE ON UPDATE CASCADE;
