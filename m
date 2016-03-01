X-GM-THRID: 6256792083376373760
X-Received: by 10.129.58.16 with SMTP id h16mr18141683ywa.56.1456865503614;
        Tue, 01 Mar 2016 12:51:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.148.68 with SMTP id w65ls2000907iod.20.gmail; Tue, 01 Mar
 2016 12:51:43 -0800 (PST)
X-Received: by 10.107.9.213 with SMTP id 82mr24503697ioj.10.1456865503173;
        Tue, 01 Mar 2016 12:51:43 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si4687687pab.0.2016.03.01.12.51.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 12:51:43 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id w128so11541355pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 12:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JHker82Y1lWsSsATt15OrqS+Qd9f0493DIYRuSNgInI=;
        b=Noqf26En5BtKDW9WbKLBzWuOJmv4/zsifmDr1jQf1zvfAqJfszIty8aHWbolH8R8AX
         oTMfJ+CSZndZMmg1ohkA2oWoFWHEqFaJwjQsdjxSwhSz1gYM8ufZYPOZvWbYrltWiC6s
         hZxmZCTw/pRvMnFZ2WHWX85mhaL0sl2asnV4FehMG+Jb/6iXC1E34NuZEgkYggn3JhO2
         H7A82Y4mm6iAoBRrGDZ55PYMzFrcytVs8fwZx/YsEVCxAeysh15XKd6NdeMChsFvIBzw
         2eRTrmJhNLINtY1fZhAdgmXjbeRZmHM9vVsKE3jXIbJyAaQjZmdO0MwuIqurECYamdsN
         HEPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JHker82Y1lWsSsATt15OrqS+Qd9f0493DIYRuSNgInI=;
        b=hhAHdkEJ+WYs6pvplASPFvOsrfh3SsxFpAHo7w5kmgDo8k7/4XVjBSHRi2sWEPdKa8
         s9jgB+rsgj2+aBLGb3Jru/0yEyrox+bDVt087UymkO02Mtw7Mk5HniTCRy/kFbn6mQDf
         uWmJZ4A+RCp1vBzqfCT+GTpqS2gLft1V9NDPd/5xyIAzXQ2d7TyT3LxpedsdPfBB82f0
         RD2YKz9qQ2TtBu6Yo2inkvRGRKFgbOrxAK7pWza8mE5b9XGuxgizallNy8s/qbW7iDQa
         u19LkW3dntGCXSHwVl62EYL7iUQzn7Lx8jqK95OXLa0WHakhnO61NysZTDOADhD0ee5U
         +0RQ==
X-Gm-Message-State: AD7BkJIlGOxFTCnrA+YAYRJqWtZXc8fsuNt9JjshLaRgHol2n3Vu8o8K/Eit9hpjASHBsQ==
X-Received: by 10.98.65.206 with SMTP id g75mr33051664pfd.94.1456865502990;
        Tue, 01 Mar 2016 12:51:42 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id ac1sm47661429pad.41.2016.03.01.12.51.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 12:51:42 -0800 (PST)
Date: Tue, 1 Mar 2016 18:21:49 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/5] Staging: iio: ade7758_core: Remove unnecessary goto.
Message-ID: <102b866d53918941b55224ed6fd482505cb14538.1456835561.git.bankarsandhya512@gmail.com>
References: <cover.1456835561.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456835561.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 0db23e4..40f5afa 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -423,7 +423,7 @@ int ade7758_set_irq(struct device *dev, bool enable)
 
 	ret = ade7758_spi_read_reg_24(dev, ADE7758_MASK, &irqen);
 	if (ret)
-		goto error_ret;
+		return ret;
 
 	if (enable)
 		irqen |= BIT(16); /* Enables an interrupt when a data is
@@ -432,10 +432,7 @@ int ade7758_set_irq(struct device *dev, bool enable)
 		irqen &= ~BIT(16);
 
 	ret = ade7758_spi_write_reg_24(dev, ADE7758_MASK, irqen);
-	if (ret)
-		goto error_ret;
 
-error_ret:
 	return ret;
 }
 
-- 
1.8.3.4


