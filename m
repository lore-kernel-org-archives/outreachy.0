X-GM-THRID: 6395446243166781440
X-Received: by 10.99.156.18 with SMTP id f18mr12050262pge.41.1489333166225;
        Sun, 12 Mar 2017 08:39:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls12295410otc.32.gmail; Sun, 12 Mar
 2017 08:39:25 -0700 (PDT)
X-Received: by 10.157.23.232 with SMTP id j95mr12338323otj.132.1489333165897;
        Sun, 12 Mar 2017 08:39:25 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a3si2717668pfb.2.2017.03.12.08.39.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:39:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so16308841pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lcvrOmjD9SIkfhFvVOEmim6glQGBDO9/SkZ8TP2grm0=;
        b=mbM1DHEPq4czBEtzB2EYfZiK+xdpvXbyrY+w7VVY5CHRxH8qJqEMezrX3r8wL+8cmD
         AeDDCDsPCl0yMaP8YA26CKVGK9QQFDwN/zRERXcQDNLI1ptvkdWkw4RXgLCSfEx9+08G
         3SbvAWdhczLPVp/c7y85u2e5PEu16b82AoDLEY0nB2IzDpC630LKG1WoocH1yqA9k1nH
         8cv7ZCj0lWhP74l6mdodmOcylel/x8UbSxpPNNp8mJ2YG5IB26aMgKq/0/UGnoD8+N1H
         CsRRIDGIDzIdWm7HCwX9fpdi8mt6KsvbMldtzushbBhdp92s1ag1TpPJ2n1E3i8tx7Sj
         4YRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lcvrOmjD9SIkfhFvVOEmim6glQGBDO9/SkZ8TP2grm0=;
        b=jmWp0Dviyhj1xp5yJIwa3S5mCwWv1aJG9+8bi4KE3snFn4dNPB6GFU/97U+wFZQl3t
         /imhacKvgexOfDk245LQgzrqWqDbdjNypwO5K7gbD8iW3tgS7EVT2JjScA1NtsauutW1
         vUWpJUr+MTfl+04u3Qi3QzHKDQ7/trFgsnh+Ee//C5oaud5Hd+L4Tuf+3GJcKeczh8DT
         j8KopSrhLoA9YGZxdgz/r4NauT60GvzfEQoVsYYl7vXRrIjnjctYMvAH2zEbQUoaVumW
         v6nputbwYrycZxHZb0IQnW0OD1hM6pVH8Y3ajBk9iqvPRmr15i5srWZNFd7gqq1wvQmX
         sofA==
X-Gm-Message-State: AMke39ll81Bq8uqibRcs7TSPkOM5t/ZZCKldS7fJYq+vjRXXOa7Gb71H7HuzrhPuQafk+w==
X-Received: by 10.99.5.82 with SMTP id 79mr31862912pgf.8.1489333165655;
        Sun, 12 Mar 2017 08:39:25 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.35.14.30])
        by smtp.gmail.com with ESMTPSA id r89sm28987646pfe.6.2017.03.12.08.39.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:39:25 -0700 (PDT)
Date: Sun, 12 Mar 2017 21:09:14 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v7 3/6] staging: bcm2835-audio: propagate PTR_ERR value
 instead of -EPERM
Message-ID: <6f8cf4f4fdd83bb29802d0b9a9cc33a70e3648e1.1489332734.git.aishpant@gmail.com>
References: <cover.1489332734.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489332734.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

It is better to propagate PTR_ERR value instead of a hardcoded value
(-EPERM here)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index d596f43..698fdff 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -436,7 +436,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	if (IS_ERR(instance)) {
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
-		ret = -EPERM;
+		ret = PTR_ERR(instance);
 		goto err_free_mem;
 	}
 
-- 
2.7.4


