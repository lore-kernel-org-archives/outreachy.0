X-GM-THRID: 6250295934225219584
X-Received: by 10.50.142.105 with SMTP id rv9mr978605igb.10.1455260425246;
        Thu, 11 Feb 2016 23:00:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.68 with SMTP id q62ls1566637qgd.95.gmail; Thu, 11 Feb
 2016 23:00:24 -0800 (PST)
X-Received: by 10.13.215.140 with SMTP id z134mr29502469ywd.7.1455260424372;
        Thu, 11 Feb 2016 23:00:24 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id ui7si1596922pab.0.2016.02.11.23.00.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:00:24 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id ho8so42383289pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 23:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qzCCxMWAcNzeQ5PTHRASYheTBl9UtOtSpsxjKjd65XY=;
        b=k9PD9cXG3+ex1dxgoJnXU0k0nK/3Hlw0htydEW07pHmqacnx59K47Y5lkwEFQRWseu
         RXKHddBLXyQamM9c0BmP4/3V9eJnLwaZFZMW8RR0QMsaPFtoI7eGm6xsKW1A1xIAh+md
         KhdHa1Il0Y8AaRoX0ueo51fzE3NmFcpHSzsBsfcqEmjoemvp6D1AkYSFdpQbLRtBlj8Q
         seaMO1IXsAEeCLLwqR4amWKdNI/DlucFsVCPbnhA5HMsms/mbOM3AZsk0c4amL6mTUgr
         H22S1ENyjDK/3NDw3EjbNq4zYrT0WmNYjkzxj7odcvdzl+miOIPXAltNrxebXpcCGw9l
         2AJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=qzCCxMWAcNzeQ5PTHRASYheTBl9UtOtSpsxjKjd65XY=;
        b=HklvHcc+fJX+TimsdGn1cgmjLeCWuvlT5QPAdCW1Amfw7q1m8fD1darxH+Zi7RbF9D
         /5o2q4DJsESayz+ZzEs3VVMa2AvmiBQAQXWz0gCaylgogYWhYRn+l8trgEII9Gh/Z3VV
         9ahh3vDTjI71KZx+I35BiC5Fa3btzHztodaaIyfE6QNMFWEkOBqTAxPqrQdkRX+R3af7
         GMF1YYyBxtJRVFvoLBSvh2I61bH/OdksvPydry3+pIo7OZ7KuJSu8BmH4vmWE6bPGMTs
         J/WB5Hq/MNFfrkFSpKP/arjoY2VUF5hXHG+LVXcFWMnFlbVd2xJQPTpzzz0ZydS/ChPF
         gTqg==
X-Gm-Message-State: AG10YOSTe/1VsXoLSR3f2qhDdnjn4xUc0T2OIHvxWKkfNdRkq0kmhgP9vCcD0QeYZm3W3w==
X-Received: by 10.66.159.38 with SMTP id wz6mr72840637pab.12.1455260424235;
        Thu, 11 Feb 2016 23:00:24 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id t29sm16739947pfi.8.2016.02.11.23.00.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 23:00:23 -0800 (PST)
Date: Thu, 11 Feb 2016 23:00:22 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6656: move local var init closer to usage
Message-ID: <20160212070014.GA13288@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move init of struct urb to after sk_buf is verified otherwise
the init is wasted if we exit early.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/vt6656/usbpipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index bec5baf..3648d16 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -209,12 +209,12 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
 	int status = 0;
 	struct urb *urb;
 
-	urb = rcb->urb;
 	if (!rcb->skb) {
 		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
 		return status;
 	}
 
+	urb = rcb->urb;
 	usb_fill_bulk_urb(urb,
 			  priv->usb,
 			  usb_rcvbulkpipe(priv->usb, 2),
-- 
2.1.4


