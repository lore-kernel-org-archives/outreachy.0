X-GM-THRID: 6331894376811200512
X-Received: by 10.200.48.234 with SMTP id w39mr3668488qta.64.1474259043475;
        Sun, 18 Sep 2016 21:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.215 with SMTP id k84ls2894293ioo.47.gmail; Sun, 18 Sep
 2016 21:24:01 -0700 (PDT)
X-Received: by 10.36.69.17 with SMTP id y17mr2813545ita.21.1474259041441;
        Sun, 18 Sep 2016 21:24:01 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id si10si4851773pab.1.2016.09.18.21.24.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 21:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id oz2so6347482pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 21:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=v+KHOK/9p0f3k6uA+x+sNmaLTWeUROtfoddKbsm3f+Y=;
        b=mDt5e8PvQvc1LEhH0xtrF+N3+ix+T2bRpwR85Rwob2t0DbX4yZAcPl2vdfnwR5uCOB
         q5RSUVLzF49Hl3oSUrlRbdoLoJyHKsYZXOYtKilBkTkhG/ZmAu6hZxqGQOWyJC2cevmD
         zfpVEu4uquinaPbr2LuAT4fxmgVPP2R1nebrIeB2EHdzILh/A4EqWreOSjELzIHCqDTs
         kZTWTpp2kmSRpXBPYUj7dKhKG8yLuxUPflIR7+eFyEz+tnJvooKCNfd32WeQASJJmJMM
         5i/AfyWS40xLV+QyJd5Ks7rsroNwvB+342mEH/EKfjwSMEK6vcKg3iuiGZpUMmnVlYHw
         qOhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=v+KHOK/9p0f3k6uA+x+sNmaLTWeUROtfoddKbsm3f+Y=;
        b=MeLV6n8KRXTRuTiqzpeGOWuaULxN+ORs/J1GNSqtyrdTNwAXVsCTBfLFwMlSFQILt6
         Ldd6PjPN5HJ46SzCbBG2Jp1xq+/YvHwIXmx9rSz1BIO/UlpS4F/8FfPosP0n13aHtUMc
         Hu5ndFnUt/80mjWf6E9sNOUHP/rwtgwqALTqVD0eKx0ebT8/n6g71gr1uPNm8D/ExnJL
         x9UylkFE7vBfH28kPH40ngzEZ+6B/nykPWXE3/umNGbVDSAeu/ERWHsewfX3aUcWmD8H
         ScdH+/nTrCsLg1eg+Z7+sdW3hFErirH7fwVyqCzhKzRsHaBLzcpuhDaFpcV3lYhyoGlw
         4KtA==
X-Gm-Message-State: AE9vXwOFKQC0l4giVOQFdU2lN16r5Y12e+qBGkBIOcBfKTCmXfClF5LyUd39o/RJIi1ElA==
X-Received: by 10.67.1.35 with SMTP id bd3mr43925617pad.16.1474259041244;
        Sun, 18 Sep 2016 21:24:01 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.120.71])
        by smtp.gmail.com with ESMTPSA id ya6sm27279280pab.14.2016.09.18.21.24.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 21:24:00 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: most: hdm-usb: convert pr_warn() to dev_warn()
Date: Mon, 19 Sep 2016 12:23:54 +0800
Message-Id: <1474259034-10535-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace pr_warn() call with its respective dev_warn() counterpart.
Semantic patch used to detect and apply the transformation:

@a@
identifier f, dev;
expression fmt, E;
@@

f(...) {
	...
	struct device *dev = E;
	<+... when != dev == NULL
- pr_warn(
+ dev_warn(dev,
		fmt, ...);
	...+>
}

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/most/hdm-usb/hdm_usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
index 5b27e96..6fc20b1 100644
--- a/drivers/staging/most/hdm-usb/hdm_usb.c
+++ b/drivers/staging/most/hdm-usb/hdm_usb.c
@@ -1315,8 +1315,8 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 				  ep_desc->bEndpointAddress * 16,
 				  1);
 		if (err < 0)
-			pr_warn("DCI Sync for EP %02x failed",
-				ep_desc->bEndpointAddress);
+			dev_warn(dev, "DCI Sync for EP %02x failed",
+				 ep_desc->bEndpointAddress);
 	}
 	dev_notice(dev, "claimed gadget: Vendor=%4.4x ProdID=%4.4x Bus=%02x Device=%02x\n",
 		   le16_to_cpu(usb_dev->descriptor.idVendor),
-- 
2.7.4


