X-GM-THRID: 6264893373939712000
X-Received: by 10.112.162.101 with SMTP id xz5mr4557966lbb.20.1458659363131;
        Tue, 22 Mar 2016 08:09:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.141.200 with SMTP id p191ls871760wmd.48.gmail; Tue, 22 Mar
 2016 08:09:22 -0700 (PDT)
X-Received: by 10.194.239.163 with SMTP id vt3mr4536150wjc.3.1458659362712;
        Tue, 22 Mar 2016 08:09:22 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lb0-x244.google.com (mail-lb0-x244.google.com. [2a00:1450:4010:c04::244])
        by gmr-mx.google.com with ESMTPS id ai9si1348801lbc.2.2016.03.22.08.09.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 08:09:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::244 as permitted sender) client-ip=2a00:1450:4010:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::244 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x244.google.com with SMTP id oa3so646802lbb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 08:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EYaIcRCezkTeu1ayeHtkceTPdJLgPT4q9aq9dhcAIn4=;
        b=w2S8xjfJSIM52vOmIZ9r2E6/4R0ODrSVf0EAvp9PbAsFeYzyu1KjTWgkMe2YQvnWFW
         uvSz7R4Oh3CocNtGGufSmT8yB8MBFOq8n4v3+zaOJwlCJn2jKqJ9xBb5khS5W7yJhyMy
         DA+DN7aP3JZsW3Oua+V4Ld2319qW3iOSRP3aH+36BzOjbeB6QyqzdLMiMTMm8NVtXOGS
         n2Q7Rtyh9W8pzawzzgU7C8uvM+/ldQjaMaUWABuAgAvCsuMv9x//U4HU/VFzcyElfSdf
         2xsWt/PEGy1tk9Rx4YLVH99Gg5wXkwjq0v1HDvrWikfb9S0xIopLQgD0nKnSSK4iQobp
         gpnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EYaIcRCezkTeu1ayeHtkceTPdJLgPT4q9aq9dhcAIn4=;
        b=FemG+AWeVMtROfr3035cpLu/Bi1VbUoQ/gIUaR8TkMukcgtASkmlgLrxQ/ex3EhXzu
         aYBBDzXOIoWjmridKaG+pZERX7+ttVkgyyaKjPvk5ZJXvTjOego+Obs932vdSh9wisYF
         /7oSL3JNlVyOutvSbfGeomEabEhFEIik9qPCNqxk/CpyLnuv0Kr01n9+WGSiR1lRxxwZ
         juF031m/7x8IIsq6uA0gjICFtA6u2VodvJz4BNuEG4txllVR6hHCBfJoZLqe61vxJywS
         pzWQfLINFXtsck95ODKO3w7t30Xsv7rL4qpJWV0mZpulMY26D77bpAlNgIsK6SSwI2aM
         pPYg==
X-Gm-Message-State: AD7BkJKHGWEVU00/X0Nz66uelUGGPR8HWQlBt2G88+g95UiGs3NQl4Q6KVPMcPZqbXAxIQ==
X-Received: by 10.25.137.67 with SMTP id l64mr11470391lfd.158.1458659362537;
        Tue, 22 Mar 2016 08:09:22 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from pal-comp (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id mt7sm5267412lbb.25.2016.03.22.08.09.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 08:09:21 -0700 (PDT)
Date: Tue, 22 Mar 2016 18:09:21 +0300
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: iio: accel: adis16209: Improve readability
Message-ID: <c9dc3d00feaad693a960bcf60ee143d44e593108.1458656756.git.sveta.orlik.code@gmail.com>
References: <cover.1458656755.git.sveta.orlik.code@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458656755.git.sveta.orlik.code@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Lines with #define interlaced with comment lines making a mess.

Separate groups of #define-comment with blank lines.
Separate section title comments with blank lines.

Signed-off-by: Svetlana Orlik <sveta.orlik.code@gmail.com>
---
 drivers/staging/iio/accel/adis16209.h | 39 +++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/staging/iio/accel/adis16209.h b/drivers/staging/iio/accel/adis16209.h
index 813698d..315f1c0 100644
--- a/drivers/staging/iio/accel/adis16209.h
+++ b/drivers/staging/iio/accel/adis16209.h
@@ -5,88 +5,127 @@
 
 /* Flash memory write count */
 #define ADIS16209_FLASH_CNT      0x00
+
 /* Output, power supply */
 #define ADIS16209_SUPPLY_OUT     0x02
+
 /* Output, x-axis accelerometer */
 #define ADIS16209_XACCL_OUT      0x04
+
 /* Output, y-axis accelerometer */
 #define ADIS16209_YACCL_OUT      0x06
+
 /* Output, auxiliary ADC input */
 #define ADIS16209_AUX_ADC        0x08
+
 /* Output, temperature */
 #define ADIS16209_TEMP_OUT       0x0A
+
 /* Output, x-axis inclination */
 #define ADIS16209_XINCL_OUT      0x0C
+
 /* Output, y-axis inclination */
 #define ADIS16209_YINCL_OUT      0x0E
+
 /* Output, +/-180 vertical rotational position */
 #define ADIS16209_ROT_OUT        0x10
+
 /* Calibration, x-axis acceleration offset null */
 #define ADIS16209_XACCL_NULL     0x12
+
 /* Calibration, y-axis acceleration offset null */
 #define ADIS16209_YACCL_NULL     0x14
+
 /* Calibration, x-axis inclination offset null */
 #define ADIS16209_XINCL_NULL     0x16
+
 /* Calibration, y-axis inclination offset null */
 #define ADIS16209_YINCL_NULL     0x18
+
 /* Calibration, vertical rotation offset null */
 #define ADIS16209_ROT_NULL       0x1A
+
 /* Alarm 1 amplitude threshold */
 #define ADIS16209_ALM_MAG1       0x20
+
 /* Alarm 2 amplitude threshold */
 #define ADIS16209_ALM_MAG2       0x22
+
 /* Alarm 1, sample period */
 #define ADIS16209_ALM_SMPL1      0x24
+
 /* Alarm 2, sample period */
 #define ADIS16209_ALM_SMPL2      0x26
+
 /* Alarm control */
 #define ADIS16209_ALM_CTRL       0x28
+
 /* Auxiliary DAC data */
 #define ADIS16209_AUX_DAC        0x30
+
 /* General-purpose digital input/output control */
 #define ADIS16209_GPIO_CTRL      0x32
+
 /* Miscellaneous control */
 #define ADIS16209_MSC_CTRL       0x34
+
 /* Internal sample period (rate) control */
 #define ADIS16209_SMPL_PRD       0x36
+
 /* Operation, filter configuration */
 #define ADIS16209_AVG_CNT        0x38
+
 /* Operation, sleep mode control */
 #define ADIS16209_SLP_CNT        0x3A
+
 /* Diagnostics, system status register */
 #define ADIS16209_DIAG_STAT      0x3C
+
 /* Operation, system command register */
 #define ADIS16209_GLOB_CMD       0x3E
 
 /* MSC_CTRL */
+
 /* Self-test at power-on: 1 = disabled, 0 = enabled */
 #define ADIS16209_MSC_CTRL_PWRUP_SELF_TEST	BIT(10)
+
 /* Self-test enable */
 #define ADIS16209_MSC_CTRL_SELF_TEST_EN	        BIT(8)
+
 /* Data-ready enable: 1 = enabled, 0 = disabled */
 #define ADIS16209_MSC_CTRL_DATA_RDY_EN	        BIT(2)
+
 /* Data-ready polarity: 1 = active high, 0 = active low */
 #define ADIS16209_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
+
 /* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
 #define ADIS16209_MSC_CTRL_DATA_RDY_DIO2	BIT(0)
 
 /* DIAG_STAT */
+
 /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
 #define ADIS16209_DIAG_STAT_ALARM2        BIT(9)
+
 /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
 #define ADIS16209_DIAG_STAT_ALARM1        BIT(8)
+
 /* Self-test diagnostic error flag: 1 = error condition, 0 = normal operation */
 #define ADIS16209_DIAG_STAT_SELFTEST_FAIL_BIT	5
+
 /* SPI communications failure */
 #define ADIS16209_DIAG_STAT_SPI_FAIL_BIT	3
+
 /* Flash update failure */
 #define ADIS16209_DIAG_STAT_FLASH_UPT_BIT	2
+
 /* Power supply above 3.625 V */
 #define ADIS16209_DIAG_STAT_POWER_HIGH_BIT	1
+
 /* Power supply below 3.15 V */
 #define ADIS16209_DIAG_STAT_POWER_LOW_BIT	0
 
 /* GLOB_CMD */
+
 #define ADIS16209_GLOB_CMD_SW_RESET	BIT(7)
 #define ADIS16209_GLOB_CMD_CLEAR_STAT	BIT(4)
 #define ADIS16209_GLOB_CMD_FACTORY_CAL	BIT(1)
-- 
2.5.0


