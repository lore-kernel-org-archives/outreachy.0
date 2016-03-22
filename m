X-GM-THRID: 6264890827380621312
X-Received: by 10.140.230.19 with SMTP id a19mr27301068qhc.25.1458658563734;
        Tue, 22 Mar 2016 07:56:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.139 with SMTP id m11ls4919395qge.62.gmail; Tue, 22 Mar
 2016 07:56:03 -0700 (PDT)
X-Received: by 10.129.158.137 with SMTP id v131mr28671612ywg.9.1458658563065;
        Tue, 22 Mar 2016 07:56:03 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id ui7si4812227pab.0.2016.03.22.07.56.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 07:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id x3so314539272pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 07:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Iy4+1igIHawN4pPM7aHgQaLVt8sDDBR/X+aUZTudt/0=;
        b=b+hxVzHLXInHO6plHHyGiO0pHb5XHDVgHR8CEMdNP3/d2xve2W7J1SM9safXfO7v6S
         +CxkbSnndVd/PAYlfe7qdX1f3ekbh0+jtlYzwy2mxb8x/SEDCZa+wyg41Xc7t9wUJyn5
         NZX/pbecKcUBJoDKdvyvV9rxctqBQP0bC60iYD3sZ4bKqpHJ4lLrhjbtuU1pfRjddI35
         EJtwpXUYSt7E8SeTFbfPyrkIQyfvwjlCg22BBA6x/R3dyvZAVGeuzNdzHjVJ064ps6tE
         xTcdo6/DfezGgc1BD9eMu0Eb2BPLs7ZyRrGxUwbpKlhvLepta9Qvz5DjcBnn5AKbBsEg
         Gcnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Iy4+1igIHawN4pPM7aHgQaLVt8sDDBR/X+aUZTudt/0=;
        b=kFYhcdGjjoW8K0XB84OisBIcU6z651sKj/xqsBXltQYrWWnx+jZc3pqP/SZ2+GJ0mJ
         k4wI5UPpaZ3pSHmqdrvEwinrZxA26QTbv4EYUAP+HcWYrSEoE4G9fMCDswp0WoFZ3mg4
         yfLaojnxFFbXWoMY276/5XMWjutW5hUWmaAJ0J0p4S7uFwsdv/kQS6UtMFYWvRddvwnQ
         zp4N4CsqZljuTuKr9cQ/dMO+Gcp7VYzO49GKpgC/tR8flyPsc9yrqslhSMvHHBWB77Uj
         t9z9yyI/UckwGWEwJU/fWyZu+7H8UctCxSlvJD9COFB/TzM40dzjJkesJbfYdCHVz55a
         DRGg==
X-Gm-Message-State: AD7BkJI/XZkbOx7WXmySaZ6P6FEfTP3YtrYGYGjxNpGDWUaFhP4OaHrpCLPhg+yyDaROVw==
X-Received: by 10.66.55.39 with SMTP id o7mr54002838pap.13.1458658562832;
        Tue, 22 Mar 2016 07:56:02 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 20sm48589315pfj.80.2016.03.22.07.56.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 07:56:02 -0700 (PDT)
Date: Tue, 22 Mar 2016 20:25:55 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: os_dep: usb_intf: Clean up tests if NULL
 returned on failure
Message-ID: <20160322145555.GA5019@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:

@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index 8fd608d..11d51a3 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -60,7 +60,7 @@ static struct dvobj_priv *usb_dvobj_init(struct usb_interface *usb_intf)
 	struct usb_device	*pusbd;

 	pdvobjpriv = kzalloc(sizeof(*pdvobjpriv), GFP_KERNEL);
-	if (pdvobjpriv == NULL)
+	if (!pdvobjpriv)
 		return NULL;

 	pdvobjpriv->pusbintf = usb_intf;
--
2.1.4


