X-GM-THRID: 6388911007678332928
X-Received: by 10.107.36.199 with SMTP id k190mr4940550iok.37.1487534337213;
        Sun, 19 Feb 2017 11:58:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.1.7 with SMTP id 7ls1747200itk.11.canary-gmail; Sun, 19 Feb
 2017 11:58:56 -0800 (PST)
X-Received: by 10.107.7.86 with SMTP id 83mr5781390ioh.24.1487534336475;
        Sun, 19 Feb 2017 11:58:56 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z73si1967662pfa.2.2017.02.19.11.58.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:58:56 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o64so7782934pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 11:58:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=W5/XY/C23IkEQ2IE6/+5D3jfj4pxTIzXO4XlCjkaASM=;
        b=bXgqFTjyf9NibB1YwxI/zvaJ+AleUdsnuLqr7leOM5lWLKZy16lOnxR6VrwUf6iBob
         PmxuJGBYcDnrlQ1V9taP6V1BKbKJdfKLFUcbAZVcebzCj6M8TRCHdNBCCVWn3LBuLezz
         VUu2Km759JCBKorrNd/xFZI/1EcmNZ2UCCZyaw0XjqrvDH9u2fV6foM92RrVk0/s5Sjm
         MqBiVn6Vgs06XrobHC+FyNt+ssr/V0gqmwGVDGcrb6MXDaqWHssnNFEvl76E84OxgYsz
         7KRhJhXVgid0CFwNLgdpLWzyc1boWUdmFuKgFzEDDClQw2JJnUG57EGXq1o/+bFsb0qq
         s0MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=W5/XY/C23IkEQ2IE6/+5D3jfj4pxTIzXO4XlCjkaASM=;
        b=d7hqjayE/BGQiZimOJRULRfwsZGgKs7sYxFok3JVKjtsOvV3KCgxvzBA69jF+OkgEI
         XCCvyvsk9sV67YvJ4vrfoY23zlOaZVcRL8mpt5UUfHKmaRg1z2Z8WzRGPRWFHok54YLE
         3KLhJuNztqFOLhEDisJkos+SFln1uVn75VXp5/DkK/EVsp6n0yyGuSEslhF8/4xwRWp/
         ookFdCqMMvssjNxBnhERXT4tM/7LANaLPS8d82SCgBSGnu3pW/so0y7+RJyXvXNdw38e
         qJmegNTVhf9kUm5rAQ4xTgzZvwGxBareX8048w/7+abuSWUkcmn7sj2crSmCsL7zyWxR
         P7Tg==
X-Gm-Message-State: AMke39kvysMq4o4sHRIz3HCgrDp8LRVAFx/v94xk2cqNyLXKtBA6OkxrR+qC4NFxZnioIw==
X-Received: by 10.99.124.10 with SMTP id x10mr22713622pgc.25.1487534336257;
        Sun, 19 Feb 2017 11:58:56 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.155])
        by smtp.gmail.com with ESMTPSA id m29sm30762019pfi.54.2017.02.19.11.58.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:58:55 -0800 (PST)
Date: Mon, 20 Feb 2017 01:28:35 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 1/2] staging: iio: ad7152: Use BIT() macro for left
 shifting 1
Message-ID: <06283c7cbccd40a7214bf4f047c3829e53b6d448.1487483384.git.karniksayli1995@gmail.com>
References: <cover.1487483384.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487483384.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace left shifting on 1 with the BIT(x) macro as suggested by
checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2:
Used GENMASK() macro instead of BIT() macro for multi-bit bitfields.
Removed extra parentheses around argument to macro

 drivers/staging/iio/cdc/ad7152.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index b91b50f..e8609b8 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -41,10 +41,10 @@
 #define AD7152_REG_CFG2			26
 
 /* Status Register Bit Designations (AD7152_REG_STATUS) */
-#define AD7152_STATUS_RDY1		(1 << 0)
-#define AD7152_STATUS_RDY2		(1 << 1)
-#define AD7152_STATUS_C1C2		(1 << 2)
-#define AD7152_STATUS_PWDN		(1 << 7)
+#define AD7152_STATUS_RDY1		BIT(0)
+#define AD7152_STATUS_RDY2		BIT(1)
+#define AD7152_STATUS_C1C2		BIT(2)
+#define AD7152_STATUS_PWDN		BIT(7)
 
 /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
 #define AD7152_SETUP_CAPDIFF		(1 << 5)
-- 
2.7.4


