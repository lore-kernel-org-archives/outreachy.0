X-GM-THRID: 6340040411169423360
X-Received: by 10.157.4.12 with SMTP id 12mr414422otc.145.1476155689654;
        Mon, 10 Oct 2016 20:14:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.182 with SMTP id s51ls587733ota.14.gmail; Mon, 10 Oct
 2016 20:14:49 -0700 (PDT)
X-Received: by 10.157.43.169 with SMTP id u38mr429024ota.117.1476155689385;
        Mon, 10 Oct 2016 20:14:49 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p131si208317vkf.1.2016.10.10.20.14.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:14:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 192so381217vkl.2
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 20:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rhwrdJlWwG7JtPbGQVC+LKXN3JX1CxgLjNEmVccIe/U=;
        b=0JB8H0Bk/f5iAQkE1h8JtW2IWxuIDn01F2ejPwukj9dzlBJTnnTwhjPCitHVnEqW0E
         HaJByWBtlRrnbEp+93n8AvhEV/MNvpRluKKYoV3b05ZNxRIR97SWsO9oGbVlybwLT/Lq
         2ntnE4FOkYF70xXwOfMLmHuwZ46yCHVlBVeFqp5xT2PA7j2B5mM2B3oFdMw48LvJpxQ2
         HeRGvMRi9u8m8OF24gKMfWqF0Z8dTulntbehXu5svUx799NxN9HGUQvrbP9tNENiDYzn
         H8l5KlpCSIsMk9rZ9MV8exfXgqXdlRh+gKlxrZv1VbTtw3zN0u22nIS+Ns/90KZe2EdR
         R2jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rhwrdJlWwG7JtPbGQVC+LKXN3JX1CxgLjNEmVccIe/U=;
        b=hkMqQIooAX1J70MivWiWw0G7juzrmcwHaOhVEB+sg1xm7gGfgGDrn20QNjXW+ZsQAC
         DGSOEfk5RIElWtnNyFkvqdVQGP+XQRM4JJIX6rDP5LeKB9ZDgg6scKdkFUEzQAjGY8Ns
         KagTTuCSL/TRfTIqc1a8mr5G+dWLZrolB0qcVQVzE5YwcmmMcSLHN6XzGcOEQYXVqUgh
         v9MZyUYPTRzuVjCoxtF3jV7wuO/5kHPN6G2clzwIppkfE5liCcBjTxrBjnPT4QRBhbOi
         4zcLI3m6kJ/9pZuztq//EmF/ZtvCoVI4EqzHhB0nAae6yjcYCkBm+hYNquXZlwvR56OA
         +ktw==
X-Gm-Message-State: AA6/9Rk+aUQUuumNmdyNsKC9r1x+ObUo/XJTdRVYRYOl7ta6qFFHB0IrEehg5aPptyOX6g==
X-Received: by 10.31.65.195 with SMTP id o186mr1211858vka.3.1476155689203;
        Mon, 10 Oct 2016 20:14:49 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id g142sm587692vkf.12.2016.10.10.20.14.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:14:48 -0700 (PDT)
Date: Tue, 11 Oct 2016 00:14:45 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 6/7] staging: greybus: Use kcalloc for array's memory
 allocation.
Message-ID: <20161011031444.GA22033@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Prefer kcalloc over kzalloc with multiply

kcalloc is designed to allocate memory for arrays, its use is
preferable than kzalloc in these cases.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/greybus/camera.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index 0c73445..1c5b41a 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -797,7 +797,7 @@ static int gb_camera_op_configure_streams(void *priv, unsigned int *nstreams,
 	if (gb_nstreams > GB_CAMERA_MAX_STREAMS)
 		return -EINVAL;
 
-	gb_streams = kzalloc(gb_nstreams * sizeof(*gb_streams), GFP_KERNEL);
+	gb_streams = kcalloc(gb_nstreams, sizeof(*gb_streams), GFP_KERNEL);
 	if (!gb_streams)
 		return -ENOMEM;
 
@@ -938,7 +938,7 @@ static ssize_t gb_camera_debugfs_configure_streams(struct gb_camera *gcam,
 		return ret;
 
 	/* For each stream to configure parse width, height and format */
-	streams = kzalloc(nstreams * sizeof(*streams), GFP_KERNEL);
+	streams = kcalloc(nstreams, sizeof(*streams), GFP_KERNEL);
 	if (!streams)
 		return -ENOMEM;
 
-- 
2.7.4


