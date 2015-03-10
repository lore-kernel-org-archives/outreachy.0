X-GM-THRID: 7460820615168
X-Received: by 10.112.41.131 with SMTP id f3mr4954201lbl.20.1426006495730;
        Tue, 10 Mar 2015 09:54:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.236 with SMTP id uh12ls17462lac.54.gmail; Tue, 10 Mar
 2015 09:54:55 -0700 (PDT)
X-Received: by 10.152.21.9 with SMTP id r9mr4877816lae.0.1426006495297;
        Tue, 10 Mar 2015 09:54:55 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id cl5si111780wib.3.2015.03.10.09.54.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 09:54:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x232.google.com with SMTP id p10so3164579wes.11
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 09:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SIzGWGZ9BBsMvTE99zkVLVDnWUzHaBBlQxwLkZr46Fk=;
        b=Huq7FGjqT27PqObJLNYusAt7xmeCPbHI50wGZLgWdEBNjx11gfxM8H4FtOtF+UEfWp
         thxd8nO9k4ZVEM7aDofvVN1FKpeN+cEcQ7/1yuzq1Ii+cRWlOt21fURLvOIz563SXmwa
         oeW1nO5hhSm8Lu5WirdFUcKgimCoIFRZPDz/69wiXwYUdkCasAuogIU/vacnfCw9C1FL
         B5GxVIDhdeEQoMlb8TqXGAViwEwZe37x1eGDYS8ckx5r2RMUo+Q93bdiQCWyKqUQEkII
         En7Rm4vgiumJAT095de745gYDcuXP92c4TNGrxjaW4nveOutSJP1raDsCOCeRhNu7Psi
         0GRA==
X-Received: by 10.194.201.164 with SMTP id kb4mr69419263wjc.32.1426006495042;
        Tue, 10 Mar 2015 09:54:55 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id nd15sm2389345wic.8.2015.03.10.09.54.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 09:54:54 -0700 (PDT)
Date: Tue, 10 Mar 2015 18:54:51 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 02/20] staging: media: lirc: lirc_imon.c: remove extra
 parentheses around function arguments
Message-ID: <c5f21f8526adb10544eec0a4e2210592173e66bb.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around function arguments. Issue
detected and resolved using the following coccinelle script:

@@
expression e;
identifier f;
@@

f(...,
&
-(
e
-)
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/media/lirc/lirc_imon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index 2e883e9..335b98a 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -337,11 +337,11 @@ static int send_packet(struct imon_context *context)
 	context->tx_urb->actual_length = 0;
 
 	init_completion(&context->tx.finished);
-	atomic_set(&(context->tx.busy), 1);
+	atomic_set(&context->tx.busy, 1);
 
 	retval = usb_submit_urb(context->tx_urb, GFP_KERNEL);
 	if (retval) {
-		atomic_set(&(context->tx.busy), 0);
+		atomic_set(&context->tx.busy, 0);
 		dev_err(&context->usbdev->dev, "error submitting urb(%d)\n",
 			retval);
 	} else {
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

