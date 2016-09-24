X-GM-THRID: 6333834735065759744
X-Received: by 10.129.78.134 with SMTP id c128mr3162587ywb.50.1474733087551;
        Sat, 24 Sep 2016 09:04:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.208.14 with SMTP id m14ls58384itg.14.canary; Sat, 24 Sep
 2016 09:04:47 -0700 (PDT)
X-Received: by 10.66.158.202 with SMTP id ww10mr3372569pab.8.1474733087058;
        Sat, 24 Sep 2016 09:04:47 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f12si3003432pfk.0.2016.09.24.09.04.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:04:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so6735717pfy.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 09:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yOmS9YJTm3QBHNh7ZfY7FOPPu2O0FS1Og0iOdrVP7jM=;
        b=aeO46KXJsRu9y2PhMK+K/3lcrkKhbDOPj4YnS69zQit39K2c1njQDHtoCLJGD8pJZC
         PueSnUqGEb/T+SEYWnUEs0JQfziBg22IAZF6D631MbJyaclxT9RZZ87Gfb3MQ866GfS7
         vKehjNvI2MFplT+GoMW+H2uU+2yHUToIxwhWaDRyd0LPDbIMVPA5QlBQfLK5BS7fJDNj
         azlHzArRwMAWEGaHQh4BztAKSABodzIiVTodBqUz/C1Rv2Zyc7fHCfcwIHq4LVit7K0d
         3biV8ObCNOZAe/6rUxpzLHdg2k81c7SRKqTl7RIqWGR6xw1iRE8hKgd0HpvIWr1ogzkv
         yeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yOmS9YJTm3QBHNh7ZfY7FOPPu2O0FS1Og0iOdrVP7jM=;
        b=C+1QTwH6pgXQ2V53iCNm4YRy9+yn0edy4NTY7wMYU9q62s+SxZ/XVBA09awqXL5JkU
         ty8vBoVozeQO961Kft9ZHPHcs+pXWBmhPNYVkqvlyq/uShZ0IKYIadda4oaPJtKLG0xm
         w2NnweXmzsZk8R1Mh6IQbMKz5lYUzQ2xQMQL2m+HhUdgT5VdujpLPKTsYeoyqTufHpk7
         U7tUAeuWGpnqFDugSrvxxnsOqVGWYTucqsKjLGXALvivHOI4OTx5HmRgaRjxxFz7mHbj
         A5/WesRu9SEAV7Mn1FaQyG3RamzszkP3QFDRIiunA/MZitrj5lDqbTdlDis2Mzk+AyAl
         6Lgg==
X-Gm-Message-State: AE9vXwPIJheSyoK0ys1JqxNeagFZ000fDcvHkQTi5XhUBiRD4U65/h0Y/Cdl9+yxxSKqWg==
X-Received: by 10.98.14.221 with SMTP id 90mr22440692pfo.181.1474733086881;
        Sat, 24 Sep 2016 09:04:46 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id h124sm4400850pfg.18.2016.09.24.09.04.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:04:46 -0700 (PDT)
Date: Sat, 24 Sep 2016 21:34:41 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/6] staging: media: lirc: Add space around '*'
Message-ID: <d0f1bdc5ccaa602ba0a53232be35202e326e395f.1474722340.git.namrataashettar@gmail.com>
References: <cover.1474722340.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474722340.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add space around '*' to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/media/lirc/lirc_bt829.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_bt829.c b/drivers/staging/media/lirc/lirc_bt829.c
index 06eac71..04d881b 100644
--- a/drivers/staging/media/lirc/lirc_bt829.c
+++ b/drivers/staging/media/lirc/lirc_bt829.c
@@ -185,7 +185,7 @@ static int atir_init_start(void)
 
 static void cycle_delay(int cycle)
 {
-	udelay(WAIT_CYCLE*cycle);
+	udelay(WAIT_CYCLE * cycle);
 }
 
 static int poll_main(void)
-- 
2.7.4


