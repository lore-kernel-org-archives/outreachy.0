X-GM-THRID: 6466548746929831936
X-Received: by 10.176.64.131 with SMTP id i3mr19282610uad.17.1505610706624;
        Sat, 16 Sep 2017 18:11:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.6 with SMTP id i6ls4022180ioi.14.gmail; Sat, 16 Sep
 2017 18:11:45 -0700 (PDT)
X-Received: by 10.107.170.130 with SMTP id g2mr5532935ioj.127.1505610705874;
        Sat, 16 Sep 2017 18:11:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505610705; cv=none;
        d=google.com; s=arc-20160816;
        b=By4UzzB4wdG5hEuqSaSGOWfJB1rCJkwEULvGlyBCQrUG30vyVTcyH1XoR7+jVaPT04
         qQTQM6aw2gLfVRsG983rc9DLnoaSsmDnNP71oyca0rSAt+lsmBeddO6wW6UwrwmIjrMS
         f/w4iNQz7j2e7sY+x63sJR2vXv4cB9W0dtKT/Yo82jBupZQ1rt5VBxCf8oAh+pO6Vy+4
         rc/Ubieax9b60/GeBENj1b+drAuMVeIe/Rc8a4XGlpf7fb6GfqP1hgXdMmBg9i7Deuvd
         lENnIJOdrLxYkuk8jFPSJ5jXmAB5XolFvpB1rStmVz4GjJrhPXHLHS+daTsbgcEoefyb
         tLgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=4hw8S9xlaSgsYnzkpsGjtyuSTbDFNHK4y/V6JN9Mwds=;
        b=Iz8/5NIvkRZuDiw4xmgzG/g8TkKA/3Kom4em3xc4d37ZqkDhuNnjfDf7cjTyg2iwa8
         280O6p8HUtqZJ8RTnEBVqZiQdKAaS3LipalvKs5hlLvDvCz+KI2RjZOoxFnouCHr0H/P
         fJXS0caeiYWPoY8J3BxvxsHw8lq1wx81Q2YkhHN/F8EBR1bYuHn1j+YRhY/IjJkkHb4S
         7sW/WW8xd0MJG+GGdHWICX+5Ihs9Fy5XJYysX2xowG8DEUVBH6HMb8zJ8Gi1z3B8yewD
         ZDjGNCqXHhN+wyXMvYSkPwl3OVqIIefsIML3vdvVWFDrlgvGjQ3+si9DZd8iOipwzA+U
         j3rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kbKua0uB;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a17si410556pfk.15.2017.09.16.18.11.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 18:11:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kbKua0uB;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id m30so3241750pgn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 18:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4hw8S9xlaSgsYnzkpsGjtyuSTbDFNHK4y/V6JN9Mwds=;
        b=kbKua0uBmC61yJSSNbgzTPgJt8y0NyDH+WNceT2RuvyNff4HRXuFJVA1dV/6r5Qts4
         FSAQmZr+OvT3hajPcVrWg4LXPeRgSwAFRlYd1cAsDv/a0NrQwY1YXV9Wcl+EuXf/Jhph
         VVOSel2JV3aCR8YI+5AtmpFQJBl+EGVj3GIWx5eXZEbA/b5FM23KATcOG1F1st5iOkiD
         ii7gRXExqN1X3+PhRRihYrb7zNFLNNvuqoB++sSz3iJCPoCKL/lb+p/VDFEJEjwmW06I
         AQ5AeHQZOykf5KJaEq9G8MyVsGpaswdNZ/TaC9J3Ow0v3ZmXw2cFWvCHABGo/isG9b3F
         lDfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4hw8S9xlaSgsYnzkpsGjtyuSTbDFNHK4y/V6JN9Mwds=;
        b=my4LKg8ZkvDT1uz3qChY/T8pzaGktwW3xYNzTu3GO6mAbT2yXTaJG2+xAAj+yr0r+j
         UKK170GCOwIwYzWPMX9UehO2jkOjO751f8L05K89evYagYcidfZvdV0W8Ym8VIVU0u9Z
         vCRCSweb1zqyOoER0iycxF+Vczrs0k9rcN4k15G6eVbhvY0TTxgELFJEz4IAEEya26dz
         6Sz8dkj1xlWOiOY7OZleH2O6BZv1hPCQ+5SL/RxEXgYgoRtzN0PhZTJXT0ecIIIAh1rn
         cVsnPT2nms/7ZJhrFMZkcj/Az3J9bhRA1Hv17ycMHx8mENttVFeSlPDiIBo01uuQSIxG
         jKgg==
X-Gm-Message-State: AHPjjUi+ufI0xN/DwVqJlVODQEigmQW4P9axNS+7nf06vS4KRnGFJpgd
	W3XdRmBCFPmR36RMbEo=
X-Google-Smtp-Source: ADKCNb4equEvNOh30BZB8eFQ1kCipZcGb1vmdxWUc6yuVt6z38xioqlbCeHZkTLqpizXzCxLliFH2g==
X-Received: by 10.99.3.74 with SMTP id 71mr28042524pgd.401.1505610705401;
        Sat, 16 Sep 2017 18:11:45 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id p1sm8515523pfb.53.2017.09.16.18.11.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 18:11:44 -0700 (PDT)
Date: Sat, 16 Sep 2017 19:11:42 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: Replace bit shifting with BIT macro
Message-ID: <20170917011142.GA26676@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replace bit shifting on 0, 1, 2, and 3 with BIT(x) macro.
Issue resolved with the following Coccinelle script:

@r1@
identifier x;
constant int g;
@@
(
0<<\(x\|g\)
|
1<<\(x\|g\)
|
2<<\(x\|g\)
|
3<<\(x\|g\)
)

@script:python b@
g2 <<r1.g;
y;
@@

coccinelle.y = int(g2) + 1

@c@
constant int r1.g;
identifier b.y;
@@
(
-(1 << g)
+BIT(g)
|
-(0 << g)
+ 0
|
-(2 << g)
+BIT(y)
|
-(3 << g)
+(BIT(y) | BIT(g))
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/iio/impedance-analyzer/ad5933.c | 38 ++++++++++++-------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index 3d539ee..83d1a92 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -35,32 +35,32 @@
 #define AD5933_REG_IMAG_DATA		0x96	/* R, 2 bytes*/
 
 /* AD5933_REG_CONTROL_HB Bits */
-#define AD5933_CTRL_INIT_START_FREQ	(0x1 << 4)
-#define AD5933_CTRL_START_SWEEP		(0x2 << 4)
-#define AD5933_CTRL_INC_FREQ		(0x3 << 4)
+#define AD5933_CTRL_INIT_START_FREQ	BIT(4)
+#define AD5933_CTRL_START_SWEEP		BIT(5)
+#define AD5933_CTRL_INC_FREQ		(BIT(5) | BIT(4))
 #define AD5933_CTRL_REPEAT_FREQ		(0x4 << 4)
 #define AD5933_CTRL_MEASURE_TEMP	(0x9 << 4)
 #define AD5933_CTRL_POWER_DOWN		(0xA << 4)
 #define AD5933_CTRL_STANDBY		(0xB << 4)
 
-#define AD5933_CTRL_RANGE_2000mVpp	(0x0 << 1)
-#define AD5933_CTRL_RANGE_200mVpp	(0x1 << 1)
-#define AD5933_CTRL_RANGE_400mVpp	(0x2 << 1)
-#define AD5933_CTRL_RANGE_1000mVpp	(0x3 << 1)
+#define AD5933_CTRL_RANGE_2000mVpp	0
+#define AD5933_CTRL_RANGE_200mVpp	BIT(1)
+#define AD5933_CTRL_RANGE_400mVpp	BIT(2)
+#define AD5933_CTRL_RANGE_1000mVpp	(BIT(2) | BIT(1))
 #define AD5933_CTRL_RANGE(x)		((x) << 1)
 
-#define AD5933_CTRL_PGA_GAIN_1		(0x1 << 0)
-#define AD5933_CTRL_PGA_GAIN_5		(0x0 << 0)
+#define AD5933_CTRL_PGA_GAIN_1		BIT(0)
+#define AD5933_CTRL_PGA_GAIN_5		0
 
 /* AD5933_REG_CONTROL_LB Bits */
-#define AD5933_CTRL_RESET		(0x1 << 4)
-#define AD5933_CTRL_INT_SYSCLK		(0x0 << 3)
-#define AD5933_CTRL_EXT_SYSCLK		(0x1 << 3)
+#define AD5933_CTRL_RESET		BIT(4)
+#define AD5933_CTRL_INT_SYSCLK		0
+#define AD5933_CTRL_EXT_SYSCLK		BIT(3)
 
 /* AD5933_REG_STATUS Bits */
-#define AD5933_STAT_TEMP_VALID		(0x1 << 0)
-#define AD5933_STAT_DATA_VALID		(0x1 << 1)
-#define AD5933_STAT_SWEEP_DONE		(0x1 << 2)
+#define AD5933_STAT_TEMP_VALID		BIT(0)
+#define AD5933_STAT_DATA_VALID		BIT(1)
+#define AD5933_STAT_SWEEP_DONE		BIT(2)
 
 /* I2C Block Commands */
 #define AD5933_I2C_BLOCK_WRITE		0xA0
@@ -229,7 +229,7 @@ static int ad5933_set_freq(struct ad5933_state *st,
 		u8 d8[4];
 	} dat;
 
-	freqreg = (u64) freq * (u64) (1 << 27);
+	freqreg = (u64)freq * (u64)BIT(27);
 	do_div(freqreg, st->mclk_hz / 4);
 
 	switch (reg) {
@@ -318,7 +318,7 @@ static ssize_t ad5933_show_frequency(struct device *dev,
 	freqreg = be32_to_cpu(dat.d32) & 0xFFFFFF;
 
 	freqreg = (u64)freqreg * (u64)(st->mclk_hz / 4);
-	do_div(freqreg, 1 << 27);
+	do_div(freqreg, BIT(27));
 
 	return sprintf(buf, "%d\n", (int)freqreg);
 }
@@ -452,9 +452,9 @@ static ssize_t ad5933_store(struct device *dev,
 
 		/* 2x, 4x handling, see datasheet */
 		if (val > 1022)
-			val = (val >> 2) | (3 << 9);
+			val = (val >> 2) | (BIT(10) | BIT(9));
 		else if (val > 511)
-			val = (val >> 1) | (1 << 9);
+			val = (val >> 1) | BIT(9);
 
 		dat = cpu_to_be16(val);
 		ret = ad5933_i2c_write(st->client,
-- 
2.7.4


