X-GM-THRID: 6340040236575227904
X-Received: by 10.157.38.241 with SMTP id i46mr134166otd.82.1476155649855;
        Mon, 10 Oct 2016 20:14:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.57.181 with SMTP id y50ls613400otb.10.gmail; Mon, 10 Oct
 2016 20:14:09 -0700 (PDT)
X-Received: by 10.31.162.71 with SMTP id l68mr399824vke.37.1476155649539;
        Mon, 10 Oct 2016 20:14:09 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p131si208026vkf.1.2016.10.10.20.14.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:14:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id b186so376406vkb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 20:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=smIx205wCqEJdr6bReDGzYs03Pc9QgJIfyju1tV0p5U=;
        b=NxIWgTxCejyC3x8IBPfgb2/aGRG1UsU8s3l8uMnEP0BYkhyyl7OFAx11zhEij0ldAL
         ke0Mp91H+a/dExYXcqNobEHI0f8TVH5KJklIvuP7hIc9jcZQGFEmAucGFvXODn4Xkrsv
         Ik+qDU9XHP6S6ugERSymYg1p5eHSRqXlmFaNQeoFnegOd6/gstIGrc/YObgYqkvcDH/k
         tTFm8BTR7niy5h/2F9k9YYQ8Vl9yOcJk67Nue+Y1Vf3nN0T08+zLT6Laeu4p844ZGejE
         nHQhRyl8mYIAz5CEGgfxyCpD/DJy/24Gnmyz2I9LCTgX/DboaGAYZbkNqQrzkIB/OWGQ
         KpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=smIx205wCqEJdr6bReDGzYs03Pc9QgJIfyju1tV0p5U=;
        b=eOX0XyQqkOBhXjoqyPfllBs/AMuQqpNuW2OoCB6eGeVzOF5s9O31Gqd11E/tiO3rti
         yvOwNsvn2b2KTN/xJzVrTsfWCLgreteIPC6Qay9VWZPTL6Ry387bLHG8PmsXXoWkuAGb
         z5rGfHG3hJCT8z6fQPNxTWVI8WPVuT6pu4XnAXHeJuVZWgNCxfYHdiS69AGf/CW+APFF
         oqxzpW/bqowgxj8y3OHE1H++5IMfbKqPNcFD5bd3xNTapnHNysbb8SNFy3EaQx8oh5Ne
         bMU3HVFfN21ZjtD/OL25cSSkUm1y/+nbkc9HJYt+uAJJgPUzD1iF+wIYCknV9rJWH1NO
         +0Fg==
X-Gm-Message-State: AA6/9Rnkp3lwyYq9bzwVqvP3VSvnqzBk8hbs8zGmZlbOqLhqjZm04q/h0bK0ZJX2dlq4Og==
X-Received: by 10.31.199.199 with SMTP id x190mr1382864vkf.117.1476155649388;
        Mon, 10 Oct 2016 20:14:09 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id s17sm570132vka.26.2016.10.10.20.14.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:14:08 -0700 (PDT)
Date: Tue, 11 Oct 2016 00:14:02 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/7] staging: greybus: Replace blank spaces with tabstop.
Message-ID: <20161011031402.GA22006@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Statements should start on a tabstop

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/greybus/camera.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index d89a329..0c73445 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -1119,7 +1119,7 @@ static ssize_t gb_camera_debugfs_write(struct file *file,
 	char *kbuf;
 
 	if (len > 1024)
-	       return -EINVAL;
+		return -EINVAL;
 
 	kbuf = kmalloc(len + 1, GFP_KERNEL);
 	if (!kbuf)
-- 
2.7.4


