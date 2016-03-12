X-GM-THRID: 6261077782348955648
X-Received: by 10.182.56.233 with SMTP id d9mr10180944obq.2.1457770780416;
        Sat, 12 Mar 2016 00:19:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.158 with SMTP id c30ls704387ioj.109.gmail; Sat, 12 Mar
 2016 00:19:40 -0800 (PST)
X-Received: by 10.98.89.143 with SMTP id k15mr7352715pfj.14.1457770780125;
        Sat, 12 Mar 2016 00:19:40 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id sf5si1899136pac.1.2016.03.12.00.19.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 00:19:40 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so10124857pad.2
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 00:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ejVyus//Q9+hUhSQ+BKbzTPB+rK882LdjXOHsMtLER4=;
        b=xCMw879CVOSnNxI6vGUvR7v6ftb1OdRs9EhUY1bjlmmhg9fJFBcFXTePNtObfDow/B
         fKIqXDmx28tqsPu1yU+uSU+NwSvHdDD85znmJ7xrdrNTSjww9Xn5RIc3uQyX/y54TquZ
         lGxkELoFJC52Ql6XhP0fLzYpWiOJp41+LlRHYbmltAHcna8WdJPfn2X3ocKjeRXqTtI5
         gtMYX68cQk25M7vjQOWzXGqmsFoq9+TzM+NO0JL34K0xLfmu+n4sLcyjwbqE65sCvJQ9
         0BEZ2R7GKQJbzKUj/4g0qdg8jTEs3wAWBuu08pPZ/lDmlLXv6usXNk4K7oRqQnWnAXnD
         rRtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ejVyus//Q9+hUhSQ+BKbzTPB+rK882LdjXOHsMtLER4=;
        b=E5Xp0UKqmp0Hec+ddG3IjgpPaHDrFdjh5x3tt/Ii2RhAlbn8aK27b1i0GjXjl/Q2/G
         evAfkwXCoBVkT7jvfSRJ/6JOwtk8qdWGGQW8kZEvSo59HnLi7Mf3unpi6Yb05zctMoY6
         oWLkywJdPTCM1QMLRlRVDgNaFSZ8jqDwAb0lfRQdt0BHXFBYh49+TYihpGwhn0tuprJO
         6Q5fmr5l0j/k0K7JCSlfYaV/F92LyVJ2Sy0uI9ZX44O4zxcYzNMp/VvJECgAl6hSAHXo
         luiL55/KKljTcfrhkATvvuw4lUWaGDx8+xKjw0xS3hSvU+r3DL5ZB47KSaHmXo5kj8qK
         wR7g==
X-Gm-Message-State: AD7BkJKbeG+GnkXb5isf4qVV59gJkzTuK25hF+GnVaRUIvpadlcpa749mjNfMBUXGqxesA==
X-Received: by 10.66.250.163 with SMTP id zd3mr22010752pac.119.1457770780010;
        Sat, 12 Mar 2016 00:19:40 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.81])
        by smtp.gmail.com with ESMTPSA id yj1sm17955811pac.16.2016.03.12.00.19.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 00:19:39 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 3/5] staging: iio: tsl2x7x_core: remove space after a cast
Date: Sat, 12 Mar 2016 16:19:22 +0800
Message-Id: <4bb49e366451138f274b7369a964c7b1453b1803.1457769810.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457769810.git.eraretuya@gmail.com>
References: <cover.1457769810.git.eraretuya@gmail.com>
In-Reply-To: <cover.1457769810.git.eraretuya@gmail.com>
References: <cover.1457769810.git.eraretuya@gmail.com>

Delete unneeded space after a cast as suggested by checkpatch.

CHECK: No space is necessary after a cast.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index de069be..6291a71 100644
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


