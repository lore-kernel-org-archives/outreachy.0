X-GM-THRID: 6342441922054848512
X-Received: by 10.67.24.65 with SMTP id ig1mr5413138pad.76.1476714835295;
        Mon, 17 Oct 2016 07:33:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls13207156ote.9.gmail; Mon, 17 Oct
 2016 07:33:54 -0700 (PDT)
X-Received: by 10.157.42.168 with SMTP id e37mr6594829otb.24.1476714834968;
        Mon, 17 Oct 2016 07:33:54 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id x14si4191934vkd.3.2016.10.17.07.33.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 07:33:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id x79so27119778lff.2
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 07:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WO31lN177UjqEIbMu3jiZqqxFA8ceJg3J2fZTX5EQQU=;
        b=MltBT5trw4NgEele5KXOVIZx8k8HqAGBYpEcIqtHsD3xS3Ztz6q87JkSbFty/uplOG
         huUmZvA+KkniQlqGjVzxk8RmJ5HpB9MSCqQto8sTmZxUi/7WFMkk7NrVjcj0a67T6pnh
         Xyk30S9qVTi3O54T8ZLxo27mrznzCGuQCl5KmLtJ0MWXyMBJqexMdh0zKSmwxFN6uGp+
         +pLLJG8Zp84KF+jRo8kbC208C4BUxcn2fA7qhbBmuNYuvB4Fn7sifInBjF67dqjEbB/v
         U5FHwURAUfx7VY+Yu6SoNTEIrTPi78tqctfm6JADIem5fC6tBTW6TyYIA6SYRi9eEmRu
         W6rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WO31lN177UjqEIbMu3jiZqqxFA8ceJg3J2fZTX5EQQU=;
        b=T64iGPZKAbyXxT593V0dmDxXu5qgMRUclvjnstxQ9JtGjWrACpJixMW5C/F5w2RW8v
         t7VQPUxWCWtU+9BRqcHA8k9t2xC+265ZFggL9pbrFEt0u/kNeRLtBwHUYCt9f7LscL7f
         s7wBUBC0WgIKbewsWwoNFH4pte2YhxbnQukN8vHj3J4Xzhy6vcbJo9UJyAOyuMnMJY3Z
         crp7R5bcOaUP493S+ZqRZcaWNpP7rCbtJm/Dj1Ov+C/wEeXcvD4dqIQoLzJApJ58FZ5z
         OlKv2eKIq7RKhtETEvGRp2YcZi2aOYcfo10iPZS4PbQH77zUZaPDWTTKSmvQVy5HQEh4
         aJHQ==
X-Gm-Message-State: AA6/9RnvOKgI71x7wjs1ambYTFP0zghG6KQmWsR6oRGATB8vkCf+EUgh63acBTej/d803A==
X-Received: by 10.28.156.73 with SMTP id f70mr8020034wme.45.1476714834330;
        Mon, 17 Oct 2016 07:33:54 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id jt8sm53504056wjc.33.2016.10.17.07.33.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 17 Oct 2016 07:33:53 -0700 (PDT)
Date: Mon, 17 Oct 2016 17:33:52 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: emxx_udc: Make a read-only structure
Message-ID: <20161017143352.GA13131@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch add const qualifier at the declaration of the structure.
The structure become a read-only data, this increase the security.

Found with Coccinelle:
@r disable optional_qualifier@
identifier s,i;
@@
* static struct s i ={...};

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index c3e2988..8b406f3 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -1386,7 +1386,7 @@ static void _nbu2ss_set_endpoint_stall(
 
 /*-------------------------------------------------------------------------*/
 /* Device Descriptor */
-static struct usb_device_descriptor device_desc = {
+static const struct usb_device_descriptor device_desc = {
 	.bLength              = sizeof(device_desc),
 	.bDescriptorType      = USB_DT_DEVICE,
 	.bcdUSB               = cpu_to_le16(0x0200),
-- 
2.7.4


