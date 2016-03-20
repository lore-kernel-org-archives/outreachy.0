X-GM-THRID: 6264247085046956032
X-Received: by 10.66.193.131 with SMTP id ho3mr20743465pac.42.1458508814736;
        Sun, 20 Mar 2016 14:20:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.119 with SMTP id q110ls3641687qgd.95.gmail; Sun, 20 Mar
 2016 14:20:13 -0700 (PDT)
X-Received: by 10.140.40.239 with SMTP id x102mr20770956qgx.23.1458508813666;
        Sun, 20 Mar 2016 14:20:13 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ui7si3404273pab.0.2016.03.20.14.20.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 14:20:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x3so26782269pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 14:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tqz8YFhSAMhrIminEsr3h4xS0LcMEYRdf3vzVQzhh0s=;
        b=xYXJYJOc6iuXVIYyW/INdpVQjOKa5xBfysoD69GdBPcBJlf6AmE+wttXiqe+4FvRTs
         8UXr07z754EZAktfNUkr/vWIOTd+nEsp4qiZBJDDs/jPdeKuiHJJqlEXzM928zgJUEc7
         wwEw+qQSJy48FmEMCkKrIeIyJZdqRsAsvUQsAG4ck1MY/H5KoUJCft4qpitzeeRR8/YD
         tl3AUpkuVAG8oZR2dqahASflkdm9RWsYXSDY2rW6Y88fdI3uZLbyVRURVEZTrp9C5seL
         MHdCqvjBPnMRDP/rUKTv1KKznaeMdrysoIh7EKDGaSmA5paQoJ7jJSNgZVjVIIGS3TnA
         WGAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tqz8YFhSAMhrIminEsr3h4xS0LcMEYRdf3vzVQzhh0s=;
        b=D9nvQA8N+VD0w6LFveHJnZV/oQnS760RCOig7fltITpKMPNdGSB2ZTkwxQEmzzgaWW
         MdfpXh9h7SVcB6vFdYBwn0yPi4NCCEm7zcTXs/Hed/Kpd7GpZnj/Ffs9hNU1kOXxdMS2
         4EZztrDbngvci8cSiFWEjOd5Ng25oxShZBO4lUTbj5v8kPfzfUzZBLLreiB6xZlCUKqf
         eLoocpbd0yYl5Jtj8sS7lb6/N+Hsa3ntKJBrckWfm4E9ZB95yPGcdEWS1PJI2CSgbvxL
         f9wmHiZzn9LlvUDrveYQV/3Xhnss3EMLtfTDLazDhzHBCV3qpQRUNPdt9dP/Ei2L56lP
         vSig==
X-Gm-Message-State: AD7BkJIg9FSJgvXOIWbcse0g9i7rjl25d9XESU7c0WB5ZV1m+VfatH1CZOe8Kzg6fmbmLw==
X-Received: by 10.98.42.211 with SMTP id q202mr40149904pfq.13.1458508813481;
        Sun, 20 Mar 2016 14:20:13 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id p85sm29539265pfj.16.2016.03.20.14.20.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 14:20:13 -0700 (PDT)
Date: Sun, 20 Mar 2016 19:51:19 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: rtl8188eu: rtw_efuse: Use sizeof type *pointer
 instead of sizeof type.
Message-ID: <f5ebff148478b21732288113ef1505f2a6d48a42.1458482776.git.bankarsandhya512@gmail.com>
References: <cover.1458482776.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458482776.git.bankarsandhya512@gmail.com>
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


