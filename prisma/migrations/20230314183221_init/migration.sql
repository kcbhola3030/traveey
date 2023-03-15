-- CreateTable
CREATE TABLE "Employee" (
    "eId" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "hireDate" TIMESTAMP(3) NOT NULL,
    "position" TEXT NOT NULL,

    CONSTRAINT "Employee_pkey" PRIMARY KEY ("eId")
);

-- CreateTable
CREATE TABLE "Task" (
    "tId" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "dueDate" TIMESTAMP(3) NOT NULL,
    "employeeEId" INTEGER NOT NULL,

    CONSTRAINT "Task_pkey" PRIMARY KEY ("tId")
);

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_employeeEId_fkey" FOREIGN KEY ("employeeEId") REFERENCES "Employee"("eId") ON DELETE RESTRICT ON UPDATE CASCADE;
