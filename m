X-GM-THRID: 6342441922054848512
X-Received: by 10.25.195.18 with SMTP id t18mr188365lff.9.1476823344147;
        Tue, 18 Oct 2016 13:42:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.198.204 with SMTP id w195ls122704wmf.19.gmail; Tue, 18 Oct
 2016 13:42:23 -0700 (PDT)
X-Received: by 10.28.198.198 with SMTP id w189mr1160499wmf.7.1476823343418;
        Tue, 18 Oct 2016 13:42:23 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id i129si55777wmg.3.2016.10.18.13.42.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 13:42:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id g16so1092678wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 18 Oct 2016 13:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hVJd9WDlu6PSZE9FPI2RkrKObkDfb32U9/gnYmr/QkU=;
        b=q2UDMooK3UGgPjiSfRtMS62CnMljZ+FWalCUjDIOB0Kq9KGiikgneIe24KDnSKuoxf
         G7UyhC3UGBqL/DeiWLbbdz8zZqrWDSKzWLIrpq+55P04f+XQ9mkkcvnxcT4d+JbAEmgb
         RPYBbt+1rqKe3wejSudouk5sRAHVYFSla3cboCWajTBKLmglroz1FtVEjOIkIld6JSf4
         OpNyor7c44PFr6P5VjqdPPWvUKYBsBW6S9mbI4BpiYWjmqJBTi8xs42lE5Y6a5zcwVU6
         6O6KgHMH8FSY8Yo7MX3PYqhjI7sKEl918ZpToMmIlT9+oDnpxf/yr3ebi1Qy7Q9deRJi
         x89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hVJd9WDlu6PSZE9FPI2RkrKObkDfb32U9/gnYmr/QkU=;
        b=Ge/krOFBxLRNv1bPv6Mnht0cIgdlp35llJC/HEgydadUJrNYkDdi4WRPzALzehW78S
         4jHhSbtZCkUigWXjoKqA3NZ79ihR0A5B825wwzpa5YrXTGJ2Em3ncqaIRMxrSFIBFy9R
         yRTTc1SbxiFEafNosfyJwV2dMl28UO0eUOdk9O49wQW6iwAQ33f9toDyrqnNyi1k7rUy
         mOkeyzBHbLSWTxfwuQw1AwRzUGqBnZCEEU8ymXoh9VXDq9+zOLUZWzcvPJf2l+p9gc2e
         5DK1wM+VpaeyvneVo2qlJQ6SKrzMJsJxS+GWbdEdQ0MM2a08YAnAAf2VxaoExThjpTdO
         xpoQ==
X-Gm-Message-State: AA6/9RnCg0gKgo6lTKmEobv6j5piEUmQe1IOBBHdcOT1Z0jtG7cZ+8iXn5r8NUHCW+0q3w==
X-Received: by 10.195.12.42 with SMTP id en10mr1608497wjd.126.1476823342968;
        Tue, 18 Oct 2016 13:42:22 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id ce6sm64851371wjc.27.2016.10.18.13.42.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 18 Oct 2016 13:42:22 -0700 (PDT)
Date: Tue, 18 Oct 2016 23:42:21 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: emxx_udc: Make a read-only structure
Message-ID: <20161018204221.GA7799@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch add const qualifier at the declaration of the structure,
because it contains information about usb hardware device and those
values shoud not be overwritten.

The structure become a read-only data, this increase the security and
the integrity of the program.

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


