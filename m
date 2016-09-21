X-GM-THRID: 6332712433108385792
X-Received: by 10.157.9.168 with SMTP id q37mr2404083otd.143.1474449521942;
        Wed, 21 Sep 2016 02:18:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.68 with SMTP id y65ls4894391ioi.28.gmail; Wed, 21 Sep
 2016 02:18:41 -0700 (PDT)
X-Received: by 10.36.95.14 with SMTP id r14mr420851itb.1.1474449521401;
        Wed, 21 Sep 2016 02:18:41 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id si10si8033070pab.1.2016.09.21.02.18.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 02:18:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so2142115pfl.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 02:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LmZ0uaFEKCODjlIYyFvqJ5iM1kePNIqtcsgpEIYexao=;
        b=S4n+uWMehGXz10PlK2w2x9cBjCOmwgWhrUQqdKoRdmZwD6aoWLeqpBiktNc5V51WZ8
         Gf4DCit86t11wXB0W12cZ/IwDgZzL0baCoV1aP6kWAXbtgRP79lILSDXGaCTKKyPQcm6
         QZ+aMgY7pBfmkPnBsDoeb1cZpbI1oM+KtZmeoUEYnzB9hjzN94DGDyckr4cdNOT5cqyQ
         dEOQ4l6C3lcflVe5TqMjj6WJi+TSKddW658mBaxNRo1raq/Uyparz/RhVhP/rzGA9uz8
         RMpnvIj3EyaaHmRy024QvwTRjF7P7s+99nm7M30jYeDwL+vQZ3Tf+BpNwLLT/91N2yPb
         zu2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LmZ0uaFEKCODjlIYyFvqJ5iM1kePNIqtcsgpEIYexao=;
        b=elQjKTyZAIEfjtiWm2GW1zsUNxa5ImV66xqN8SOi1bZiH5mFnuiYT2lKH7I+Myg4c3
         ryz1WKUWCv4W8luESh+iSnh6ru7lyRDhpMbM1QoyO32JZF1WVbfA99Xo2V7OWymYK9f0
         qCsRmyBVI1sUghBoQMR4Y7Ki7RdrcVt8EzCsXjdSn6pWupGkWc7Ix3hbNqa7LJxpoVic
         5eE0qYcmoGAa5y30Zc8++NYq3zRrrbi9Yk1j7kkuUrTw1wCYIPWwH0npb87ROPJmRdN8
         YIwFhleMAEkQ7yQkf+oEOGEX3z9JlVBnuIHvrdcTBEeNcnXFXqpptmeo2WQm5KYVBcKB
         JhVA==
X-Gm-Message-State: AE9vXwOHGXW5oLfZ6EX+XSH9u9WULtpO1ijxGkyS9Z2p8K2EobfLrqPL5idvCl6pHJreEQ==
X-Received: by 10.98.100.1 with SMTP id y1mr48480018pfb.169.1474449521228;
        Wed, 21 Sep 2016 02:18:41 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.62])
        by smtp.gmail.com with ESMTPSA id u1sm82931468pfb.62.2016.09.21.02.18.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 02:18:40 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 2/2] staging: greybus: arche-platform: declare struct of_device_id as const
Date: Wed, 21 Sep 2016 17:18:07 +0800
Message-Id: <1474449487-9524-3-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1474449487-9524-1-git-send-email-eraretuya@gmail.com>
References: <1474449487-9524-1-git-send-email-eraretuya@gmail.com>

Constify of_device_id structure declarations as suggested by checkpatch.

WARNING: struct of_device_id should be normally const

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index d6b3609..e36ee98 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -776,12 +776,12 @@ static SIMPLE_DEV_PM_OPS(arche_platform_pm_ops,
 			arche_platform_suspend,
 			arche_platform_resume);
 
-static struct of_device_id arche_platform_of_match[] = {
+static const struct of_device_id arche_platform_of_match[] = {
 	{ .compatible = "google,arche-platform", }, /* Use PID/VID of SVC device */
 	{ },
 };
 
-static struct of_device_id arche_combined_id[] = {
+static const struct of_device_id arche_combined_id[] = {
 	{ .compatible = "google,arche-platform", }, /* Use PID/VID of SVC device */
 	{ .compatible = "usbffff,2", },
 	{ },
-- 
2.7.4


