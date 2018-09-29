X-GM-THRID: 6606665477713297408
X-Received: by 2002:a1c:da95:: with SMTP id r143-v6mr924773wmg.6.1538234175815;
        Sat, 29 Sep 2018 08:16:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4d05:: with SMTP id o5-v6ls4602085wmh.3.canary-gmail;
 Sat, 29 Sep 2018 08:16:14 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61nqNsY+pZevGmtHVfIjGp4gP4weLkW7k8VEjrg5gw7RKHZWm6EVfVwtdw1fSQ5AeBYt7w+
X-Received: by 2002:a1c:7ece:: with SMTP id z197-v6mr884786wmc.0.1538234174743;
        Sat, 29 Sep 2018 08:16:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538234174; cv=none;
        d=google.com; s=arc-20160816;
        b=KJfpN0cP7X/wyQwj5xxQU+7u/kCedM95LYnzVWGwbRc5llwZKMhYTfBov87fsPTPX0
         /uhdLifnmguQ9RcKB9h2Y0AOORVsOSVDcq8eOTFnUVGg27/lKxXgS8w8MB86PyFlUrSl
         dW4VwWCmPrEmOB8JEFcqmRf6tycXZQa5frVTRAC+/DSNRi0Po9oM/3CMImUmfJ96hQPQ
         mVsDHJufknf0RlZpb5Hxr78wGaP0w2vaXPsTE5TWkymg4kh1In2BXc2ljWfQ9HVfWRow
         NVahWI8Crr9e2j7pGPqzzQ4ulhCXwkb/U6n+38382FzJWyHY+wcS8auoEaos9WRANTQ/
         v7Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wxZF82h0JhnEQL0yEt9MYb5+87N74FzlqIL9rwu0+eg=;
        b=ZosgLp0mjRCHOfG1SGwJm47RQ4Eg7Vi1AXhTw1eftJz4pUvsJnjNbpF//p0qRC/rbE
         y9twwIVprK30fRVLQeqEaIEqTOUQs6SAQNLNjA1Wd6Jae2GKh8k0JADGTtMld0heE8p8
         mP3O824Ogz/KEQtLH3REeHDmozecs9lIxWVA8CaggPap0M0oeSmoCh79r7GA4Kr2fIIX
         6kyZ/FbdBDThN01v4qbNb8FA1n4n4YwBu42W0PIItVtBdR5HY8bHQmySCvFv+nwztuS0
         xAxJWLGaSZnM3ZUIfukFwQws2Eo4rrSaEpSSZW9O9zFPm4j3mlblBVn9r8m5UJoiom4a
         4C9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/Bh8X8F";
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id 196-v6si279733wmx.1.2018.09.29.08.16.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 29 Sep 2018 08:16:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/Bh8X8F";
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id o18-v6so4782966wmc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 29 Sep 2018 08:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wxZF82h0JhnEQL0yEt9MYb5+87N74FzlqIL9rwu0+eg=;
        b=F/Bh8X8F/VD6FFSf72rr+bdwB7cI65GnlVJdsh0JkJ+L+joOpZe2K3W9SYR9hLmPei
         b/opbz5ADJqY/++prg9LIGMOsc5GOj9mw2DKLxAZkpt6jIUCvSSPLEwPzAo/Am4WjdBE
         YIwUJvyeJBaagE6kTYlV93EravibiVgU+/CRQjwJkv/tEkxZCh6oH7aKwvxniCcMb+Ah
         lrkZGbCK0M+1RJ+lWgzxh6uEffObTPtfVFPue7Ejbjao/tTnktPF5NokDxsZL+7pXVl3
         0t40dpl1kYQmj4ep40ai9W4BHeWcvkEJQGwH3HshKoS3ToD61qAJK1eY8pQSd6k30Rvl
         yAQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wxZF82h0JhnEQL0yEt9MYb5+87N74FzlqIL9rwu0+eg=;
        b=IMy1L5mBm5qkbVKU1KZ68QwN/57m09IPhTlNXzuTKK73o0lMQv4P2iX0+Zk0gxwg3K
         qMoWY6+I9ENkH1NbDEbpkoxKYtXLlEmoduyr6CsBgcBOCFcZPZ+N22FaX6cgM3tXptFe
         X20H/AQTRrDbrYynzwk4VIMcT/0nJ3Sqvp7Wl6F6gSZY6EkJEWyCRIWMR5HALbjVZjha
         67JCj/14V4sTN7D2Jyzkcb2irCIrwGEfdDI70CuwoIbYFod+betit2rc+npr8rtv42r4
         BmPyuiBs9xvqf1IwHxiOM0OYtFhyQSfAXUc/cwfp17S/N0ztxQWlj6Eg/YASplqc/Nd5
         XHhw==
X-Gm-Message-State: ABuFfogIAamNbBhEn3iWr7BraUFlKfhrPC/wqTUDzUrmxpbVgi8YZHbB
	17Fkgnvcjs3i0EHx+SOzD+0=
X-Received: by 2002:a1c:f010:: with SMTP id a16-v6mr990455wmb.5.1538234174211;
        Sat, 29 Sep 2018 08:16:14 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.home ([77.127.1.188])
        by smtp.gmail.com with ESMTPSA id s26-v6sm3971585wmh.11.2018.09.29.08.16.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 29 Sep 2018 08:16:13 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	dafna3@gmail.com
Subject: [PATCH] staging: rtl8712: Remove unnecessary parentheses
Date: Sat, 29 Sep 2018 18:16:08 +0300
Message-Id: <20180929151608.25401-1-dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary parentheses between 'address-of' operators
and a struct members.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_io.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index 3a10940db9b7..1f55704d55fb 100644
--- a/drivers/staging/rtl8712/rtl871x_io.c
+++ b/drivers/staging/rtl8712/rtl871x_io.c
@@ -68,7 +68,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
 	set_intf_option(&pintf_hdl->intf_option);
 	set_intf_funs(pintf_hdl);
 	set_intf_ops(&pintf_hdl->io_ops);
-	pintf_priv->intf_dev = (u8 *)&(padapter->dvobjpriv);
+	pintf_priv->intf_dev = (u8 *)&padapter->dvobjpriv;
 	if (init_intf_priv(pintf_priv) == _FAIL)
 		goto _init_intf_hdl_fail;
 	return _SUCCESS;
@@ -92,7 +92,7 @@ static uint register_intf_hdl(u8 *dev, struct intf_hdl *pintfhdl)
 
 	pintfhdl->intf_option = 0;
 	pintfhdl->adapter = dev;
-	pintfhdl->intf_dev = (u8 *)&(adapter->dvobjpriv);
+	pintfhdl->intf_dev = (u8 *)&adapter->dvobjpriv;
 	if (!_init_intf_hdl(adapter, pintfhdl))
 		goto register_intf_hdl_fail;
 	return _SUCCESS;
@@ -135,7 +135,7 @@ uint r8712_alloc_io_queue(struct _adapter *adapter)
 		list_add_tail(&pio_req->list, &pio_queue->free_ioreqs);
 		pio_req++;
 	}
-	if ((register_intf_hdl((u8 *)adapter, &(pio_queue->intf))) == _FAIL)
+	if ((register_intf_hdl((u8 *)adapter, &pio_queue->intf)) == _FAIL)
 		goto alloc_io_queue_fail;
 	adapter->pio_queue = pio_queue;
 	return _SUCCESS;
-- 
2.17.1


