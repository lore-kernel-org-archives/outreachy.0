X-GM-THRID: 6250301403759116288
X-Received: by 10.182.87.2 with SMTP id t2mr84079obz.20.1455262657483;
        Thu, 11 Feb 2016 23:37:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.198.67 with SMTP id w64ls752689iof.61.gmail; Thu, 11 Feb
 2016 23:37:37 -0800 (PST)
X-Received: by 10.107.12.99 with SMTP id w96mr1072104ioi.5.1455262657202;
        Thu, 11 Feb 2016 23:37:37 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id u66si1465311pfa.2.2016.02.11.23.37.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:37:37 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id fl4so3487337pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 23:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=D9vBjf62cMwzM79gbAJ75gedIu6g6YlBo8VZB5ws3j0=;
        b=Ryg/Zr8ma64a3EJOhzOwCQEsGiqzFv8Is9qrIOTbPv1/oQKva8G4pLu6cSiHrAE/6J
         4EjDkFVEPvy54wT2kOgXwREf04+/hTCsIG1RI8vxHRmClH7nOI4C/yB3sqKbsSAgfW5j
         9tHan6z3Olb0+eLauk57oaSl3G8ES4QIZu5GlRtNcYEKTR/ZiNKFGwQ5SePQNS2uZJoO
         2MyU5pRcWIMhYq7FkZNCwDSIJCFNbIdMYgQtZdkyiKqm/0p0Cm+rGsJCX3husZWluZV6
         5g7KZzrOWl3W2sXgqqqE91qmWNuDxcAde+3k4l1w+5p3Qdi/FHfsGRkVqnWO17yPOLn+
         h1qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=D9vBjf62cMwzM79gbAJ75gedIu6g6YlBo8VZB5ws3j0=;
        b=kp0qWVwHR/lfDA8AF2YP7qNb7nGxj5egH+1+H7mBaY3lauSExKw8+52pC42PaGt1r0
         pstTvvnaxGX3fAV6GXgtMtmTcRrTncOVIIs1dK6mCiTE4KjnUCMWwiOFrVuKvwOBrrfP
         OzG/bQiCa0WVLqkWVpfCKBxdsPVTCQXAO1nadqyB/NRVBNbLdNRVo/aTnSjB/sd6SaHK
         Q5xnemAGnLwESrs8xh29PyKhjwO3kO/+uiiYDHGhVuPHBl3/K4fDi88sMkfTxszh4S+E
         EhBoeH4yT9kbqQyLvvYXCs7VUm01ad9/Zl7hPcbEmnJzlyF8tPlSSaRW2MbnjZVZyQzt
         X/YA==
X-Gm-Message-State: AG10YOTUe8U65THZS4R55VXYNAV6PWKqu+DthHlSdPzjGpc97ajsw88cKhB7yKoXyl3ZXA==
X-Received: by 10.66.140.14 with SMTP id rc14mr33625pab.65.1455262657070;
        Thu, 11 Feb 2016 23:37:37 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id s197sm17007254pfs.62.2016.02.11.23.37.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 23:37:36 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: vt6656: replace GFP_ATOMIC with GFP_KERNEL for urb allocation
Date: Thu, 11 Feb 2016 23:37:26 -0800
Message-Id: <1455262646-14649-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20160212072127.GA14416@d830.WORKGROUP>
References: <20160212072127.GA14416@d830.WORKGROUP>

Replace one instance of GFP_ATOMIC with GFP_KERNEL during urb buffer
allocation.  This makes vnt_alloc_bufs() consistent in setting GFP_KERNEL
during kmalloc() and usb_alloc_urb(). GFP_KERNEL is safe because we are in
process context, not in an interrupt handler, nor holding any spinlock.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
Changes in v2:
expanded abbreviations in commit message

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


