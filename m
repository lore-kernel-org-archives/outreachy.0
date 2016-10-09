X-GM-THRID: 6339370898405982208
X-Received: by 10.13.232.71 with SMTP id r68mr6990182ywe.82.1475999806569;
        Sun, 09 Oct 2016 00:56:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.13 with SMTP id a13ls2816492ioe.18.gmail; Sun, 09 Oct
 2016 00:56:43 -0700 (PDT)
X-Received: by 10.66.10.37 with SMTP id f5mr6113107pab.70.1475999803732;
        Sun, 09 Oct 2016 00:56:43 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si7095432pab.2.2016.10.09.00.56.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 00:56:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t25so5421028pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 00:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=B15c9FSvfhgCpBtNrD8CrFHL2HBhqg5asmbDCmtRbKs=;
        b=B6fG2RrYk6QyaiI1WKjk1WLqU+yuYW90V99xEB5nXBPTO700bPgZdSCTVxvvDu9BL9
         GHdokp7gKiO37qAhZC0oD1d+8B0oAnSbZeJtl8EpPyQuwReAOi59DQPOG9uk+zpzkWeq
         j9MV0ocNYvEGD6KZ//a/2YLMTQPlCTqztAfwWjiygIyZnudmSkoYcmz0sTBcxhk4ao2P
         cSE8/stkC52TMAxfVyWURN2jAU46zoHCNvquea0r6upzbLwzpaDSuDEnYOEYMMbn1IlQ
         BI5if1YRiQXVZ50xxC8bqL7oHFmr9QdGhGWYFcht1Q64K1pkBHk4LCKf3mYX2gCUGIbS
         nRGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=B15c9FSvfhgCpBtNrD8CrFHL2HBhqg5asmbDCmtRbKs=;
        b=aktQCKwmetzXC0VW7iWRjrIbeDGHltVuVtM8xC0vq3nzJ7M2oSmhVmZGOt6gW5T81c
         LQXjKJyQw2eBCBYYabAxyLfu+RSw78VYFm6fWlo4NPC3mevmtvF15I7iegcKa28OUBVF
         cwg3aym/E5j5ksLGx2WaNfl1sRK/fDVHs6EDdMkgD1fDc577H/mdn0Xc9F9Skf9EIAhL
         +XfOqGZr0+npaDIR1SQdMIHVuCcqz0o4C9S2SxFCViDTH6vSPhwhSFmEUvT9cfU9Gatg
         froONKCB/WkJvMy3kvogCkIWkIZES7M4NNJ5BHIoyJB1RP2/FJ2bEWlyFEYQB1cjGunj
         2uzA==
X-Gm-Message-State: AA6/9RmgLUDcx4WE2+baEDyF4yuXeFiAgYWCpiMoenpmJuMdLvgaJXzg4TNAzWeGNKUDcg==
X-Received: by 10.98.82.209 with SMTP id g200mr22452937pfb.84.1475999803540;
        Sun, 09 Oct 2016 00:56:43 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.142.64])
        by smtp.gmail.com with ESMTPSA id x66sm25557290pfb.86.2016.10.09.00.56.35
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 00:56:42 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 09 Oct 2016 13:26:29 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: emxx_udc: constify usb_ep_ops structure
Date: Sun,  9 Oct 2016 13:26:28 +0530
Message-Id: <1475999788-12028-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Declare the structure usb_ep_ops as constant as it is only stored in the
ops field of a usb_ep structure which is a field of a nbu2ss_ep structure.
The ops field is of type const struct usb_ep_ops *, so usb_ep_ops
structures having this property can be decalared as const.
Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct usb_ep_ops i@p = {...};

@ok1@
identifier r1.i;
position p;
struct nbu2ss_ep s;
@@
s.ep.ops=&i@p

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct usb_ep_ops i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct usb_ep_ops i;

File size before:
   text	   data	    bss	    dec	    hex	filename
  16007	    376	   3720	  20103	   4e87
drivers/staging/emxx_udc/emxx_udc.o

File size after:
   text	   data	    bss	    dec	    hex	filename
  16095	    280	   3720	  20095	   4e7f
drivers/staging/emxx_udc/emxx_udc.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 6391220..6b6d7db 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2933,7 +2933,7 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
 }
 
 /*-------------------------------------------------------------------------*/
-static struct usb_ep_ops nbu2ss_ep_ops = {
+static const struct usb_ep_ops nbu2ss_ep_ops = {
 	.enable		= nbu2ss_ep_enable,
 	.disable	= nbu2ss_ep_disable,
 
-- 
1.9.1


