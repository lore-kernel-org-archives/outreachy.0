X-GM-THRID: 6255246916309745664
X-Received: by 10.107.185.4 with SMTP id j4mr2807215iof.21.1456413165463;
        Thu, 25 Feb 2016 07:12:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.75 with SMTP id d72ls448654ioe.43.gmail; Thu, 25 Feb
 2016 07:12:45 -0800 (PST)
X-Received: by 10.66.119.197 with SMTP id kw5mr41215222pab.15.1456413165119;
        Thu, 25 Feb 2016 07:12:45 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x230.google.com (mail-ig0-x230.google.com. [2607:f8b0:4001:c05::230])
        by gmr-mx.google.com with ESMTPS id nt4si230606igb.2.2016.02.25.07.12.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:12:45 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) client-ip=2607:f8b0:4001:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x230.google.com with SMTP id hb3so14771718igb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 07:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DCUIAWoz4ziAewLL2ga55QgjSL13FNASberucD4Cvro=;
        b=BT2iUVJnJrlBvzmJMX3BRt/n42ahBMots8GdQ1AxGT8aqEhS2nqrkux9hKTLjIcRfi
         4GaYbbgbpHXj1UQcWfT9kSdvaWRl31pOCvD0GBf8jzxZjx9StTzRRDI4G1qG44p1va71
         ahGwWmHFCFLG37XWLG990MMYXNKTaXvnlTfhHVpzLijc/IUPz7LSe4iKpmq+8AXsixcc
         FLKH4/nSVfTlWpddo4o92hCwiYIPCZYcBGg2MykPbFw/EgnTUXRgvx6AnjqY+md+BJw7
         +PXD1Pc3n7dv/j8pY1J5lVYALHPH4dUxwnnXoOYbgjczGo1ybXEEHv2Zv7JLdKMrTqIr
         Za+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DCUIAWoz4ziAewLL2ga55QgjSL13FNASberucD4Cvro=;
        b=UB7hl/ELWOORwS3Z8VkpZ3+ITpQLPfglQvcAVolyQs1sUDZ3LbG3JEexX9F48c6uz6
         lNihJJSzMoesjKGegw9S1aC4AhI/brOiXdMOWFCR6d5yTYR6TxIQ6MGJlgZjZxYM8ILf
         VL3ai4OPbLlQk4R0Mua9FpUwOQxekY/IkcpVfsID2ZtF0RBXHd5KQanR6/1GmwbrXtZB
         cT9XFlq1+zZB47NbspudQCw49fsqaDo/spO5zKCCGtA6mgxVNdpD1hjLRFWvpgZymYhw
         kxvpwWTHfdK5dXyjziAkISsISV3vr3Kzbt4fSV9J9u6vUuyCkK7pmClp85MnGD4OIQzT
         6CDA==
X-Gm-Message-State: AG10YORm4i+dMsuYFXpXBl1P19NgrRC5mvQuNZOUN0tjBM+GzsVKYD4wuuwnn8O3xZ+tSQ==
X-Received: by 10.50.176.226 with SMTP id cl2mr3627694igc.85.1456413164914;
        Thu, 25 Feb 2016 07:12:44 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id c193sm3401999ioe.18.2016.02.25.07.12.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:12:44 -0800 (PST)
Date: Thu, 25 Feb 2016 15:11:56 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Drop void pointer cast
Message-ID: <20160225201156.GA8224@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers need not be cast to other pointer types.
Semantis patch:

@r@
expression x;
void *e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
|   
  ((T *)x)->f
| 
- (T *) 
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index c2ac581..454cdf6 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -334,7 +334,7 @@ void r8712_usb_read_port_cancel(struct _adapter *padapter)
 void r8712_xmit_bh(void *priv)
 {
 	int ret = false;
-	struct _adapter *padapter = (struct _adapter *)priv;
+	struct _adapter *padapter = priv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
 	if (padapter->bDriverStopped ||
-- 
2.5.0


