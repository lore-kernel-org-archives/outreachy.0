X-GM-THRID: 6256792083376373760
X-Received: by 10.140.246.3 with SMTP id r3mr8878911qhc.2.1457299105698;
        Sun, 06 Mar 2016 13:18:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.86 with SMTP id i83ls114612iod.41.gmail; Sun, 06 Mar
 2016 13:18:25 -0800 (PST)
X-Received: by 10.98.16.213 with SMTP id 82mr3816811pfq.8.1457299105248;
        Sun, 06 Mar 2016 13:18:25 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r75si2564932pfr.0.2016.03.06.13.18.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 13:18:25 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so6794063pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 13:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JHker82Y1lWsSsATt15OrqS+Qd9f0493DIYRuSNgInI=;
        b=kvidtolYzpnYLKwbvjW91JAOK2J2GvVisJzemHNowGUel49ooR+JpYiaU+BsTCbL0T
         T6MUuDtRSUUqrho78pQzPQHBdXfXiOJw/3Mu4r2eXs9uQiEN1hNNxdJJSErzCPl9Be0h
         AKV77W8mL9OsZIXV/OjMYjWEngPOPgBQcpv6jxH6cPEDi72YQwhL3i3hwCYTVykzl1iP
         30TtgZmijFwhiB6eXIBz8zoEvLQarf77N4M0h+hYcCeSLlxQlk6/r18VGT8KdlhO+6WT
         75SG0gBStgEQaKhXxwPHypixBzFFEGonHwNfwi7JAvXOdDSnYwhn6vr0M/rwX+IJlsP+
         3SKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JHker82Y1lWsSsATt15OrqS+Qd9f0493DIYRuSNgInI=;
        b=U4w+EG/fICZ5h/uwZE07KsVwM6Oo9JGGaY2hLW0QxcnGTLgdOjFnkJy4GA8yIEr3iP
         YaVys2xbM/UYOAA2D1wPKQ8VmJxMRQmiy5sbotzvp/i0jndfMrLwwAEDUAPFyCSQcbik
         +P1cASfcJN1O41gApFp+7xlLDRkbIfZbz+mX2sgVvYIM0mUNr7kq+tdED9cnRiG74oaa
         kl8CbL9KgGl4qyzRwj3KO4mfJId8QKcDhWESkOeCdcVM4tYM3NeH3YSImsNqsYyv1wYK
         cMjfzY22n76WUk4ep8T57YAPp0tgZspGB+r7GufnaYI0eApbNGZ1oZ5XEzK0RMtEEm/3
         NB/w==
X-Gm-Message-State: AD7BkJJ0ck6rN9nlETJ3AhGq5a0D9b5E3aMxQ8xIPQaSt/IJH07W87pl0wobuY8PeQsX9Q==
X-Received: by 10.98.12.83 with SMTP id u80mr23181405pfi.116.1457299105139;
        Sun, 06 Mar 2016 13:18:25 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id y21sm19443289pfa.85.2016.03.06.13.18.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 13:18:24 -0800 (PST)
Date: Sun, 6 Mar 2016 18:48:47 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/5] Staging: iio: ade7758_core: Remove unnecessary goto.
Message-ID: <69594c46e5cdb01077353230cefc8941ea62ee23.1457269114.git.bankarsandhya512@gmail.com>
References: <cover.1457269114.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457269114.git.bankarsandhya512@gmail.com>
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


