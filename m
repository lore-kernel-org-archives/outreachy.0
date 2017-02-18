X-GM-THRID: 6388545566354178048
X-Received: by 10.157.51.120 with SMTP id u53mr4695406otd.83.1487449318599;
        Sat, 18 Feb 2017 12:21:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls6906971otg.39.gmail; Sat, 18 Feb
 2017 12:21:58 -0800 (PST)
X-Received: by 10.176.69.233 with SMTP id u96mr3656628uau.22.1487449318313;
        Sat, 18 Feb 2017 12:21:58 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f7si1469355pfk.5.2017.02.18.12.21.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:21:58 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 5so7943572pgj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 12:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Zj0b7nWCrsRAFcVbcSks11YlU+F2BIAW8gw5xFcV4oE=;
        b=baSQoGFyqt8DMIeAhCzH/++PN3jaV0YWstSzZqpaQja6VikEjLazeW5HCnDAsv2YCo
         ER7ZUIv/1g+Pftl31mWZniWgIuDfcZglylYcraCFL21ZhmgQHW1AxozrSiUO8I72DIGQ
         HQltCFcXk1OY5nFwzHwN0KafUQwC0Yr0jENSBu7J9cZzS/qaWdVXHuJx2ySpc3HtbyEt
         w0EUbTnfT0QoiROKWXA1HAiOg/euggH5BDSN3yo3Vx8btATSdRJElxtS7GmJ7ef9OQlY
         xMt/Z6sc212LEs662YCli2Qaq1ddTNaadUumLiZ0R2AUnAa4Fwh70cBkeUK0U7bnGRRj
         BUBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Zj0b7nWCrsRAFcVbcSks11YlU+F2BIAW8gw5xFcV4oE=;
        b=Aq4qseRZPPXpLJ6hYrUTCgLbH3iFp55JUXpKP2FpjP5WND5JmCYu2aRHKWf5LG4GG2
         oSjZEVxZXnaZMXyqERl2dt6LKeucFWQhjfuwYvNch1FFnUJLm4PAUQATzvVpQARIYqYC
         QTOl6g45MpeKqlYLaOIMtZxcvpikdiYLkWuQaf8FRO995OO+qcV8Gdosq3RnGdJNM8mP
         haZsV9ZR38zYT/O4LJmh/kdMtAPnH+pwwz2/vCPSgobwJ+AbxbRGObF/qdcH0aFJvUBF
         0su6g68RMs/abaAnVW2an0TUF7qJUCjGubIet/Eir2dnKblEBx4dUOaq8uCnrOQYkjF6
         ve+g==
X-Gm-Message-State: AMke39l2mmAg3i8Af8ctZ8CIReRRUSjtxZCEkzH7QtyylQxP88P+oVlBJXEPx9bYs2ik3A==
X-Received: by 10.84.142.1 with SMTP id 1mr20572674plw.127.1487449318074;
        Sat, 18 Feb 2017 12:21:58 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.167.219])
        by smtp.gmail.com with ESMTPSA id x30sm26790808pgc.67.2017.02.18.12.21.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:21:57 -0800 (PST)
Date: Sun, 19 Feb 2017 01:51:39 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH 2/3] staging: iio: ad7152: Use GENMASK() macro for left shifts
Message-ID: <92240a3dca0138880fe47a7df0a5e6df869c8199.1487448326.git.karniksayli1995@gmail.com>
References: <cover.1487448326.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487448326.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Use GENMASK() macro for left shifting integers.
Done using coccinelle:
@@ int a,b; @@

-(a << b)
+GENMASK(a, b)

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/cdc/ad7152.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 0c97d5a..988b89b 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -48,27 +48,27 @@
 
 /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
 #define AD7152_SETUP_CAPDIFF		BIT(5)
-#define AD7152_SETUP_RANGE_2pF		(0 << 6)
+#define AD7152_SETUP_RANGE_2pF		GENMASK(0, 6)
 #define AD7152_SETUP_RANGE_0_5pF	BIT(6)
-#define AD7152_SETUP_RANGE_1pF		(2 << 6)
-#define AD7152_SETUP_RANGE_4pF		(3 << 6)
+#define AD7152_SETUP_RANGE_1pF		GENMASK(2, 6)
+#define AD7152_SETUP_RANGE_4pF		GENMASK(3, 6)
 #define AD7152_SETUP_RANGE(x)		((x) << 6)
 
 /* Config Register Bit Designations (AD7152_REG_CFG) */
 #define AD7152_CONF_CH2EN		BIT(3)
 #define AD7152_CONF_CH1EN		BIT(4)
-#define AD7152_CONF_MODE_IDLE		(0 << 0)
+#define AD7152_CONF_MODE_IDLE		GENMASK(0, 0)
 #define AD7152_CONF_MODE_CONT_CONV	BIT(0)
-#define AD7152_CONF_MODE_SINGLE_CONV	(2 << 0)
-#define AD7152_CONF_MODE_OFFS_CAL	(5 << 0)
-#define AD7152_CONF_MODE_GAIN_CAL	(6 << 0)
+#define AD7152_CONF_MODE_SINGLE_CONV	GENMASK(2, 0)
+#define AD7152_CONF_MODE_OFFS_CAL	GENMASK(5, 0)
+#define AD7152_CONF_MODE_GAIN_CAL	GENMASK(6, 0)
 
 /* Capdac Register Bit Designations (AD7152_REG_CAPDAC_XXX) */
 #define AD7152_CAPDAC_DACEN		BIT(7)
 #define AD7152_CAPDAC_DACP(x)		((x) & 0x1F)
 
 /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
-#define AD7152_CFG2_OSR(x)		(((x) & 0x3) << 4)
+#define AD7152_CFG2_OSR(x)		GENMASK(((x) & 0x3), 4)
 
 enum {
 	AD7152_DATA,
-- 
2.7.4


