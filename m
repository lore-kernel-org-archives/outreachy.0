X-GM-THRID: 6400149763723886592
X-Received: by 10.99.9.129 with SMTP id 123mr19814915pgj.120.1490150988334;
        Tue, 21 Mar 2017 19:49:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls915635otd.11.gmail; Tue, 21 Mar
 2017 19:49:47 -0700 (PDT)
X-Received: by 10.157.17.228 with SMTP id y33mr17488816oty.102.1490150987761;
        Tue, 21 Mar 2017 19:49:47 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s67si4048pfs.4.2017.03.21.19.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 19:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so19379243pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 19:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Dd+t9FGKLsvo2jXqTBZTNcxKGZpKn7unOpJomR+CCyg=;
        b=UKAkN2WlF/9ARnDAK2s/aWdhaH5tbdUCXUrdMOwQaxjchGS/W+9pIra7rpB4tpLVJI
         VU0Cj/aUThntWwXDHH5IWoFtRxnmyfPQ17Ijv7hQjlLRxpaUAjMz3TwzaJf6lj7QH+15
         HlYW8K9+OZue+hJQ7Xeqf3mLT4kuYPEwQgVi+QYr050UDLcUYO/yWWfOx0EtZaTTA4g2
         MydW7d4CaYtT7mSwwocqO40XanDzqp+86DidXVatyKuapPYmvAKXyATkK9QgoD/yLjbP
         mOaPD4YYDD6ZMDJ6iTo2yodJuAzDkNyCErZ9AhCVRhj9aX39sU3zstwu6g7l1yEtSoYz
         uTuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Dd+t9FGKLsvo2jXqTBZTNcxKGZpKn7unOpJomR+CCyg=;
        b=DCVf5DuE3/B5VlAuKXVgE75Cww//A8k87JZv+Icf4Mi05PMRldz6LmQG7tGG7OVX1Y
         I44m2rVQhs1QOAs53SVMvX+Jctkccg+yW0TUKnqePoBjdIuyygWnJi8qMrmYWC11oAX/
         K9HjOW0mDnHUMDpnSeSyR53SmOwvu1L0L3wx3JuIemwK/07LDw2D6QBVLZkYOai6YGTt
         QvfvBeefEfaXQztrc9dwUqpRqLwtDo9TqEQCHJZ0R741nWsCw4YXKgFYsDtsaPCtff35
         0PN5m2a2v6bq1VPXb4GYUq0hW0eCiFJIJlyyivXvbjd+JuPWN6MAtBua1RHURkeoqxMI
         Q+Qg==
X-Gm-Message-State: AFeK/H336CAXifjRC4lGE0G+FCcSrSACscnpJmTY7G1kfBzxqC5UVDH1AfZNXizj8UZMQg==
X-Received: by 10.98.141.138 with SMTP id p10mr42761663pfk.111.1490150987511;
        Tue, 21 Mar 2017 19:49:47 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q4sm20005pfk.129.2017.03.21.19.49.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 19:49:46 -0700 (PDT)
Date: Wed, 22 Mar 2017 08:19:42 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: staging: iio: Replace a bit shift by a use of BIT.
Message-ID: <20170322024942.GA21242@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/adc/ad7816.c |  2 +-
 drivers/staging/iio/cdc/ad7150.c |  2 +-
 drivers/staging/iio/cdc/ad7746.c | 22 +++++++++++-----------
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index 17d280581e24..42f637ca0251 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -222,7 +222,7 @@ static ssize_t ad7816_show_value(struct device *dev,
 		value = (s8)((data >> AD7816_TEMP_FLOAT_OFFSET) - 103);
 		data &= AD7816_TEMP_FLOAT_MASK;
 		if (value < 0)
-			data = (1 << AD7816_TEMP_FLOAT_OFFSET) - data;
+			data = (BIT(AD7816_TEMP_FLOAT_OFFSET)) - data;
 		return sprintf(buf, "%d.%.2d\n", value, data * 25);
 	}
 	return sprintf(buf, "%u\n", data);
diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index ca72af3e9d4b..c5574b3ee939 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -232,7 +232,7 @@ static int ad7150_write_event_config(struct iio_dev *indio_dev,
 	if (ret < 0)
 		goto error_ret;
 
-	cfg = ret & ~((0x03 << 5) | (0x1 << 7));
+	cfg = ret & ~((0x03 << 5) | (BIT(7)));
 
 	switch (type) {
 	case IIO_EV_TYPE_MAG_ADAPTIVE:
diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 81f8b9ee1120..8c573817826f 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -45,20 +45,20 @@
 #define AD7746_STATUS_RDYCAP		BIT(0)
 
 /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
-#define AD7746_CAPSETUP_CAPEN		(1 << 7)
-#define AD7746_CAPSETUP_CIN2		(1 << 6) /* AD7746 only */
-#define AD7746_CAPSETUP_CAPDIFF		(1 << 5)
-#define AD7746_CAPSETUP_CACHOP		(1 << 0)
+#define AD7746_CAPSETUP_CAPEN		(BIT(7))
+#define AD7746_CAPSETUP_CIN2		(BIT(6)) /* AD7746 only */
+#define AD7746_CAPSETUP_CAPDIFF		(BIT(5))
+#define AD7746_CAPSETUP_CACHOP		(BIT(0))
 
 /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
-#define AD7746_VTSETUP_VTEN		(1 << 7)
+#define AD7746_VTSETUP_VTEN		(BIT(7))
 #define AD7746_VTSETUP_VTMD_INT_TEMP	(0 << 5)
-#define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
+#define AD7746_VTSETUP_VTMD_EXT_TEMP	(BIT(5))
 #define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
 #define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
-#define AD7746_VTSETUP_EXTREF		(1 << 4)
-#define AD7746_VTSETUP_VTSHORT		(1 << 1)
-#define AD7746_VTSETUP_VTCHOP		(1 << 0)
+#define AD7746_VTSETUP_EXTREF		(BIT(4))
+#define AD7746_VTSETUP_VTSHORT		(BIT(1))
+#define AD7746_VTSETUP_VTCHOP		(BIT(0))
 
 /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
 #define AD7746_EXCSETUP_CLKCTRL		BIT(7)
@@ -75,14 +75,14 @@
 #define AD7746_CONF_VTFS_MASK		GENMASK(7, 6)
 #define AD7746_CONF_CAPFS_MASK		GENMASK(5, 3)
 #define AD7746_CONF_MODE_IDLE		(0 << 0)
-#define AD7746_CONF_MODE_CONT_CONV	(1 << 0)
+#define AD7746_CONF_MODE_CONT_CONV	(BIT(0))
 #define AD7746_CONF_MODE_SINGLE_CONV	(2 << 0)
 #define AD7746_CONF_MODE_PWRDN		(3 << 0)
 #define AD7746_CONF_MODE_OFFS_CAL	(5 << 0)
 #define AD7746_CONF_MODE_GAIN_CAL	(6 << 0)
 
 /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
-#define AD7746_CAPDAC_DACEN		(1 << 7)
+#define AD7746_CAPDAC_DACEN		(BIT(7))
 #define AD7746_CAPDAC_DACP(x)		((x) & 0x7F)
 
 /*
-- 
2.11.0


