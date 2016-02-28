X-GM-THRID: 6256254547681869824
X-Received: by 10.182.29.129 with SMTP id k1mr8034531obh.23.1456647773247;
        Sun, 28 Feb 2016 00:22:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.53 with SMTP id a50ls1664485qga.11.gmail; Sun, 28 Feb
 2016 00:22:51 -0800 (PST)
X-Received: by 10.31.160.209 with SMTP id j200mr8179897vke.6.1456647771652;
        Sun, 28 Feb 2016 00:22:51 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id ff2si3183640pad.2.2016.02.28.00.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 00:22:51 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id x65so76223227pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 00:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IfD5eioZqyb9WybiUVbX4jBGWYl2gjDH9HKGXR16Esk=;
        b=MsL6qWN6+kcYQ9a/6hXeRX4kbA5ujplOV6E292a7+GK+lDxx3pUzFv9T3gpW5hn3X4
         abq717zWCO9DWU8/oVpwQtBcqKxX+1q5APFWfyg0REzRXjOJVCyBQWQ4EBtj1r/pUvMQ
         Tgae67Nob7b77rzT2obmR/U579j8JwSW1HENOJ0pUjtnN3MyT4ofTi30hWxjrghTR7Sm
         CYaB7SEdX/q0cHr7Apc6xxBjKCjsGn4nCsd1ztO2II159/X7WXZJNpKWB5WXk/3dgVS0
         QNngeo6tZfOeMaMkaGKR/IP4d74YR73e+5vQlrpZCDPLlnjqF2u0YhMPY6qnPBlKqOBu
         gUVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IfD5eioZqyb9WybiUVbX4jBGWYl2gjDH9HKGXR16Esk=;
        b=lZI5/WlbUmaPCnFDLEfkl41077HlyHHkhQ+MbgMxdaHlhmLylbfg1eMui/eBpnVOlv
         B/fitQIYC71nHytcIj4vuHVoE+xoPYEUZS+y5IEsRG2nSNGivPbhHELARAPzDHtUIZeq
         wy5Q/xPTZMHpXVLufpevxTNZuSwiYJ0Hp9eXUQ8BSkcUrYflkwY/IGOQ4aSsVmYzKPwg
         U1E3lPYbV+JaZXcXSC0mrrPEn1Qop6FySO0jPjcVunqnphLAiH97M3hXJbARsCecGWIk
         0XYo/Ikdw7iuQu43bHIewC0USPe61V1FI/Pdh6W1KcO9RxlmhMJSTFi5WG8rug9HLviQ
         3BMg==
X-Gm-Message-State: AD7BkJJQ8KoxLAdzxZDOgbX5EI6IkOPsFw1XrUJlFwXL7+/kjC8gxy/eJDHw8CHmtF9ujg==
X-Received: by 10.98.9.129 with SMTP id 1mr13878868pfj.163.1456647771442;
        Sun, 28 Feb 2016 00:22:51 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id u90sm30036306pfa.60.2016.02.28.00.22.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 00:22:50 -0800 (PST)
Date: Sun, 28 Feb 2016 00:22:50 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: ade7854: use devm_iio_device_register
Message-ID: <20160228082238.GA9477@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace iio_device_register with the device managed version.
This change is safe because it does not change the order of
any device removal actions. Unregistering the device was the
only removal action. The newly emptied .remove functions are
deleted.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/meter/ade7854-i2c.c |  6 ------
 drivers/staging/iio/meter/ade7854-spi.c |  7 -------
 drivers/staging/iio/meter/ade7854.c     | 20 ++------------------
 3 files changed, 2 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7854-i2c.c b/drivers/staging/iio/meter/ade7854-i2c.c
index 07cfe28..8106f8c 100644
--- a/drivers/staging/iio/meter/ade7854-i2c.c
+++ b/drivers/staging/iio/meter/ade7854-i2c.c
@@ -227,11 +227,6 @@ static int ade7854_i2c_probe(struct i2c_client *client,
 	return ade7854_probe(indio_dev, &client->dev);
 }
 
-static int ade7854_i2c_remove(struct i2c_client *client)
-{
-	return ade7854_remove(i2c_get_clientdata(client));
-}
-
 static const struct i2c_device_id ade7854_id[] = {
 	{ "ade7854", 0 },
 	{ "ade7858", 0 },
@@ -246,7 +241,6 @@ static struct i2c_driver ade7854_i2c_driver = {
 		.name = "ade7854",
 	},
 	.probe    = ade7854_i2c_probe,
-	.remove   = ade7854_i2c_remove,
 	.id_table = ade7854_id,
 };
 module_i2c_driver(ade7854_i2c_driver);
diff --git a/drivers/staging/iio/meter/ade7854-spi.c b/drivers/staging/iio/meter/ade7854-spi.c
index 2413052..63e200f 100644
--- a/drivers/staging/iio/meter/ade7854-spi.c
+++ b/drivers/staging/iio/meter/ade7854-spi.c
@@ -296,12 +296,6 @@ static int ade7854_spi_probe(struct spi_device *spi)
 	return ade7854_probe(indio_dev, &spi->dev);
 }
 
-static int ade7854_spi_remove(struct spi_device *spi)
-{
-	ade7854_remove(spi_get_drvdata(spi));
-
-	return 0;
-}
 static const struct spi_device_id ade7854_id[] = {
 	{ "ade7854", 0 },
 	{ "ade7858", 0 },
@@ -316,7 +310,6 @@ static struct spi_driver ade7854_driver = {
 		.name = "ade7854",
 	},
 	.probe = ade7854_spi_probe,
-	.remove = ade7854_spi_remove,
 	.id_table = ade7854_id,
 };
 module_spi_driver(ade7854_driver);
diff --git a/drivers/staging/iio/meter/ade7854.c b/drivers/staging/iio/meter/ade7854.c
index a838835..b0b1be7 100644
--- a/drivers/staging/iio/meter/ade7854.c
+++ b/drivers/staging/iio/meter/ade7854.c
@@ -548,31 +548,15 @@ int ade7854_probe(struct iio_dev *indio_dev, struct device *dev)
 	indio_dev->info = &ade7854_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(dev, indio_dev);
 	if (ret)
 		return ret;
 
 	/* Get the device into a sane initial state */
-	ret = ade7854_initial_setup(indio_dev);
-	if (ret)
-		goto error_unreg_dev;
-
-	return 0;
-
-error_unreg_dev:
-	iio_device_unregister(indio_dev);
-	return ret;
+	return ade7854_initial_setup(indio_dev);
 }
 EXPORT_SYMBOL(ade7854_probe);
 
-int ade7854_remove(struct iio_dev *indio_dev)
-{
-	iio_device_unregister(indio_dev);
-
-	return 0;
-}
-EXPORT_SYMBOL(ade7854_remove);
-
 MODULE_AUTHOR("Barry Song <21cnbao@gmail.com>");
 MODULE_DESCRIPTION("Analog Devices ADE7854/58/68/78 Polyphase Energy Meter");
 MODULE_LICENSE("GPL v2");
-- 
2.1.4


