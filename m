X-GM-THRID: 6393330913423392768
X-Received: by 10.99.245.15 with SMTP id w15mr1686395pgh.63.1488563369388;
        Fri, 03 Mar 2017 09:49:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.141 with SMTP id m13ls2983985ioi.17.gmail; Fri, 03 Mar
 2017 09:49:28 -0800 (PST)
X-Received: by 10.99.161.10 with SMTP id b10mr1487785pgf.159.1488563368732;
        Fri, 03 Mar 2017 09:49:28 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si164427pfb.7.2017.03.03.09.49.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 09:49:28 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so13302222pgz.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 09:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nn29nFhRrbirkrlHjwbMvOI/OPgEZMOnOXZF5dYuePE=;
        b=j/hQJdCtVU68B7QVv0jMP51rHfnBuXc2r1t/uRb9SFWwn0rI1XMJgL6OyS4cmVHfVc
         OlUqWeqoTySgWmWKsbAT8SB3jh+RZFDoSoaI39JGwQNsInSz+of4GPmRd6eZ6kxIx1bE
         7+KNjyyPQQbU4LLsFe5sQadZXr5QT9SInfCokl/A5Xudmb3Bb1YGckQkSsJxCd7LonRK
         SD/Nr2XJIlYkzivIcjJmxbcD9kfQuIfspFe3F8uWoUkdp0G1RF8gRc4uU47kemrzXXs4
         sVLPnGyoo5GnkMxWfE4c6BTYmoKv//eO/oRaDg18N/ORFoTa2GoCeQrRvuXWGJkqGELb
         14sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=nn29nFhRrbirkrlHjwbMvOI/OPgEZMOnOXZF5dYuePE=;
        b=ahQdE5+qzKPN8XVY7TKo0OPz1oB4iOdgrnitE7JYjOjCmuCvL4q2UCc50rb+Pm4DQ6
         2kWQq+URYOnD7iW5d9UQ9gSY107NM8CBOv4+17fxT7RO99iuvRvfsqt65UevR7mEINc/
         pMdr3V7JmxyKzNmqR9DZiPCMfoNv/EGVJ89u9hBu8m2LUrO/Dvt0hBUEKcaNwSuYC4IV
         DnvcwKDfyoNFTyyVRTWkwkTgbe4ehgtbOc6Xgdo3UcrHAQQxeyJHb7+qarYEHSJEb+y1
         AawoLYZNlqeiLgUk0jxvnllFCyqvAwnvGOc24YA2ofbbtdiMdmaF/adTwwJytMnMyspV
         WjPQ==
X-Gm-Message-State: AMke39lmRZs6pQMKqdy1ImjeCd+vyyzFnF72Q3iFh0eU5RMrX68kqB1kxAKa5RqOLmQPGg==
X-Received: by 10.98.112.134 with SMTP id l128mr4933613pfc.81.1488563368198;
        Fri, 03 Mar 2017 09:49:28 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e14sm24627409pfd.107.2017.03.03.09.49.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 09:49:27 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v4 4/5] staging: rts5208: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 23:19:03 +0530
Message-Id: <1488563344-31032-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488563344-31032-1-git-send-email-singhalsimran0@gmail.com>
References: <1488563344-31032-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 2379901..8b57e17 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -766,8 +766,7 @@ int rtsx_transfer_data(struct rtsx_chip *chip, u8 card, void *buf, size_t len,
 		return -EIO;
 
 	if (use_sg) {
-		err = rtsx_transfer_sglist_adma(chip, card,
-						(struct scatterlist *)buf,
+		err = rtsx_transfer_sglist_adma(chip, card, buf,
 						use_sg, dma_dir, timeout);
 	} else {
 		err = rtsx_transfer_buf(chip, card, buf, len, dma_dir, timeout);
-- 
2.7.4


