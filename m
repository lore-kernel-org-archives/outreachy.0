X-GM-THRID: 6464655213388103680
X-Received: by 10.31.61.216 with SMTP id k207mr6674096vka.91.1505169834204;
        Mon, 11 Sep 2017 15:43:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.21 with SMTP id j21ls76118ioi.13.gmail; Mon, 11 Sep 2017
 15:43:53 -0700 (PDT)
X-Received: by 10.84.235.130 with SMTP id p2mr8017207plk.7.1505169833386;
        Mon, 11 Sep 2017 15:43:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505169833; cv=none;
        d=google.com; s=arc-20160816;
        b=Piar7XaZauzfdRip2ROXTYpjsfWbNECP0HWerdZpu0SQvauxF+P747yDMq9/Ku/82F
         BEyxaZorT4abCZEzz3wSJkBbhKypJ3rD5NfQRgj2tjjA/P5eYegGlNRsEhEnYvlhDUl/
         20PyeGKTs01boR5fYTr4A/D9s0h0k/hDJb3evns2Y/TWTlgsrRppckYa/amPeiiM2oM6
         Nq/8ER+j5TTHM7+Cj6HHFlj0Jf3lClRG9NAwjg9+Rlbssx6i5nY4dKljwVNiwgYNdcBv
         DztCaMeh+l02hNCp6vBD6Eo+v467j2rhdFeI7hqpOZqxRiECJ7obFpm4rnHjmlUlEsSA
         ylww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=n3bTpw8C/ofhy9uxxZSm//alcx9E7h3Hp/zw01LIXY0=;
        b=JX/3p5JF7QeaHqYHK2kmkds4NsbFhVRbhNObul0FyTzwwM9r7DawNsL1T+UHuS0Bc1
         tmKxATPwpfGk8+WZilEI79bTlHv5bcMefWBhyFDKSHHZp36+KLfI8RbMuKZu8TpkZUEH
         GdNEVtXbJ63Jbs3kSHZBNtTfSSrYcAD22HDpKyjlFYgmQWPpBYIJQggp836VRpOpcDsQ
         7jmVGM8JJ/T44O25D8eW0ndOBVaar37wzbOZ/muG3TmPXZVkGnaublplkDiT+PzZgVv3
         ZA9RcWbKbxfCvLqSrh8XN6IWL+NZORR0i9kLc8Ok8jzHZp2EWa06qjfuC4jDKfznshT1
         ZrTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F8PTPtbL;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id q15si829591pfi.7.2017.09.11.15.43.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 15:43:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F8PTPtbL;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v82so5284623pgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 15:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=n3bTpw8C/ofhy9uxxZSm//alcx9E7h3Hp/zw01LIXY0=;
        b=F8PTPtbLmCZnn4pqLEkwdnYrO+5n7LfvPxKGpoG7qeLiIBGbMau6JHiQNqeIsWxOx9
         BE749oQhTviPFh58wVGjbmgPZpAOgSzJKuM9m28JDZr7sCMmYH84J+se1tUuqu4Kd5a/
         4oy98tMgilpaM3AciLy8nJie97Ta5AYi+5oV5aVs2xuGOtRu58rFC+O5IXlo3Ky1r/IA
         ZdVihfIZtRtQchTEwmhcRftn2g4g9TgQpO07peoxYtjmpHA30n8XnV1zRCmvE1E8JzRw
         J0POhtybnUJaJ8NIfzLyMvVmuILjYqw5X6B+hap/xzkj77ZBppP5efdCXOM5diWAx0Vg
         FGXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=n3bTpw8C/ofhy9uxxZSm//alcx9E7h3Hp/zw01LIXY0=;
        b=K1gJEi7bNVXecTaXgkFQ/lq04Rl+6SkVVpvQKBE5vwx1+OOCjueGgngbsT/LiJPnQ4
         A8FW5WD+3Nq+4zTcMmaQkdv9YrytapAHTcrUwyOTNAu17rG8KDv8B4gw+5F9lCe/GxYb
         VFj4apOT1eMHPs6Sw9+pd/y/j80bEqaemNoHRKZNyEKSDmrtj73Dl8oDMaRD913DkAGJ
         sJnBYSmgoaTcipCcbr8k8JbYS0B0XhUh6N4uOpJBUbaUuWTMnXQvrhdnNw6FEvLCjLXZ
         OXHx6reLR63q+D9g56qmgjYEhfpih8+F3yej+2glFWNRCV/Iz4E2HhVeYEhXYoL4L1Ly
         tz+A==
X-Gm-Message-State: AHPjjUhQtANoh/Xjpv45o8d1SDb+vCK1IJkpxgAiBR7SjXlUjDOCokQG
	v7OZT2zK7+79Xmg1U3k=
X-Google-Smtp-Source: ADKCNb6R/dfHf1RI40SSBBZVa3ms4aUZwiS9IgyqNIP3jaeb8d7+vv6UdwNm3VutV1T5R+rkLv3Uog==
X-Received: by 10.98.196.73 with SMTP id y70mr12990905pff.334.1505169832781;
        Mon, 11 Sep 2017 15:43:52 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.179.135.67])
        by smtp.gmail.com with ESMTPSA id 20sm17251592pft.109.2017.09.11.15.43.51
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 11 Sep 2017 15:43:52 -0700 (PDT)
Date: Tue, 12 Sep 2017 04:13:48 +0530
From: Himanshi Jain <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com
Subject: [PATCH] Fixed IIO_DEVICE_ATTR_NAMED API to take name as a string and
 added "" around names
Message-ID: <20170911224348.GA13259@himanshi-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed IIO_DEVICE_ATTR_NAMED API to take name as a
string instead of implicit conversion to string using
preprocessors. Added double quotes around names in
existing usage of IIO_DEVICE_ATTR_NAMED.

Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
---
 drivers/iio/adc/ad7793.c          | 2 +-
 drivers/staging/iio/adc/ad7192.c  | 2 +-
 drivers/staging/iio/adc/ad7280a.c | 4 ++--
 include/linux/iio/sysfs.h         | 6 +++++-
 include/linux/sysfs.h             | 7 +++++++
 5 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/ad7793.c b/drivers/iio/adc/ad7793.c
index e6706a0..d74e324 100644
--- a/drivers/iio/adc/ad7793.c
+++ b/drivers/iio/adc/ad7793.c
@@ -420,7 +420,7 @@ static ssize_t ad7793_show_scale_available(struct device *dev,
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_m_in_scale_available,
-		in_voltage-voltage_scale_available, S_IRUGO,
+		"in_voltage-voltage_scale_available", S_IRUGO,
 		ad7793_show_scale_available, NULL, 0);
 
 static struct attribute *ad7793_attributes[] = {
diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index d11c6de..daff38c 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
-			     in_voltage-voltage_scale_available,
+			     "in_voltage-voltage_scale_available",
 			     0444, ad7192_show_scale_available, NULL, 0);
 
 static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index f85dde9..fd32e9a 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -750,14 +750,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
-		in_voltage-voltage_thresh_low_value,
+		"in_voltage-voltage_thresh_low_value",
 		0644,
 		ad7280_read_channel_config,
 		ad7280_write_channel_config,
 		AD7280A_CELL_UNDERVOLTAGE);
 
 static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
-		in_voltage-voltage_thresh_high_value,
+		"in_voltage-voltage_thresh_high_value",
 		0644,
 		ad7280_read_channel_config,
 		ad7280_write_channel_config,
diff --git a/include/linux/iio/sysfs.h b/include/linux/iio/sysfs.h
index ce9426c..49c81a4 100644
--- a/include/linux/iio/sysfs.h
+++ b/include/linux/iio/sysfs.h
@@ -55,6 +55,10 @@ struct iio_const_attr {
 	{ .dev_attr = __ATTR(_name, _mode, _show, _store),	\
 	  .address = _addr }
 
+#define IIO_ATTR_NAMED(_name, _mode, _show, _store, _addr)		\
+	{ .dev_attr = __ATTR_NAMED(_name, _mode, _show, _store),	\
+	  .address = _addr }
+
 #define IIO_ATTR_RO(_name, _addr)       \
 	{ .dev_attr = __ATTR_RO(_name), \
 	  .address = _addr }
@@ -85,7 +89,7 @@ struct iio_const_attr {
 
 #define IIO_DEVICE_ATTR_NAMED(_vname, _name, _mode, _show, _store, _addr) \
 	struct iio_dev_attr iio_dev_attr_##_vname			\
-	= IIO_ATTR(_name, _mode, _show, _store, _addr)
+	= IIO_ATTR_NAMED(_name, _mode, _show, _store, _addr)
 
 #define IIO_CONST_ATTR(_name, _string)					\
 	struct iio_const_attr iio_const_attr_##_name			\
diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
index aa02c32..20321cf 100644
--- a/include/linux/sysfs.h
+++ b/include/linux/sysfs.h
@@ -104,6 +104,13 @@ struct attribute_group {
 	.store	= _store,						\
 }
 
+#define __ATTR_NAMED(_name, _mode, _show, _store) {			\
+	.attr = {.name = _name,						\
+		 .mode = VERIFY_OCTAL_PERMISSIONS(_mode) },		\
+	.show = _show,							\
+	.store = _store,						\
+}
+
 #define __ATTR_PREALLOC(_name, _mode, _show, _store) {			\
 	.attr = {.name = __stringify(_name),				\
 		 .mode = SYSFS_PREALLOC | VERIFY_OCTAL_PERMISSIONS(_mode) },\
-- 
1.9.1


