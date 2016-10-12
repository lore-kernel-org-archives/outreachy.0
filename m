X-GM-THRID: 6340627833359958016
X-Received: by 10.66.145.193 with SMTP id sw1mr452608pab.129.1476292459728;
        Wed, 12 Oct 2016 10:14:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.131 with SMTP id b3ls1336485otc.1.gmail; Wed, 12 Oct
 2016 10:14:19 -0700 (PDT)
X-Received: by 10.13.250.129 with SMTP id k123mr570781ywf.1.1476292459370;
        Wed, 12 Oct 2016 10:14:19 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p70si998760vkd.0.2016.10.12.10.14.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:14:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 2so2395028vkb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 10:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yofqBS5nhrcfaZW+7njOpEW3DmjnxRnm9o5ebaCFi+E=;
        b=Rqbxc75oqExVLoVikF/snXwZwdlcYazGHojfrJy32yHv2+qIM7NQLNwK7iI8Tz9M19
         w/5fCrxtnwRa32GFEdaSSEWipmrHCiSq/rpfelaKcNqo9zHehNVadMbhJnClnzZafLp7
         nJQdC/WzqsKyVCh99kLfNtL5NQuvnROTj6rdB788IRRSuj1hPjEWEoZJlD/D24azteQ6
         dYCKmMvUbGO+ZPpFOgaVaWAXozrlb/Ti/d+rejW+FmS3bULLWfZ/F+CodpBe0pZ95rcP
         vP1iZUDOOIBb7wI14MO5vqRfl0+avT5q+prtPWXkt61DEfBA6WSWc5l9HjhtR0KVQnuq
         mWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yofqBS5nhrcfaZW+7njOpEW3DmjnxRnm9o5ebaCFi+E=;
        b=UrQWVoCHvCoBIs0kA7vln9JqZasCavUHSiMktYDJSj8or4+lTJO2N4oYafgcthH8Dx
         DXkQ5Oi7RxP+V+8TR2Gond3IC+8LNKDaaRmtiVeqvet/q1ibm1BfBfaiFeT1kojNfxyw
         dNhKRsXeUSDn5TeZu56VeU1FgmzDQQKAqq6p7RzFwJsp/XEsLbGxnMjUoT61UyZzJINL
         aPtOGp8qCvRWec3vIxPMkNwDvs3P33586NVHuysy2lYOavucLUQF/BADpErV3UkB3wJH
         y4JzRbZurYz5jJUlt2DU3xKwf2d0jirPv8Ih2mg/lUtqqgHIIDMpm1acZZEgGw4iF8vx
         dlYQ==
X-Gm-Message-State: AA6/9Rmtwh2IcyyMlRzbaglqbKUbzJIBzPBf8/LDc6HGQc5o1VKhLtw7NGqcucdglHwSbQ==
X-Received: by 10.31.171.75 with SMTP id u72mr1331757vke.22.1476292459212;
        Wed, 12 Oct 2016 10:14:19 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id q10sm3437957vkd.0.2016.10.12.10.14.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:14:18 -0700 (PDT)
Date: Wed, 12 Oct 2016 14:14:14 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/4] staging: greybus: camera: Use kcalloc for array's
 memory allocation.
Message-ID: <20161012171414.GA30622@lennorien.com>
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

 v2: Changed the subject of the patch.
 v3: Added versions information.

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


