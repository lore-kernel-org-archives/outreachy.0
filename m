X-GM-THRID: 6256792083376373760
X-Received: by 10.107.44.67 with SMTP id s64mr20317894ios.29.1456773958890;
        Mon, 29 Feb 2016 11:25:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.25 with SMTP id j25ls1614746ioo.59.gmail; Mon, 29 Feb
 2016 11:25:58 -0800 (PST)
X-Received: by 10.50.150.98 with SMTP id uh2mr11345368igb.2.1456773958598;
        Mon, 29 Feb 2016 11:25:58 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id y20si1809104pfa.2.2016.02.29.11.25.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 11:25:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id yy13so9044206pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 11:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vz4MCNnVOwSqscehDaxOQr5k4ccbMEl53YJZRtzaEeI=;
        b=vkNa8xiaxRGWoJzNdBAG09UdXY3nS0WLOTc2YCqxRFz9aOLSDD1jabru3tNmPg0Kc6
         uJ+wnRMQBn7jCoqyOHACh3IzlYKB/4lW2RZSAHgayyJBr0OKFsA4EN/q9U6h7E7O10cl
         WW/D4FR5xNDhH5aU+13v6Cy+sWenXFGb9pTsWDSXj5ihnUIl2XKhEEE6I9N45L9PD1KI
         4wZTCGVfoQ+3etGnZ8blplcbS+ojtZXTro/Ii7WUH8SyNqMNaS85AkInAXOIMsAbBgY3
         viaUF9xm9OnVzWJKx0Cc+Ok3ufW5Y709W/GMoBbrb9HY5C5mZlYgTAcZwYS+U6DRGdCd
         FePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vz4MCNnVOwSqscehDaxOQr5k4ccbMEl53YJZRtzaEeI=;
        b=mBX6l+vpg60qxDmE2i3nJGrzmJZJcgf+c3LbFZusO/Xp+LrJGyYWcghUYidiWhhYn2
         rjfqHoYqotnngKf1n6r2N9XLyd9ixom3SLW8+BpkjB0Gc5ruP8TxAJ5xrG46SbRGu+QI
         r7DUfW5BUxqB2kdlUSbOdG9Ug7mJNTdce/kvfECTIe+1kESulRMaFG/K1f+h1h+iU51+
         GgozP5pJhuaoGdtkisNqtd8tMnn7oJlu06K/tqilb59xkqz1seSDRXJIjipIfDXprvL/
         Jpcx2gf1B0jfKwd3me3iML2zTdmiCiEXdM73Fb63dOvIG6Cw87iH+UfqaB/NpioK5NXf
         fluQ==
X-Gm-Message-State: AD7BkJIaMFkb7r9JnPh/hlrPAABYiQuO+uNxENB/GRba273NklbCMm7SASY8W8zaeJ8cpQ==
X-Received: by 10.67.12.175 with SMTP id er15mr24342100pad.70.1456773958413;
        Mon, 29 Feb 2016 11:25:58 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.65])
        by smtp.gmail.com with ESMTPSA id q8sm39856671pfa.70.2016.02.29.11.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 29 Feb 2016 11:25:57 -0800 (PST)
Date: Mon, 29 Feb 2016 16:56:04 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] Staging: iio: ade7754: Remove unnecessary goto.
Message-ID: <9e4e14d33fb7f6f9eb3255b263773384cfc573ff.1456743650.git.bankarsandhya512@gmail.com>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456743650.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.
Used below semantic patch to detect the unnecessary goto:
@r@
expression ret;
identifier f,l;
statement S;
position p;
@@

(
if (<+...f(...)...+>) S
|
if@p (...) return ret;
return ret;
|
if@p (...) goto l;
l:
return ret;
)

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7754.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 1e95068..6e931cd 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -356,8 +356,6 @@ static int ade7754_set_irq(struct device *dev, bool enable)
 		irqen &= ~BIT(14);
 
 	ret = ade7754_spi_write_reg_16(dev, ADE7754_IRQEN, irqen);
-	if (ret)
-		goto error_ret;
 
 error_ret:
 	return ret;
-- 
1.8.3.4


