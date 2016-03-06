X-GM-THRID: 6256792083376373760
X-Received: by 10.66.218.8 with SMTP id pc8mr14068430pac.45.1457298877618;
        Sun, 06 Mar 2016 13:14:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.46 with SMTP id v14ls690873igr.4.gmail; Sun, 06 Mar 2016
 13:14:37 -0800 (PST)
X-Received: by 10.66.142.230 with SMTP id rz6mr14193401pab.31.1457298877281;
        Sun, 06 Mar 2016 13:14:37 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y20si2635155pfa.2.2016.03.06.13.14.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 13:14:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 63so6788893pfe.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 13:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=b+65HJUJ3JRfDcklwTnfu8mYEKAthj5AUAeUlvAkyXg=;
        b=zpTA+aHC+oDwzSJ236pM0/ghyudjZr7IM2Vjmg9osm+h47l5SAY313Rdo3EJ7STE2q
         HNGDZIScucWr7dZ2Sk7BhO29meeHJ40vciirbxb2oph3+WFARXt9oc4osXBND92A0OJX
         m/JbUfN3kDCvmUxFHdYd7FmK4hB4/0IJZJ8I5AR8A68BAH+lxNZJAXsGXyzHiUFuqc4z
         kKxVEt21OXb4DVR4oGGupVNL4h4FtAzyneZCVeqTGXbgcOgpq2ZTCD+vbwlJWtz+O+3d
         psBz/oQuU0W6aCgedlG9Y5V3x39uIHyCoo522vVl93uRymwQ02MGD0heI065+bruk18P
         7MRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=b+65HJUJ3JRfDcklwTnfu8mYEKAthj5AUAeUlvAkyXg=;
        b=S4N5ibCS2GUyNwazsAUoG/A6vRmLCHAT0Uq1IE+JVcE974bMB3rdh5ndkuzAygahXy
         ap4LR4V6UIaZ0W+zu2rA2Qi4XhOm9xJHjNqf2obNz0Cmn+og/UQAS8K4BV5yZ4eh1GUt
         tUMYIzMxwasYShKaXiwu+1Fs9rVC6oWZ++FdjxRAJ0wgOUkWcpqTR4rclabN5D8rKNgI
         9NfX5/DD2ZtFXSC5XxtbOuFyJWb/Y16lGiEFBppP1vjm+o+K+IQyujE+eIgaR1QnXge4
         0ar7o+U/EltsYWMgHXHGKeEK7fxGWiYUPQ+TjlX28iR0+Usk/M+j1vCBYW9J9GNaPYjm
         yk+A==
X-Gm-Message-State: AD7BkJLJs15iY6qTVjsTWtkyp5Z5OCr3HtdpTKoCWv0BsqlnGlTEsQfLB3g75Pd62Lv/XQ==
X-Received: by 10.98.34.18 with SMTP id i18mr21055575pfi.26.1457298877161;
        Sun, 06 Mar 2016 13:14:37 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id a22sm328925pfj.2.2016.03.06.13.14.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 13:14:36 -0800 (PST)
Date: Sun, 6 Mar 2016 18:44:59 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/5] Staging: iio: ade7754: Remove unnecessary goto.
Message-ID: <cb8034a7a059d09e5cc7680a22642e9f8e8c16db.1457269114.git.bankarsandhya512@gmail.com>
References: <cover.1457269114.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457269114.git.bankarsandhya512@gmail.com>
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


