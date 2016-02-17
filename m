X-GM-THRID: 6252275562391273472
X-Received: by 10.13.227.133 with SMTP id m127mr1739441ywe.1.1455721353507;
        Wed, 17 Feb 2016 07:02:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.181.73 with SMTP id du9ls2189740obc.45.gmail; Wed, 17 Feb
 2016 07:02:33 -0800 (PST)
X-Received: by 10.182.24.199 with SMTP id w7mr1780386obf.48.1455721353151;
        Wed, 17 Feb 2016 07:02:33 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id ff2si233146pad.2.2016.02.17.07.02.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 07:02:33 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id yy13so12505368pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 07:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=K2dt7rWR9/ET1YKkcrMIHbg5ttnxwfjn+U5fsoTYL/k=;
        b=MvOw984S6B4K9xLgDPPaNkFm3vnjTg4Cw9urtfVL7OzpjTS4iYPqIwiQWpsdLr3flZ
         44E9M85b9acQactLEy84cAKTi1uYqHjBKQBRNug95EoiQXtve/aNQ6NfkcSjExbeec2v
         r212X1RpeEoc5ZkvdOhzNN4x+qDmjZr76IRoTshDyJzJKIxdakZjHiNTP+C06bx/nC+5
         appI7tbePZeH8YU34CatTp+s8RSMkYmxt/O9+FH5lA1aKzJawVcM1FBxN7SpwVxQkWOX
         lo5ipVR4i9ZEeTmZgrJg652gsVjS+SFYPUV/oyQ+Je3QhyfZ0t+206GFOoHdbtLBSxB+
         zFng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=K2dt7rWR9/ET1YKkcrMIHbg5ttnxwfjn+U5fsoTYL/k=;
        b=TnuXc2METbh3YqQOeMnT1R2ICv+w0/6jz5cw0+wHpi0BHkKdF9Q1joXWJ5tLLuQm8L
         3n+2wFIJTvUU/c47Q1k9p2zB2OMiKxoBJY779pGuzVjsNeAUV5qjgp2zdQsfqXWEljho
         N3MQGiT8eLDWWVwvXUt0xod2zuzijIjEzF2PCWBJSzoLSB5rBo17DcHWRY3+XrTT4tXB
         iYBMqQo9R9nUXFCwZTWqBZFVo4weJY0lvVm0mKuIXzsYpaay8AyL6qZVl6q+On+s43lu
         83F6aXVOFA1o0dsqnBLjIfYYq42irB2Ld5CN73WJihf+bYrlYU/Fc7JoOVVJ6YX5RbQB
         KjPg==
X-Gm-Message-State: AG10YOSjcWbw9aNvAXzLgbq448t8HnHKYvlNldLJq15KG4xn55AlWx3UF5QpbbXFjxcuog==
X-Received: by 10.66.62.226 with SMTP id b2mr2737284pas.94.1455721352934;
        Wed, 17 Feb 2016 07:02:32 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.168])
        by smtp.gmail.com with ESMTPSA id tn5sm3342028pac.32.2016.02.17.07.02.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 07:02:32 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 3/5] staging: iio: tsl2x7x_core: remove space after a cast
Date: Wed, 17 Feb 2016 23:02:15 +0800
Message-Id: <1455721337-31883-4-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455721337-31883-1-git-send-email-eraretuya@gmail.com>
References: <1455721337-31883-1-git-send-email-eraretuya@gmail.com>

Delete unneeded space after a cast as suggested by checkpatch.

CHECK: No space is necessary after a cast.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 9ab002f..5d9d8b6 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -413,7 +413,7 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 	/* calculate ratio */
 	ratio = (ch1 << 15) / ch0;
 	/* convert to unscaled lux using the pointer to the table */
-	p = (struct tsl2x7x_lux *) chip->tsl2x7x_device_lux;
+	p = (struct tsl2x7x_lux *)chip->tsl2x7x_device_lux;
 	while (p->ratio != 0 && p->ratio < ratio)
 		p++;
 
@@ -624,7 +624,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 	dev_info(&chip->client->dev,
 		 "%s als_calibrate completed\n", chip->client->name);
 
-	return (int) gain_trim_val;
+	return (int)gain_trim_val;
 }
 
 static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
-- 
1.9.1


