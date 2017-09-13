X-GM-THRID: 6465168256299696128
X-Received: by 10.101.77.197 with SMTP id q5mr10833693pgt.60.1505289391569;
        Wed, 13 Sep 2017 00:56:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.145 with SMTP id e17ls2549630ioj.42.gmail; Wed, 13 Sep
 2017 00:56:31 -0700 (PDT)
X-Received: by 10.129.84.193 with SMTP id i184mr11382560ywb.197.1505289390975;
        Wed, 13 Sep 2017 00:56:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505289390; cv=none;
        d=google.com; s=arc-20160816;
        b=FZg4WIzWIbtdK/bBGxyMgaLMXOjfh+rggXFr3+hcJGTDzRz3TszYHH68F+EvAe37s6
         1KyuHUw73lzOJCL0btx4Asq2PdlDzvgpTu3cvmCruF+YzVUNs1tWhr9gl8vaPQMXyrDV
         0LaeGvRg7tohp0+8QtCMCv5aN4LbNd9BQDgxPI1Eztq/i2sCwjMKHa93NAMePc+7h1Yv
         +YI5qq0mGegqSZ/9iLHNVMrHoyxoomvqnwQAnGEUyZbIAc4y0sgqwBTDCsBo2cqv8el2
         90SZveZKp9bcHMplS/X2Qn4N6d72z83kqbwhiDLBKYIds8l6zgrVr5afbMwnz1CTrrqO
         qszw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=1ygtsn8HN5m9yitk0zac8dooYeP4SZrcxmOP3khehLE=;
        b=T/NBbk+hnYzJs+qbnmBWucAYBz4rms8h4LeSrfsWK1dbAl5XWkmMFAXhMdKQ1gv9Qb
         8UZllTel/kn7TndQ6WYqWgqPkJc5bRU/vU0JU9XbjbsUdFokJWLjtcLfVqYWrUqxgZn2
         +vc6tDQj9sY3KFB9UQa/2zbmvYTSCqhstL4Fpv2rJ1tSJxfIJz6+Hz7PEwXEKGFiyULq
         HB6dXfu5jYcXxGzZnWkGh3+G+2tpzp+gtLvBTk08lcY8HsSxYnomsK7/M1uwhl/ljB21
         J2qoS3qi7rz86jSmA4kpOg6+Qn0ANX8rbZa/f3/5WI+L7hOnGW1Gqq8vNYgbByFZntEG
         Wzpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kSbUFtip;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id u127si805206ywg.1.2017.09.13.00.56.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 00:56:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kSbUFtip;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id d6so6978765itc.4
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 00:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1ygtsn8HN5m9yitk0zac8dooYeP4SZrcxmOP3khehLE=;
        b=kSbUFtip1HNIhKjKmsBmXsf7EXbd7LIXmQBMig3PHyQzPn9ZZfC5XbTGOtPNRHq/d8
         9i/JaZI5P1esDDwbSWZfnhxdkp+mPU8PeUOe5j8uLAe6IW8qoEz4sWu7q4YcUcXBTEb/
         c8iXPy3UD4OujceLLgStQX6JPDqFs4uf1EFZmHsZTFRFNHLuWHg1s4oOEbybYbntkVm8
         U2vdnCLqQ56RpeQuhOODxFs0uV0xdoUkJNAINk+ERLwwmVwClfl4wd3DFsIa0NZGUr00
         Q7RCokmQ0ZxwkvcXYraPiau0qx81+q3NvMMuYksUt6isnqrxBioXbVag+v77daF04Ey1
         F7/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1ygtsn8HN5m9yitk0zac8dooYeP4SZrcxmOP3khehLE=;
        b=P5WVidxYVpQFvIDImFUArsJT0cet3Vwu2vdqKCQ5Q2cI5gaso6qMjqiO6Kk+gtLyM2
         66Y9mXlr+c/hIComS9MPzweZrjdF6b/aIU7CCuheOi+Y6UT+Fo0vCjPZd5lxvBar7H18
         x2RPT3/zxob1ZBozlZVb94Uab2prSl5pur6jP6UcVPepwtC+rR9hCwoTt2g7ff8CoR6L
         qa8cVw4juyW8Pza76KgfQWpdl2FTOSKc4Ih6oXVX2wEfw86AlOqZ/DGBiFEQ8Wly0zLE
         2aiyjBWw1xvxMR3faPBk5hZoIY4lZptaqJsydqk6oA/8ChQEg3POjsqJEpmu1JlckELJ
         EnaQ==
X-Gm-Message-State: AHPjjUgGbWoLa4LOBKaMt9F2gkUB/v8e9fOl/ixw2KqqMAxWKW3ldEa3
	VRIWZjJz7e6DIZLC6Uw+HTFobnLj
X-Google-Smtp-Source: AOwi7QAqzwbLy0hdIZxWwg7Eh0lkV8On2vObTJoegnw/TkSkbyEv/7M2GeOjSzFZe2ew9gkgdRRy9Q==
X-Received: by 10.36.162.14 with SMTP id j14mr3106770itf.52.1505289390502;
        Wed, 13 Sep 2017 00:56:30 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.179.135.67])
        by smtp.gmail.com with ESMTPSA id p71sm432854itc.20.2017.09.13.00.56.29
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 13 Sep 2017 00:56:30 -0700 (PDT)
Date: Wed, 13 Sep 2017 13:26:27 +0530
From: Himanshi Jain <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
	daniel.baluta@gmail.com
Subject: [PATCH 2/2] iio: Use __ATTR_NAMED to allow passing name as string to
 IIO_DEVICE_ATTR_NAMED and change usage to pass string
Message-ID: <490606d70335e84a09ef418cb3cc0dbee6f79c84.1505288677.git.himshijain.hj@gmail.com>
References: <cover.1505288677.git.himshijain.hj@gmail.com>
 <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505288677.git.himshijain.hj@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505288677.git.himshijain.hj@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add IIO_ATTR_NAMED macro to use __ATTR_NAMED to allow passing name as
string to IIO_DEVICE_ATTR_NAMED. Change current usage of
IIO_DEVICE_ATTR_NAMED to pass name as string.

Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
---
 drivers/iio/adc/ad7793.c          | 2 +-
 drivers/staging/iio/adc/ad7192.c  | 2 +-
 drivers/staging/iio/adc/ad7280a.c | 4 ++--
 include/linux/iio/sysfs.h         | 6 +++++-
 4 files changed, 9 insertions(+), 5 deletions(-)

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
-- 
1.9.1


