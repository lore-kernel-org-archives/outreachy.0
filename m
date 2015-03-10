X-GM-THRID: 7460820615168
X-Received: by 10.181.29.66 with SMTP id ju2mr8036978wid.1.1426006601900;
        Tue, 10 Mar 2015 09:56:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.193 with SMTP id cw1ls109186wib.44.gmail; Tue, 10 Mar
 2015 09:56:41 -0700 (PDT)
X-Received: by 10.194.236.196 with SMTP id uw4mr1748633wjc.5.1426006601563;
        Tue, 10 Mar 2015 09:56:41 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id l8si1110603wia.0.2015.03.10.09.56.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 09:56:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22d.google.com with SMTP id l61so3228525wev.6
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 09:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=NCQJ7ghdaMV0TymmDMSyxOEq2PvBhkyRCLtoxlykMqQ=;
        b=cumPAOK0tQTRZD6J5HF/d7+OPsSOtXg/sF1vr1/W8Un54LOUF0QsHSs0su9+ZN7Wci
         GScocCMlGJLAuZYvRgh1rFGIWgwir08MZFSpZvF3hhwYM0HATRqJpMdyXASplmQqiHqg
         SptwiE4z9APEav+bHtQDXuChHu2eyBXBg0hVEFlHpv//m8kldfz3x2DSA981XkYFHmT4
         vTD2S4QtxoHzzvnH2ayI3O6sDVInJ/9FcvBxPSsuNmo5CQOcvf3GIj4GbxFTiUXqWoxl
         8wQJ/BxU2JN1IMmGJHWV1wo5L92cl8Bemlfp2XyAsVwZud3h2xcoOBdlHCpFh5JhbGVq
         0koQ==
X-Received: by 10.180.103.40 with SMTP id ft8mr117664869wib.68.1426006601425;
        Tue, 10 Mar 2015 09:56:41 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id dj5sm1670443wjb.28.2015.03.10.09.56.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 09:56:40 -0700 (PDT)
Date: Tue, 10 Mar 2015 18:56:37 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 04/20] staging: media: lirc: fix multiple issues with
 function arguments
Message-ID: <452e9c291c3ddb3eb0f750b66ba7a627d24b1234.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Handles the following issues:

Removing extra parentheses around function arguments,
Removing unnecessary pointer to pointer casts.

Issues detected and resolved using the following coccinelle
script:

@@
expression e;
type t;
identifier f;
@@

f(...,
-(t *)
e
,...)

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

@@
expression e;
identifier f;
@@

f(...,
-(
e
-)
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/media/lirc/lirc_sasem.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index 9944af1..b9c53e2 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -331,11 +331,11 @@ static int send_packet(struct sasem_context *context)
 	context->tx_urb->actual_length = 0;
 
 	init_completion(&context->tx.finished);
-	atomic_set(&(context->tx.busy), 1);
+	atomic_set(&context->tx.busy, 1);
 
 	retval =  usb_submit_urb(context->tx_urb, GFP_KERNEL);
 	if (retval) {
-		atomic_set(&(context->tx.busy), 0);
+		atomic_set(&context->tx.busy, 0);
 		dev_err(&context->dev->dev, "error submitting urb (%d)\n",
 			retval);
 	} else {
@@ -387,7 +387,7 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 		goto exit;
 	}
 
-	data_buf = memdup_user((void const __user *)buf, n_bytes);
+	data_buf = memdup_user(buf, n_bytes);
 	if (IS_ERR(data_buf)) {
 		retval = PTR_ERR(data_buf);
 		data_buf = NULL;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

