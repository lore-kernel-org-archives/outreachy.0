X-GM-THRID: 6673504750922629120
X-Received: by 2002:a25:4fc5:: with SMTP id d188mr2298902ybb.86.1553796406259;
        Thu, 28 Mar 2019 11:06:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5bc4:: with SMTP id p187ls8450497ybb.14.gmail; Thu, 28
 Mar 2019 11:06:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqywZ7uAHULhEcKJTAM4BmAgO/hX6V9q70gODC7v87cF/NTijsIK1G5sxvwtqIKMSvUXGeZ0
X-Received: by 2002:a25:5ed7:: with SMTP id s206mr1750460ybb.33.1553796405156;
        Thu, 28 Mar 2019 11:06:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553796405; cv=none;
        d=google.com; s=arc-20160816;
        b=WXIQf0JSvn52fmqdohODWgoOGOCqHJtMZCYlWNBwKHl92FSpkwr8hvQvIMsgWiiT35
         VhKv8A5P5YWo5bx4u+vBq4rftyll8ycjWj40ZP2ZmCyeqxGtVQEd2rjKCiRmfBn2Ad8g
         6inIK44uQ9xh6lVx53ZpdIJGDI+LF4oTiMXq9vhv3Ik7yqAthOWwLL5614rTXQmv0JX+
         TMQq13d0QSsxn1062GuW1uih/9Js/4swgxQyZ7UndaTAjClGGdusn6p+ckkwrFObIP4H
         NRBblOx6LeMn+yBD8EQOlMIL27TVTPkaB6RyeeUBsc+1HbcGryNvOnaoImm7PbsxlLgx
         mBTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=E0W3/zh0z5eOUoYrO8v6NmgaHVhhFws9O7oG5c2Hc6E=;
        b=T4S8e9bM9wy0mRkPhfzfWy3sCnprb1qednn6xAKxlpckk0jXhx5g2eRSBdbv30bFBx
         I933UwrqJylQ3xHyML0OSTwE3F+wlHqEw2+ShE/AUGXnXMqeiei2Q09Ed4Sz4WBy1Cth
         B3j0floxy+wvY6vDLtdtJs9xOVRGkAW2awyCuUh4KGzy3UC4w8JHQEyB0Wv/5Hs7xy5C
         65N8w5NGHNS9a6E6wP6dM8nTBhLonnqt/4P44/IyMIQuNxYJ/bnpk9Tqgov8sALcMXN5
         wc8nJQ2AbKUXDRNRE0LK/j+U6utRGDuJamKxm89K29qxUSAWG+NBsURpwoAiVA2onoLv
         ei5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UNBjsoT5;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id 204si1013144ywd.4.2019.03.28.11.06.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:06:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UNBjsoT5;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x530.google.com with SMTP id g8so11999983pgf.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 11:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=E0W3/zh0z5eOUoYrO8v6NmgaHVhhFws9O7oG5c2Hc6E=;
        b=UNBjsoT5xYjSZajOGp4DubShyimqmszYkDAIkARCmw7zKYykS4w9M56rPiWcSngToO
         2VsgqOhkbW1p9W6DSF21xfQaeOQ3/Ci11IyVt6rrSZHUf7wddLnH7hNnkos+0xBrURxx
         UKndSn8gBdpVfTgoDaaCU/tJqqLhOlD+tM21JlQhQoMxMQtyd1B1s3+mRmsFLLTgAq+H
         L1ktxp0sgw5zx0ptcrxDBl6a+F/w1rMvPjE2TDsUgAYJWCxcEN8Tp91yrEF9PAyNHh+d
         3ZkakKPzWt3rwtAtPXS7lHPP+IqdzhpZbW4EXpnZ5wQWIWC+OND/o1NHknuSzwbNwfiM
         XRRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=E0W3/zh0z5eOUoYrO8v6NmgaHVhhFws9O7oG5c2Hc6E=;
        b=qaph7SYCVb3b/HmobLyeYbp2n6QU3YNgYcFotIwtRWvWQninCpKkC4yoEd3abNytx7
         A1dJMMCIZ2gIUXg0r0YhyRpZHCp3yxpBJFPvSeqLXGT/iOGRJE4I9LPdbhKnqjy80Lu7
         fYDNQcnhstd1qqht/m2AjHROnCqcMqUmZes3azhsZneUQSgjHFiY9ahn8eTFE4f7XIco
         NilkLtf0aOvGOzj1wW4LJzkKy/r9bsbXfe7/ZiXU8ND7cHbTUcB/6EFxq7CVjmoyt7Gj
         Xa/8TXirFjG4Tah0aZF6LVD+4miUI3iTlypmOS6upRJAoq8jAMVvYVsEQGqt9oJuZVvW
         IsuQ==
X-Gm-Message-State: APjAAAULUIxvXYysBaXdcLyxFYlTiOyQjt9SMMUwVf+2/SpY0WOj2BKi
	WvDpzZI+7NoQDGo4Xr0X+LY=
X-Received: by 2002:a62:41dc:: with SMTP id g89mr41298852pfd.109.1553796404885;
        Thu, 28 Mar 2019 11:06:44 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6105:9194:4d26:756d:e157:1b31])
        by smtp.googlemail.com with ESMTPSA id g67sm39393347pfg.94.2019.03.28.11.06.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:06:44 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: ipu3: Avoid unnecessary blank line.
Date: Thu, 28 Mar 2019 23:36:32 +0530
Message-Id: <20190328180632.28178-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary blank line.
Issue found using checkpatch.pl

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/media/ipu3/ipu3.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/ipu3.c b/drivers/staging/media/ipu3/ipu3.c
index d575ac78c8f0..e0bbdad7cf5b 100644
--- a/drivers/staging/media/ipu3/ipu3.c
+++ b/drivers/staging/media/ipu3/ipu3.c
@@ -240,7 +240,6 @@ int imgu_queue_buffers(struct imgu_device *imgu, bool initial, unsigned int pipe
 	for (node = IMGU_NODE_NUM - 1;
 	     imgu_queue_getbuf(imgu, IMGU_NODE_IN, pipe);
 	     node = node ? node - 1 : IMGU_NODE_NUM - 1) {
-
 		if (node == IMGU_NODE_VF &&
 		    !imgu_pipe->nodes[IMGU_NODE_VF].enabled) {
 			dev_warn(&imgu->pci_dev->dev,
-- 
2.17.1


