X-GM-THRID: 6264893373939712000
X-Received: by 10.25.160.207 with SMTP id j198mr4518409lfe.4.1458659394877;
        Tue, 22 Mar 2016 08:09:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.131 with SMTP id q125ls898937lfe.69.gmail; Tue, 22 Mar
 2016 08:09:54 -0700 (PDT)
X-Received: by 10.112.138.98 with SMTP id qp2mr4659102lbb.4.1458659394293;
        Tue, 22 Mar 2016 08:09:54 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lb0-x243.google.com (mail-lb0-x243.google.com. [2a00:1450:4010:c04::243])
        by gmr-mx.google.com with ESMTPS id ph10si1053672lbb.0.2016.03.22.08.09.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 08:09:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::243 as permitted sender) client-ip=2a00:1450:4010:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::243 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x243.google.com with SMTP id bc4so15239280lbc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 08:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3UP2QIABfCF6Wb7zQCPAF53NjLLUH+rv0IXsNqy/i7c=;
        b=zkRTsiYz/qlD78fSBasqc2n4/um+/mIrpLbgtRrt+RIQHmLhlfue5EMlkqYqMTDnab
         EVtkpHYowkfEi8RHljE9eb7pkAgA0m8tbcZLOShaBskq1GJXMksM4cHvZQFoANP1puKa
         Uv1b3K8Iz9TUerMMMAlH0Q/u2oZ86V7s0Q5f0JoF68ofzSd5i++qK3bMZ2IYo3akvzhY
         4ewXz3Tzhq+mV6Z0oyoTaTAPE73zBK/46Yj32klVoBTapofqE16iefRW6ntCWUAivufW
         OtUanmko6ixACU8qjUE641BxcwseyMoOk3sgwD+6owKbB11W2dJJdZ2RMJhKmhFVAAnF
         i0ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3UP2QIABfCF6Wb7zQCPAF53NjLLUH+rv0IXsNqy/i7c=;
        b=PWIGeWPNvhibnV8L45e1vIBMkwd/cwCPDuqiOEhcLgAqtWESbgiQhXRBY7kB/YOW6d
         DUH3UjJEdy/3zbo3NZqSUAh+YVZd40Sfxhsz/T0dq5vmWpRDgcLFdUucdpCmUeFdV8pH
         QiS5LZOlcVBDO1IgFAQkqFLMBlO4xjx4Eab5m3cFcacxiW3er224L8vN/1zibJNGCJXZ
         XNWErUluB8n2NropNjSFOo22ukShN/RswZXxywQxIY769gxjp/TyTyiZcjLDVHA0HmrE
         IC3ZDDeQelTWHqXnHv9wQlg+fjMw4V5yt9F/Sf7++SYp5UQKMJDRndyUw4DI/4WGBBlb
         DdOA==
X-Gm-Message-State: AD7BkJI/bxwXor+zW9dE68WHw/oxjk+wntNCo/GZAxFV5yx+9hUlU8XI05rVWWatDydsuw==
X-Received: by 10.112.25.99 with SMTP id b3mr13134281lbg.11.1458659394153;
        Tue, 22 Mar 2016 08:09:54 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from pal-comp (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id do4sm5321977lbc.35.2016.03.22.08.09.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 08:09:53 -0700 (PDT)
Date: Tue, 22 Mar 2016 18:09:53 +0300
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: iio: accel: adis16220: Improve readability
Message-ID: <ebe8194b49b189295c5e435b8bf44936fea7d182.1458656756.git.sveta.orlik.code@gmail.com>
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
 drivers/staging/iio/accel/adis16220.h | 48 +++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/staging/iio/accel/adis16220.h b/drivers/staging/iio/accel/adis16220.h
index eab8633..31a1268 100644
--- a/drivers/staging/iio/accel/adis16220.h
+++ b/drivers/staging/iio/accel/adis16220.h
@@ -7,111 +7,159 @@
 
 /* Flash memory write count */
 #define ADIS16220_FLASH_CNT     0x00
+
 /* Control, acceleration offset adjustment control */
 #define ADIS16220_ACCL_NULL     0x02
+
 /* Control, AIN1 offset adjustment control */
 #define ADIS16220_AIN1_NULL     0x04
+
 /* Control, AIN2 offset adjustment control */
 #define ADIS16220_AIN2_NULL     0x06
+
 /* Output, power supply during capture */
 #define ADIS16220_CAPT_SUPPLY   0x0A
+
 /* Output, temperature during capture */
 #define ADIS16220_CAPT_TEMP     0x0C
+
 /* Output, peak acceleration during capture */
 #define ADIS16220_CAPT_PEAKA    0x0E
+
 /* Output, peak AIN1 level during capture */
 #define ADIS16220_CAPT_PEAK1    0x10
+
 /* Output, peak AIN2 level during capture */
 #define ADIS16220_CAPT_PEAK2    0x12
+
 /* Output, capture buffer for acceleration */
 #define ADIS16220_CAPT_BUFA     0x14
+
 /* Output, capture buffer for AIN1 */
 #define ADIS16220_CAPT_BUF1     0x16
+
 /* Output, capture buffer for AIN2 */
 #define ADIS16220_CAPT_BUF2     0x18
+
 /* Control, capture buffer address pointer */
 #define ADIS16220_CAPT_PNTR     0x1A
+
 /* Control, capture control register */
 #define ADIS16220_CAPT_CTRL     0x1C
+
 /* Control, capture period (automatic mode) */
 #define ADIS16220_CAPT_PRD      0x1E
+
 /* Control, Alarm A, acceleration peak threshold */
 #define ADIS16220_ALM_MAGA      0x20
+
 /* Control, Alarm 1, AIN1 peak threshold */
 #define ADIS16220_ALM_MAG1      0x22
+
 /* Control, Alarm 2, AIN2 peak threshold */
 #define ADIS16220_ALM_MAG2      0x24
+
 /* Control, Alarm S, peak threshold */
 #define ADIS16220_ALM_MAGS      0x26
+
 /* Control, alarm configuration register */
 #define ADIS16220_ALM_CTRL      0x28
+
 /* Control, general I/O configuration */
 #define ADIS16220_GPIO_CTRL     0x32
+
 /* Control, self-test control, AIN configuration */
 #define ADIS16220_MSC_CTRL      0x34
+
 /* Control, digital I/O configuration */
 #define ADIS16220_DIO_CTRL      0x36
+
 /* Control, filter configuration */
 #define ADIS16220_AVG_CNT       0x38
+
 /* Status, system status */
 #define ADIS16220_DIAG_STAT     0x3C
+
 /* Control, system commands */
 #define ADIS16220_GLOB_CMD      0x3E
+
 /* Status, self-test response */
 #define ADIS16220_ST_DELTA      0x40
+
 /* Lot Identification Code 1 */
 #define ADIS16220_LOT_ID1       0x52
+
 /* Lot Identification Code 2 */
 #define ADIS16220_LOT_ID2       0x54
+
 /* Product identifier; convert to decimal = 16220 */
 #define ADIS16220_PROD_ID       0x56
+
 /* Serial number */
 #define ADIS16220_SERIAL_NUM    0x58
 
 #define ADIS16220_CAPTURE_SIZE  2048
 
 /* MSC_CTRL */
+
 #define ADIS16220_MSC_CTRL_SELF_TEST_EN	        BIT(8)
 #define ADIS16220_MSC_CTRL_POWER_SUP_COM_AIN1	BIT(1)
 #define ADIS16220_MSC_CTRL_POWER_SUP_COM_AIN2	BIT(0)
 
 /* DIO_CTRL */
+
 #define ADIS16220_MSC_CTRL_DIO2_BUSY_IND     (BIT(5) | BIT(4))
 #define ADIS16220_MSC_CTRL_DIO1_BUSY_IND     (BIT(3) | BIT(2))
 #define ADIS16220_MSC_CTRL_DIO2_ACT_HIGH     BIT(1)
 #define ADIS16220_MSC_CTRL_DIO1_ACT_HIGH     BIT(0)
 
 /* DIAG_STAT */
+
 /* AIN2 sample > ALM_MAG2 */
 #define ADIS16220_DIAG_STAT_ALM_MAG2    BIT(14)
+
 /* AIN1 sample > ALM_MAG1 */
 #define ADIS16220_DIAG_STAT_ALM_MAG1    BIT(13)
+
 /* Acceleration sample > ALM_MAGA */
 #define ADIS16220_DIAG_STAT_ALM_MAGA    BIT(12)
+
 /* Error condition programmed into ALM_MAGS[11:0] and ALM_CTRL[5:4] is true */
 #define ADIS16220_DIAG_STAT_ALM_MAGS    BIT(11)
+
 /* |Peak value in AIN2 data capture| > ALM_MAG2 */
 #define ADIS16220_DIAG_STAT_PEAK_AIN2   BIT(10)
+
 /* |Peak value in AIN1 data capture| > ALM_MAG1 */
 #define ADIS16220_DIAG_STAT_PEAK_AIN1   BIT(9)
+
 /* |Peak value in acceleration data capture| > ALM_MAGA */
 #define ADIS16220_DIAG_STAT_PEAK_ACCEL  BIT(8)
+
 /* Data ready, capture complete */
 #define ADIS16220_DIAG_STAT_DATA_RDY    BIT(7)
+
 #define ADIS16220_DIAG_STAT_FLASH_CHK	BIT(6)
+
 #define ADIS16220_DIAG_STAT_SELF_TEST	BIT(5)
+
 /* Capture period violation/interruption */
 #define ADIS16220_DIAG_STAT_VIOLATION_BIT	4
+
 /* SPI communications failure */
 #define ADIS16220_DIAG_STAT_SPI_FAIL_BIT	3
+
 /* Flash update failure */
 #define ADIS16220_DIAG_STAT_FLASH_UPT_BIT	2
+
 /* Power supply above 3.625 V */
 #define ADIS16220_DIAG_STAT_POWER_HIGH_BIT	1
+
 /* Power supply below 3.15 V */
 #define ADIS16220_DIAG_STAT_POWER_LOW_BIT	0
 
 /* GLOB_CMD */
+
 #define ADIS16220_GLOB_CMD_SW_RESET	BIT(7)
 #define ADIS16220_GLOB_CMD_SELF_TEST	BIT(2)
 #define ADIS16220_GLOB_CMD_PWR_DOWN	BIT(1)
-- 
2.5.0


