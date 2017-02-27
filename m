X-GM-THRID: 6391540020415561728
X-Received: by 10.25.212.76 with SMTP id l73mr2008647lfg.13.1488233749450;
        Mon, 27 Feb 2017 14:15:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.17 with SMTP id z17ls502383lja.50.gmail; Mon, 27 Feb
 2017 14:15:48 -0800 (PST)
X-Received: by 10.25.215.37 with SMTP id o37mr130832lfg.20.1488233748760;
        Mon, 27 Feb 2017 14:15:48 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id c188si769093wmd.0.2017.02.27.14.15.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 14:15:48 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id g10so11741665wrg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 14:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Uh8KT9yB1CI71Isx5VZX7/zfRsk7Eo5+cMXr0BOHGCA=;
        b=BABYkR2rnLc2HT4VcD/s7Perlun3PcHkHS/qQOWnj1xbyLQw2QCPy45YWmYu6IXvFa
         /6LT93VjGn8qUSfmkmfPiAJMZ+rNCeTmK6VvvllbrFA2k7tVyvKy+PoO+WPS6dyWy70E
         2/1uhwbGtSeYGTD43EfOS4b2LeZu3F6FBl5jrQvWuc9dBG3fHhS5QvHqDJPL+KJVEpl6
         Xe8vGkk5gN2A4cX/FE2ymJ1VQUVAZliGKZLq70uOQPEtd2XGpjn4zPvuhXUOTrB3u2Vf
         if+dat7IvIrs5WEoZrV1JnACtEXzM3a1iBjDdJcpUfEEDl6TXUfiGfhNWyxAr1AewyWq
         wAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Uh8KT9yB1CI71Isx5VZX7/zfRsk7Eo5+cMXr0BOHGCA=;
        b=Jwr7ecu8pWA85hDTWFB62mDSX23m1SpBWDeDmrwA/uYhuK6+vaAHpEOvlWjHFQGwiZ
         t72B9bp7r8u5CREuTY9jp8QqYOUZaywdAMEis+rX3s657oDauIz5oVAuZmhwsKA8sbMw
         7Bi4Sdrz4EqgFp52PNETMKahnIEzfsSa4X0aKC2LMGafAAhsqBeqs0gTI2T54CaLYzoh
         dKBXim55mQoKhTdfT0Po1QaCws4lzKo6DjfxB4WECWybY03XC6DGK/mvQpPpnXYPolww
         fk/m1+rE65Tc03w1MJXDe+acXsaEc2NMa23WRXJl73ZhgwkXZCvKONap/y5eOYHU6XZ4
         VFwA==
X-Gm-Message-State: AMke39n1xw7/1mmCAu23MZ+2Q7TYAy2pZYk95umOs6zE6isMaNPcKQ/W8OtVoFc/x0RjlA==
X-Received: by 10.223.139.2 with SMTP id n2mr16636453wra.67.1488233748498;
        Mon, 27 Feb 2017 14:15:48 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([109.166.136.3])
        by smtp.gmail.com with ESMTPSA id r5sm23929837wra.25.2017.02.27.14.15.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 14:15:47 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2] staging: iio: ad9834: Moved contents of the header to the source file
Date: Tue, 28 Feb 2017 00:15:11 +0200
Message-Id: <1488233711-28721-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1488146361-14383-1-git-send-email-narcisaanamaria12@gmail.com>
References: <1488146361-14383-1-git-send-email-narcisaanamaria12@gmail.com>

Moved the contents of the header(ad9834.h) into the corresponding source
file with the exception of the platform data struct which is supposed to be
used from somewhere else other than the driver.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
Changes to v2:
    -Removed the platform data structure from the source file
    and inserted it back into the header file(ad9834.h).
---
 drivers/staging/iio/frequency/ad9834.c | 72 ++++++++++++++++++++++++++++++++++
 drivers/staging/iio/frequency/ad9834.h | 72 ----------------------------------
 2 files changed, 72 insertions(+), 72 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index 19216af..f92ff7f 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -25,6 +25,78 @@
 
 #include "ad9834.h"
 
+/* Registers */
+
+#define AD9834_REG_CMD		0
+#define AD9834_REG_FREQ0	BIT(14)
+#define AD9834_REG_FREQ1	BIT(15)
+#define AD9834_REG_PHASE0	(BIT(15) | BIT(14))
+#define AD9834_REG_PHASE1	(BIT(15) | BIT(14) | BIT(13))
+
+/* Command Control Bits */
+
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
+
+#define AD9834_FREQ_BITS	28
+#define AD9834_PHASE_BITS	12
+
+#define RES_MASK(bits)	(BIT(bits) - 1)
+
+/**
+ * struct ad9834_state - driver instance specific data
+ * @spi:		spi_device
+ * @reg:		supply regulator
+ * @mclk:		external master clock
+ * @control:		cached control word
+ * @xfer:		default spi transfer
+ * @msg:		default spi message
+ * @freq_xfer:		tuning word spi transfer
+ * @freq_msg:		tuning word spi message
+ * @data:		spi transmit buffer
+ * @freq_data:		tuning word spi transmit buffer
+ */
+
+struct ad9834_state {
+	struct spi_device		*spi;
+	struct regulator		*reg;
+	unsigned int			mclk;
+	unsigned short			control;
+	unsigned short			devid;
+	struct spi_transfer		xfer;
+	struct spi_message		msg;
+	struct spi_transfer		freq_xfer[2];
+	struct spi_message		freq_msg;
+
+	/*
+	 * DMA (thus cache coherency maintenance) requires the
+	 * transfer buffers to live in their own cache lines.
+	 */
+	__be16				data ____cacheline_aligned;
+	__be16				freq_data[2];
+};
+
+/**
+ * ad9834_supported_device_ids:
+ */
+
+enum ad9834_supported_device_ids {
+	ID_AD9833,
+	ID_AD9834,
+	ID_AD9837,
+	ID_AD9838,
+};
+
 static unsigned int ad9834_calc_freqreg(unsigned long mclk, unsigned long fout)
 {
 	unsigned long long freqreg = (u64)fout * (u64)BIT(AD9834_FREQ_BITS);
diff --git a/drivers/staging/iio/frequency/ad9834.h b/drivers/staging/iio/frequency/ad9834.h
index 40fdd5d..ae620f3 100644
--- a/drivers/staging/iio/frequency/ad9834.h
+++ b/drivers/staging/iio/frequency/ad9834.h
@@ -8,67 +8,6 @@
 #ifndef IIO_DDS_AD9834_H_
 #define IIO_DDS_AD9834_H_
 
-/* Registers */
-
-#define AD9834_REG_CMD		0
-#define AD9834_REG_FREQ0	BIT(14)
-#define AD9834_REG_FREQ1	BIT(15)
-#define AD9834_REG_PHASE0	(BIT(15) | BIT(14))
-#define AD9834_REG_PHASE1	(BIT(15) | BIT(14) | BIT(13))
-
-/* Command Control Bits */
-
-#define AD9834_B28		BIT(13)
-#define AD9834_HLB		BIT(12)
-#define AD9834_FSEL		BIT(11)
-#define AD9834_PSEL		BIT(10)
-#define AD9834_PIN_SW		BIT(9)
-#define AD9834_RESET		BIT(8)
-#define AD9834_SLEEP1		BIT(7)
-#define AD9834_SLEEP12		BIT(6)
-#define AD9834_OPBITEN		BIT(5)
-#define AD9834_SIGN_PIB		BIT(4)
-#define AD9834_DIV2		BIT(3)
-#define AD9834_MODE		BIT(1)
-
-#define AD9834_FREQ_BITS	28
-#define AD9834_PHASE_BITS	12
-
-#define RES_MASK(bits)	(BIT(bits) - 1)
-
-/**
- * struct ad9834_state - driver instance specific data
- * @spi:		spi_device
- * @reg:		supply regulator
- * @mclk:		external master clock
- * @control:		cached control word
- * @xfer:		default spi transfer
- * @msg:		default spi message
- * @freq_xfer:		tuning word spi transfer
- * @freq_msg:		tuning word spi message
- * @data:		spi transmit buffer
- * @freq_data:		tuning word spi transmit buffer
- */
-
-struct ad9834_state {
-	struct spi_device		*spi;
-	struct regulator		*reg;
-	unsigned int			mclk;
-	unsigned short			control;
-	unsigned short			devid;
-	struct spi_transfer		xfer;
-	struct spi_message		msg;
-	struct spi_transfer		freq_xfer[2];
-	struct spi_message		freq_msg;
-
-	/*
-	 * DMA (thus cache coherency maintenance) requires the
-	 * transfer buffers to live in their own cache lines.
-	 */
-	__be16				data ____cacheline_aligned;
-	__be16				freq_data[2];
-};
-
 /*
  * TODO: struct ad7887_platform_data needs to go into include/linux/iio
  */
@@ -97,15 +36,4 @@ struct ad9834_platform_data {
 	bool			en_signbit_msb_out;
 };
 
-/**
- * ad9834_supported_device_ids:
- */
-
-enum ad9834_supported_device_ids {
-	ID_AD9833,
-	ID_AD9834,
-	ID_AD9837,
-	ID_AD9838,
-};
-
 #endif /* IIO_DDS_AD9834_H_ */
-- 
1.9.1


