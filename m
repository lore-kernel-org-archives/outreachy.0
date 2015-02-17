X-GM-THRID: 80310435840
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,532940753aaf6731,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.240.11 with SMTP id ky11mr27416749icb.31.1424148714517;
        Mon, 16 Feb 2015 20:51:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.209 with SMTP id p78ls1609079ioi.71.gmail; Mon, 16 Feb
 2015 20:51:54 -0800 (PST)
X-Received: by 10.66.252.138 with SMTP id zs10mr24544153pac.3.1424148714359;
        Mon, 16 Feb 2015 20:51:54 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com. [209.85.192.171])
        by gmr-mx.google.com with ESMTPS id ks4si2007317pbc.1.2015.02.16.20.51.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Feb 2015 20:51:54 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.192.171 as permitted sender) client-ip=209.85.192.171;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.192.171 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdev10 with SMTP id v10so41059015pde.7
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Feb 2015 20:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2rPttYaYf7F2bVWsMLV34Q3s9U0Ty8HwuRePy5BlX2Y=;
        b=qUr/PfFpsPmCvgBqBl3xTnhp4YE7BKvYQj4sXFp4LA8dPOORekQq6/VpjKKiZA/rFf
         4HquqbsGfXUQdVLK5uCbcLGkpe87v7nPVu1WTmiafnGNXP3oUQ+WAtvubHqAngn1deTI
         BtV8t3aduMdhmu0B0rx6nn5aE0HAYO7HCrvF8FGJCs3M0gCAhLndz8qQFS1yZxMU5O2t
         1AfgYFg9jnJ7Yu5kLMIMEV1kuO14dTg6N1v9qzDHLQILfh0IgUtfTlIvprWPEi621i6I
         WBn7LClIc0DSs7YIQ5pnRn3YGSOXfnCAdJ/G8oKLZ6SR8fNExKYAlw60e4XYgyC9uXZd
         ZOfw==
X-Received: by 10.68.245.196 with SMTP id xq4mr1238165pbc.124.1424148714248;
        Mon, 16 Feb 2015 20:51:54 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([103.241.45.81])
        by mx.google.com with ESMTPSA id f12sm16455271pat.43.2015.02.16.20.51.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Feb 2015 20:51:53 -0800 (PST)
Date: Tue, 17 Feb 2015 10:21:49 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: lirc: Use setup_timer
Message-ID: <20150217045149.GA3532@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of function setup_timer.

This is done using Coccinelle and semantic patch used is
as follows:

@@
expression x,y,z;
@@

- init_timer (&x);
+ setup_timer (&x, y, z);
- x.function = y;
- x.data = z;

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/media/lirc/lirc_sir.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sir.c b/drivers/staging/media/lirc/lirc_sir.c
index 39f4733..d1ada8c 100644
--- a/drivers/staging/media/lirc/lirc_sir.c
+++ b/drivers/staging/media/lirc/lirc_sir.c
@@ -683,9 +683,7 @@ static int init_port(void)
 	}
 	pr_info("I/O port 0x%.4x, IRQ %d.\n", io, irq);
 
-	init_timer(&timerlist);
-	timerlist.function = sir_timeout;
-	timerlist.data = 0xabadcafe;
+	setup_timer(&timerlist, sir_timeout, 0xabadcafe);
 
 	return 0;
 }
-- 
1.9.1


