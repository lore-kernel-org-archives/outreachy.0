X-GM-THRID: 10268360835072
X-Received: by 10.140.144.81 with SMTP id 78mr32406441qhq.3.1427627201745;
        Sun, 29 Mar 2015 04:06:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.23.76 with SMTP id k12ls710069igf.3.canary; Sun, 29 Mar
 2015 04:06:41 -0700 (PDT)
X-Received: by 10.66.65.165 with SMTP id y5mr31614636pas.43.1427627201243;
        Sun, 29 Mar 2015 04:06:41 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id gu4si755181pac.1.2015.03.29.04.06.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 04:06:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padcy3 with SMTP id cy3so139626361pad.3
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 04:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gVkbMeudS+xstBiTAj8MRCCu3JZhEZRnBIg8DQhQg3I=;
        b=YWZAK5IKEV68ds5ouKogYtP+ml8zNjiorVI7BGyRpgSqS4lL/5F2El3f5SYv1TjkZn
         XhC+nR6zDa/tSdKQTCC5P6mUZ+8+Azb4K6oLyZZHp/9fs1A3xqIbXOoRJww13TrwKMaI
         4yN8oxCfW9wkvJMO7VKF7QN/tQKWFUhFRVkyuBGgekVYKLejsSlEg+PyxvhUcHXF3G/I
         srLEzAgtTMZ5vwYu0Fo4GBJeVak6WMyDriUYw5185B3j1j24pO3L80nlXQXP+z1Z1DLo
         Cci2nnMaJf02OsnX6VQ0hJE1SNqeqir8pJ15BFcranZ9q9RHUutNuB896sNNDkn5zuN9
         zmNA==
X-Received: by 10.68.69.76 with SMTP id c12mr49944890pbu.31.1427627201107;
        Sun, 29 Mar 2015 04:06:41 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.183.90])
        by mx.google.com with ESMTPSA id gm3sm7288084pbb.83.2015.03.29.04.06.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 04:06:40 -0700 (PDT)
Date: Sun, 29 Mar 2015 16:36:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] Staging: sm750fb: Insert spaces in for statement
Message-ID: <20150329110636.GA21170@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Insert required spaces in for statements after operators and ';'.
Problem found using checkpatch.pl
ERROR: spaces required around that '=' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes made in v2:
        -Added space before '(' in for statement

 drivers/staging/sm750fb/ddk750_chip.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 6370d41..13b25ab 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -41,7 +41,7 @@ inline unsigned int twoToPowerOfx(unsigned long x)
 	unsigned long i;
 	unsigned long result = 1;
 
-	for (i=1; i<=x; i++)
+	for (i = 1; i <= x; i++)
 		result *= 2;
 	return result;
 }
@@ -455,7 +455,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 	}
 
 
-	for(N = 15;N>1;N--)
+	for (N = 15; N > 1; N--)
 	{
 		/* RN will not exceed maximum long if @request <= 285 MHZ (for 32bit cpu) */
 		RN = N * request;
@@ -463,7 +463,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 		rem = RN % input;/* rem always small than 14318181 */
 		fl_quo = (rem * 10000 /input);
 
-		for(d = xcnt - 1;d >= 0;d--){
+		for (d = xcnt - 1; d >= 0; d--){
 			X = xparm[d].value;
 			M = quo*X;
 			M += fl_quo * X / 10000;
@@ -511,7 +511,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 
 #ifndef VALIDATION_CHIP
     /* The maximum of post divider is 8. */
-	for (POD=0; POD<=3; POD++)
+	for (POD = 0 ; POD <= 3; POD++)
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


