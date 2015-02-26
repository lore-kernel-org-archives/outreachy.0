X-GM-THRID: 3635562938368
X-Received: by 10.180.80.7 with SMTP id n7mr3542576wix.0.1424943716502;
        Thu, 26 Feb 2015 01:41:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.180 with SMTP id jp20ls10752lab.64.gmail; Thu, 26 Feb
 2015 01:41:55 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr1114319lbb.6.1424943715970;
        Thu, 26 Feb 2015 01:41:55 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id l8si1469600wia.0.2015.02.26.01.41.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:41:55 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id m14so8820824wev.8
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=La28mc36JUh+cuxtfeyGf0NkDhyXtSTdozlQLjyQc0c=;
        b=WD1KFzx4VXc81pBz9VsUoq9crrAn5nacCKLTKAhzIY7lezDFuytPje/pz+9Rw2NkDM
         xyAfC2Zgszu6atASFRkkp2E3JCXtf3KV4obINa/PzjFjHsFE+QyhVYAsQJzaPFDvxu9V
         KrI/GmGYFabN5A3T4XnxdlcQm9OnHZvbdlwIojPLMGpyhlTCDEEcEu5MxcU5zhAkvPUJ
         pU86IEEnz6rLp+wkfLlP+CyG4hIJeIrKzDPuxMCNy41+W888kTZ/7+psqQ9RJvQolVdS
         4YN1Nf/cXFNROGNl0mkVx6R5x0WmMZMwRMk4sqjash+8+pEIPO9iA+4KZ/nwHHk2egfD
         WbQA==
X-Received: by 10.180.79.65 with SMTP id h1mr14557251wix.59.1424943715892;
        Thu, 26 Feb 2015 01:41:55 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id ch6sm575922wjc.3.2015.02.26.01.41.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:41:55 -0800 (PST)
Date: Thu, 26 Feb 2015 11:41:51 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 14/24] staging: rtl8188eu: rewrite the right hand side of an
 assignment
Message-ID: <f2cd33845fb498e546850055ecbde6560e937da0.1424942340.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 14650e9..122e9b3 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1352,7 +1352,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 
 			/*  Set RTS initial rate */
 			while (BrateCfg > 0x1) {
-				BrateCfg = (BrateCfg >> 1);
+				BrateCfg >>= 1;
 				RateIndex++;
 			}
 			/*  Ziv - Check */
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

