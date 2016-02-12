X-GM-THRID: 6250301403759116288
X-Received: by 10.50.73.102 with SMTP id k6mr2118189igv.4.1455261698700;
        Thu, 11 Feb 2016 23:21:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.164 with SMTP id x4ls99931igl.25.canary; Thu, 11 Feb
 2016 23:21:37 -0800 (PST)
X-Received: by 10.67.22.2 with SMTP id ho2mr47475426pad.19.1455261697806;
        Thu, 11 Feb 2016 23:21:37 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id u66si1459841pfa.2.2016.02.11.23.21.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:21:37 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id c10so43918285pfc.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 23:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fPTvlUaeHsBHU/L6+U/XvRetVq0GsOdwPrkJHkZqRAk=;
        b=HF9/T5NHF+KSx3wJS6cpLfs5EdYBoMpEioiGQbOM13a9U5soKkPspnxp/lxgsdzBoS
         XU7MNgB9W0mCfXHWSPpt+YTaWwJ+neWRUmB39sR/Nny1lpI700O0MxStlOSgIeNYuE/P
         /FYP1oPL13sYRBrn9bZiMIwpoLNoN19xNzBl7si7suXbMoHHWIvnR4XzEiziwu/zE/Dg
         adrJVKaxr0C9bddqAinbebXt2UZKdW6zOQPnB6qx7M6igeqjopn2EcayChGTX7MgqOmv
         RB+mxW7IfkK9lVoAIIU6SjkeM6LdzVnbfh+NrX7ThyMXkGZsA2EES1vA1p5k6zhnt0sj
         LaUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=fPTvlUaeHsBHU/L6+U/XvRetVq0GsOdwPrkJHkZqRAk=;
        b=fwxfv5FJzSqKDouglmQoZO3B0MkQOwhChtEJJBZ2JcSjZSUjMkr60IlfEvPcHy1A5e
         Pb+Ywo4vHwTP/gHWGwWan1gJYPf0EB/RnaldHu02yhwN0J9c1L8eFSXvkMquMo9xskO4
         fT6glcku3gW0YFtDT1mrpPKUTyDACuKFhoua/+bvCtGAkptCwtH+B98BBTNsUdqsCErq
         pPEDiqlU3/43AlbyZn1hCGlcKNKll421N6+bboXLkN6VKEFh9hqbaPEO88KIPv/g5DwL
         udGlXUqN5BSd9odMJxW5lm8XlSw2+fUizgYxyLnuqQXQjvcB/EffEyokAoXUg6DgEXLP
         DHaA==
X-Gm-Message-State: AG10YOQpXwub/Oi/YPhOgExYhkJP5Gc/25/ePgXXlaUEs1vuxEPXIqPxvxfMbYiqRpTRKQ==
X-Received: by 10.98.43.149 with SMTP id r143mr28468pfr.7.1455261697699;
        Thu, 11 Feb 2016 23:21:37 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id s21sm16897297pfi.29.2016.02.11.23.21.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 23:21:37 -0800 (PST)
Date: Thu, 11 Feb 2016 23:21:36 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6656: replace GFP_ATOMIC with GFP_KERNEL for urb
 allocation
Message-ID: <20160212072127.GA14416@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace one instance of GFP_ATOMIC w GFP_KERNEL during urb buffer
allocation.  This makes vnt_alloc_bufs() consistent in setting GFP_KERNEL
during kmalloc() and usb_alloc_urb(). GFP_KERNEL is safe because we are in
process context, not in an intr handler, nor holding any spinlock.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 05f86ff..f7c4362 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -439,7 +439,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 		tx_context->pkt_no = ii;
 
 		/* allocate URBs */
-		tx_context->urb = usb_alloc_urb(0, GFP_ATOMIC);
+		tx_context->urb = usb_alloc_urb(0, GFP_KERNEL);
 		if (!tx_context->urb) {
 			dev_err(&priv->usb->dev, "alloc tx urb failed\n");
 			goto free_tx;
-- 
2.1.4


