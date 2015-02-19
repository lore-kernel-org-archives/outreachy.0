X-GM-THRID: 1048238358528
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d60427829758cdf3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.33.97 with SMTP id q1mr6793606obi.42.1424385272221;
        Thu, 19 Feb 2015 14:34:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.165.65 with SMTP id yw1ls261462obb.78.gmail; Thu, 19 Feb
 2015 14:34:32 -0800 (PST)
X-Received: by 10.182.199.66 with SMTP id ji2mr6640459obc.14.1424385272062;
        Thu, 19 Feb 2015 14:34:32 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id bx1si1986666pdb.2.2015.02.19.14.34.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 14:34:32 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfp1 with SMTP id fp1so2968918pdb.9
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 14:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=yhorCtggGrmK8szeiLF9HXhu112KoatzEAxvUXOlvOY=;
        b=W2lp0cr6Jt3poRBCWU9Yfbxw7tVZngsCRC3CTqhNspdnZwY4elzNjFCr+sMgeZ4u4k
         unETn9t7uM3VUBvVwNhyIB4xNt1orTZm9MsqOpJWu0ee7Rb2DL14oupxAP8aN/Tn793Y
         YUTS//XYmh5cS3E+kC9v5dFA1dm/n/9CClYP0gILKoIzYkx+m366Va68VpiWz/W3KgPc
         D5gaNdwN232QphtpuqWH/aYWed7K/2rRhl1TlPgT1GZOQS4bG5FVR4Sj38GthT/qWEol
         L2OwQ2400QFgAQIS9xw4P71SmE+UFkjlbnGdXmCCy2TgWPoF5bu7MdXg3fzqMP3VeQlO
         DTzg==
X-Received: by 10.68.69.110 with SMTP id d14mr11395666pbu.3.1424385271895;
        Thu, 19 Feb 2015 14:34:31 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id f10sm15551439pds.37.2015.02.19.14.34.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 14:34:30 -0800 (PST)
Date: Fri, 20 Feb 2015 04:04:12 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: Remove unneeded log macro
Message-ID: <20150219223412.GA1134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove unneeded log macros which only
indicate entry/exit from a function. The kernel provides 
mechanisms for function tracing so these can be dropped.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/media/tlg2300/pd-main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/tlg2300/pd-main.c b/drivers/staging/media/tlg2300/pd-main.c
index b31f479..c2dd3b4 100644
--- a/drivers/staging/media/tlg2300/pd-main.c
+++ b/drivers/staging/media/tlg2300/pd-main.c
@@ -207,7 +207,6 @@ void poseidon_delete(struct kref *kref)
 		pd->interface = NULL;
 	}
 	kfree(pd);
-	log();
 }
 
 static int firmware_download(struct usb_device *udev)
@@ -538,7 +537,6 @@ static int __init poseidon_init(void)
 
 static void __exit poseidon_exit(void)
 {
-	log();
 	unregister_pm_notifier(&pm_notifer);
 	usb_deregister(&poseidon_driver);
 }
-- 
1.9.1


