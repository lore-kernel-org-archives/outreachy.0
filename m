X-GM-THRID: 6252584121027002368
X-Received: by 10.66.160.9 with SMTP id xg9mr6245008pab.38.1455793203082;
        Thu, 18 Feb 2016 03:00:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.52 with SMTP id m49ls4255517qgm.97.gmail; Thu, 18 Feb
 2016 03:00:02 -0800 (PST)
X-Received: by 10.31.168.130 with SMTP id r124mr6270330vke.10.1455793202323;
        Thu, 18 Feb 2016 03:00:02 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si892682pfb.1.2016.02.18.03.00.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 03:00:02 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so1860777pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 03:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rjXgD4BcvbJbPA9Y8ckwwKoTxY1kABUT8om6aF02uSY=;
        b=qYSivCMZaoy9DLBjiRociKJQgUtKzFQsaQMJQNCJrljM0MAotctEO1oSzinC6U+cWW
         lqeqEnTJiP1qXN2iRRuTqnObxyyLCXWU7r8v5K6rmVs1KbTjJCPRujaaxQPRImYK9waB
         16Wfhu4dllf9In6O/9Ac3nqzXUxcWfvE4IiDpuxe7gZduxCVAIWCRxz6eVbi02LoO1Av
         yiH4CJRd+gDwaM/2M90m79g8/yNphgq177dh7X45bqpqoQyC1g/DZ0BCXM7hU//1CkyO
         PbUdvGGb/tufl8qr8xqOBrdQo5gtzPVBggQ0XNieTWMNA4mcxEtOOyi2qpxKn0AvUzPO
         nNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rjXgD4BcvbJbPA9Y8ckwwKoTxY1kABUT8om6aF02uSY=;
        b=V8tg8Xph5kvcrdt5CMnujSTo41zz9XXa6KXei/M1ZqfjcSzY6QtDmHqmdEoLzuTyuS
         0m6jTQJRtsuR3PopH8jXn2GO9yw332k6YbyX4LVp2LlOAZPfleojrc2Cbvr4E7XEN1id
         DLJGdWnxx6djOFbo4BsrVNdcaZEmo6c+kR4vZbqsNEBvV7IBTaBCa0163LGzWZbqKUTj
         6YPn+kFVS4EKiE2nwRHIZLEg7pJIvr43Y15L8sULmpf34SrUIgbPY1W4vmj5Iq8mpyZP
         3Oz3Fi13wqIJ7hlT3wIEnvy9Oxs3UeHuk3ILwO+Wmdr1I0KDGe5HRl0WgUFZTMR1yIwI
         sPUw==
X-Gm-Message-State: AG10YOQ0C3IMrVrA+i/GN5rVC3Jtdqll54F5xwhTKnaEDmCLtIq74euq0+JkYOi181MUcg==
X-Received: by 10.66.100.129 with SMTP id ey1mr9132740pab.100.1455793202203;
        Thu, 18 Feb 2016 03:00:02 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id 76sm9383269pft.44.2016.02.18.03.00.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 03:00:01 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 6/7] staging: iio: resolver: remove unnecessary blank line
Date: Thu, 18 Feb 2016 18:59:38 +0800
Message-Id: <1455793179-2674-7-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>
References: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>

Delete the excess newline. Issue found by checkpatch.

CHECK: Please don't use multiple blank lines

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 03395d4..477df95 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -564,7 +564,6 @@ static IIO_DEVICE_ATTR(lot_low_thrd, S_IRUGO | S_IWUSR,
 		       ad2s1210_show_reg, ad2s1210_store_reg,
 		       AD2S1210_REG_LOT_LOW_THRD);
 
-
 static const struct iio_chan_spec ad2s1210_channels[] = {
 	{
 		.type = IIO_ANGL,
-- 
1.9.1


