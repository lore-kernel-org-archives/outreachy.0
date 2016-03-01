X-GM-THRID: 6257131864000036864
X-Received: by 10.182.105.133 with SMTP id gm5mr17551276obb.41.1456860879920;
        Tue, 01 Mar 2016 11:34:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.168 with SMTP id k8ls298584igx.6.gmail; Tue, 01 Mar 2016
 11:34:39 -0800 (PST)
X-Received: by 10.66.141.102 with SMTP id rn6mr18626219pab.26.1456860879444;
        Tue, 01 Mar 2016 11:34:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ff2si5005399pad.2.2016.03.01.11.34.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:34:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id l6so1990050pfl.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 11:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HrWoKXUar/nqGYB0byirzQHADzSxJGQNgXP4/xn6IUI=;
        b=KfyY0aLN9l2IARBNLK8Y+uRHd7f45rFcGlK0sTD4eNBD1xYG/fIodifrWE1CWz4GSI
         Uajicv1ahR7SPUbwC1O2fUpRiLroI0/Xpi/L63av9aq9xIQ/tzWFEE6mYZTp7T9IlT41
         UXaG6Pw8susy76MnIbv1Uyw3nDVjEZBfjMOhoHk9bjyPd7qowbXEwNfTSEQSeem/ce+4
         Wb4Ie/q2oKSTVofOQUiO2phsHIN429823iHqAVyaVkYCBzCxYIL1T7FrLupQCe8XImCb
         wekr2VOl54L3IVwoII/CgoC8W30csoAqoc+LvP49p6ipzU1QPXhQGyMSZ1FGX3ps5nv9
         Gbhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HrWoKXUar/nqGYB0byirzQHADzSxJGQNgXP4/xn6IUI=;
        b=cJg1DMc53/4GPHQ3aC3MY3TK1kBsyXv/lirVu+IGHun9ZgBeO1MCFV3xtIdFUIVs5+
         7VJoIJVNttBMLzsDR4Y4HoeBsfQ+4Od5N2GRj+mbDPKiSCql3x7jkix9Jo6ATnUERKXc
         XnH0QYPhRiJhyPPvQjQrgXQTkTc0uaNUacMV/NPsRfVe62jPl1UnoGLK1otaqQC6XFoa
         9Tc1+1nIF+/b51FD5wq0M4mXi1WOKnySsmJbf/ckmw2DKj3QDRPihVfGGHvlYXybbzMO
         L/tDyUkVCLA5AebukQUWYmY8XR4V7HqZNDqnga3vQbTn6NQjMzba7LIxSKF+lemZodaT
         dU+w==
X-Gm-Message-State: AD7BkJKX3j6Pn+kIRNgaaNrZsC/TAAoDsTvmoX4YGvDPKEGZFXKRGI9PU3CNhD34E2WySQ==
X-Received: by 10.98.19.12 with SMTP id b12mr32063035pfj.29.1456860879302;
        Tue, 01 Mar 2016 11:34:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id ko9sm47454530pab.37.2016.03.01.11.34.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 11:34:38 -0800 (PST)
Date: Tue, 1 Mar 2016 17:04:46 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] Staging: rtl8188eu: rtw_efuse: Do not print message
 if kzalloc() failed.
Message-ID: <21dfdc07a0175049b8996ecc93bad8a1f8ca8a20.1456830070.git.bankarsandhya512@gmail.com>
References: <cover.1456830070.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456830070.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
changes in v2:
* Remove unnecessary braces of if statement.

 drivers/staging/rtl8188eu/core/rtw_efuse.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index fd8cf47..cca42e5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -104,10 +104,8 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 	u8 u1temp = 0;
 
 	efuseTbl = kzalloc(EFUSE_MAP_LEN_88E, GFP_KERNEL);
-	if (efuseTbl == NULL) {
-		DBG_88E("%s: alloc efuseTbl fail!\n", __func__);
+	if (!efuseTbl)
 		return;
-	}
 
 	eFuseWord = (u16 **)rtw_malloc2d(EFUSE_MAX_SECTION_88E, EFUSE_MAX_WORD_UNIT, sizeof(u16));
 	if (eFuseWord == NULL) {
-- 
1.8.3.4


