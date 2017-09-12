X-GM-THRID: 6464969864933015552
X-Received: by 10.176.21.242 with SMTP id j47mr8965552uae.77.1505243094357;
        Tue, 12 Sep 2017 12:04:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.25.78 with SMTP id b75ls1734448itb.4.canary-gmail; Tue, 12
 Sep 2017 12:04:53 -0700 (PDT)
X-Received: by 10.13.241.198 with SMTP id a189mr10212923ywf.128.1505243093440;
        Tue, 12 Sep 2017 12:04:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505243093; cv=none;
        d=google.com; s=arc-20160816;
        b=NIuaep4eiS6E9vgwxZoWZ81S6Jz2pIp2XusBrENNqaoOYrKCxbMSTj/aMKL9DjrQJH
         ZvYc0Qbic40WoqDsQKUi4r7iblxRww03W0SZO/iIE2MtUDQWgH5gPeArAR2b0bHpHanL
         M5sQp49NcYiyvZS2F6YOl4bPjjPUBt3H8noGAn/0TPvH6Zq1jtpWjkphxivLum6jKi9c
         eHAbOwFjUe0HjzBvBWz7sAPHSzMvI4OrQ8AxAzRIAz6hp+d9d2Dj0KGlM39/r/qzJc+X
         cWmeRYO2DP3x96NjpEF2bnhaYCmHWZ2UUKHSi7CYMqomfhvBlg4rPWE3WBOA/8B8QUyj
         kCMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=IOHcIeUUskaO/Q5PaN1ym2PYoDBxBpq2BgiOdPZlOk0=;
        b=uwyqXcwdgKvnU3FkIHMswK+VcM57fsuata9Gx+krWjjpFdRpSRRYcfyyFK9vAlFhbh
         1L7oZ23xkDqB6f6Cy2Z5+Jm7v3Np2j22hHsQW1Aawb9uLR8R322rrGrIqB5NCs0Wfqpc
         LpdJ4hneA/PIO/PYAZHHAMpJ0cizSQbmyQWl+pJzdP3PWSCGgCHH9gkw3TNe2yU4h5lK
         W8avEm8Pt810gkY/TGxcsPr0QYhLD7zlwYGQ1+e17kO91Xl4AW4bn/u6462UKEXw5NeR
         e4+MalMngtupw+c2Ggr1GJEfTKAsROW1yfOke86r+cip/JmHEguO71wgD0tbLdl9wcXP
         zuSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JXrvbffN;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u15si439447ite.2.2017.09.12.12.04.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 12:04:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JXrvbffN;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id m30so1617049pgn.5
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 12:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IOHcIeUUskaO/Q5PaN1ym2PYoDBxBpq2BgiOdPZlOk0=;
        b=JXrvbffNy/9Cy/XZIdRXjWx+Kvne0xgQPaE+5sNWtmJxFcBvBoyiOiGHnLHgxcDl6I
         YG9fCybGc5GC71A0SLrdUtmb+Pxqz9YbkDj8W1u4KN6eNiHQj9CJPEAmfbfNvlheluzV
         iWkk6fCSpMxwgh2awhCYcd46KoCawaUNHtgvurptD5xmQUXK5UkMHv5f7MJRGh7MuSHK
         wz45loAzNpAsFM+eGlfK/G0ouFRVb5fFuTGVs3GF/Zcpg3/jwCrxtTnGX5WQkAZMrCeE
         sFqiyo5z5OkRE79odIa3oSfmN4T2j4Rv2j7S1b610q7WXfGyltH31yhqV8+/0e6aBLP3
         +WOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IOHcIeUUskaO/Q5PaN1ym2PYoDBxBpq2BgiOdPZlOk0=;
        b=ENyhUYJM0mb8JAQQQ8/BkJJ6a8ZwM/0Pb0UwmXg46hXnOqrRphNoHfcgBbHhd6xEKc
         RM/Zx3oehkeVTOyOg1D55dPcpRKJyLw8Q5BIfKRp4R9y/H/ynrMPEPePWy5K5ZsDA3Ob
         kfRWWfBH7XHLFWC0ESYfLoVpXRnxqzTKSw79eaupeuoSWP7fB1/6oJNtNr02apVF+zAr
         +22BRUwUl4zB9W5UYOC/IYgYHD2tHUCRpzdkY+tAlHCWnohv9pnS4a0H8GgMbttw3kBc
         La+G63QxygbFO0geeg8d08GKQIEX2tE0AR0Bdlh5RwYDYzJJE/ZgXH9cIhhfPSN0TOyK
         TFRw==
X-Gm-Message-State: AHPjjUiZo9ByD5Mmk+lAvvnqLrdsjdVLUIn3/hlmZS14r361NQ8FnRuJ
	e+3zOxhyL/bQ9GGX
X-Google-Smtp-Source: ADKCNb7oawV0xBIHJiNr75FWmP3ogvpXFvvM+cSEzA3ZjAWR1Vf/bdCAmhSHzgyqyl34UJrEusin0A==
X-Received: by 10.84.131.109 with SMTP id 100mr18097352pld.122.1505243092730;
        Tue, 12 Sep 2017 12:04:52 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id t65sm20998188pfk.59.2017.09.12.12.04.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 12:04:52 -0700 (PDT)
Date: Tue, 12 Sep 2017 13:04:50 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: pi433: Replace printk() with dev_dbg()
Message-ID: <20170912190450.GA14202@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch convert printk() to the preferred variant dev_dbg() and
remove unnecessary comment line.
Issue detected with checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 73aa469..d82c74d 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -136,17 +136,17 @@ static irqreturn_t DIO0_irq_handler(int irq, void *dev_id)
 	if      (device->irq_state[DIO0] == DIO_PacketSent)
 	{
 		device->free_in_fifo = FIFO_SIZE;
-		printk("DIO0 irq: Packet sent\n"); // TODO: printk() should include KERN_ facility level
+		dev_dbg(device->dev, "DIO0 irq: Packet sent\n");
 		wake_up_interruptible(&device->fifo_wait_queue);
 	}
 	else if (device->irq_state[DIO0] == DIO_Rssi_DIO0)
 	{
-		printk("DIO0 irq: RSSI level over threshold\n");
+		dev_dbg(device->dev, "DIO0 irq: RSSI level over threshold\n");
 		wake_up_interruptible(&device->rx_wait_queue);
 	}
 	else if (device->irq_state[DIO0] == DIO_PayloadReady)
 	{
-		printk("DIO0 irq: PayloadReady\n");
+		dev_dbg(device->dev, "DIO0 irq: PayloadReady\n");
 		device->free_in_fifo = 0;
 		wake_up_interruptible(&device->fifo_wait_queue);
 	}
@@ -167,7 +167,8 @@ static irqreturn_t DIO1_irq_handler(int irq, void *dev_id)
 		if (device->rx_active)	device->free_in_fifo = FIFO_THRESHOLD - 1;
 		else			device->free_in_fifo = FIFO_SIZE - FIFO_THRESHOLD - 1;
 	}
-	printk("DIO1 irq: %d bytes free in fifo\n", device->free_in_fifo); // TODO: printk() should include KERN_ facility level
+	dev_dbg(device->dev,
+		"DIO1 irq: %d bytes free in fifo\n", device->free_in_fifo);
 	wake_up_interruptible(&device->fifo_wait_queue);
 
 	return IRQ_HANDLED;
-- 
2.7.4


