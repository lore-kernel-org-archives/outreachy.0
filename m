X-GM-THRID: 6250295934225219584
X-Received: by 10.66.139.138 with SMTP id qy10mr2837372pab.46.1455302691302;
        Fri, 12 Feb 2016 10:44:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.167 with SMTP id t36ls1946385qgd.29.gmail; Fri, 12 Feb
 2016 10:44:50 -0800 (PST)
X-Received: by 10.129.102.215 with SMTP id a206mr2988184ywc.40.1455302690716;
        Fri, 12 Feb 2016 10:44:50 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id u66si1743593pfa.2.2016.02.12.10.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 10:44:50 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id y7so932469paa.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 10:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=/idvbtTfiQS0DnRvSx8zyrlkcDddUhpPnnUC9rh60SU=;
        b=jv/8I5tedUvvfkQN+KVMB4U+x6ovg3u0w/AqnHmr97l26ztbRMMw4XhpPLAUoZfFxm
         uw2Xe0pGnEtruL0yC0BrvPJSGTXQL/nr7amjkiBZgZYgXfUqLVZSqrg7zHru5xWR/FZr
         xZ50VC9iMfReRhY0tlR/N67gPQIqXAypAL/j6jJBNg/NJceshkJEFhuPPhGpdvuhm8YW
         PBddIB9d1FZUAFKEbwSpyDEwiGDg3siz1uahkdnFqW63fJkSfaAFLLT821j+XXaOeY0z
         uwAXdcoV4VN8QJ2qSQBMvID/MToXYhDE6Yvypl+RsEKEocxJGgLoINwaAjsLlWT3uzr5
         pRUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=/idvbtTfiQS0DnRvSx8zyrlkcDddUhpPnnUC9rh60SU=;
        b=SaR9BAWox3sp2tU3tUKn0ogkasaJzMHC7bX/627/OMriBRsn+KSxYXm+cdtO0ga8Cp
         8vur0djqz9yhSmuMIX2oUyHv6f2UUso/1L1VhLQuqo3PXGj6aj/nMw3n3CD1No3koBSC
         rLgJARnqo20sXe06QSMIXrgZnp6FuPN7sT+SGB8BSdyMcekmzraYisJxADWAg8MpnnnS
         Vm2Ibh9fPoaLQd4Mxd4klZpTCMpRMCIc7a1cQ/Os/ST0qP4f4KNzwMGxx9mxDtKFKEsA
         Q5Z+Z827SUk8qdTIuK2L4IfWFdlXHdu6Vf65muGi1ZM/r7s4aps8XZLNkOb74kv9vlKp
         yqvA==
X-Gm-Message-State: AG10YOTqm8BSgX04xfBBNHvQohaDGHifVuIXmy1tggsJJtzNlhAkP2SWRJgxB00YocHwNw==
X-Received: by 10.66.97.102 with SMTP id dz6mr4282100pab.59.1455302690544;
        Fri, 12 Feb 2016 10:44:50 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id yh5sm21102232pab.13.2016.02.12.10.44.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 10:44:49 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: vt6656: move local var init into declaration
Date: Fri, 12 Feb 2016 10:44:43 -0800
Message-Id: <1455302683-5119-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20160212070014.GA13288@d830.WORKGROUP>
References: <20160212070014.GA13288@d830.WORKGROUP>

Improve readability by initializing local variables at declaration.

In one instance, vnt_start_interrupt_urb_complete(), also use that
local variable in subsequent switch.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
Changes in v2:
- moved local variable initialization to declaration,
  rather than after first exit.
- cleaned up 2 additional instances in same file
- modified commit message and changelog to match
 
 drivers/staging/vt6656/usbpipe.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index bec5baf..f27eb9a 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -101,9 +101,9 @@ void vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data)
 static void vnt_start_interrupt_urb_complete(struct urb *urb)
 {
 	struct vnt_private *priv = urb->context;
-	int status;
+	int status = urb->status;
 
-	switch (urb->status) {
+	switch (status) {
 	case 0:
 	case -ETIMEDOUT:
 		break;
@@ -116,8 +116,6 @@ static void vnt_start_interrupt_urb_complete(struct urb *urb)
 		break;
 	}
 
-	status = urb->status;
-
 	if (status != STATUS_SUCCESS) {
 		priv->int_buf.in_use = false;
 
@@ -207,9 +205,8 @@ static void vnt_submit_rx_urb_complete(struct urb *urb)
 int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
 {
 	int status = 0;
-	struct urb *urb;
+	struct urb *urb = rcb->urb;
 
-	urb = rcb->urb;
 	if (!rcb->skb) {
 		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
 		return status;
@@ -269,15 +266,13 @@ int vnt_tx_context(struct vnt_private *priv,
 		   struct vnt_usb_send_context *context)
 {
 	int status;
-	struct urb *urb;
+	struct urb *urb = context->urb;
 
 	if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags)) {
 		context->in_use = false;
 		return STATUS_RESOURCES;
 	}
 
-	urb = context->urb;
-
 	usb_fill_bulk_urb(urb,
 			  priv->usb,
 			  usb_sndbulkpipe(priv->usb, 3),
-- 
2.1.4


