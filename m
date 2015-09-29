X-GM-THRID: 6199997314749169664
X-Received: by 10.112.202.165 with SMTP id kj5mr4598476lbc.5.1443554501972;
        Tue, 29 Sep 2015 12:21:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.154.131 with SMTP id c125ls414832lfe.52.gmail; Tue, 29 Sep
 2015 12:21:41 -0700 (PDT)
X-Received: by 10.112.125.104 with SMTP id mp8mr4655628lbb.20.1443554501319;
        Tue, 29 Sep 2015 12:21:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id c1si704137wiv.3.2015.09.29.12.21.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 12:21:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id ge5so165057261wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 12:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=JUc5LMpdA70K+W4WtmczmpOTeeKdKnFE5bUneSeoJ/M=;
        b=hYw5bs8MXNW//BHIsuzS1fxvkbUQL3sNX0a4aock7rnz3Eu83QPPL5mLH0LrPr5Xob
         CDG1hM5UhlQSxoFGyRBFgf1zy+dB5ZXCerlIAmdF7e5yhZI+LmUGObliRiEiUWoRYZct
         DS5qC0j6X5E4kdAFMIqSpeE7j9jvolk+m//P0zl1kDFrjfEnQB142Uote2UMQG70CnFM
         bBNXrziLo6PHmPcYR+KSexgCwPCmkP4xgMpJKOek63b8kOqQYrzTBJU2jpnsF6IN2VWj
         20dt4HsEYzB6SH4FhqoxnMcez14EKi2UaJWtRTsxHm8yuQNbDu0xi69BRHa7aYiAmYTr
         mwCQ==
X-Received: by 10.180.240.170 with SMTP id wb10mr326673wic.91.1443554501180;
        Tue, 29 Sep 2015 12:21:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id wc12sm25372602wic.18.2015.09.29.12.21.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 12:21:40 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH v2] Staging: media: lirc: Use USB API functions rather than constants
Date: Wed, 30 Sep 2015 00:51:28 +0530
Message-Id: <1443554488-19877-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560AE4C3.0043,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Introduce use of function usb_endpoint_is_int_in() and
usb_endpoint_is_int_out(). Also remove the variables
ep_dir and ep_type as they are not used anymore.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
Used usb_endpoint_is_int_in() and removed ep_dir and ep_type.
Also updated commit message.

 drivers/staging/media/lirc/lirc_sasem.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index b247649a..d3dedb8 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -697,16 +697,11 @@ static int sasem_probe(struct usb_interface *interface,
 	for (i = 0; i < num_endpoints && !(ir_ep_found && vfd_ep_found); ++i) {
 
 		struct usb_endpoint_descriptor *ep;
-		int ep_dir;
-		int ep_type;
 
 		ep = &iface_desc->endpoint [i].desc;
-		ep_dir = ep->bEndpointAddress & USB_ENDPOINT_DIR_MASK;
-		ep_type = ep->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
 
 		if (!ir_ep_found &&
-			ep_dir == USB_DIR_IN &&
-			ep_type == USB_ENDPOINT_XFER_INT) {
+			usb_endpoint_is_int_in(ep)) {
 
 			rx_endpoint = ep;
 			ir_ep_found = 1;
@@ -715,8 +710,7 @@ static int sasem_probe(struct usb_interface *interface,
 					"%s: found IR endpoint\n", __func__);
 
 		} else if (!vfd_ep_found &&
-			ep_dir == USB_DIR_OUT &&
-			ep_type == USB_ENDPOINT_XFER_INT) {
+			usb_endpoint_is_int_out(ep)) {
 
 			tx_endpoint = ep;
 			vfd_ep_found = 1;
-- 
2.1.4


