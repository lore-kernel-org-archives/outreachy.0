X-GM-THRID: 6331379866262306816
X-Received: by 10.157.33.59 with SMTP id i56mr1809538otb.119.1474139249998;
        Sat, 17 Sep 2016 12:07:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.114 with SMTP id l47ls1560293ote.24.gmail; Sat, 17 Sep
 2016 12:07:29 -0700 (PDT)
X-Received: by 10.129.145.5 with SMTP id i5mr10330238ywg.55.1474139249563;
        Sat, 17 Sep 2016 12:07:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z4si3586030pam.0.2016.09.17.12.07.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 12:07:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 21so3671954pfy.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 12:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xJzocI61P77XwA7824SrE0OtZICVKHMyeS+mmpszbQ8=;
        b=VKhVLqDjocwkE0Z/wsJ4o1EbrgI91lt75FR9qrQCnff9W16eePMtBSiLdq2dQ5Wbft
         BHllZhN9YepZNMBOi6AEzSlykYKELlXv2lpQYEueEYF22Zh0TsK2LJXJd4+nYEvW9f/J
         vWsP5BKXs3WDS2HvnTMQun/ffCx48cL91EElVuyTmwMbieBCEaDtrXcWd0psFVHK6uzH
         /c8Pq0W+YMF/2Unorspnp5goP1VhqUv2b2GLQCA3MYZC/odE770VW6rMlB1wVtsJVYRw
         mD2O+mxzwXedIbKQxOpISifVltrf/L6udPsK62CLlbIvONIuwB9+GM/5FUI9gNtraq6l
         yjAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xJzocI61P77XwA7824SrE0OtZICVKHMyeS+mmpszbQ8=;
        b=dWf3M9OM3WvSN6AnwTNwhOUddyHjRTtau4Nkuj8Cras6rpEOLGSQbANdYN3kXVm1Xl
         IOZUgQEYR5IPjjewY3lfJbA0tW/sQM8NeElgIdqZGwi+XHz8tGRDUST9visl+boYqazT
         gIFfSrd9v+63mHUfdBBXs3gtusVX6SFg55q/nHipKAfowvbvg/r5VXaKTgCgq6lmrzIv
         5Xru5iECmN8OL2EJIHCFuBvo+b++UaoWG2ws43KprVwFIhBEEGGBv4i+zqn5a4eGymbA
         9qg+8qwn0rfyoJF5dILSdujmrTUfqK7eICSl4TeyL9O5/pqG4pDm85a8jH+fV0bNxq6Z
         l+RA==
X-Gm-Message-State: AE9vXwPvh213mJ2OIQFnY4NZx5LljtNnT3DRXXyX5FPEFL9EIW9v5Q+cGeESw551xFk+zA==
X-Received: by 10.98.6.68 with SMTP id 65mr33137758pfg.116.1474139249394;
        Sat, 17 Sep 2016 12:07:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id 138sm36608739pfx.41.2016.09.17.12.07.27
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 12:07:28 -0700 (PDT)
Date: Sat, 17 Sep 2016 13:36:47 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8192e: Use !x instead of x == NULL
Message-ID: <20160917080647.GA16493@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL. This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_module.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_module.c b/drivers/staging/rtl8192e/rtllib_module.c
index f4f318a..9d5788e 100755
--- a/drivers/staging/rtl8192e/rtllib_module.c
+++ b/drivers/staging/rtl8192e/rtllib_module.c
@@ -138,7 +138,7 @@ struct net_device *alloc_rtllib(int sizeof_priv)
 	rtllib_softmac_init(ieee);
 
 	ieee->pHTInfo = kzalloc(sizeof(struct rt_hi_throughput), GFP_KERNEL);
-	if (ieee->pHTInfo == NULL)
+	if (!ieee->pHTInfo)
 		return NULL;
 
 	HTUpdateDefaultSetting(ieee);
-- 
1.7.1


