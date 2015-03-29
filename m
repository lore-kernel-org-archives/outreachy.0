X-GM-THRID: 10268360835072
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,498ca749cf5f5c42,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.142.196 with SMTP id ry4mr32218607pab.12.1427620721093;
        Sun, 29 Mar 2015 02:18:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.51.16.129 with SMTP id fw1ls104523igd.2.gmail; Sun, 29 Mar
 2015 02:18:40 -0700 (PDT)
X-Received: by 10.42.255.10 with SMTP id ng10mr53215824icb.18.1427620720865;
        Sun, 29 Mar 2015 02:18:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ni4si711848pdb.2.2015.03.29.02.18.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 02:18:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id cy3so138226270pad.3
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 02:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=OzWkYKhXmQMoYlDJ1aMFzGSVOBAFpfbDN5tcfLHIOrw=;
        b=rLUd7H64u3Nk9uGO+x3S7vY8tGZLIkQhzrhmtZJ+b+CDbM1wggpdrw/oeYTM7vGb0V
         k6u1/zNbuaR4jbm6Dklw9NXY8+jTRFjnIwOJwWgpdj0GhUDARwZqxKDUeryVcbDU466I
         FrzgC+HP/2YUpMGhTy73AI2uEjOAy7Jozq4cZPgMKuqQZbbF8lTWoWpYnP9T4rWLuLIV
         O6+8HYPqIeNT5VrPPNPqZ9tPxpMTSuFBEfhzpTREU3sjfMLukaxFDbgjD0B4CwWUDS4K
         WFNaAmB8vSIbEqKRlEuqt8jztkWQy9llyxEU4sKZ3rgn/skbVeJvpW7o2DcBTK1R58J1
         wTdg==
X-Received: by 10.68.132.233 with SMTP id ox9mr48749685pbb.83.1427620720735;
        Sun, 29 Mar 2015 02:18:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.173.150])
        by mx.google.com with ESMTPSA id ox4sm7083153pdb.36.2015.03.29.02.18.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 02:18:40 -0700 (PDT)
Date: Sun, 29 Mar 2015 14:48:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] Staging: sm750fb: Insert spaces in for statement
Message-ID: <20150329091836.GA19941@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Insert required spaces in for statements after operators and ';'.
Problem found using checkpatch.pl
ERROR: spaces required around that '=' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 5f2f424..e11b8c5 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -41,7 +41,7 @@ inline unsigned int twoToPowerOfx(unsigned long x)
 	unsigned long i;
 	unsigned long result = 1;
 
-	for (i=1; i<=x; i++)
+	for ( i = 1; i <= x; i++)
 		result *= 2;
 	return result;
 }
@@ -455,7 +455,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 	}
 
 
-	for(N = 15;N>1;N--)
+	for( N = 15; N > 1; N--)
 	{
 		/* RN will not exceed maximum long if @request <= 285 MHZ (for 32bit cpu) */
 		RN = N * request;
@@ -463,7 +463,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 		rem = RN % input;/* rem always small than 14318181 */
 		fl_quo = (rem * 10000 /input);
 
-		for(d = xcnt - 1;d >= 0;d--){
+		for(d = xcnt - 1; d >= 0; d--){
 			X = xparm[d].value;
 			M = quo*X;
 			M += fl_quo * X / 10000;
@@ -511,7 +511,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 
 #ifndef VALIDATION_CHIP
     /* The maximum of post divider is 8. */
-	for (POD=0; POD<=3; POD++)
+	for (POD = 0; POD <= 3; POD++)
 #endif
 		{
 
@@ -525,7 +525,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 	podPower = twoToPowerOfx(POD);
 
 	/* OD has only 2 bits [15:14] and its value must between 0 to 3 */
-	for (OD=0; OD<=3; OD++) {
+	for (OD = 0; OD <= 3; OD++) {
 		/* Work out 2 to the power of OD */
 		odPower = twoToPowerOfx(OD);
 
@@ -538,7 +538,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 
 		/* N has 4 bits [11:8] and its value must between 2 and 15.
 		The N == 1 will behave differently --> Result is not correct. */
-	for (N=2; N<=15; N++) {
+	for (N = 2; N <= 15; N++) {
 		/* The formula for PLL is ulRequestClk = inputFreq * M / N / (2^OD)
 		In the following steps, we try to work out a best M value given the others are known.
 		To avoid decimal calculation, we use 1000 as multiplier for up to 3 decimal places of accuracy.
-- 
1.9.1


