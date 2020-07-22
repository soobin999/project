-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: recipe
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `typecat`
--

DROP TABLE IF EXISTS `typecat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typecat` (
  `typeCode` varchar(25) NOT NULL COMMENT '종류코드',
  `cookType` varchar(10) NOT NULL COMMENT '조리종류',
  `cookSituation` varchar(10) NOT NULL COMMENT '조리상황',
  `cookMethod` varchar(10) NOT NULL COMMENT '조리방법',
  PRIMARY KEY (`typeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='종류 카테고리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typecat`
--

LOCK TABLES `typecat` WRITE;
/*!40000 ALTER TABLE `typecat` DISABLE KEYS */;
INSERT INTO `typecat` VALUES ('TC-000001','밑반찬','초스피드','조림'),('TC-000002','밑반찬','다이어트','무침'),('TC-000003','퓨전','일상','튀김'),('TC-000004','디저트','초스피드','부침'),('TC-000005','메인반찬','일상','찜'),('TC-000006','디저트','간식','튀김'),('TC-000007','디저트','간식','튀김'),('TC-000008','메인반찬','일상','볶음'),('TC-000009','퓨전','손님접대','부침'),('TC-000010','디저트','야식','튀김'),('TC-000011','샐러드','다이어트','기타'),('TC-000012','기타','다이어트','기타'),('TC-000013','퓨전','손님접대','튀김'),('TC-000014','기타','초스피드','튀김'),('TC-000015','퓨전','일상','튀김'),('TC-000016','밥/죽/떡','도시락','볶음'),('TC-000017','밥/죽/떡','도시락','기타'),('TC-000018','밥/죽/떡','도시락','볶음'),('TC-000019','퓨전','초스피드','기타'),('TC-000020','디저트','손님접대','기타'),('TC-000021','밑반찬','일상','볶음'),('TC-000022','밑반찬','영양식','부침'),('TC-000023','디저트','초스피드','부침'),('TC-000024','밥/죽/떡','일상','볶음'),('TC-000025','퓨전','간식','찜'),('TC-000026','밥/죽/떡','초스피드','볶음'),('TC-000027','밑반찬','도시락','부침'),('TC-000028','퓨전','간식','부침'),('TC-000029','퓨전','술안주','찜'),('TC-000030','퓨전','도시락','부침'),('TC-000031','퓨전','도시락','부침'),('TC-000032','면/만두','일상','끓이기'),('TC-000033','밑반찬','술안주','볶음'),('TC-000034','밥/죽/떡','일상','비빔'),('TC-000035','메인반찬','술안주','볶음'),('TC-000036','밑반찬','일상','무침'),('TC-000037','찌개','일상','끓이기'),('TC-000038','메인반찬','손님접대','조림'),('TC-000039','메인반찬','술안주','조림'),('TC-000040','밑반찬','초스피드','무침'),('TC-000041','양념/소스/잼','일상','볶음'),('TC-000042','양식','일상','볶음'),('TC-000043','양식','도시락','볶음'),('TC-000044','밑반찬','일상','볶음'),('TC-000045','스프','일상','볶음'),('TC-000046','밥/죽/떡','일상','볶음'),('TC-000047','밑반찬','일상','튀김'),('TC-000048','밑반찬','간식','볶음'),('TC-000049','밑반찬','일상','굽기'),('TC-000050','국/탕','일상','끓이기'),('TC-000051','밑반찬','도시락','볶음'),('TC-000052','과자','일상','볶음'),('TC-000053','밑반찬','일상','조림'),('TC-000054','밑반찬','간식','볶음'),('TC-000055','밑반찬','술안주','볶음'),('TC-000056','밑반찬','일상','비빔'),('TC-000057','밑반찬','일상','회'),('TC-000058','차/음료/술','일상','볶음'),('TC-000059','밑반찬','일상','무침'),('TC-000060','밑반찬','초스피드','볶음'),('TC-000061','퓨전','튀김','영양식'),('TC-000062','디저트','튀김','도시락'),('TC-000063','밑반찬','끓이기','일상'),('TC-000064','밑반찬','볶음','일상'),('TC-000065','밑반찬','복음','일상'),('TC-000066','밑반찬','부침','일상'),('TC-000067','밑반찬','부침','일상'),('TC-000068','메인반찬','볶음','일상'),('TC-000069','메인반찬','볶음','일상'),('TC-000070','메인반찬','볶음','일상'),('TC-000071','메인반찬','볶음','다이어트'),('TC-000072','메인반찬','볶음','다이어트'),('TC-000073','메인반찬','볶음','다이어트'),('TC-000074','메인반찬','볶음','다이어트'),('TC-000075','밥/죽/떡','기타','초스피드'),('TC-000076','밥/죽/떡','기타','초스피드'),('TC-000077','밥/죽/떡','기타','초스피드'),('TC-000078','밥/죽/떡','기타','초스피드'),('TC-000079','밥/죽/떡','기타','초스피드'),('TC-000080','밥/죽/떡','기타','초스피드'),('TC-000081','메인반찬','명절','삶기'),('TC-000082','메인반찬','명절','굽기'),('TC-000083','메인반찬','다이어트','끓이기'),('TC-000084','밥/죽/떡','초스피드','굽기'),('TC-000085','퓨전','초스피드','굽기'),('TC-000086','양식','초스피드','굽기'),('TC-000087','밑반찬','초스피드','굽기'),('TC-000088','기타','초스피드','굽기'),('TC-000089','','',''),('TC-90','메인반찬','술안주','볶음'),('TC-91','메인반찬','술안주','볶음'),('TC-92','메인반찬','손님접대','끓이기'),('TC-93','메인반찬','손님접대','끓이기'),('TC-94','메인반찬','술안주','부침'),('TC-95','밑반찬','다이어트','무침'),('TC-96','메인반찬','술안주','끓이기'),('TC-97','국/탕','술안주','부침'),('TC-98','메인반찬','손님접대','조림');
/*!40000 ALTER TABLE `typecat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-08 19:42:31
