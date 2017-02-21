X-GM-THRID: 6389640527251243008
X-Received: by 10.31.96.145 with SMTP id u139mr7095497vkb.11.1487704116544;
        Tue, 21 Feb 2017 11:08:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls12717447otb.8.gmail; Tue, 21 Feb
 2017 11:08:36 -0800 (PST)
X-Received: by 10.157.66.6 with SMTP id q6mr5498071ote.47.1487704116191;
        Tue, 21 Feb 2017 11:08:36 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id d63si1161645pfe.2.2017.02.21.11.08.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:08:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 5so19579546pgj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 11:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DhXIuMUj9eOWtgq/L5i/Q/MjG9jlrnxZKM2nBgZ3xao=;
        b=Ts9VA2FrtaZdXCPqlNx+if/muUFEXPHQZhPSWSPhADiuJMLaU4jxExKgQp50aLGCiE
         8iOUl327OBPEaKrMW6vB43f4CAtG/N5n+35+kZUhndUoHtExDysESBI+iCdMC8NtIIM3
         DJv82Zt0Faf3WOrkKEd2EtTwjUPh8YKCyrVbOM4eI8AH7PeV0Tj5Lxiz1PAVvS3TqOIb
         R7bkGYr3G6BcP0+yIUkhmnjHXS30877K/fME1dWFueoEuC1uReYiXcV3hTPA+0Uypmt8
         n6Nc+WGx9vYD6fSecjOR75KMqRJV62hRGatAVieNUweRFfRliInL2VSel2dYZQW+tVt8
         /6Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DhXIuMUj9eOWtgq/L5i/Q/MjG9jlrnxZKM2nBgZ3xao=;
        b=T4C+TuyosL9d7jGTZup7NDXz3UiGkmdDCeVKR7Q8yzpIJ2PmDJDCvOPiQac4zdzkEx
         Io9ibTaGTp5uUGUcqkLRWfB018dzR0EP6tLsQMwwsxyc2w9wbnoFQjOHe4Ifqb3hPSnU
         WAEcyENAQge0Xm5d0zMELyh1d20G55RDQjtPSinrnxvkKnYXu1s4nzjXeFVyMHvNhm2V
         DCbyAuBUxfISgN90w0L0gh/pVD1NPhF+Xx0Pq5CKMcJ0lCPzsvYQ72EELrTSvEl6gNFy
         Ha/2COTEjgBBj7lfDO8bRONWoenDJ0rO1GMj5K5/7FOuJQMrE8nakO3/58Avg34/Y3sW
         fGoQ==
X-Gm-Message-State: AMke39lQ8EcPAmGxP8RGZH68rrHXu+veMI+ZrtyFavKJXVIMqbAobtMUFzAw+4xK4oQynA==
X-Received: by 10.99.225.5 with SMTP id z5mr36223120pgh.145.1487704115931;
        Tue, 21 Feb 2017 11:08:35 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id j127sm19284515pfg.89.2017.02.21.11.08.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 11:08:35 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	johan@kernel.org,
	elder@kernel.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: greybus: loopback_test: fix device-name leak
Date: Wed, 22 Feb 2017 00:36:23 +0530
Message-Id: <1487703983-19655-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Change array index from the loop bound variable to loop index.
Memory leak was occuring whenever there was more than one
loopback device. The pointer to dirent structures must be
individually freed before freeing the pointer array.

Coccinelle Script:
@@
expression arr,ex1,ex2;
@@

for(ex1 = 0; ex1 < ex2; ex1++) { <...
  arr[
- ex2
+ ex1
  ]
  ...> }

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
	-Made the commit message clearer.
---
 drivers/staging/greybus/tools/loopback_test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index 18d7a3d..1c01833 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
 	ret = 0;
 done:
 	for (i = 0; i < n; i++)
-		free(namelist[n]);
+		free(namelist[i]);
 	free(namelist);
 baddir:
 	return ret;
-- 
2.7.4


