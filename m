X-GM-THRID: 6332864339346718720
X-Received: by 10.67.6.199 with SMTP id cw7mr8077138pad.76.1474484880856;
        Wed, 21 Sep 2016 12:08:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.182 with SMTP id p51ls2779285otb.29.gmail; Wed, 21 Sep
 2016 12:08:00 -0700 (PDT)
X-Received: by 10.13.192.194 with SMTP id b185mr7326305ywd.141.1474484880433;
        Wed, 21 Sep 2016 12:08:00 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id si10si8668825pab.1.2016.09.21.12.08.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 12:08:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hi10so2625678pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 12:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KiKZlojErjNcbuL2rNo2B1XrxanKzO0Jxms0mM1QFZs=;
        b=C00xXoPb1VziQScZZEJsX/kQmy2FrPy5BIi7zPClFcIEpRtODJuyX3n8IpPQ8KAa1G
         /PLntnIn118vyKAsGjsgCkr+tnYfT+cxaBt0oaPFZqIUzEHx9RuErCCTq6W+7+nbI355
         B8q0fe8FqDkd7QxNxMtbVdKrzkenlqG271XFkbbFlGm5XC1cMEBirNaAkpRPKyFtuGPz
         ZUeVQMdj9qBfGduwmDFDvu7DmDEDMZTlp+ScOMRDSRB4t+Y8gzR1WgRHRwJruYjOf/DP
         0n0dcsq3jciMcDyltrpk5y8A7ipqMNIlZX/07eVqnJv1YuIhmm5W0iE3QieL7nKs0MH0
         jneg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KiKZlojErjNcbuL2rNo2B1XrxanKzO0Jxms0mM1QFZs=;
        b=fieiXI9XzB/VgAKet2gzRkqiVsqPPjIPT2sSwfGR6z1M3hiuME9QQBPCeKen3XmJpR
         MGUujnJ3SNmYEZPVl2HQwvwCLwz4xD+p891/9nkE772WafQa6Al1KUUI4pP8c+pgi36h
         /DBYfqpZcRXddOTZaFzoO6LeVUDJKmfesuqEX4uiqm5lSH7wBL0xS2nShlEUEgdRMOZH
         Tx+XvpV2PpqgsUPPw+AiUt8P81QkGigf0eCcwE0lmZqTXVg4u4gOhyP2gAzWrNYrdRVd
         +J9xOlK+WMS9TyH2P+i877UQvx6iUNqYMyq7mZW6lYnWJ0QT6OrhPWBdBuPBJVY6Ij1G
         dEuQ==
X-Gm-Message-State: AE9vXwO16V0IXOgTTbxT84trOSQAlQ+F05+7UuL4L8s+6BhWew7voCC7xXWI7UuNO4n8sQ==
X-Received: by 10.66.182.167 with SMTP id ef7mr67578418pac.128.1474484880136;
        Wed, 21 Sep 2016 12:08:00 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.252])
        by smtp.gmail.com with ESMTPSA id c64sm88347974pfa.51.2016.09.21.12.07.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 12:07:59 -0700 (PDT)
Date: Thu, 22 Sep 2016 00:37:44 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: greybus: Use setup_timer function instead of
 initializing timer with the function and data fields
Message-ID: <20160921190744.GA22856@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch uses setup_timer function instead of initializing timer with the
function and data fields. Done using coccinelle:
@@
expression e, func, da;
@@

-init_timer (&e);
+setup_timer (&e, func, da);

(
-e.function = func;
-e.data = da;
|
-e.data = da;
-e.function = func;
)

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/greybus/loopback.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index 8b0d0dc..2a29f06 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -603,7 +603,8 @@ static int gb_loopback_async_operation(struct gb_loopback *gb, int type,
 		return -ENOMEM;
 
 	INIT_WORK(&op_async->work, gb_loopback_async_operation_work);
-	init_timer(&op_async->timer);
+	setup_timer(&op_async->timer, gb_loopback_async_operation_timeout,
+		    (unsigned long)operation->id);
 	kref_init(&op_async->kref);
 
 	operation = gb_operation_create(gb->connection, type, request_size,
@@ -634,9 +635,7 @@ static int gb_loopback_async_operation(struct gb_loopback *gb, int type,
 	if (ret)
 		goto error;
 
-	op_async->timer.function = gb_loopback_async_operation_timeout;
 	op_async->timer.expires = jiffies + gb->jiffy_timeout;
-	op_async->timer.data = (unsigned long)operation->id;
 	add_timer(&op_async->timer);
 
 	goto done;
-- 
2.7.4


