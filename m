X-GM-THRID: 6264236778940530688
X-Received: by 10.31.157.213 with SMTP id g204mr20577911vke.14.1458506318832;
        Sun, 20 Mar 2016 13:38:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.171.71 with SMTP id as7ls1368676obc.69.gmail; Sun, 20 Mar
 2016 13:38:38 -0700 (PDT)
X-Received: by 10.182.148.227 with SMTP id tv3mr20346005obb.30.1458506318531;
        Sun, 20 Mar 2016 13:38:38 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id sf5si3463082pac.1.2016.03.20.13.38.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 13:38:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n5so26625793pfn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 13:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=j2mCJ4WoXjWxFl9f97ZF2y4/Feqvzuk30bSW6QgFj6Y=;
        b=Pt/M+4g5AFFeZqII3flUrkm/8mmYn3Q1nWuiSQJ/4hij0q5qFe/tTmPaqlCbZ5x0f+
         WR0dgXSwjRhCDmxVqA2DsDrWPu+gqIZ8mXzY3yhhKXMjpsYDYqZYZ5ewg0ohLqyDGDRv
         bkl9adw6D9svNY5sLmfETqvV4AFbkWujm187Dqp10FpLDwgm8/I3xrGlnWJtSN8wFBb+
         lVhZ4SCUouthf4pXXUluKAl1lht7Y+5BhHd9jFhUel18L3bW3BuJ4rBe58YIfpAA/yJZ
         9ngiaGtPxDEN5gke3/rng2R/IM4SmnKdHjJz4GbTYehnyaK8Zzx0tl2jFqtOtyMkihFR
         b6bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=j2mCJ4WoXjWxFl9f97ZF2y4/Feqvzuk30bSW6QgFj6Y=;
        b=jHYpvPQNyo3Zkn5n96oTIEB2hrmPOvRh0m2F/zDT962KXJtJ7ozO4ou+YaNgTKB+F9
         PNDy7Ey1hVNWiXPBepkjanugX5RjaHvaTE/dqcQEJ38uu+hnPTIZmXQzLTE5DORwBKQE
         ye/ivE9QMCeBvHofXzxL+CYK/V0zGxdYYn6COd9/N1xX/xYwBWbSfW9hvvo/Ff/lBhd2
         tmSMAyx27y26Fe205SQME0Ijs0beCaSNIvax8Po3DwLGmVRzESZfIuS3whaqQYoEx7/8
         lM16UtPpdRyRATfnek1oo8MkUlSKUUxDWwWIG3lVhsoXKPuKrKPyJKXrDyVWl4h8T0HD
         4gtw==
X-Gm-Message-State: AD7BkJJ6Z1U1sOryFf0tZ6If+Bnme8Jot4bGePsN+Ht3lTTidQcFTh3jgfwNSOG5DzFI+w==
X-Received: by 10.98.10.25 with SMTP id s25mr39713410pfi.158.1458506318375;
        Sun, 20 Mar 2016 13:38:38 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m87sm35273496pfj.38.2016.03.20.13.38.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 13:38:37 -0700 (PDT)
Date: Mon, 21 Mar 2016 02:08:36 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtl8712: usb_ops_linux: Clean up tests if NULL
 returned on failure
Message-ID: <c0613911b7c45128dc8cd869b7bdc24a3a733653.1458506158.git.bhaktipriya96@gmail.com>
References: <cover.1458506158.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458506158.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:

@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index 454cdf6..6f12345 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -504,7 +504,7 @@ int r8712_usbctrl_vendorreq(struct intf_priv *pintfpriv, u8 request, u16 value,
 	u8 *palloc_buf, *pIo_buf;

 	palloc_buf = kmalloc((u32)len + 16, GFP_ATOMIC);
-	if (palloc_buf == NULL)
+	if (!palloc_buf)
 		return -ENOMEM;
 	pIo_buf = palloc_buf + 16 - ((addr_t)(palloc_buf) & 0x0f);
 	if (requesttype == 0x01) {
--
2.1.4


