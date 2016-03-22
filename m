X-GM-THRID: 6264893373939712000
X-Received: by 10.194.121.197 with SMTP id lm5mr3388758wjb.2.1458659434360;
        Tue, 22 Mar 2016 08:10:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.57.65 with SMTP id g62ls898458wma.32.canary; Tue, 22 Mar
 2016 08:10:34 -0700 (PDT)
X-Received: by 10.194.121.197 with SMTP id lm5mr3388755wjb.2.1458659434006;
        Tue, 22 Mar 2016 08:10:34 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lb0-x243.google.com (mail-lb0-x243.google.com. [2a00:1450:4010:c04::243])
        by gmr-mx.google.com with ESMTPS id ph10si1053672lbb.0.2016.03.22.08.10.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 08:10:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::243 as permitted sender) client-ip=2a00:1450:4010:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::243 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x243.google.com with SMTP id bc4so15239280lbc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 08:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6usFePvWq2JE6QAYKE7rhjKTFNQNjHIZVyMQF0h5haI=;
        b=i6eCBK/KJE1gaUFlVCqphmJyeIKp9sUlMvwDcMyLpK3LNOyhVeaxDFYWtNJlkoUFj5
         B90uUNlR9KIV32RozYTsTJ50+VvKNhDNjyNQucEtsSvvtRpV13wCRaGZZyKlnqDnwCQZ
         u85zo6/ax1YPEzkBcJNUIWTVZMBbXHHFkeWaL3D4igurzQvgX4AH0vGJOxlfSSy6loN2
         yFNJAzLSs2dJ2zdixXE5z7f172dIoFBqOiYwJkf2drt1xNy7mKod5tmrmphHeSG/Ds+8
         f1t130eqFgrhPLU7KrLgEtUb3bdi1JA7JY9WV0dFfFB5k+iLy7yXmd8MJSyTMsv/Ndq1
         qBiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6usFePvWq2JE6QAYKE7rhjKTFNQNjHIZVyMQF0h5haI=;
        b=Nqf+Qv6R7InfYLEhuy+LfbJEtNGQcXFzDiTe+0ddLyuGu8xo34Xaz6IbY1SgwScYPJ
         zo220j3jLk1GMXtRWZ/5jolIJpS1UJVtGpaSS0sQmGtE4fRgthuI4kuBvj2yYGp2swc2
         KLoHo/CTNsYRACChRBF+epv83yE1JGLX2vZjuFEIroc6nf4VXVRae+MVYwC+zV7z8K2S
         uYPQirkJgT61Oz7IAlCSu7LI9QXZx/BA+k5212WoYE66j/jcWqgWozHB0UzoqI+EAgBr
         aHkBiRb8XlZ676EeCVhbQpbIo5BIpsTCtWpQgJ4A6WapUnAeMCe020hR1/XzNdtJ156W
         F4Ag==
X-Gm-Message-State: AD7BkJIbHV2sXiov2GPQWrbdCOVy/UDPwSnyPvGCkWjitRNEDRmh4AXRMcs86/CnEqytdQ==
X-Received: by 10.25.17.65 with SMTP id g62mr11600512lfi.52.1458659433827;
        Tue, 22 Mar 2016 08:10:33 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from pal-comp (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id mz2sm4043774lbb.18.2016.03.22.08.10.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 08:10:33 -0700 (PDT)
Date: Tue, 22 Mar 2016 18:10:32 +0300
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: iio: accel: adis16240: Improve readability
Message-ID: <87908b236c404d5fe9db13e2f05b22af205a0d1a.1458656756.git.sveta.orlik.code@gmail.com>
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
 drivers/staging/iio/accel/adis16240.h | 50 +++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/staging/iio/accel/adis16240.h b/drivers/staging/iio/accel/adis16240.h
index 66b5ad2..b2cb37b 100644
--- a/drivers/staging/iio/accel/adis16240.h
+++ b/drivers/staging/iio/accel/adis16240.h
@@ -5,110 +5,160 @@
 
 /* Flash memory write count */
 #define ADIS16240_FLASH_CNT      0x00
+
 /* Output, power supply */
 #define ADIS16240_SUPPLY_OUT     0x02
+
 /* Output, x-axis accelerometer */
 #define ADIS16240_XACCL_OUT      0x04
+
 /* Output, y-axis accelerometer */
 #define ADIS16240_YACCL_OUT      0x06
+
 /* Output, z-axis accelerometer */
 #define ADIS16240_ZACCL_OUT      0x08
+
 /* Output, auxiliary ADC input */
 #define ADIS16240_AUX_ADC        0x0A
+
 /* Output, temperature */
 #define ADIS16240_TEMP_OUT       0x0C
+
 /* Output, x-axis acceleration peak */
 #define ADIS16240_XPEAK_OUT      0x0E
+
 /* Output, y-axis acceleration peak */
 #define ADIS16240_YPEAK_OUT      0x10
+
 /* Output, z-axis acceleration peak */
 #define ADIS16240_ZPEAK_OUT      0x12
+
 /* Output, sum-of-squares acceleration peak */
 #define ADIS16240_XYZPEAK_OUT    0x14
+
 /* Output, Capture Buffer 1, X and Y acceleration */
 #define ADIS16240_CAPT_BUF1      0x16
+
 /* Output, Capture Buffer 2, Z acceleration */
 #define ADIS16240_CAPT_BUF2      0x18
+
 /* Diagnostic, error flags */
 #define ADIS16240_DIAG_STAT      0x1A
+
 /* Diagnostic, event counter */
 #define ADIS16240_EVNT_CNTR      0x1C
+
 /* Diagnostic, check sum value from firmware test */
 #define ADIS16240_CHK_SUM        0x1E
+
 /* Calibration, x-axis acceleration offset adjustment */
 #define ADIS16240_XACCL_OFF      0x20
+
 /* Calibration, y-axis acceleration offset adjustment */
 #define ADIS16240_YACCL_OFF      0x22
+
 /* Calibration, z-axis acceleration offset adjustment */
 #define ADIS16240_ZACCL_OFF      0x24
+
 /* Clock, hour and minute */
 #define ADIS16240_CLK_TIME       0x2E
+
 /* Clock, month and day */
 #define ADIS16240_CLK_DATE       0x30
+
 /* Clock, year */
 #define ADIS16240_CLK_YEAR       0x32
+
 /* Wake-up setting, hour and minute */
 #define ADIS16240_WAKE_TIME      0x34
+
 /* Wake-up setting, month and day */
 #define ADIS16240_WAKE_DATE      0x36
+
 /* Alarm 1 amplitude threshold */
 #define ADIS16240_ALM_MAG1       0x38
+
 /* Alarm 2 amplitude threshold */
 #define ADIS16240_ALM_MAG2       0x3A
+
 /* Alarm control */
 #define ADIS16240_ALM_CTRL       0x3C
+
 /* Capture, external trigger control */
 #define ADIS16240_XTRIG_CTRL     0x3E
+
 /* Capture, address pointer */
 #define ADIS16240_CAPT_PNTR      0x40
+
 /* Capture, configuration and control */
 #define ADIS16240_CAPT_CTRL      0x42
+
 /* General-purpose digital input/output control */
 #define ADIS16240_GPIO_CTRL      0x44
+
 /* Miscellaneous control */
 #define ADIS16240_MSC_CTRL       0x46
+
 /* Internal sample period (rate) control */
 #define ADIS16240_SMPL_PRD       0x48
+
 /* System command */
 #define ADIS16240_GLOB_CMD       0x4A
 
 /* MSC_CTRL */
+
 /* Enables sum-of-squares output (XYZPEAK_OUT) */
 #define ADIS16240_MSC_CTRL_XYZPEAK_OUT_EN	BIT(15)
+
 /* Enables peak tracking output (XPEAK_OUT, YPEAK_OUT, and ZPEAK_OUT) */
 #define ADIS16240_MSC_CTRL_X_Y_ZPEAK_OUT_EN	BIT(14)
+
 /* Self-test enable: 1 = apply electrostatic force, 0 = disabled */
 #define ADIS16240_MSC_CTRL_SELF_TEST_EN	        BIT(8)
+
 /* Data-ready enable: 1 = enabled, 0 = disabled */
 #define ADIS16240_MSC_CTRL_DATA_RDY_EN	        BIT(2)
+
 /* Data-ready polarity: 1 = active high, 0 = active low */
 #define ADIS16240_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
+
 /* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
 #define ADIS16240_MSC_CTRL_DATA_RDY_DIO2	BIT(0)
 
 /* DIAG_STAT */
+
 /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
 #define ADIS16240_DIAG_STAT_ALARM2      BIT(9)
+
 /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
 #define ADIS16240_DIAG_STAT_ALARM1      BIT(8)
+
 /* Capture buffer full: 1 = capture buffer is full */
 #define ADIS16240_DIAG_STAT_CPT_BUF_FUL BIT(7)
+
 /* Flash test, checksum flag: 1 = mismatch, 0 = match */
 #define ADIS16240_DIAG_STAT_CHKSUM      BIT(6)
+
 /* Power-on, self-test flag: 1 = failure, 0 = pass */
 #define ADIS16240_DIAG_STAT_PWRON_FAIL_BIT  5
+
 /* Power-on self-test: 1 = in-progress, 0 = complete */
 #define ADIS16240_DIAG_STAT_PWRON_BUSY  BIT(4)
+
 /* SPI communications failure */
 #define ADIS16240_DIAG_STAT_SPI_FAIL_BIT	3
+
 /* Flash update failure */
 #define ADIS16240_DIAG_STAT_FLASH_UPT_BIT	2
+
 /* Power supply above 3.625 V */
 #define ADIS16240_DIAG_STAT_POWER_HIGH_BIT	1
+
  /* Power supply below 3.15 V */
 #define ADIS16240_DIAG_STAT_POWER_LOW_BIT	0
 
 /* GLOB_CMD */
+
 #define ADIS16240_GLOB_CMD_RESUME	BIT(8)
 #define ADIS16240_GLOB_CMD_SW_RESET	BIT(7)
 #define ADIS16240_GLOB_CMD_STANDBY	BIT(2)
-- 
2.5.0


