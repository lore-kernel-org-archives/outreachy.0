X-GM-THRID: 6257131864000036864
X-Received: by 10.50.13.101 with SMTP id g5mr11573913igc.6.1457381871883;
        Mon, 07 Mar 2016 12:17:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.98 with SMTP id a2ls887404obh.80.gmail; Mon, 07 Mar
 2016 12:17:51 -0800 (PST)
X-Received: by 10.182.112.193 with SMTP id is1mr18227955obb.38.1457381871454;
        Mon, 07 Mar 2016 12:17:51 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si3431917pad.2.2016.03.07.12.17.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 12:17:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 184so8656493pff.1
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 12:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bnr9QjWFXKWeUXREc1sB5DZ3O+bSM7D8eG5qQg/7KkQ=;
        b=DeN+mzv12rYG6FcROoIKrvyekVVjg1d1j0I3NzZ1DyVXBZEYOMZfKDMwPb843z8FWI
         teTCqJzoUMw+Mc9PHhykpEYPZo5J0QSZ1Egq0MMvGpT/xxGHmQ1Vm82lRLfygCWA/8kO
         Mq/eVecC5n22Nz6N4rIDyBSbtKD/NNcCG0pE9FDvC+jpSPq4DXpMDQtl6buugw556Izi
         sQU11AAF6jx/gLitYzxfo5JcXO5QoifnEZ57bL50QiWVeqX9+/0onaqSw5iwpY0XZjR1
         WC2c5TougXMbA20siMuhiR0Ok2NvTmk2Ov5SLQ4wK4HLYkrBKYER9cjK5QzQPYGUd8z9
         1kVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bnr9QjWFXKWeUXREc1sB5DZ3O+bSM7D8eG5qQg/7KkQ=;
        b=RgEYXScsZXfRaRWyjmwVO5pzitbGWMhh0C8AKsXal2cl4PkaHlWEk5MALCKIOGWup9
         9iheYPF6SXNu2HrjKRMd4L0IJtfXNfc+hSGFPFzt0bmk7PviLVGB/0N0t87vgqKqUYji
         uuX5eHlOH2SwxTmOPdLF99x5mCX7kjYU9G6gTMt3UHrfnabgj/7pKEbT7O9mDDAsawS2
         K/+1HOPLRw2/HTm9pXaAdEHT8mdpHK4P1yDlc9Ijakzv1hvyKenJ/uMlEv130OXcSYzp
         7FRsWGhC8bhMhEp/C93+6pBobFnNVacr+CPrfEtNjlpeIHAG0fdc0ewvy6AVLKEndTLa
         isAQ==
X-Gm-Message-State: AD7BkJKhkGeqUvVcRcKs2nZeDVLznZjzHCKHOMvPR0sTn4/cadYZF0ecO6M93To/QYR7FA==
X-Received: by 10.98.16.69 with SMTP id y66mr36086645pfi.86.1457381871266;
        Mon, 07 Mar 2016 12:17:51 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.136])
        by smtp.gmail.com with ESMTPSA id n19sm17792956pfi.53.2016.03.07.12.17.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 12:17:50 -0800 (PST)
Date: Mon, 7 Mar 2016 17:48:16 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: rtl8188eu: rtw_efuse: Do not print message if
 kzalloc() failed.
Message-ID: <20160307121816.GA7205@sandhya>
References: <cover.1457351977.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457351977.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
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


