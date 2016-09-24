X-GM-THRID: 6333834735065759744
X-Received: by 10.13.255.67 with SMTP id p64mr3269274ywf.137.1474732848926;
        Sat, 24 Sep 2016 09:00:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.196 with SMTP id u62ls10804804ota.15.gmail; Sat, 24 Sep
 2016 09:00:48 -0700 (PDT)
X-Received: by 10.157.54.250 with SMTP id s55mr3041840otd.48.1474732848645;
        Sat, 24 Sep 2016 09:00:48 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id f12si3000576pfk.0.2016.09.24.09.00.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so6706753pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 09:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=utm9o0bJjgv/KGgHejordV7VL7OU566SUkoEOoRqoXk=;
        b=nW4m2TaFC2ZDLZ5AhVX3QW2JzFYIIpQDqTEDz24V2OHsG83hZXUW3OvOgj9SvC36xU
         QlaaymbxFCDWTEm1Kg+rfdvHZDDMgmS6AtzB/mjBcsmvtQTM1wpyAH0tzzDfReNyrpjH
         EHveoSCsFvIwSmpuZ/VPzBKBZ4JMwIll45tu7IAJpYdt1Rjk/Zxs1+/2GDlRe6GN8D5K
         OFX/YbRJf69mo66aUKSVHbBSp1QrixMgk0dqXsia5AqawDm++5EIz5QBOy1cnUlIcW3y
         5oSyledwvwrclZF3TfphpZ6NaG60c0rc43GKMc5oNxhI0vpkZZ5T3Eg94N98Gf8m40m8
         a3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=utm9o0bJjgv/KGgHejordV7VL7OU566SUkoEOoRqoXk=;
        b=Nxz/AxXZlhUTzv1Gc53K1r1a6P+FF2NUHf7Kctl02npaAx+mUgEwupxJ4Y34ZOlVeT
         Fm8kd3pqmiflr93DbNXEruKEEwsEC8nmkbcalvEbivXRqenW+YZidlOYYz38ejunbhVF
         oE8sVSb3yi3N3URIgN+S9A1zF5JCIXm6LtXEeOze3MTJl5MAUVMjWzRNFf+kRakuF3bJ
         JPftxKklaSwkCdceSM4F+qJH2GtC6kA4KOJG5r7e8QdWP22WCiIeGejrYpXuJVP5jPbf
         Ezhuwxjs5BbLZyXHxMR4x/BwcQaFTR8hZ2lhlmpzIBLfkD1qShUf7a4iiz9dr4xdg4k2
         w+qA==
X-Gm-Message-State: AE9vXwMwl50tm+a1ZDEG1nF65aG2v4kghVpNydI6u9UVvhNuStp5vFLeV6Df5z0Y8cDSpw==
X-Received: by 10.98.55.71 with SMTP id e68mr20817349pfa.147.1474732848400;
        Sat, 24 Sep 2016 09:00:48 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id c66sm19537101pfd.24.2016.09.24.09.00.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:00:48 -0700 (PDT)
Date: Sat, 24 Sep 2016 21:30:42 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/6] staging: media: lirc: Replace data type with pointer
 of same type
Message-ID: <328a70961fc82df3d3444f551bdf1e7ab3fc0985.1474722340.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474722340.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace data type with pointer of same type in sizeof() to resolve
checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/media/lirc/lirc_imon.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index b1c28e5..198a805 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -702,7 +702,7 @@ static int imon_probe(struct usb_interface *interface,
 	/* prevent races probing devices w/multiple interfaces */
 	mutex_lock(&driver_lock);
 
-	context = kzalloc(sizeof(struct imon_context), GFP_KERNEL);
+	context = kzalloc(sizeof(*context), GFP_KERNEL);
 	if (!context)
 		goto driver_unlock;
 
@@ -782,11 +782,11 @@ static int imon_probe(struct usb_interface *interface,
 			__func__, vfd_proto_6p);
 	}
 
-	driver = kzalloc(sizeof(struct lirc_driver), GFP_KERNEL);
+	driver = kzalloc(sizeof(*driver), GFP_KERNEL);
 	if (!driver)
 		goto free_context;
 
-	rbuf = kmalloc(sizeof(struct lirc_buffer), GFP_KERNEL);
+	rbuf = kmalloc(sizeof(*rbuf), GFP_KERNEL);
 	if (!rbuf)
 		goto free_driver;
 
-- 
2.7.4


