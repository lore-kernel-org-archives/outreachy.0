X-GM-THRID: 6465168256299696128
X-Received: by 10.202.253.68 with SMTP id b65mr10034785oii.10.1505292268071;
        Wed, 13 Sep 2017 01:44:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.224.140 with SMTP id c134ls2918688ith.22.canary-gmail; Wed,
 13 Sep 2017 01:44:27 -0700 (PDT)
X-Received: by 10.55.99.70 with SMTP id x67mr9055690qkb.1.1505292267615;
        Wed, 13 Sep 2017 01:44:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505292267; cv=none;
        d=google.com; s=arc-20160816;
        b=TWZZGJytC2MiVjs5VADgy4UO0UM0EbRjRC2DGgeqiiqnfM5VklVjn0EYirgHeogEDu
         MX2e1qJ6FZogsRaihITuBRvEwSnXX/qDKAzW660FmagvFtOFV8D5taOO3C2lXXI/wl9E
         ZuZY9WHfU1H0umDOBElKq5Jgc6ht2FLzYThpjvVS08F3syh+WMcLzOSGCOQgmVY6RWHi
         XveQ8d4dR9pw9jU11oyBo/WtSS7+TqC+ITNfQqeCiu68621fJoQzxRgXfxEZt6ig11uF
         y+Ka22H/+V2NKJcGnudjiXfLwVpy/rermrUHuHtCJ15FVSXJ/TIeoJ2M7n4OvokFkHyT
         d60Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=1zaVVFBYRQNQylZcTnVD9Gf+5/R7frPcIX+iAiW6RfQ=;
        b=fIjbd4NWwTfOZ2akxCzTmW10Wq4fo2RYMqqNlVSmVi0K5ObAuJIqFxlJEcfaBVemfL
         d6B2nxqQog8aEMn8BWwDOMlbEx4uo+lj/qGLueXNOUO1s/GPnQJgWzrMoOaQvfJEzJXI
         //dENjAX5uAx9OCakVEWNDheuJLW8QLhhzrBq3tX6WsUPbQcyJyEGlKD0WBMBbWQocxl
         PJB7eBBI6nZrXjJDwqDIBnaZtrpvjL0gH+RAKDXBSbtl7Gg5KasZXdhg1CC7BHAxL2LB
         6IEmp4nCJ0cL5BjYxGgbKN8vZ9vv/VLzLr8MQnNeV4/3/FUEAb2Lo6Zj3FwHHdmYWykO
         IsiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jHe1vzto;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id w189si1024246ywd.9.2017.09.13.01.44.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 01:44:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jHe1vzto;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id o200so49350itg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 01:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1zaVVFBYRQNQylZcTnVD9Gf+5/R7frPcIX+iAiW6RfQ=;
        b=jHe1vztopDd03FFIz5aROFAEz8CtFHhzGS/Awcx/fq6MZKcMmy8pACsujNksT/y7fO
         qG46ktf0aajCd5hEX9FOy1sjD5umcJ63hM1LcSTDV7pPnnq3bzsTHRK1256/KSYNMqNC
         /me8qBNcjX4vtrfiTwi8KrhJwBzha9dWJm7j/TkxNC/wLmm3thHXJXmSvoWPtOJ6b/0M
         SWb+uUrUJ7AZBuviq3Nvep0BPOFLmyNAROKDb7gmaNe/hNiYmNNzaA5SHnj3JJn1GUfz
         1/4p1SagKjCD0pw9aFzUs/CnEHSdASyXpHa/tQiDxjM+s1zWiKhH5laaaacYuo1S2f18
         8AUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1zaVVFBYRQNQylZcTnVD9Gf+5/R7frPcIX+iAiW6RfQ=;
        b=eIq5w+yDycHIc0NnfrGCG8BpbzD8xi6EkvvGF7rUVPkNmxwwqbFyaahQOEwS3A9cGR
         F4gUiD9E+sM+5KI+GwBeNrSkGBqy+oD9OfrWICJUsJjkoCOwvUBkPSPx0t38us0jzjaO
         VqfrJMfrs7hfOHldPM3A1gJvPuE06WZPDKuGQzD6lbVmcbxq8l5zlXEtThxJhNla7c79
         mIauoxLfHv897E9jkATJIAG2xBvlYjKYTzD9EiSNFV4J8c1oP0PLTQORLz10oMSfzM85
         BUWhfEbjnbag3LGQCGkVQYEpDqQ521dnlrgLRenOqGW3Wp3hkzPD0PswqAHb9EGo/70E
         GV2w==
X-Gm-Message-State: AHPjjUjzlYoGllFcbHDgW0su9lliGrhIJDJpnC5+rOeacm0jYJVzfOFb
	6wy8rgG2zzUTeS6oGudSjYmQXpCX
X-Google-Smtp-Source: AOwi7QD7xZWZvGb0lmFkjcxVy7xXRl3iLBY22dbuwk08YGjnxV38KFz6tqfWvXPCxT3ywhDv9uYYLg==
X-Received: by 10.36.181.73 with SMTP id j9mr3421138iti.6.1505292266426;
        Wed, 13 Sep 2017 01:44:26 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.179.135.67])
        by smtp.gmail.com with ESMTPSA id e78sm502012itd.36.2017.09.13.01.44.25
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 13 Sep 2017 01:44:26 -0700 (PDT)
Date: Wed, 13 Sep 2017 14:14:23 +0530
From: Himanshi Jain <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
	daniel.baluta@gmail.com
Subject: [PATCH v2 2/2] iio: Change to __ATTR_NAMED()
Message-ID: <30fdd58ce18399c77152ef13180ef2966cf36be0.1505291907.git.himshijain.hj@gmail.com>
References: <cover.1505291907.git.himshijain.hj@gmail.com>
 <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add IIO_ATTR_NAMED macro to use __ATTR_NAMED to allow passing
name as string to IIO_DEVICE_ATTR_NAMED. Change current usage
of IIO_DEVICE_ATTR_NAMED to pass name as string.

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


