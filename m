X-GM-THRID: 8221215424512
X-Received: by 10.180.208.12 with SMTP id ma12mr5438272wic.6.1426297118475;
        Fri, 13 Mar 2015 18:38:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.9 with SMTP id l9ls258343wic.11.canary; Fri, 13 Mar
 2015 18:38:38 -0700 (PDT)
X-Received: by 10.194.178.67 with SMTP id cw3mr3367923wjc.2.1426297118208;
        Fri, 13 Mar 2015 18:38:38 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id gj20si244738wic.1.2015.03.13.18.38.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 18:38:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id m6so957756wgd.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 18:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=nhAvtvyYCKGprx26znxN1Q0uvpSg68KsTE1aGN8BBJ8=;
        b=0Dz6/mT1lZozg4VweteiEIvtd0CPv5ivGycRdwNnQpvyj9GoNE1kqtGRPdSLkVFw0L
         LCcwSoftsC5ojwLd1TMZyDw4fM/kQ7e4MqyxsOXs/AoBDl+Rr43i3/vZedrMxWNIB+X2
         khCVJWkIf8P2nJuL9rtGINY367X4m047aVNMb24I7EpENw9M6ET5JcO4K59HxpdD9Bg/
         b+Ol2iJEflsR/0nQOhe7HU714LQTGTy3SIhTwHp8ZWUA6yZ4r4/wScjbGta2AkzCYqBD
         JIO16lxI/mEue3I6FLCgV2k2nqpiert+0hzyeySODPVKZC/pOMLh8SuSrprPcWqAwzp1
         3N/g==
X-Received: by 10.180.13.145 with SMTP id h17mr62086430wic.38.1426297118142;
        Fri, 13 Mar 2015 18:38:38 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id lb6sm5042170wjb.22.2015.03.13.18.38.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 18:38:37 -0700 (PDT)
Date: Sat, 14 Mar 2015 03:37:57 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] Staging: iio: Prefer using the BIT macro
Message-ID: <c77aa9f0cb01943bd9b2b8afd1a87807da692eb5.1426296329.git.cristina.opriceana@gmail.com>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426296329.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro
as it's extensively used by other functions in this driver.

This was done with coccinelle:
@@ int g; @@

-(1 << g)
+BIT(g)

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/frequency/ad9832.c |  2 +-
 drivers/staging/iio/frequency/ad9832.h | 12 ++++++------
 drivers/staging/iio/frequency/ad9834.c |  4 ++--
 drivers/staging/iio/frequency/ad9834.h | 26 +++++++++++++-------------
 4 files changed, 22 insertions(+), 22 deletions(-)

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
index 8ca6e52..b54fb33 100644
--- a/drivers/staging/iio/frequency/ad9834.h
+++ b/drivers/staging/iio/frequency/ad9834.h
@@ -11,25 +11,25 @@
 /* Registers */
 
 #define AD9834_REG_CMD		(0 << 14)
-#define AD9834_REG_FREQ0	(1 << 14)
+#define AD9834_REG_FREQ0	BIT(14)
 #define AD9834_REG_FREQ1	(2 << 14)
 #define AD9834_REG_PHASE0	(6 << 13)
 #define AD9834_REG_PHASE1	(7 << 13)
 
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
-- 
1.9.1


