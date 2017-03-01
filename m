X-GM-THRID: 6392397624378392576
X-Received: by 10.129.93.195 with SMTP id r186mr2028147ywb.168.1488346053440;
        Tue, 28 Feb 2017 21:27:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.119 with SMTP id 110ls2542964otc.44.gmail; Tue, 28 Feb
 2017 21:27:33 -0800 (PST)
X-Received: by 10.157.14.74 with SMTP id n10mr2032283otd.34.1488346053075;
        Tue, 28 Feb 2017 21:27:33 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u12si470270pfd.3.2017.02.28.21.27.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 21:27:33 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so2466776pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 21:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jr1IjkRVr8SXkt/bXHgL4yuSwAyvrLQTfAn/fyx/aOY=;
        b=LMvp2lgR9392FKEiD4TQWMNvoQzzU4pCduoUhg1UyPUNG35ti4RZ7nH/CSJOm85vRJ
         Jb+LKOaS3lLIbPzl4U90HrgLFQA0EjYVCrN1nJ7SjeeILhXS8wU1d74MyEESkzvXJhtY
         H4mkhmHCREwEIJItSFa2TlDTksyPua+fLGqnGVJVxlqCHNTrBOwei74IvoxvqD23Q+gV
         /SBJV2046RMaMhZFmVGQWRt0Gcifd6L1E9EG8lc1FhSJqL+4j5v6DEe9uwW+2U48zH/t
         5k0MHwDPKlbBzlj4yJj5BqCPCOcThEtWqLqB5XvvrQH9mb35qsVNRtVNUJ5gRY7OFskK
         4t4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jr1IjkRVr8SXkt/bXHgL4yuSwAyvrLQTfAn/fyx/aOY=;
        b=NYR/3UDndrHY/OiGuu1MbNpnXXIk08eKz6j7BoZbtP7f2nwZPljtFJsz8TJikmYUeU
         dhJemR4nSgqTBxXATZ0kzNQlMeuNiDoRIoSbm/NaRj2GZaEHKhDOAKJSIR5IkSZozsZ1
         hDD3cS8v65t0qFwd9Zao3IsCXeXtB/kCTB00lk/PiKVFKeDbSyjd2UFNE78G7uIAJtnc
         k8osjSSlRdpRyM6rnZ1P31aikx9t3PWU1oWZpJAf8LGZdcKdaplvBRmxND6emZMacIL2
         8lmUJA9ytwCvrVgF+wNsa/HrVdLmjW6jTg/afCDMiMsAMyKF8b9i9hgm9OuUm+MM8/0n
         vT2Q==
X-Gm-Message-State: AMke39m5OFyUAvGHr4RElGZ/MvRYTGr3r8mJHV8860bnqyRG+ceOez3LL+CYjbgax3DOSQ==
X-Received: by 10.99.127.14 with SMTP id a14mr6827106pgd.64.1488346052827;
        Tue, 28 Feb 2017 21:27:32 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.180.157])
        by smtp.gmail.com with ESMTPSA id y184sm7371532pgd.45.2017.02.28.21.27.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 21:27:31 -0800 (PST)
Date: Wed, 1 Mar 2017 10:57:12 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: ad7280a: Group similar macros into enums
Message-ID: <20170301052712.GA19851@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch groups similar macros into enum data types.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/adc/ad7280a.h | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.h b/drivers/staging/iio/adc/ad7280a.h
index ccfb90d..08e97d4 100644
--- a/drivers/staging/iio/adc/ad7280a.h
+++ b/drivers/staging/iio/adc/ad7280a.h
@@ -13,15 +13,19 @@
  * TODO: struct ad7280_platform_data needs to go into include/linux/iio
  */
 
-#define AD7280A_ACQ_TIME_400ns			0
-#define AD7280A_ACQ_TIME_800ns			1
-#define AD7280A_ACQ_TIME_1200ns			2
-#define AD7280A_ACQ_TIME_1600ns			3
+enum {
+	AD7280A_CONV_AVG_DIS = 0,
+	AD7280A_CONV_AVG_2,
+	AD7280A_CONV_AVG_4,
+	AD7280A_CONV_AVG_8,
+};
 
-#define AD7280A_CONV_AVG_DIS			0
-#define AD7280A_CONV_AVG_2			1
-#define AD7280A_CONV_AVG_4			2
-#define AD7280A_CONV_AVG_8			3
+enum {
+	AD7280A_ACQ_TIME_400ns = 0,
+	AD7280A_ACQ_TIME_800ns,
+	AD7280A_ACQ_TIME_1200ns,
+	AD7280A_ACQ_TIME_1600ns,
+};
 
 #define AD7280A_ALERT_REMOVE_VIN5		BIT(2)
 #define AD7280A_ALERT_REMOVE_VIN4_VIN5		BIT(3)
-- 
2.7.4


