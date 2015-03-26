X-GM-THRID: 10002918014976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3882c5572bb5485a
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.89.205 with SMTP id h13mr36917162icm.25.1427389815914;
        Thu, 26 Mar 2015 10:10:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.175 with SMTP id l44ls800586qgd.96.gmail; Thu, 26 Mar
 2015 10:10:15 -0700 (PDT)
X-Received: by 10.53.7.5 with SMTP id cy5mr13596277vdd.9.1427389815729;
        Thu, 26 Mar 2015 10:10:15 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id e5si762774qcg.1.2015.03.26.10.10.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 10:10:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id a8so101068871qgf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 10:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=I6ObItot9anLQ4EtfgzaL6basKEBPVFrnHLXgQ6S8EQ=;
        b=hMZHKTVDUUwBHxW3hilNQ+vv7cetrcq3A4Wx6sd9iM8UeiEEN+uCoo8d176NiXJyOC
         af6H6No7rDEfLdfM5h008lpht/sVevMj2bdfPkOPtszdKuSYk2Jn7qtsHBa7vTSQR1sA
         H8gyB5HDISNAAAVbriJvPKe9RRK1T6+9ngdszlqgQumpOXhuCB6UBdLKaXhnkSmfn2Tn
         5NpsyZ0y3h1JCXF19qiHmmAOnvT/ifmaEYd7f042Vy9GLjcVL8qAtMaMFFB8VMCvcLck
         6BzSmnX6zrW0kxA4MDTedKznJCFCqsqf3LXApW3VVM655vxpP6ExHjZe15r1j9ciWjPk
         RPIA==
X-Received: by 10.140.165.198 with SMTP id l189mr20001355qhl.93.1427389785631;
        Thu, 26 Mar 2015 10:09:45 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id o19sm3797905qkh.25.2015.03.26.10.09.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2015 10:09:45 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH 3/8] staging: sm750fb: Fix for statement style
Date: Thu, 26 Mar 2015 14:09:15 -0300
Message-Id: <a0ae4bb7996a17396c1d5c5f1bd67400ce77d43a.1427389602.git.helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>

This patch fixes the checkpatch.pl warnings:

ERROR: spaces required around that '=' (ctx:VxV)
ERROR: spaces required around that '<=' (ctx:VxV)
ERROR: spaces required around that '>' (ctx:VxV)
ERROR: space required before the open parenthesis '('
ERROR: space required after that ';' (ctx:VxV)

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index de7fa4a..3d228f4 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -39,7 +39,7 @@ inline unsigned int twoToPowerOfx(unsigned long x)
 	unsigned long i;
 	unsigned long result = 1;
 
-	for (i=1; i<=x; i++)
+	for (i = 1; i <= x; i++)
 		result *= 2;
 	return result;
 }
@@ -453,14 +453,14 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 	}
 
 
-	for(N = 15;N>1;N--) {
+	for (N = 15; N > 1; N--) {
 		/* RN will not exceed maximum long if @request <= 285 MHZ (for 32bit cpu) */
 		RN = N * request;
 		quo = RN / input;
 		rem = RN % input;/* rem always small than 14318181 */
 		fl_quo = (rem * 10000 /input);
 
-		for(d = xcnt - 1;d >= 0;d--) {
+		for (d = xcnt - 1; d >= 0; d--) {
 			X = xparm[d].value;
 			M = quo*X;
 			M += fl_quo * X / 10000;
@@ -508,7 +508,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 
 #ifndef VALIDATION_CHIP
     /* The maximum of post divider is 8. */
-	for (POD=0; POD<=3; POD++)
+	for (POD = 0; POD <= 3; POD++)
 #endif
 		{
 
@@ -522,7 +522,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 	podPower = twoToPowerOfx(POD);
 
 	/* OD has only 2 bits [15:14] and its value must between 0 to 3 */
-	for (OD=0; OD<=3; OD++) {
+	for (OD = 0; OD <= 3; OD++) {
 		/* Work out 2 to the power of OD */
 		odPower = twoToPowerOfx(OD);
 
@@ -535,7 +535,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 
 		/* N has 4 bits [11:8] and its value must between 2 and 15.
 		The N == 1 will behave differently --> Result is not correct. */
-	for (N=2; N<=15; N++) {
+	for (N = 2; N <= 15; N++) {
 		/* The formula for PLL is ulRequestClk = inputFreq * M / N / (2^OD)
 		In the following steps, we try to work out a best M value given the others are known.
 		To avoid decimal calculation, we use 1000 as multiplier for up to 3 decimal places of accuracy.
-- 
1.9.1


