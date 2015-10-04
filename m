X-GM-THRID: 6201793060535271424
X-Received: by 10.112.151.9 with SMTP id um9mr4320039lbb.19.1443967470170;
        Sun, 04 Oct 2015 07:04:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.10.97 with SMTP id h1ls658513wib.26.gmail; Sun, 04 Oct
 2015 07:04:29 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr4361463wjb.5.1443967469830;
        Sun, 04 Oct 2015 07:04:29 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id o5si211517wib.0.2015.10.04.07.04.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 07:04:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id lk2so82830434wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 07:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=djofOmMiPR2IUV7HhAeDqI7z9n+nNigi9RNUbmQ40MI=;
        b=Lz20tkDE17tCy/vxRPZ0ZNPtVIs4GLwVGgEsMIaCVDOQ5Mj6IkPFUg+16CSTKowIkr
         TK8u6sBiVfo62plYRzHLKfsPXRHhqStc+W1usGWx8jCvUFCCDOo19mNVqa0JVHOVp6gP
         vBulSKf0J97IdC4Q1m4W8VEN2DXSaiPI4iXqAZnM2cAg3lDMDQ72fDp708vWPt3osSO3
         B2DrC7h9gR7/6FgYB5uhYJJoW6oguPl/VFNfI5yk02631HE7Ac7iQfY5d+0jwc2lOBBE
         dD7S6f8t6Cj+c/F7pDPZsKcg5xVMo7qOz2m/uMCssqf3diM5xe6oTG0stLbFv7TG/MWd
         W4Sg==
X-Received: by 10.194.116.73 with SMTP id ju9mr17039873wjb.108.1443967469726;
        Sun, 04 Oct 2015 07:04:29 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.43])
        by smtp.gmail.com with ESMTPSA id x7sm9468756wia.10.2015.10.04.07.04.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 07:04:28 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/2] Staging: wilc1000: Do not use multiple blank lines
Date: Sun,  4 Oct 2015 17:04:19 +0300
Message-Id: <1443967460-14302-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 2.1.4

This patch removes unnecessary blank lines between functions.
Found by checkpatch.pl:
"CHECK: Please don't use multiple blank lines".

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 14e8efc..439c828 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -8,7 +8,6 @@
  *  @version	1.0
  */
 
-
 /*****************************************************************************/
 /* File Includes                                                             */
 /*****************************************************************************/
@@ -24,7 +23,6 @@
 /* Function Macros                                                           */
 /*****************************************************************************/
 
-
 /*****************************************************************************/
 /* Type Definitions                                                          */
 /*****************************************************************************/
@@ -122,7 +120,6 @@ typedef enum {
 	INFOELEM_ID_FORCE_32BIT  = 0xFFFFFFFF
 } tenuInfoElemID;
 
-
 typedef struct {
 	char *pcRespBuffer;
 	s32 s32MaxRespBuffLen;
@@ -130,8 +127,6 @@ typedef struct {
 	bool bRespRequired;
 } tstrConfigPktInfo;
 
-
-
 /*****************************************************************************/
 /* Extern Variable Declarations                                              */
 /*****************************************************************************/
@@ -143,8 +138,6 @@ typedef struct {
 /* Static Function Declarations                                              */
 /*****************************************************************************/
 
-
-
 /*****************************************************************************/
 /* Functions                                                                 */
 /*****************************************************************************/
@@ -613,7 +606,6 @@ s32 ParseAssocRespInfo(u8 *pu8Buffer, u32 u32BufferLen,
 
 	*ppstrConnectRespInfo = pstrConnectRespInfo;
 
-
 	return s32Error;
 }
 
@@ -667,7 +659,6 @@ s32 ParseSurveyResults(u8 ppu8RcvdSiteSurveyResults[][MAX_SURVEY_RESULT_FRAG_SIZ
 	for (i = 0; i < u32RcvdSurveyResultsNum; i++) {
 		u32SurveyBytesLength = ppu8RcvdSiteSurveyResults[i][0];
 
-
 		for (j = 0; j < u32SurveyBytesLength; j += SURVEY_RESULT_LENGTH) {
 			u32SurveyResultsCount++;
 		}
@@ -706,7 +697,6 @@ ERRORHANDLER:
 	return s32Error;
 }
 
-
 s32 DeallocateSurveyResults(wid_site_survey_reslts_s *pstrSurveyResults)
 {
 	s32 s32Error = 0;
@@ -735,7 +725,6 @@ s32 CoreConfiguratorDeInit(void)
 
 	PRINT_D(CORECONFIG_DBG, "CoreConfiguratorDeInit()\n");
 
-
 	return s32Error;
 }
 
-- 
2.1.4


