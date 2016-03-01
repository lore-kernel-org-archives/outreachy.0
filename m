X-GM-THRID: 6256792083376373760
X-Received: by 10.140.150.210 with SMTP id 201mr14959178qhw.28.1456865400693;
        Tue, 01 Mar 2016 12:50:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.112 with SMTP id j103ls3752404qge.57.gmail; Tue, 01 Mar
 2016 12:50:00 -0800 (PST)
X-Received: by 10.129.79.21 with SMTP id d21mr18923999ywb.46.1456865400178;
        Tue, 01 Mar 2016 12:50:00 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id y20si2695413pfa.2.2016.03.01.12.50.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 12:50:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id y7so11090502paa.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 12:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=b+65HJUJ3JRfDcklwTnfu8mYEKAthj5AUAeUlvAkyXg=;
        b=fM7Tu8Kq37sXDh7ofkRU34lQcom9Rg2rMu2gfzBeMbkjiHYggkL9YHKXfZe8MvfejS
         W6ACQ1UcEFCXy4jF2pSgrfQTQUBXJhRHo/eWbwJ9LG5YRfmHBkNuBpMqPN7dwQNFqJNP
         Qyczs1z01MgULrJ7gmJNUhjSLqC5q5zywNiPDv2mMtO7pYzm2Hf0M4FMjXS7lm/G/Ah8
         +wh3+OFnJz9aitHTvDb1MEkG/34S3GCw389Eg5cJ3WgEf/nPttXjTchbVnHgIRe9Hf2A
         eKsHVvrtsJMzrDk/lq4h2bfc+9jA6QLFPlQ/VYq/H0CkmlvqLbRzXKsonRetgB9XfFvJ
         85Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=b+65HJUJ3JRfDcklwTnfu8mYEKAthj5AUAeUlvAkyXg=;
        b=k8ekPc8SFt6EOKFQUdO1G6xEpQ5Mz9v5+F2o0XAk7pynRd9BkI91fu9sUnlr8SrMA/
         ZqTKrdGmKB+kM1S2opfFs2xXv4jMzYj1NrART5YuzcoXR4EWf71QD0hYCdpMGlnhn4I6
         imLdVIoYnbvPtQ5ibU1F8YYVkD1Nmm2XKdzzcNOOBukeKh/ocxkx8V9/+drEumNTzwTG
         Lp5+p5/DgX6acaEFxQILEIZ21gAv+sDRtFoi0McZVXIZDIo6fqQgwzGLFQUXoUmot3UZ
         GQ2nQwARdFBaG1be7wSPt6lOVyMcnMV2m7GMkYPozcUsqVaMZId5uKJeH+xkDpRL2GVi
         CTLQ==
X-Gm-Message-State: AD7BkJJAjhvM2AB0umnjSbdd2eIOjlH1X76iiMPDGbYn5cJBDrfbql7LuqrzURlQAsMiDA==
X-Received: by 10.66.140.70 with SMTP id re6mr7889971pab.100.1456865400015;
        Tue, 01 Mar 2016 12:50:00 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id 9sm1535229pft.44.2016.03.01.12.49.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 12:49:59 -0800 (PST)
Date: Tue, 1 Mar 2016 18:20:09 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/5] Staging: iio: ade7754: Remove unnecessary goto.
Message-ID: <2c4514a734059b41cb27ff44c83392c6613fdfdf.1456835561.git.bankarsandhya512@gmail.com>
References: <cover.1456835561.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456835561.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7754.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 1e95068..f4188e1 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -347,7 +347,7 @@ static int ade7754_set_irq(struct device *dev, bool enable)
 
 	ret = ade7754_spi_read_reg_16(dev, ADE7754_IRQEN, &irqen);
 	if (ret)
-		goto error_ret;
+		return ret;
 
 	if (enable)
 		irqen |= BIT(14); /* Enables an interrupt when a data is
@@ -356,10 +356,7 @@ static int ade7754_set_irq(struct device *dev, bool enable)
 		irqen &= ~BIT(14);
 
 	ret = ade7754_spi_write_reg_16(dev, ADE7754_IRQEN, irqen);
-	if (ret)
-		goto error_ret;
 
-error_ret:
 	return ret;
 }
 
-- 
1.8.3.4


