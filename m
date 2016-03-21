X-GM-THRID: 6264247085046956032
X-Received: by 10.31.169.130 with SMTP id s124mr24738463vke.1.1458595119241;
        Mon, 21 Mar 2016 14:18:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.19 with SMTP id 19ls102713ote.93.gmail; Mon, 21 Mar 2016
 14:18:38 -0700 (PDT)
X-Received: by 10.157.46.196 with SMTP id w62mr2205376ota.17.1458595118798;
        Mon, 21 Mar 2016 14:18:38 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id sf5si4257598pac.1.2016.03.21.14.18.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 14:18:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x3so32153263pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 14:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=t4SoSFsiS69DcKU4lsXf4jE4ZmpCXsvv+JsJwB8HECQ=;
        b=w61EkHHs3cc49g5HsQXq+VMEauggFHj7plx7AbbTgl/xM0zftT00T+9jaUfLB4zlbo
         b2c1WbWvTQyPaD5wYI+PePgytjLJEizE+bZiQN7q5a0s1m9c8y13g+AoEiWmAcO+nXhK
         qkn1bq0HsPsMpgr1o/b0O6YcWamr91ro4JnmI7zqc+V0hx9U++o3JkFA55z2kqWQhlUf
         Cr/bzoFwN2iZ2bx8x4L6Zfiqq8OxXbCmi7t0I3vi0jifZ+Z6Vu5U4eCLUXnJsdj1KuUX
         fd7dLzsz8loe5T+GucSjyZI10rxhz/1c6ZwF/fSdnavyAM5jfcnbRX3Riz6Q6CyFEqjz
         NSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=t4SoSFsiS69DcKU4lsXf4jE4ZmpCXsvv+JsJwB8HECQ=;
        b=NnJzoHVxzdUMjo7XTAKqyOHGRKMMJ6wkVibedDJZzC3Dor2MB5HLdRQMfnY8YxzGkM
         reLPL9d/Fr7NiZmFk9oGe8AW43V4GfIcc/isBvTFuIOf0K8ADH6rp4lX3XvGUdT12lHj
         JF6p5rrcwiea9o4FJ0MqwWtFINgKtDcN6PsBWELQL9nJRRTYh/pMG6Q9SUHv7DqYDiTI
         pNnP4Zb3MuZe7JmKCcnyKHn94fOjkE8y1tOFOnfTrTHa3DNiemUucd80x42q9AkAdH5k
         nVEa7jFzor3hgveY7G1PsAjvukpRYRyG9fHhC+F+IzXJDkyb7aWeO1N38BVqwmAE0cL2
         5F3g==
X-Gm-Message-State: AD7BkJJSS/pzPHOS3maUbdhMxP3Vk6943wBf2WUoHkIHMnGzcU6ri2ON91LAzNNsZ4A4Gw==
X-Received: by 10.98.72.83 with SMTP id v80mr3673465pfa.113.1458595118618;
        Mon, 21 Mar 2016 14:18:38 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id b74sm42842027pfd.24.2016.03.21.14.18.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 14:18:38 -0700 (PDT)
Date: Mon, 21 Mar 2016 19:49:51 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/3] Staging: rtl8188eu: rtw_efuse: Use sizeof type
 *pointer instead of sizeof type.
Message-ID: <f5ebff148478b21732288113ef1505f2a6d48a42.1458569051.git.bankarsandhya512@gmail.com>
References: <cover.1458569051.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458569051.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof type *pointer instead of sizeof type.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
changes in v3:
* Adding changes of v2 to each patch of patchset.
changes in v2:
* Correcting the commit message.

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


