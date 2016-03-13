X-GM-THRID: 6261362945154875392
X-Received: by 10.129.104.69 with SMTP id d66mr13225460ywc.33.1457837361717;
        Sat, 12 Mar 2016 18:49:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.2 with SMTP id g2ls1639526qgg.28.gmail; Sat, 12 Mar
 2016 18:49:21 -0800 (PST)
X-Received: by 10.13.214.18 with SMTP id y18mr13102958ywd.24.1457837361258;
        Sat, 12 Mar 2016 18:49:21 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by gmr-mx.google.com with ESMTPS id w126si996258ywe.6.2016.03.12.18.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 18:49:21 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x235.google.com with SMTP id s68so62831763qkh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 18:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rVjTHnKNxAyRw6/tRZsxMJ0nJLKGWh1qYhUtK1iKaPs=;
        b=X4LP0pAFoWcPv6HdsTDwmu7u1Q6IkDU5N7afJNo3S2v4PAz4/N4c/ahYjsF/UNcVh+
         xlCB8wxgS2jfnHtyazWffkc/GKccP8DdBSOIhKqzwy6TxDltGR7LE6YUW3k2PAaKKYi8
         WoSMcHmBCpanOE+BayYeCyeNH8HlHn8tkB9kCum17ia9iJi7M1lY1Vu46GrKUeaMwvgi
         P3zCCgV5n32i7eJHUBK6j+jWLdBFKrezT9zHK9X8XtyV8S6ItXQbvJYJfmAZS74TE9M1
         uHyguX1QtET+BHzbnUJzY9jPLp0IuOdxahUtl6NjXoZ61GiHBwUkBHs2LmeNIwVuutxd
         MumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rVjTHnKNxAyRw6/tRZsxMJ0nJLKGWh1qYhUtK1iKaPs=;
        b=LA9dFYUmqHSgqwcxwBc296azZ5e5ADuELuULSvhLzfkKGTXZfc6gx8lpJMVIH364lJ
         RrNdlhCQoOIjsJM2dGLWfHyO1bJaaTWmQJXAiduL4KW/dKP9CNgqvdxCxPsl4i+4Ll7r
         5gYEq1Sfa5NXjqwKAsMPQ6ikiX/TqXEL0K69qK4R6m7fNodh8UOdlovW5gMBb2jwA2S3
         ASATis/+ia3h3sBWpSBHdh17A1Y0yR2faGUTT6m2B505qnhkdXBtvLPu02yPEc5bSZhC
         QhUxZpe9oYkCzjqvRGak0Y9v7OPbJiavkRXTJHbfiCvurE8DjAQj2c4KZj4wHerLDaSo
         xiOQ==
X-Gm-Message-State: AD7BkJLp91twBt9nSs6ZfAlSMcDiEcUgcougw2LlPCF6fMrM79DBnU3T6gTLdZ9xkQtf6Q==
X-Received: by 10.55.73.69 with SMTP id w66mr21474862qka.39.1457837360912;
        Sat, 12 Mar 2016 18:49:20 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id n128sm7291673qhc.15.2016.03.12.18.49.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 18:49:20 -0800 (PST)
Date: Sat, 12 Mar 2016 23:49:16 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH 2/2] staging: dgnc: fixed dgnc_major_serial_registered calls
 in dgnc_tty.c
Message-ID: <ab9ac398a3d2cfc0a9e4cf73c2d351ac18d4d6a0.1457835868.git.juliana.orod@gmail.com>
References: <cover.1457835868.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457835868.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes dgnc_major_serial_registered calls in dgnc_tty.c that previously were
camelcased (dgnc_Major_Serial_Registered), causing checkpatch issues in dgnc_driver.h.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index b79eab0..c723fab 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -218,7 +218,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	 */
 	tty_set_operations(&brd->SerialDriver, &dgnc_tty_ops);
 
-	if (!brd->dgnc_Major_Serial_Registered) {
+	if (!brd->dgnc_major_serial_registered) {
 		/* Register tty devices */
 		rc = tty_register_driver(&brd->SerialDriver);
 		if (rc < 0) {
@@ -226,7 +226,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 				"Can't register tty device (%d)\n", rc);
 			return rc;
 		}
-		brd->dgnc_Major_Serial_Registered = true;
+		brd->dgnc_major_serial_registered = true;
 	}
 
 	/*
@@ -407,7 +407,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 {
 	int i = 0;
 
-	if (brd->dgnc_Major_Serial_Registered) {
+	if (brd->dgnc_major_serial_registered) {
 		dgnc_BoardsByMajor[brd->SerialDriver.major] = NULL;
 		brd->dgnc_Serial_Major = 0;
 		for (i = 0; i < brd->nasync; i++) {
@@ -417,7 +417,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 			tty_unregister_device(&brd->SerialDriver, i);
 		}
 		tty_unregister_driver(&brd->SerialDriver);
-		brd->dgnc_Major_Serial_Registered = false;
+		brd->dgnc_major_serial_registered = false;
 	}
 
 	if (brd->dgnc_Major_TransparentPrint_Registered) {
-- 
2.7.2


