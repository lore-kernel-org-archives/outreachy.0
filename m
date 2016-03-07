X-GM-THRID: 6259225563968307200
X-Received: by 10.28.6.14 with SMTP id 14mr1165803wmg.6.1457339516971;
        Mon, 07 Mar 2016 00:31:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.52.199 with SMTP id b190ls606628wma.28.canary; Mon, 07 Mar
 2016 00:31:56 -0800 (PST)
X-Received: by 10.28.194.212 with SMTP id s203mr750721wmf.3.1457339516360;
        Mon, 07 Mar 2016 00:31:56 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id 71si512979wmp.0.2016.03.07.00.31.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 00:31:56 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id p65so60603366wmp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 00:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5zB1WAo5QZDNltuMkQeUUdQqisCmCjHOLMQa8kIeWFs=;
        b=bHofTYZIrt3qSxQODKQKh55VMdpGSBRd7oBojv7Ck1wtMCal/94+mXoFtbM42FpQNm
         y8QK68eh3dti8KnNRFrXda5N+QPOCsfIZTkPvnFZXVPjCk0S8iKtO7oNrUpune69uMOg
         hkb64kHidusGGAiho4Xtk8dSldJeMUaH93D5MEvafx0KKG62ADKNdnCL3TT2p/Ev6oLm
         SZr0/YakZ+78C5B7iL5tfuB/dTyW6Ym/ENB4a4UPgRSKOgmH+/4nmFqisNU06EBgx5MO
         AFgrT6mwoIYJaQPiDivNS+gSCR5GTYrjKfBNnUEkI15c3euukoFws9FNoFssuKFfQ9G7
         +OQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5zB1WAo5QZDNltuMkQeUUdQqisCmCjHOLMQa8kIeWFs=;
        b=VVt4JB94VIvtnmzmgMO/kJ7bxj3vXwQxswmdXddNvFklMHenifwH9F70BbpzZAwZLd
         NvFuv/zXh99M7K9aDbwFVUKo9OunFQkKj7Amt8z6BeDW/bC5AV6P3hk91IKLNx4eGKe9
         JhWlh6uYieqzf9++6QKvK98Ro2E8G8e1apWloJzJVZ3dnW+rFcVsyhe3v68jy+sIE3TV
         VbgjehQnwzlmB5p7rhHt3yCTldd38TdMxnHurZr8ucxHT/eWm83mnwx/lDBIe9mpNy1Q
         zykDY2XeaB12UovdD0B3BfrEf39UC1KWPiVbpQ6tNXHAaztH3XF99IBhlYjYXnhLp1tC
         UBjw==
X-Gm-Message-State: AD7BkJIUWfNdRKu5ZpN4gE+wfhkyMdVON2ndIWo9Is9SFZQ6ProAmQdCtY2cTnaq5lnRww==
X-Received: by 10.28.60.84 with SMTP id j81mr11714269wma.91.1457339516202;
        Mon, 07 Mar 2016 00:31:56 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id gt7sm16710369wjc.1.2016.03.07.00.31.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 00:31:54 -0800 (PST)
Date: Mon, 7 Mar 2016 10:31:54 +0200
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: Fixed block comments warning
Message-ID: <20160307083154.GA5274@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fixed the following warning:
WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/iio/accel/lis3l02dq.h | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/accel/lis3l02dq.h b/drivers/staging/iio/accel/lis3l02dq.h
index 3f24c62..6bd3d4d 100644
--- a/drivers/staging/iio/accel/lis3l02dq.h
+++ b/drivers/staging/iio/accel/lis3l02dq.h
@@ -67,7 +67,8 @@
 #define LIS3L02DQ_REG_CTRL_2_THREE_WIRE_SPI_MODE	0x02
 
 /* Data alignment, default is 12 bit right justified
- * - option for 16 bit left justified */
+ * - option for 16 bit left justified
+ */
 #define LIS3L02DQ_REG_CTRL_2_DATA_ALIGNMENT_16_BIT_LEFT_JUSTIFIED	0x01
 
 /* Interrupt related stuff */
@@ -77,7 +78,8 @@
 #define LIS3L02DQ_REG_WAKE_UP_CFG_BOOLEAN_AND		0x80
 
 /* Latch interrupt request,
- * if on ack must be given by reading the ack register */
+ * if on ack must be given by reading the ack register
+ */
 #define LIS3L02DQ_REG_WAKE_UP_CFG_LATCH_SRC		0x40
 
 /* Z Interrupt on High (above threshold) */
@@ -94,7 +96,8 @@
 #define LIS3L02DQ_REG_WAKE_UP_CFG_INTERRUPT_X_LOW 0x01
 
 /* Register that gives description of what caused interrupt
- * - latched if set in CFG_ADDRES */
+ * - latched if set in CFG_ADDRES
+ */
 #define LIS3L02DQ_REG_WAKE_UP_SRC_ADDR			0x24
 /* top bit ignored */
 /* Interrupt Active */
@@ -123,7 +126,8 @@
 #define LIS3L02DQ_REG_STATUS_X_NEW_DATA			0x01
 
 /* The accelerometer readings - low and high bytes.
- * Form of high byte dependent on justification set in ctrl reg */
+ * Form of high byte dependent on justification set in ctrl reg
+ */
 #define LIS3L02DQ_REG_OUT_X_L_ADDR			0x28
 #define LIS3L02DQ_REG_OUT_X_H_ADDR			0x29
 #define LIS3L02DQ_REG_OUT_Y_L_ADDR			0x2A
@@ -132,7 +136,8 @@
 #define LIS3L02DQ_REG_OUT_Z_H_ADDR			0x2D
 
 /* Threshold values for all axes and both above and below thresholds
- * - i.e. there is only one value */
+ * - i.e. there is only one value
+ */
 #define LIS3L02DQ_REG_THS_L_ADDR			0x2E
 #define LIS3L02DQ_REG_THS_H_ADDR			0x2F
 
-- 
2.5.0


