X-GM-THRID: 6402952524859441152
X-Received: by 10.129.146.139 with SMTP id j133mr417715ywg.173.1490803557561;
        Wed, 29 Mar 2017 09:05:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.115 with SMTP id r106ls15753990ota.10.gmail; Wed, 29
 Mar 2017 09:05:56 -0700 (PDT)
X-Received: by 10.157.10.107 with SMTP id 98mr426589otg.120.1490803556639;
        Wed, 29 Mar 2017 09:05:56 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id r66si1217846pfb.7.2017.03.29.09.05.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 09:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so3197795pgh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 09:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PsGAXaWAxP/6qLycx+wnWZ71BP8yqkvzLCsyBJrgXDA=;
        b=aZdopOTBg1C60D9v41c/OAPgHH3lLQebWYxA/lr71QX/v6BVlIq9+qp/DEKy2/6Hkn
         By5jvj4jsPBWRi5YyCY8xS32u2m3hgunnwZdais+TvfHHW0J7lJ16Wnrwv6KKyhp8DwU
         6n4c95yYUsFv31jwrOF2QXu7fyURrjbCa7bbhr1507mfzHM0O8nmDQniqMNO7IIBFqPv
         QHNE+QYdlM18AOZ94+NGTs4nBqQUw6h7QxCPAvdwPXcRzahfy0ymQrxd6HN9Bfg50Vog
         6Cn5SC7ZCZJJEZSrKmmeL4dj65KV1fhZmZJY4/soBK793aU/mXDNMM6HmZ/UO1fvK46U
         DUIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PsGAXaWAxP/6qLycx+wnWZ71BP8yqkvzLCsyBJrgXDA=;
        b=CF6hO4C4F2+IH/QrzPFcz+P4867FveJjHIRrQMclkMrThH/JkUfCylMMJtNpsiJEx+
         +Xq36z0tbQrjFIAvCpiiGtdx5z80T+RrcofrtXHGiJboz6g7yMLaMtaobWLNgN4jYbAI
         NCf0kIfYBUWj/2OWT86Y7cerSIDZKzG6fCoQID4QUegX+U8HXqtC90htVnNnTpwtnTTK
         hOtAOTfwcodNdlB83imD9bpSU8S98PBA8yY0T0dlA00jdQ0/U7Y/uhzcpGSIy/w63WyI
         wd/RYIpr5CFE1XZoCYtG3ajQhLXUK9767xy9a17kdPMsZBUsY2Bcz20TWyiGSUKYqw3K
         NfnQ==
X-Gm-Message-State: AFeK/H1/xMA+Uh66/egYm1n8pjLl7DJTCO9+96jZ/lgwLSgl3VH6aLR6DjuJiMHpETfoPA==
X-Received: by 10.99.160.111 with SMTP id u47mr1259866pgn.161.1490803556258;
        Wed, 29 Mar 2017 09:05:56 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s13sm14467787pfd.46.2017.03.29.09.05.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 09:05:54 -0700 (PDT)
Date: Wed, 29 Mar 2017 21:35:51 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: outreachy-kernel@googlegroups.com,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: iio: Remove unneeded parentheses.
Message-ID: <20170329160551.GA7230@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove the extra parenthesis remove the checkpatch issue.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 -done the changes according to the current tree

 drivers/staging/iio/cdc/ad7746.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index c2c8aa5585e4..7fa9913386f5 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -45,10 +45,10 @@
 #define AD7746_STATUS_RDYCAP		BIT(0)
 
 /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
-#define AD7746_CAPSETUP_CAPEN		(1 << 7)
-#define AD7746_CAPSETUP_CIN2		(1 << 6) /* AD7746 only */
-#define AD7746_CAPSETUP_CAPDIFF		(1 << 5)
-#define AD7746_CAPSETUP_CACHOP		(1 << 0)
+#define AD7746_CAPSETUP_CAPEN		BIT(7)
+#define AD7746_CAPSETUP_CIN2		BIT(6) /* AD7746 only */
+#define AD7746_CAPSETUP_CAPDIFF		BIT(5)
+#define AD7746_CAPSETUP_CACHOP		BIT(0)
 
 /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
 #define AD7746_VTSETUP_VTEN		(1 << 7)
@@ -56,9 +56,9 @@
 #define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
 #define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
 #define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
-#define AD7746_VTSETUP_EXTREF		(1 << 4)
-#define AD7746_VTSETUP_VTSHORT		(1 << 1)
-#define AD7746_VTSETUP_VTCHOP		(1 << 0)
+#define AD7746_VTSETUP_EXTREF		BIT(4)
+#define AD7746_VTSETUP_VTSHORT		BIT(1)
+#define AD7746_VTSETUP_VTCHOP		BIT(0)
 
 /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
 #define AD7746_EXCSETUP_CLKCTRL		BIT(7)
@@ -82,7 +82,7 @@
 #define AD7746_CONF_MODE_GAIN_CAL	(6 << 0)
 
 /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
-#define AD7746_CAPDAC_DACEN		(1 << 7)
+#define AD7746_CAPDAC_DACEN		BIT(7)
 #define AD7746_CAPDAC_DACP(x)		((x) & 0x7F)
 
 /*
-- 
2.11.0


