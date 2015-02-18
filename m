X-GM-THRID: 325933072384
X-Received: by 10.42.148.65 with SMTP id q1mr873174icv.28.1424278356375;
        Wed, 18 Feb 2015 08:52:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.101 with SMTP id i92ls125389qgf.93.gmail; Wed, 18 Feb
 2015 08:52:36 -0800 (PST)
X-Received: by 10.236.61.109 with SMTP id v73mr172260yhc.39.1424278356232;
        Wed, 18 Feb 2015 08:52:36 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com. [209.85.220.50])
        by gmr-mx.google.com with ESMTPS id bx1si1491156pdb.2.2015.02.18.08.52.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 08:52:36 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.220.50 as permitted sender) client-ip=209.85.220.50;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.220.50 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabkq14 with SMTP id kq14so2509094pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 08:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=2HdG35w9G8vNIx2P+mUD99pYp1mmNqXoqpiafvEXo0w=;
        b=gL+JcNDMWHcFDJj/0teGKn1+JxFBvsgNYkwMIIHZ7KEQj+iXgqbJNrXxphMV33OFhE
         5VR8IgdtijF9I6QtIVNQ4TzQBT+w7Wcl9zNeWfl7vdUeCJzXKuH3HgwQab5VBXBxqE21
         y5YuGN4bVrYF6KZBAdZiPVAnv9cBFFc+Y1KQIUKc2RFe4/jJR2csA+QkffSB7xiZwaZJ
         S1OP1CYlxdJRWvJPV/4ZoQK4D2GOGDdRJ9uGWngleot1EJeM+LcZeoOkUh7zICjD7NTK
         VqV6IoWWoeJqT4YcUOF2+l1B89z3od+OvImvfa9v0bPG3RZWm/C2l20sqYa8W4VYLN2F
         RE1Q==
X-Received: by 10.66.144.201 with SMTP id so9mr392514pab.78.1424278356109;
        Wed, 18 Feb 2015 08:52:36 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.95])
        by mx.google.com with ESMTPSA id hd4sm21060300pbc.86.2015.02.18.08.52.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 08:52:35 -0800 (PST)
Date: Wed, 18 Feb 2015 22:22:29 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] Staging: media: lirc: Use setup_timer
Message-ID: <3129c3b26a324c5cef6daf0529e833d02d92a23b.1424276915.git.vthakkar1994@gmail.com>
References: <cover.1424276915.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424276915.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of function setup_timer
instead of structure assignments as it is the preferred
way to setup and set the timer.

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
Changes in v2:
	-Changed commit log

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


