X-GM-THRID: 6392311516986605568
X-Received: by 10.223.144.81 with SMTP id h75mr202084wrh.1.1488326004513;
        Tue, 28 Feb 2017 15:53:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.9 with SMTP id z9ls266787lja.26.gmail; Tue, 28 Feb 2017
 15:53:23 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr623988ljd.27.1488326003207;
        Tue, 28 Feb 2017 15:53:23 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id b186si180082wme.1.2017.02.28.15.53.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 15:53:23 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id q39so3448031wrb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 15:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=iW169hUTeOwFjKeNmvw8fx3P/AZfMpwtyMu0sDH9P+Q=;
        b=PVtQBPOlfb5ks9df7AHoY6yQXnI/WkYaCOioN+v0Cet5193GGL68dNUsIjKZMkhURZ
         uOoqQg/IH9KgJY2SmmSwn1dJ+5aIIIBz5cwvLrW23O5kc1NLLCAZ+CjiVq0ixHro8c0Z
         YPwbcrOfbxJndRPWmVDQ9rme26RzxW8y3wJf08GLrDGEr+ZRFRVY47PovbzC9EAqsRYo
         CQST9qyOL57ah549YC5AZ08xbDpfGb3hyqhfGVS0nhHXA5sAaKiCoYV314vptgFIdsDa
         +tfTr9HeHB43ZnLMTwqGNK45ZRErVsd9B70N66Pd5NxLfxfw2o2nHpeqBOBm9Da+LTt2
         4jAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=iW169hUTeOwFjKeNmvw8fx3P/AZfMpwtyMu0sDH9P+Q=;
        b=ZAti2ATJgtGFs/JcvRadPKACZxoEBd08gAUVPh88tKvIdgoJdeaRDtuTUkkHYpEyHw
         0q9U+GjiPEeASjGN1dO0ZOWZmOe7JQI2yE7fuI6shskp8xFKUXMPAIfNya9VL+5fGIXC
         ZSNxk5IpTFJ2/TPiMc4zJiyL+v4QCwtKSsr8cOVgLsg1mJ237FRRFJfO9zvwvYxmy/Ao
         w9Q53E7b1G9DaPza9Lf+a/X5DEjHVMxDuWecwF8LBtKBj8lbp8QjBDAgHEY8I8snaUJ0
         cFq9amIkR1y0tfsKWqy77CEwHPj49jKx8gkvmcpl/OxG9S8X1ijivwQ2jUCJ9Ponkv8p
         7wcQ==
X-Gm-Message-State: AMke39mkmmo88wh+vElrLCnbQbHQ8EndHmXyV7BB73twfl1mabHBH473mQO26RrzOcwUOw==
X-Received: by 10.223.167.138 with SMTP id j10mr4384851wrc.178.1488326003034;
        Tue, 28 Feb 2017 15:53:23 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id v102sm4235565wrb.11.2017.02.28.15.53.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 15:53:22 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH] staging: bcm2835-camera: Refactored get_format function
Date: Wed,  1 Mar 2017 01:52:53 +0200
Message-Id: <1488325973-2721-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Now, when the condition inside the for is fulfilled, I return the result,
instead of checking afterwards whether the counter has reached or not
the end of the list.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c4dad30..00e0ea2 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -229,13 +229,10 @@ static struct mmal_fmt *get_format(struct v4l2_format *f)
 	for (k = 0; k < ARRAY_SIZE(formats); k++) {
 		fmt = &formats[k];
 		if (fmt->fourcc == f->fmt.pix.pixelformat)
-			break;
+			return fmt;
 	}
 
-	if (k == ARRAY_SIZE(formats))
-		return NULL;
-
-	return &formats[k];
+	return NULL;
 }
 
 /* ------------------------------------------------------------------
-- 
1.9.1


