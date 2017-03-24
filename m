X-GM-THRID: 6401063525476728832
X-Received: by 10.200.1.5 with SMTP id e5mr2469751qtg.11.1490363740432;
        Fri, 24 Mar 2017 06:55:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.163 with SMTP id 35ls2190119ios.37.gmail; Fri, 24 Mar
 2017 06:55:39 -0700 (PDT)
X-Received: by 10.99.96.196 with SMTP id u187mr2712568pgb.151.1490363739532;
        Fri, 24 Mar 2017 06:55:39 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si532717pfb.0.2017.03.24.06.55.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 06:55:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id w20so647784pgc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 06:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4NHHamOd5J/OH4tFB34HErTJA+oFXgP2e6XYORS1pJ0=;
        b=P4KewlKGdy3ofLRLo3BWJq1SkprCINzNqcsqJrZDaBml9znD8i4c5Gts1Yd6pWgAT5
         dAIsIwWMjT2li97gr1JMT+tVqp2H420gC0J+48HFbHT0hTTWwsCfZ9AJbkmrSDn43NFk
         5222DliHcJIHrb637J8ooDkDoWRIB3ENL3pWMy+EzQawWMoba8EqwEnYeRpxfWJY3vLz
         TJxCFVKWCyrkRkY/eqo5U2DhP/Y9dLjdqh4qQjZ2V0RNYmkmEhpEKWw19UF1hZIebPDI
         b46OW+s+ZMEkOeXnrmIthrpSuokmWfqtCgRvr5+wodV4JubhgmEjSo1gM1pfXFA+kmym
         I6XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4NHHamOd5J/OH4tFB34HErTJA+oFXgP2e6XYORS1pJ0=;
        b=eYtgj9CnkT2PVmTAdFcAiJTQgnEeVVq/QUFvNfGdI+aGUsFj5vc3ZHJWEKi3pHn2t8
         GVLcu83Hzkposquw2/nV9lAat857hpQcWvdc7zLR4SdpZJNItTOerarIs4HsMvfF07L0
         jDGO3YHNtrJXthRSf6TLH754SLUvkxXUYcJaOrIJM3ClrvPODKZ9ygSMomhQsbKbHxAC
         m/NuV70SUEhX1bhNAGPNAfTMoppGd1+ermo+eUkHF4ufapaiv7Xr42oyzEHz2LK125i8
         y3WwHTM/mcqn1+m2wDe6A3zxT8uhfuzrCBgStf2glSrmpp8RFjttL86CtxNxhvzF5iLj
         M4MQ==
X-Gm-Message-State: AFeK/H30qV4s0Zs/dhvEgdEWH6Ij+wKshuA0nW2VLbPlpqvDnSVkxa5uC18cONLb1/xTXA==
X-Received: by 10.84.234.2 with SMTP id m2mr11221550plk.169.1490363739356;
        Fri, 24 Mar 2017 06:55:39 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c204sm5043191pfc.92.2017.03.24.06.55.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Mar 2017 06:55:38 -0700 (PDT)
Date: Fri, 24 Mar 2017 19:25:33 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: Remove extra Parenthesis.
Message-ID: <20170324135533.GA5346@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove the extra parenthesis remove the checkpatch issue.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 033a41fd9bee..b4afc12f827f 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -50,10 +50,10 @@
 #define AD7746_STATUS_RDYCAP		BIT(0)
 
 /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
-#define AD7746_CAPSETUP_CAPEN		(BIT(7))
-#define AD7746_CAPSETUP_CIN2		(BIT(6)) /* AD7746 only */
-#define AD7746_CAPSETUP_CAPDIFF		(BIT(5))
-#define AD7746_CAPSETUP_CACHOP		(BIT(0))
+#define AD7746_CAPSETUP_CAPEN		BIT(7)
+#define AD7746_CAPSETUP_CIN2		BIT(6) /* AD7746 only */
+#define AD7746_CAPSETUP_CAPDIFF		BIT(5)
+#define AD7746_CAPSETUP_CACHOP		BIT(0)
 
 /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
 #define AD7746_VTSETUP_VTEN		(1 << 7)
@@ -61,9 +61,9 @@
 #define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
 #define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
 #define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
-#define AD7746_VTSETUP_EXTREF		(BIT(4))
-#define AD7746_VTSETUP_VTSHORT		(BIT(1))
-#define AD7746_VTSETUP_VTCHOP		(BIT(0))
+#define AD7746_VTSETUP_EXTREF		BIT(4)
+#define AD7746_VTSETUP_VTSHORT		BIT(1)
+#define AD7746_VTSETUP_VTCHOP		BIT(0)
 
 /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
 #define AD7746_EXCSETUP_CLKCTRL		BIT(7)
@@ -87,7 +87,7 @@
 #define AD7746_CONF_MODE_GAIN_CAL	(6 << 0)
 
 /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
-#define AD7746_CAPDAC_DACEN		(BIT(7))
+#define AD7746_CAPDAC_DACEN		BIT(7)
 #define AD7746_CAPDAC_DACP(x)		((x) & 0x7F)
 
 /*
-- 
2.11.0


