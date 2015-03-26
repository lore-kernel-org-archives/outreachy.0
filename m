X-GM-THRID: 10002918014976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3882c5572bb5485a
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.149.195 with SMTP id 186mr17122929qhv.0.1427389820383;
        Thu, 26 Mar 2015 10:10:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.167 with SMTP id fp7ls534996obb.79.gmail; Thu, 26 Mar
 2015 10:10:19 -0700 (PDT)
X-Received: by 10.182.71.40 with SMTP id r8mr3477901obu.23.1427389819156;
        Thu, 26 Mar 2015 10:10:19 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id z1si761695qcn.2.2015.03.26.10.10.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 10:10:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id a8so101068889qgf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 10:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ZgphjNREo7xNbfz82uctVMEKoRxT5WRHJoPc0jZpvVs=;
        b=wXWeqtjBWPeoQ765XN7tifRacuHUUrCCK07RGEN9iwL84GfXZMxXEEPGa0IYeuSsWQ
         Qjmgc6BDDUVFDcvJEYpPk5AWYYW4PnqMWh3ejQavJgVcpaWun7FTG9HPx+NagnoHVOdF
         cyDUvQ5Q3G6A+2faLC6kHZRXMcrlqCGAG+ePzZv4sRQIUapSuzmeBrmY0JluhnJSX2Pt
         2XtRl2hG5hKzMm9BkvwjmV5G/4TwolNtW/L3zGAE01gI+YUhIZrJrX4llo6mcV6BpncG
         5OHkpt3EPw040Mmd5rR2ieAlD2rV7E83/A+pxqTWiY4B7bkynMlogQ7NJyO0q2fYdb4r
         JYEg==
X-Received: by 10.140.89.42 with SMTP id u39mr18793000qgd.20.1427389789124;
        Thu, 26 Mar 2015 10:09:49 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id o19sm3797905qkh.25.2015.03.26.10.09.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2015 10:09:48 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH 5/8] staging: sm750fb: Add space before switch statement
Date: Thu, 26 Mar 2015 14:09:17 -0300
Message-Id: <81d001c87a35bf25d675c8e15744c47252a44867.1427389602.git.helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>

This patch fixes the checkpatch.pl warnings:

ERROR: space required before the open parenthesis '('
+               switch(divisor) {

ERROR: space required before the open parenthesis '('
+               switch(divisor) {

ERROR: space required before the open parenthesis '('
+       switch(reg) {

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 49e26bd..3913aa4 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -150,7 +150,7 @@ void setMemoryClock(unsigned int frequency)
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-		switch(divisor) {
+		switch (divisor) {
 		default:
 		case 1:
 			ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
@@ -198,7 +198,7 @@ void setMasterClock(unsigned int frequency)
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-		switch(divisor) {
+		switch (divisor) {
 		default:
 		case 3:
 			ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_3);
@@ -235,7 +235,7 @@ unsigned int ddk750_getVMSize(void)
 
 	/* get frame buffer size from GPIO */
 	reg = FIELD_GET(PEEK32(MISC_CTRL),MISC_CTRL,LOCALMEM_SIZE);
-	switch(reg) {
+	switch (reg) {
 	case MISC_CTRL_LOCALMEM_SIZE_8M:  data = MB(8);  break; /* 8  Mega byte */
 	case MISC_CTRL_LOCALMEM_SIZE_16M: data = MB(16); break; /* 16 Mega byte */
 	case MISC_CTRL_LOCALMEM_SIZE_32M: data = MB(32); break; /* 32 Mega byte */
-- 
1.9.1


