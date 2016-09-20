X-GM-THRID: 6332335989632008192
X-Received: by 10.36.65.207 with SMTP id b76mr669107itd.19.1474362336551;
        Tue, 20 Sep 2016 02:05:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.24 with SMTP id o24ls1486509otb.35.gmail; Tue, 20 Sep
 2016 02:05:36 -0700 (PDT)
X-Received: by 10.157.12.230 with SMTP id o35mr908215otd.103.1474362336111;
        Tue, 20 Sep 2016 02:05:36 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id si10si6570134pab.1.2016.09.20.02.05.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 02:05:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so686896pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 02:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XJgHz4Jjmq90WOVAqLfaMsjR1uRESZgcoXOQw+S6KRY=;
        b=eyXhiX6qIBHlsN83za9PBAGYRk1FlXYFZt/0LpDaR2Cm+0Fq20mWtQaLo9SK2bS3xm
         nY7Wee/lX0EeW6x6nXeH0tfAIengRsIcdtXmBhrclg4l4d/7kDohrYhSgMcHr+EzKlMY
         HDRSbd8K2+B3Ke5skRK5SPoJw/yIQ1pCCRhMjG8RJxdSu1uTpInlTlql/ypGN5TsSwJ+
         5Ow21Y5vufEjU3mKWadTEEXG7famBxvZR3fLFuDZLyEcr1h0NQ22kyJro5S+rTWvW8ze
         /mRbeVWSI/9zLVqS3KMnnZkOEXmzPt7TOINJR6rQajWOEbefO0VsmvMItVudCrFzPG1f
         VYow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XJgHz4Jjmq90WOVAqLfaMsjR1uRESZgcoXOQw+S6KRY=;
        b=jWgKnvc7EcJds1TCg6iLTIT76ymO/ChFvk/v8sS+Cj9BJRRFP715TPvPmIp42Tb3Mc
         hAfX5I0LbW08a9BqxdnxxvPTjW/3FxpYxPbHKFfrEnuFgz0WGk2zrBY78hQ8eyqTuRvc
         IOP3rbxrh9St3REBjZmwqjI4t9FaCZD+6JLQ8iXYdCzWnRw7FIF4NQb0NXb86VDC/aEh
         wpIEJ8PF0TOvnzABIXwt110MZ2qgmZDFYEG2aCMLhmcWpIzdQcTLitOLPSwTTKaY8Fz9
         HH9g71n2zZN97ygNLgzN2j5e7pXS0Nn4ZFZVDGNqTtkvGoCaCXC5h66EJX2UsDOqBxk1
         hrYg==
X-Gm-Message-State: AE9vXwN1QFddrzo45h+0CG76llUHumtBxr7Lr5+hHyWRk8S/hGqgOg66hne3j+k8LAJtCA==
X-Received: by 10.98.155.154 with SMTP id e26mr53509305pfk.68.1474362335880;
        Tue, 20 Sep 2016 02:05:35 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.179.109])
        by smtp.gmail.com with ESMTPSA id 69sm16366450pfu.83.2016.09.20.02.05.33
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 02:05:35 -0700 (PDT)
Date: Tue, 20 Sep 2016 14:36:17 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Subject: [PATCH 3/4] Staging: rtl8712: rtl8712_xmit: Use !x instead of x ==
 NULL
Message-ID: <072f84f087e28dea58aff10c875a00d0ed2f1e03.1474360940.git.bankarsandhya512@gmail.com>
References: <cover.1474360939.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474360939.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL. This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 4bbf76f..c4f03a6 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -629,7 +629,7 @@ int r8712_xmitframe_complete(struct _adapter *padapter,
 
 	phwxmits = pxmitpriv->hwxmits;
 	hwentry = pxmitpriv->hwxmit_entry;
-	if (pxmitbuf == NULL) {
+	if (!pxmitbuf) {
 		pxmitbuf = r8712_alloc_xmitbuf(pxmitpriv);
 		if (!pxmitbuf)
 			return false;
-- 
1.7.1


