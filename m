X-GM-THRID: 8221215424512
X-Received: by 10.180.13.195 with SMTP id j3mr11303535wic.2.1426359113990;
        Sat, 14 Mar 2015 11:51:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.20.13 with SMTP id j13ls364779wie.51.canary; Sat, 14 Mar
 2015 11:51:53 -0700 (PDT)
X-Received: by 10.180.13.195 with SMTP id j3mr11303534wic.2.1426359113497;
        Sat, 14 Mar 2015 11:51:53 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id gj20si362665wic.1.2015.03.14.11.51.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 11:51:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id j2so11747679wif.1
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 11:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=js4iwuOlFJtzYmKmFVu+8ex0pF3azbvtjn7wEcm13/I=;
        b=rQk6i94WkOoTGKsFNTYw3R5oM6BJCAPAUfwXUgJaUM4kGn+x1VNVvrfz+sE6Zdyg57
         NUSNelG++yMzdSMurHBg0X2Oqtc72V2n/OficF/T0wNJTm7SO/gy+y0lmiGoL4RFKS8u
         9ZIUNb+qcddUS8ZofVTweUKIi8DbCNsvaymuv2bLx/oYyoU3FMgB/NMqitJVy1JpqD2/
         wgIJCWDp2f+Saw+C2oJKaSMD48UIH37cjXToME+y5NCuLQI7LSH+IhXlYJChOz4gyqYO
         NW4kMIkdg5QY8ZyGqUbyi8l9n68wDmbvCoYo/s/3Dn2BO9cjekeVFhv6HUFcsyLxI58x
         WUgA==
X-Received: by 10.194.177.195 with SMTP id cs3mr105383158wjc.141.1426359113434;
        Sat, 14 Mar 2015 11:51:53 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id dz6sm8065747wib.0.2015.03.14.11.51.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 11:51:52 -0700 (PDT)
Date: Sat, 14 Mar 2015 20:51:12 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/6] Staging: iio: Prefer using the BIT macro
Message-ID: <a13830f386c8310e44a106ab20ae9a2fac042078.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426353884.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro
as it's extensively used by other function in this driver.

This was done with coccinelle:
@@ int g; @@

-(1 << g)
+BIT(g)

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/frequency/ad9832.c |  2 +-
 drivers/staging/iio/frequency/ad9832.h | 12 ++++++------
 drivers/staging/iio/frequency/ad9834.c |  4 ++--
 drivers/staging/iio/frequency/ad9834.h | 36 +++++++++++++++++-----------------
 4 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index 8ecc0bc..a861fe0 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -59,7 +59,7 @@ static int ad9832_write_frequency(struct ad9832_state *st,
 static int ad9832_write_phase(struct ad9832_state *st,
 			      unsigned long addr, unsigned long phase)
 {
-	if (phase > (1 << AD9832_PHASE_BITS))
+	if (phase > BIT(AD9832_PHASE_BITS))
 		return -EINVAL;
 
 	st->phase_data[0] = cpu_to_be16((AD9832_CMD_PHA8BITSW << CMD_SHIFT) |
diff --git a/drivers/staging/iio/frequency/ad9832.h b/drivers/staging/iio/frequency/ad9832.h
index 386f4dc..d32323b 100644
--- a/drivers/staging/iio/frequency/ad9832.h
+++ b/drivers/staging/iio/frequency/ad9832.h
@@ -42,13 +42,13 @@
 #define AD9832_CMD_SYNCSELSRC	0x8
 #define AD9832_CMD_SLEEPRESCLR	0xC
 
-#define AD9832_FREQ		(1 << 11)
+#define AD9832_FREQ		BIT(11)
 #define AD9832_PHASE(x)		(((x) & 3) << 9)
-#define AD9832_SYNC		(1 << 13)
-#define AD9832_SELSRC		(1 << 12)
-#define AD9832_SLEEP		(1 << 13)
-#define AD9832_RESET		(1 << 12)
-#define AD9832_CLR		(1 << 11)
+#define AD9832_SYNC		BIT(13)
+#define AD9832_SELSRC		BIT(12)
+#define AD9832_SLEEP		BIT(13)
+#define AD9832_RESET		BIT(12)
+#define AD9832_CLR		BIT(11)
 #define CMD_SHIFT		12
 #define ADD_SHIFT		8
 #define AD9832_FREQ_BITS	32
diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index efea560..342c713 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -27,7 +27,7 @@
 
 static unsigned int ad9834_calc_freqreg(unsigned long mclk, unsigned long fout)
 {
-	unsigned long long freqreg = (u64)fout * (u64)(1 << AD9834_FREQ_BITS);
+	unsigned long long freqreg = (u64)fout * (u64)BIT(AD9834_FREQ_BITS);
 
 	do_div(freqreg, mclk);
 	return freqreg;
@@ -55,7 +55,7 @@ static int ad9834_write_frequency(struct ad9834_state *st,
 static int ad9834_write_phase(struct ad9834_state *st,
 				  unsigned long addr, unsigned long phase)
 {
-	if (phase > (1 << AD9834_PHASE_BITS))
+	if (phase > BIT(AD9834_PHASE_BITS))
 		return -EINVAL;
 	st->data = cpu_to_be16(addr | phase);
 
diff --git a/drivers/staging/iio/frequency/ad9834.h b/drivers/staging/iio/frequency/ad9834.h
index 8ca6e52..0a0de4c 100644
--- a/drivers/staging/iio/frequency/ad9834.h
+++ b/drivers/staging/iio/frequency/ad9834.h
@@ -10,31 +10,31 @@
 
 /* Registers */
 
-#define AD9834_REG_CMD		(0 << 14)
-#define AD9834_REG_FREQ0	(1 << 14)
-#define AD9834_REG_FREQ1	(2 << 14)
-#define AD9834_REG_PHASE0	(6 << 13)
-#define AD9834_REG_PHASE1	(7 << 13)
+#define AD9834_REG_CMD		0
+#define AD9834_REG_FREQ0	BIT(14)
+#define AD9834_REG_FREQ1	BIT(15)
+#define AD9834_REG_PHASE0	(BIT(15) | BIT(14))
+#define AD9834_REG_PHASE1	(BIT(15) | BIT(14) | BIT(13))
 
 /* Command Control Bits */
 
-#define AD9834_B28		(1 << 13)
-#define AD9834_HLB		(1 << 12)
-#define AD9834_FSEL		(1 << 11)
-#define AD9834_PSEL		(1 << 10)
-#define AD9834_PIN_SW		(1 << 9)
-#define AD9834_RESET		(1 << 8)
-#define AD9834_SLEEP1		(1 << 7)
-#define AD9834_SLEEP12		(1 << 6)
-#define AD9834_OPBITEN		(1 << 5)
-#define AD9834_SIGN_PIB		(1 << 4)
-#define AD9834_DIV2		(1 << 3)
-#define AD9834_MODE		(1 << 1)
+#define AD9834_B28		BIT(13)
+#define AD9834_HLB		BIT(12)
+#define AD9834_FSEL		BIT(11)
+#define AD9834_PSEL		BIT(10)
+#define AD9834_PIN_SW		BIT(9)
+#define AD9834_RESET		BIT(8)
+#define AD9834_SLEEP1		BIT(7)
+#define AD9834_SLEEP12		BIT(6)
+#define AD9834_OPBITEN		BIT(5)
+#define AD9834_SIGN_PIB		BIT(4)
+#define AD9834_DIV2		BIT(3)
+#define AD9834_MODE		BIT(1)
 
 #define AD9834_FREQ_BITS	28
 #define AD9834_PHASE_BITS	12
 
-#define RES_MASK(bits)	((1 << (bits)) - 1)
+#define RES_MASK(bits)	(BIT(bits) - 1)
 
 /**
  * struct ad9834_state - driver instance specific data
-- 
1.9.1


