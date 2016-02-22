X-GM-THRID: 6254207218410848256
X-Received: by 10.129.145.193 with SMTP id i184mr28642157ywg.32.1456171092954;
        Mon, 22 Feb 2016 11:58:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.99 with SMTP id i90ls1822405qgf.46.gmail; Mon, 22 Feb
 2016 11:58:12 -0800 (PST)
X-Received: by 10.129.72.199 with SMTP id v190mr29237181ywa.44.1456171092476;
        Mon, 22 Feb 2016 11:58:12 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id ui7si3356965pab.0.2016.02.22.11.58.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 11:58:12 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id x65so97884977pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 11:58:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=02Azh/OSiwdiiMBX6RMPgRwi7g+GwTNwLutBNotZDtA=;
        b=Ly1wtM61f567i9CLL1jPQPhXE8NGXpe/6N62qSTZk122VyoWDL4jXuzSLTJL9x/hJE
         mgP8HhTEHQ7h6lkYJkxFTG7127Vc1QSCpQE/BGpj2UkM762kQgakJAP4yAgObeWAZ2vD
         V71x2GXrUBn/H0zNHh6ti6xsM0Qkv04bb5t81lj2efzVoenwCUqvs2DUtnndu2Sy8B2W
         sJUBj0YswbpZBLovi5P8RFVBvqvhWG149dWTzf9gsNSf8eDN2ak7xa1/hCGNoRkcWPmZ
         k4rk1y872hY6ZqKhXVds6hu5dJ1iyZXB6Rqley/XQMhzjVgDbNnOY2y4Xo2b2/eGbu24
         WKNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=02Azh/OSiwdiiMBX6RMPgRwi7g+GwTNwLutBNotZDtA=;
        b=HTMAknbzOQ9H/+ToMT33KNQLLYvOueVsejiIAuStnjcpqCE95FnrHOFwgQ1m2bGady
         zEFBp09r2xR9ClCLwTqqKE0VNjwUy17qB9Er1+tKPw7qGXOOJ8Aubu5yw+8rCSAwO5/I
         9n5g5HaCMH2QxnAkv4/ErELTdvLIwVxMGCgxZCkkgQCo1s8R1oVPqA3DFve4e19jDfed
         5JjqZFVqqD1kqqJjQbNosEho6XDvJs8e3/OSxXPifLw2HCeQenLVTvEcFSQy2PJ4iHex
         CBRCqyYnwDTx9Wb4HBX5fnEo34KicY2OR5ldhAMTyhUz5LuuK+s8aEXlZIOs6VdkYq5v
         nuNA==
X-Gm-Message-State: AG10YORQxLuf8UIqyB9ZgHFEEj/+Eqw5KbfG2kS15ADOGZCqD0SrOFbi0/Q3l1NrD4w9ow==
X-Received: by 10.98.43.149 with SMTP id r143mr40259529pfr.7.1456171092264;
        Mon, 22 Feb 2016 11:58:12 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id e20sm38801051pfd.4.2016.02.22.11.58.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 11:58:11 -0800 (PST)
Date: Tue, 23 Feb 2016 01:28:07 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: adc: spear_adc: Use devm_iio_device_register
Message-ID: <20160222195807.GA12070@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is released when a driver
detaches. Replace iio_device_register with the resource-managed
version devm_iio_device_register. Subsequently, remove
iio_device_unregister from remove function of this driver.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/iio/adc/spear_adc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
index f2c0065..0a6d0d7 100644
--- a/drivers/staging/iio/adc/spear_adc.c
+++ b/drivers/staging/iio/adc/spear_adc.c
@@ -346,7 +346,7 @@ static int spear_adc_probe(struct platform_device *pdev)
 	indio_dev->channels = spear_adc_iio_channels;
 	indio_dev->num_channels = ARRAY_SIZE(spear_adc_iio_channels);
 
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
 	if (ret)
 		goto errout2;
 
@@ -366,7 +366,6 @@ static int spear_adc_remove(struct platform_device *pdev)
 	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 	struct spear_adc_state *st = iio_priv(indio_dev);
 
-	iio_device_unregister(indio_dev);
 	clk_disable_unprepare(st->clk);
 	iounmap(st->adc_base_spear6xx);
 
-- 
1.9.1


