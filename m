X-GM-THRID: 6264247085046956032
X-Received: by 10.98.70.152 with SMTP id o24mr24524936pfi.6.1458590435629;
        Mon, 21 Mar 2016 13:00:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.43 with SMTP id h40ls3529663qge.39.gmail; Mon, 21 Mar
 2016 13:00:35 -0700 (PDT)
X-Received: by 10.141.7.2 with SMTP id j2mr24907331qhd.10.1458590435000;
        Mon, 21 Mar 2016 13:00:35 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h69si3610179pfj.0.2016.03.21.13.00.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:00:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q129so32437351pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 13:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tqz8YFhSAMhrIminEsr3h4xS0LcMEYRdf3vzVQzhh0s=;
        b=OsfRWVqBOqUconRXA1EmgxjjqW6eSzIKEasUl/h4o3kPNt5qDmoriAkcAgkqjzDyKG
         78s6EO5FjZfPaHQ6zoYWaiRh8nvCnz/uhiVAimcC0snBCZSdejFeXEnXzIvu81ZeX7ua
         jEg49KhJklw3rRkkjgABT9y0TJFDYrXtc5Vu3BFYwc7Y2ftr025mbveYa7wRK0HRgMR/
         DWjIMRB0bNwEv3KN/mSjj95mi4zF1tgB8PazA52IARsavx2Jf1F/4seZKAPuWFSkMq3y
         lCbDETdlw0/nwcM0KCqlgcKBG6rs1p1fQaQMZ8oxbr1C/AUCvlJKAWQIBJ16NLzwM4Kq
         /Flg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tqz8YFhSAMhrIminEsr3h4xS0LcMEYRdf3vzVQzhh0s=;
        b=irENLAUVIPMQ1KpWmxUtwiAL9CRcwzhx1Sewm1grSUOuzW/OTe/Kaukj2AWL4d4tOG
         mhkrHjCg/saxaBQt2EgR1wzliV+zuLZLZuWdK5Ma6v0neJWhd9sH6QLGqv6bBnUruU5J
         xjx9hUrrhNbiBP6GN6h3jqnxboB6n698WFlKXfV4mHOFIpeukLodpYooxjFdkxI/m7GY
         j7ds4OYNhgLIV2GG0RlBXeuK6UagLgPKm/JgikV68UMomO/TrVANX5Mk8Phw5CxC/4pB
         Oize+KtMxoMMVwlThpzUPPJrzR0IJR2soMlQDf2miaVC7+KZdJd9riMo4SXAXAfvm8z/
         gleA==
X-Gm-Message-State: AD7BkJLmPcO9quvfpuzB2Z6bc59CULeCp46O+kW0qu1A4XYN8/DVpsUUtNpxlE5PWPZCmg==
X-Received: by 10.66.218.196 with SMTP id pi4mr48081794pac.147.1458590434819;
        Mon, 21 Mar 2016 13:00:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id z68sm42651443pfi.19.2016.03.21.13.00.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 13:00:34 -0700 (PDT)
Date: Mon, 21 Mar 2016 18:31:45 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] Staging: rtl8188eu: rtw_efuse: Use sizeof type
 *pointer instead of sizeof type.
Message-ID: <f5ebff148478b21732288113ef1505f2a6d48a42.1458564530.git.bankarsandhya512@gmail.com>
References: <cover.1458564530.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458564530.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof type *pointer instead of sizeof type.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index 19f11d0..cd64045 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -107,7 +107,7 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 	if (!efuseTbl)
 		return;
 
-	eFuseWord = (u16 **)rtw_malloc2d(EFUSE_MAX_SECTION_88E, EFUSE_MAX_WORD_UNIT, sizeof(u16));
+	eFuseWord = (u16 **)rtw_malloc2d(EFUSE_MAX_SECTION_88E, EFUSE_MAX_WORD_UNIT, sizeof(*eFuseWord));
 	if (!eFuseWord) {
 		DBG_88E("%s: alloc eFuseWord fail!\n", __func__);
 		goto eFuseWord_failed;
-- 
1.8.3.4


