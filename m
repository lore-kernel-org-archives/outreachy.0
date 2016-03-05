X-GM-THRID: 6258684924561195008
X-Received: by 10.182.29.129 with SMTP id k1mr10804047obh.23.1457213639670;
        Sat, 05 Mar 2016 13:33:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.27 with SMTP id e27ls36195iod.7.gmail; Sat, 05 Mar
 2016 13:33:58 -0800 (PST)
X-Received: by 10.107.15.79 with SMTP id x76mr11134563ioi.31.1457213638577;
        Sat, 05 Mar 2016 13:33:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id r75si2182235pfr.0.2016.03.05.13.33.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 13:33:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fi3so52982727pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 13:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yu2Qc79GPoWF2Bi+DvhkPSc5PUE7+VdVWSOXbJPIwBA=;
        b=dtyrOtpUdKL6ouwYfNGkQXfQ1grhxh3S4bSgh7bz4IiozCBnc9bhtkWO/srjgDPtlV
         AZVW6oYXP0WE4nNlo3RV1dV49y0mpwkhydsALk5UQsQb1Q2jPYVfd8FOuwm+Dbx+hVWE
         8/9YQJHG0b5mUItmCtrFSaozZlPVnmoGP1r67MlFnHGsOTwHn04UqpuEPY5kGBtuySqO
         HfTf0Cg4fcLYzh9bgOyFg9brP+Gb+dDQgssw/DuXWVgcYQ3UN6WDpntyyM9o5PvjqDZU
         /GE2NSbL/h1ckSllNUZBKYsqGzye28LNyds/I2VV7LKk2NyNh9q75e2ptmENa+AwNtY0
         PttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yu2Qc79GPoWF2Bi+DvhkPSc5PUE7+VdVWSOXbJPIwBA=;
        b=ZTbW1cBLh5FglID6TBaC+O/LPShhnVW1WwFs21LDvmeYBcRpFMMIYxkCLUsH8Abkip
         J4TGFELu1MQ93fBeCR4w+RcUvRxY/5gaG21qzQA9g/ktngpJYsaouJoor87pMq76vJUS
         pbR49loBmRRsPBPWRmqLirtHnhQjuF0TQtPlMNz5lw94FpIk+ocrZVfkCgH0uCN/4mDe
         j+B3NsI+YHW2JhbknNfId9jZF6WbctTI1Co9YhUVZJSPgdZblqbFvTpSAdm3j2xUORTf
         Rgrk1KlAFsYWaA649vLk/wWzYr8UzPKHVRyuY/74rSMW41NbNlZII/v+76lJm+VY4BTI
         h+Pg==
X-Gm-Message-State: AD7BkJJYuY4NOGUdtclK47Iqd5XeSvDDxzxcoMmcx9O39wFFuK6gw5apDMoWvHGDYVw8Ag==
X-Received: by 10.66.220.7 with SMTP id ps7mr22711718pac.58.1457213638430;
        Sat, 05 Mar 2016 13:33:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id qh8sm14329488pac.40.2016.03.05.13.33.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 13:33:58 -0800 (PST)
Date: Sun, 6 Mar 2016 02:51:42 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: staging: rtl8712: Change form of NULL comparisons
Message-ID: <20160305212141.GA25919@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Change null comparisons of the form x == NULL to !x.
This was done using Coccinelle.

@@
expression e;
@@
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 2f5460d..acceb43 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -56,7 +56,7 @@ int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,

 	precvbuf->irp_pending = false;
 	precvbuf->purb = usb_alloc_urb(0, GFP_KERNEL);
-	if (precvbuf->purb == NULL)
+	if (!precvbuf->purb)
 		res = _FAIL;
 	precvbuf->pskb = NULL;
 	precvbuf->reuse = false;
@@ -114,7 +114,7 @@ void r8712_recv_indicatepkt(struct _adapter *padapter,
 	precvpriv = &(padapter->recvpriv);
 	pfree_recv_queue = &(precvpriv->free_recv_queue);
 	skb = precv_frame->u.hdr.pkt;
-	if (skb == NULL)
+	if (!skb)
 		goto _recv_indicatepkt_drop;
 	skb->data = precv_frame->u.hdr.rx_data;
 	skb->len = precv_frame->u.hdr.len;
--
2.1.4


