X-GM-THRID: 6392397624378392576
X-Received: by 10.36.227.69 with SMTP id d66mr4031559ith.14.1488913893923;
        Tue, 07 Mar 2017 11:11:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.204 with SMTP id h195ls438291ioe.3.gmail; Tue, 07 Mar
 2017 11:11:32 -0800 (PST)
X-Received: by 10.99.233.69 with SMTP id q5mr998521pgj.139.1488913892958;
        Tue, 07 Mar 2017 11:11:32 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si181500pfz.1.2017.03.07.11.11.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 11:11:32 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so933891pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 11:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TZ6tJxGj/En2ecMCsNBuSz+7aZZnltq4ei+75lGYLAI=;
        b=vAUikxWlEYCD1266h73KIH+FPGbnZu6FLAxhx4i+xx6G7kmOjY86uzFbDCbu1G0pdp
         0vYLPZsiWXIZJ2tRWnSlfLSHML02VWulXeU0TKwoFjd7XFTtHaklzO15DAaiOyQbdKPi
         gFeiTrNzXvZIH/pKmmXbaZrG31AQQOQKLF3QRGDCdt6LhrnHoBDfIn2nPVU6jkyzWj2f
         LJK6GEAMYaPIEn6fkkXmFITb4XKuuT4ZizKhxLtMLNJwlOh9VcjDm6yTKYjoCYY/BNN5
         ZNsWqezgyG4P3ermkZnaKcME1P2Zvm8IAsuPs4QQYxMWpnOby5BRlnSp6inL6f94FVqu
         X5+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TZ6tJxGj/En2ecMCsNBuSz+7aZZnltq4ei+75lGYLAI=;
        b=Y23eh+e+HMQsICLZz9OVUQKHxTWO1u/qIJm45j9plQ2iTX+PUcJ6iNi5EATXNXbwQv
         7oeE3r2xdMRg5RL6RUXwST61swU3/fdFWz0j5vBX7cH9JoKK08frnBGZUC63NZiuTSge
         i/usn13xePGMfmMUoB5aNS66WY3HmOj/NdBW0Gk9x8hoCl09FZ5JhUWHrMs1IkzsKh3e
         rUt+GXqNBys6e+VnCs1LsroDqyeMJEfaN0vvKVhqX7Ufhy80HIwvzRQQ0hvyeVMHx4GR
         F5hUC/yhdjI8HGXgAyNSQg/DNWGfktjkFiwnIPbSi9BYyaHeoLmib4MMan/y2a3gBTs6
         CaoQ==
X-Gm-Message-State: AMke39n2g6Cb7R8YpHCGk64byQh04Y3l7WhCVs/2GvLoaxYoFUl8gYQvv6P2sA+OWExmfQ==
X-Received: by 10.98.35.9 with SMTP id j9mr2167203pfj.114.1488913892749;
        Tue, 07 Mar 2017 11:11:32 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.237.130])
        by smtp.gmail.com with ESMTPSA id z26sm1277139pgc.57.2017.03.07.11.11.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 11:11:32 -0800 (PST)
Date: Wed, 8 Mar 2017 00:41:12 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v2] staging: iio: ad7280a: Group similar macros into enums
Message-ID: <20170307191112.GA29306@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch groups similar macros into enum data types.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
Corrected the order of both the enums.
Used enum data type names instead of unsigned int inside struct
ad7280_platform_data.

 drivers/staging/iio/adc/ad7280a.h | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.h b/drivers/staging/iio/adc/ad7280a.h
index ccfb90d..e22694f 100644
--- a/drivers/staging/iio/adc/ad7280a.h
+++ b/drivers/staging/iio/adc/ad7280a.h
@@ -13,15 +13,19 @@
  * TODO: struct ad7280_platform_data needs to go into include/linux/iio
  */
 
-#define AD7280A_ACQ_TIME_400ns			0
-#define AD7280A_ACQ_TIME_800ns			1
-#define AD7280A_ACQ_TIME_1200ns			2
-#define AD7280A_ACQ_TIME_1600ns			3
+enum ad7280a_acq_time {
+	AD7280A_ACQ_TIME_400ns = 0,
+	AD7280A_ACQ_TIME_800ns,
+	AD7280A_ACQ_TIME_1200ns,
+	AD7280A_ACQ_TIME_1600ns,
+};
 
-#define AD7280A_CONV_AVG_DIS			0
-#define AD7280A_CONV_AVG_2			1
-#define AD7280A_CONV_AVG_4			2
-#define AD7280A_CONV_AVG_8			3
+enum ad7280a_conv_avg {
+	AD7280A_CONV_AVG_DIS = 0,
+	AD7280A_CONV_AVG_2,
+	AD7280A_CONV_AVG_4,
+	AD7280A_CONV_AVG_8,
+};
 
 #define AD7280A_ALERT_REMOVE_VIN5		BIT(2)
 #define AD7280A_ALERT_REMOVE_VIN4_VIN5		BIT(3)
@@ -29,8 +33,8 @@
 #define AD7280A_ALERT_REMOVE_AUX4_AUX5		BIT(1)
 
 struct ad7280_platform_data {
-	unsigned int		acquisition_time;
-	unsigned int		conversion_averaging;
+	enum ad7280a_acq_time		acquisition_time;
+	enum ad7280a_conv_avg		conversion_averaging;
 	unsigned int		chain_last_alert_ignore;
 	bool			thermistor_term_en;
 };
-- 
2.7.4


