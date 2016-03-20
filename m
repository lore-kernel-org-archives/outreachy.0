X-GM-THRID: 6264136808663089152
X-Received: by 10.66.216.100 with SMTP id op4mr20078511pac.9.1458483099588;
        Sun, 20 Mar 2016 07:11:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.213 with SMTP id j204ls1465975ioj.42.gmail; Sun, 20 Mar
 2016 07:11:39 -0700 (PDT)
X-Received: by 10.66.139.229 with SMTP id rb5mr19218992pab.22.1458483099258;
        Sun, 20 Mar 2016 07:11:39 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 12si2919828pfb.1.2016.03.20.07.11.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 07:11:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so25920725pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 07:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QHePvJa0i4LiAuvXfguFTA5jHRXuocjHqlynP37kj5o=;
        b=qIg9FtM/LIuBQ1+xOyryditQRyf1YoF8Dy7lJl8QamvOagxKjPylUp31KJ+nFhPWUl
         O8ctL1Wk1sO+Q3Oy5XekTj+GQORnE+r5CckcAdELOQlS50v/NXLgpLCA+eLvIYiuPNVs
         +1oNL2ppEhKlvmC7Uq1nuB+avKTeDt0p7Y0X6mAlqC1GQcdxsATuH2UkUNrgpCJY41rf
         YnT2bNMnIeiZGor+MqfdC3aJyl2KelqMISG7GO7DhKdSvZe/gLGXKbVfg31T7X93/Yv0
         cStSSizpNLtlRWSsAjsp5YCtB6eNPTY0WXIlZ4INdORcHOA+m60CCpGP+yktZJViglx4
         GNKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QHePvJa0i4LiAuvXfguFTA5jHRXuocjHqlynP37kj5o=;
        b=B857h3pOBpTEI81j0gZlZIw7GjWw1oPBEErL5rpBDGPlbjHYqRU32n4kMcxcFNSa2+
         /ABJEweK91Nrw70rtQchXsW0vYctVk9HTLEMGYZFoJEgL9Jgh75Sbkj919C4UZjLoeZl
         B//UXdcZWy2EcWAbp9kLWtRHvqWhET1kvzGruqXV2S1LixtgTleP6seaDH8D1Kg1ZAdy
         NrBX1WGHAC82pwN/evf9tU4NEnuXb6bvWjnVe3KJqEBOjYJvjZiWw8NTKmWlbxXzTJZU
         G75aQds9WvCQJ1RHr59+4M684YFz4ErK34WmQ+ZXTZp4NgKQtMhB6xbjM+3udUpDtQS8
         CCZg==
X-Gm-Message-State: AD7BkJLl1QkdV8bcwvxbkAz2TKGjm6ODALm4zkOWwteZm19lBUKuMGxuexECUcvHzMUaFg==
X-Received: by 10.66.253.193 with SMTP id ac1mr38314229pad.121.1458483099113;
        Sun, 20 Mar 2016 07:11:39 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id r5sm33927100pap.7.2016.03.20.07.11.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 07:11:38 -0700 (PDT)
Date: Sun, 20 Mar 2016 12:42:49 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: rtl8188eu: rtw_efuse: Correct the argument of
 sizeof().
Message-ID: <f5ebff148478b21732288113ef1505f2a6d48a42.1458454678.git.bankarsandhya512@gmail.com>
References: <cover.1458454678.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458454678.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Correct the argument of sizeof().

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


