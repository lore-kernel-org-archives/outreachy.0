X-GM-THRID: 6205602695134314496
X-Received: by 10.112.63.165 with SMTP id h5mr1252737lbs.18.1444854469492;
        Wed, 14 Oct 2015 13:27:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.6.6 with SMTP id cq6ls1375889wid.41.canary; Wed, 14 Oct
 2015 13:27:49 -0700 (PDT)
X-Received: by 10.180.10.135 with SMTP id i7mr1329541wib.2.1444854469088;
        Wed, 14 Oct 2015 13:27:49 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id bh7si1050wib.1.2015.10.14.13.27.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 13:27:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id q12so100841292wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 13:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=rXrSafYv94MBIeFlN3IAjguNw7kcisv2Li5CajfL3D4=;
        b=PfhGgJ77H44XQT4AgGBXQm0M3epbyes86Lu6ow0GL0aqPzFgz23FJ+3N7bOc/wi5Xn
         OhcPFyD+aFrdkSdbiuVdnSUfzNUA2GvRkxnPSDWrpAGGGuv8Wm+Tk4JalTSbqA01b13D
         Z7AA8wZc0gYMMHnr//Hm5x2RWc5WJAw+QPeGRvv0i7XQYUXzBDqwe49Sg0C6eMGf5bLw
         cH6KDOMJ7kl2nlbMFzqKO6a0jlA5KNMtqc0SNGBhOn9zxNWHSgXZvRfVu1PxsTZwtw19
         /icj95kVmQNVsfa9hRg+nkpD9l2qsd9l5J+Gs+Fr+Mrwjn34MGBb1D2sVBbRBLFvofdS
         B6JQ==
X-Received: by 10.194.23.2 with SMTP id i2mr6321911wjf.106.1444854469010;
        Wed, 14 Oct 2015 13:27:49 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.115])
        by smtp.gmail.com with ESMTPSA id w1sm12077993wjz.37.2015.10.14.13.27.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 13:27:48 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: fbtft: Fix multi-line comment style
Date: Wed, 14 Oct 2015 23:27:12 +0300
Message-Id: <1444854432-22931-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Thus use the preferred style for multi-line coments as
mentioned in Documentation/CodingStyle.

It also silences 'Block comments use * on subsequent lines'
checkpatch.pl warnings.

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1351.c | 40 +++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index eb45b27..cef33e4 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -97,26 +97,26 @@ static int set_var(struct fbtft_par *par)
 }
 
 /*
-	Grayscale Lookup Table
-	GS1 - GS63
-	The driver Gamma curve contains the relative values between the entries
-	in the Lookup table.
-
-	From datasheet:
-	8.8 Gray Scale Decoder
-
-		there are total 180 Gamma Settings (Setting 0 to Setting 180)
-		available for the Gray Scale table.
-
-		The gray scale is defined in incremental way, with reference
-		to the length of previous table entry:
-			Setting of GS1 has to be >= 0
-			Setting of GS2 has to be > Setting of GS1 +1
-			Setting of GS3 has to be > Setting of GS2 +1
-			:
-			Setting of GS63 has to be > Setting of GS62 +1
-
-*/
+ * Grayscale Lookup Table
+ * GS1 - GS63
+ * The driver Gamma curve contains the relative values between the entries
+ * in the Lookup table.
+ *
+ * From datasheet:
+ * 8.8 Gray Scale Decoder
+ *
+ *	there are total 180 Gamma Settings (Setting 0 to Setting 180)
+ *	available for the Gray Scale table.
+ *
+ *	The gray scale is defined in incremental way, with reference
+ *	to the length of previous table entry:
+ *		Setting of GS1 has to be >= 0
+ *		Setting of GS2 has to be > Setting of GS1 +1
+ *		Setting of GS3 has to be > Setting of GS2 +1
+ *		:
+ *		Setting of GS63 has to be > Setting of GS62 +1
+ *
+ */
 static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 {
 	unsigned long tmp[GAMMA_NUM * GAMMA_LEN];
-- 
1.9.1


