X-GM-THRID: 6249732512235388928
X-Received: by 10.182.120.106 with SMTP id lb10mr40237802obb.24.1455129243120;
        Wed, 10 Feb 2016 10:34:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.137.194 with SMTP id qk2ls263117obb.59.gmail; Wed, 10 Feb
 2016 10:34:01 -0800 (PST)
X-Received: by 10.182.236.4 with SMTP id uq4mr40392297obc.3.1455129241362;
        Wed, 10 Feb 2016 10:34:01 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id tn7si520354pac.1.2016.02.10.10.34.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 10:34:01 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id q63so15956509pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 10:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=MnLMjBeWvoYGA9qJN7qkrW/hJqSMh/9LOa0AEjs+198=;
        b=QBawPRmCmtNJVW90kfmqsIRl03YmeU995vp7sxM1aqcpaYHJPdQLOrOF0ZXjSYJ75Y
         9MvGOI2zAoNECe6nkaGXNFOxrb/nES3+j8kRWyRkro6vLbcWy4JntU+JkqjRBTbgH5rv
         RHXUtnr2p3IrZjlkS5Zm+Dnm/r/gZYlEONCt+px+ESdFQR/B6B5+WO8lxsY5kOEM6Bv6
         DLeHJOZa4CW1NnjdqH2XLCTeq9zbwhvV22OGTOa41XXj5yM7m7o08hHp1S7sKdUn+5GF
         9hvoA8fcDP32aQ/+guBS6PNkSZRaKkZdbfk7QpyDIB7GP9pvU+/4sFFR6wET9d9mC77+
         vUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=MnLMjBeWvoYGA9qJN7qkrW/hJqSMh/9LOa0AEjs+198=;
        b=jh9iHrVjpVjXkj7D6MZjMw+6irhI0n2JD/MTn9b2410PLZle21gD0Er22avp4qFrAF
         jBz13U2PLlaJYPEDY7e213w8iUIYBHldc1h2fGjQB+5UMY9JVxxfWMaWxnKsDWooi0dD
         5c9i7TbiSGWRzPtbMm7gIoqYgR13IC28Uf3c1c0XPOh/28X09KmO4czFLA3VG7QEdbt+
         lXOG9kyjw6lHIt5LumL0eRFebS7P/9fRzYm+r+HGj+LdKgEqkP/1hRDXz02iqZZVinoC
         4atqf7EnrttxANnCn8RHSLRb4fc0oRM7IDOrzZQY9aSYAv9jdgfYA0pKyjd9LPEZU2x6
         jKIw==
X-Gm-Message-State: AG10YORzpzjBrU/os7kkQaUqm1kLrPgILGKHIQgmEj29+P8x91BRN2CClsynNNGK/nwMrg==
X-Received: by 10.98.65.203 with SMTP id g72mr60768384pfd.44.1455129241213;
        Wed, 10 Feb 2016 10:34:01 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id s21sm6816672pfi.29.2016.02.10.10.34.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 10:34:00 -0800 (PST)
Date: Wed, 10 Feb 2016 10:34:00 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gdm72xx: compress return logic into one line
Message-ID: <20160210183350.GA12708@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Simplify function returns by merging assignment and return into
one command line.
Found with Coccinelle
@@
expression e, ret;
@@

-ret =
+return
	e;
-return ret;

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/gdm72xx/netlink_k.c | 3 +--
 drivers/staging/gdm72xx/usb_boot.c  | 4 +---
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gdm72xx/netlink_k.c b/drivers/staging/gdm72xx/netlink_k.c
index b7e5e70..cf0b47c 100644
--- a/drivers/staging/gdm72xx/netlink_k.c
+++ b/drivers/staging/gdm72xx/netlink_k.c
@@ -151,6 +151,5 @@ int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len)
 		pr_err("netlink_broadcast g=%d, t=%d, l=%d, r=%d\n",
 		       group, type, len, ret);
 	}
-	ret = 0;
-	return ret;
+	return 0;
 }
diff --git a/drivers/staging/gdm72xx/usb_boot.c b/drivers/staging/gdm72xx/usb_boot.c
index 39ca34031..3082987 100644
--- a/drivers/staging/gdm72xx/usb_boot.c
+++ b/drivers/staging/gdm72xx/usb_boot.c
@@ -357,7 +357,5 @@ int usb_emergency(struct usb_device *usbdev)
 		return ret;
 	dev_info(&usbdev->dev, "GCT Emergency: Filesystem download success.\n");
 
-	ret = em_fw_reset(usbdev);
-
-	return ret;
+	return em_fw_reset(usbdev);
 }
-- 
2.1.4


