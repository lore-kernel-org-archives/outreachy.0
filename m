X-GM-THRID: 6333197149061251072
X-Received: by 10.129.56.85 with SMTP id f82mr383565ywa.85.1474562368392;
        Thu, 22 Sep 2016 09:39:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.211 with SMTP id 77ls6885704otd.49.gmail; Thu, 22 Sep
 2016 09:39:28 -0700 (PDT)
X-Received: by 10.237.37.93 with SMTP id w29mr451666qtc.82.1474562368035;
        Thu, 22 Sep 2016 09:39:28 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si877336pfw.1.2016.09.22.09.39.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 09:39:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 6so4017946pfl.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 09:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TsluCKoT+fkHownhnTk+UFm9FJq57xeIstBTPGz5wy4=;
        b=D0Y53psiuLhOvktx1dLvsheSH8MqD+3t95Mknk7VwjdBItyD9z5Ku4XlkzgV0fFmf8
         PoQAb6iJHa61vJjJcU6ZitMuuMKxq98i8ZzL1XesEbX5WHfdeixTWu6Dq0TUFJRTtkoJ
         FuHjINa4LMD8ES/7N5xkDt692tnNTzm8/+9DyIm3DO6tQlr2L2PiL+UsPRIXPxUtTrq8
         vgJw7gCi4ZRhq8usmGFQ+bs+kjTvc5q9rQkWvn5KP+px1lfG8edoN8heo/4IylR/7KXh
         Nqj/idq5qw9jrYFGeXNL9SdXWgVmQDYZTSAku7NpqUEgtHhcnsrJW+JftNgnw7GGOHlT
         ASGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TsluCKoT+fkHownhnTk+UFm9FJq57xeIstBTPGz5wy4=;
        b=YXR04C4s79b3VLf3Ym07Q0BXtBZZsUMspMgD83/Ksw6tdoWXrRrkpT2PguJ5js/vKO
         aUgPRH7ZTIza9KYv0TWl6xlUbthhYBBKNWuNnlKQSvVC2JPxaSRUlK+P+N0aYOVuPTfV
         kNjhEMFxbOZFumPWHh0+gNahhM6lGODWVniho865maXUSTgR+enb7ZYW25UGhBlxU/b3
         d1HYdyepMqFykViEcSi7zKnTXXImRqSw/LYOcaGUy1VChsqNYI7LMCrSmxvkeRaAM6SF
         lqLqecbwg4WFaRQKPRwez/20Z1yt/yVyv70NZ5fDotG/BnUJt+xU2FoS6s3pjyQVpzqz
         zaSg==
X-Gm-Message-State: AE9vXwP80ySBnCJKzJj2L/1OIlFxwpWwioctVuW8s0JYqIhCd2VQPj2kgF6LDir7Js7eBg==
X-Received: by 10.98.56.148 with SMTP id f142mr4755137pfa.83.1474562367816;
        Thu, 22 Sep 2016 09:39:27 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.169.208])
        by smtp.gmail.com with ESMTPSA id c28sm5390621pfj.6.2016.09.22.09.39.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 09:39:27 -0700 (PDT)
Date: Thu, 22 Sep 2016 22:09:06 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: greybus: Use setup_timer function
Message-ID: <20160922163906.GA8006@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch uses setup_timer function instead of initializing timer with the
function and data fields.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2:
Updated the subject
Called the setup_timer function after operation->id is set

 drivers/staging/greybus/loopback.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index 8b0d0dc..7882306 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -603,7 +603,6 @@ static int gb_loopback_async_operation(struct gb_loopback *gb, int type,
 		return -ENOMEM;
 
 	INIT_WORK(&op_async->work, gb_loopback_async_operation_work);
-	init_timer(&op_async->timer);
 	kref_init(&op_async->kref);
 
 	operation = gb_operation_create(gb->connection, type, request_size,
@@ -634,9 +633,9 @@ static int gb_loopback_async_operation(struct gb_loopback *gb, int type,
 	if (ret)
 		goto error;
 
-	op_async->timer.function = gb_loopback_async_operation_timeout;
+	setup_timer(&op_async->timer, gb_loopback_async_operation_timeout,
+			(unsigned long)operation->id);
 	op_async->timer.expires = jiffies + gb->jiffy_timeout;
-	op_async->timer.data = (unsigned long)operation->id;
 	add_timer(&op_async->timer);
 
 	goto done;
-- 
2.7.4


