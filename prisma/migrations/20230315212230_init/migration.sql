-- DropForeignKey
ALTER TABLE "Task" DROP CONSTRAINT "Task_employeeEId_fkey";

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_employeeEId_fkey" FOREIGN KEY ("employeeEId") REFERENCES "Employee"("eId") ON DELETE CASCADE ON UPDATE CASCADE;
