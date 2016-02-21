X-GM-THRID: 6253641012020772864
X-Received: by 10.129.90.84 with SMTP id o81mr15647913ywb.37.1456039262680;
        Sat, 20 Feb 2016 23:21:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.229 with SMTP id rf5ls553594obc.22.gmail; Sat, 20 Feb
 2016 23:21:02 -0800 (PST)
X-Received: by 10.182.199.70 with SMTP id ji6mr20696779obc.32.1456039262311;
        Sat, 20 Feb 2016 23:21:02 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id 12si2498444pfb.1.2016.02.20.23.21.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 23:21:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id c10so77366590pfc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 23:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=dWP+F9RO8Ln0LzvEeDZHqUX0WL/nwwm0ZXCFTY4PHs8=;
        b=P5IWyrcyHEt9a1aohOyVCP2e20K5yZ/5TvRetGawQyNVC7qACmp5YXvc46/cvLmvmJ
         E9CtaIJbsii7L4B+/FhVc10lxTbZbECCeEkZn+Ezzx/es3eWxgXDTrP4+FwwBHq6PMM7
         UKUzCkFaGswbXjmbxlRXzL29El9JNIN2emcHT2fSyPGSdyQcqWsFad/ysIab0sONxmhF
         nfit1ftQ8OG5sC8yQnGxmeMkGoVHbGZFirNClncc0NmMbBswDdvdnLAaeGib0RtkbAII
         YLAUCBnWu/QRToyxT5bLvlo3fvFg5TU2HnpfazAWHgxlskVl27jfc3PTxSjW3/3HJb00
         fwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=dWP+F9RO8Ln0LzvEeDZHqUX0WL/nwwm0ZXCFTY4PHs8=;
        b=jylMC0+UUclw4/uGlEHnoj8ibgHRy4deXs0XNj9ngc6FuNpQi+QuWN1OXR/+GJbyyp
         EgCAxUt5n7Vkj7xFOG9PttgeyRk9yWZ9eYk2Ck5Q+tDuLJQlmu6e3V53tiJYBor05dhe
         mCVF0Qzg3lxRdHb9e0O1vkqlXJiJ3dPz2KHczglCmvTi1DFskLHbDZGmpvBCl9XPJJ7a
         D9lgOYy3G4JfbeU1R5V3rJpQDgFC+5TFPV0a/V6DJvW+E57tRtcE7EAzl9/preohkgwZ
         80hyCY70FcghY36JKQuDroxfdkREVEYYHdf6K7NkuoDmnN/cDqBoaRuwhY9TRGsqnSjj
         tvtw==
X-Gm-Message-State: AG10YOQiglR70oxas487K5G+Byqs5WY3TsDa/MXM7S5VLm2Ok5D2jXazWIvDmAWA6kHFpg==
X-Received: by 10.98.14.146 with SMTP id 18mr29761914pfo.35.1456039262153;
        Sat, 20 Feb 2016 23:21:02 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ti6sm12726353pab.4.2016.02.20.23.21.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 23:21:01 -0800 (PST)
Date: Sun, 21 Feb 2016 12:51:32 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Remove cast on void pointer
Message-ID: <20160221072132.GA14788@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index 86a9089..50f4002 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -317,7 +317,7 @@ int r8712_cmd_thread(void *context)
 	unsigned int cmdsz, wr_sz, *pcmdbuf;
 	struct tx_desc *pdesc;
 	void (*pcmd_callback)(struct _adapter *dev, struct cmd_obj *pcmd);
-	struct _adapter *padapter = (struct _adapter *)context;
+	struct _adapter *padapter = context;
 	struct	cmd_priv	*pcmdpriv = &(padapter->cmdpriv);

 	allow_signal(SIGTERM);
--
2.1.4


