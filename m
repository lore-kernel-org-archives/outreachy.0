X-GM-THRID: 6394745147099185152
X-Received: by 10.99.193.17 with SMTP id w17mr93235pgf.85.1488892628835;
        Tue, 07 Mar 2017 05:17:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls404837oth.13.gmail; Tue, 07 Mar
 2017 05:17:08 -0800 (PST)
X-Received: by 10.129.97.138 with SMTP id v132mr85264ywb.131.1488892628425;
        Tue, 07 Mar 2017 05:17:08 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a3si646044pfb.2.2017.03.07.05.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 05:17:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so138848pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 05:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5TtuUjjPq86CcXTTDDHbr9uNfeQmibYu2EZMv+pfXPU=;
        b=LXDxNDMvwK3QnkrUiY8XOacN1n6IHZyYN9UQTlv03rJzBrxAsslGQgeAXsj/b3LE/P
         RbXO33ryC4Us2j19kjR/VHSVhCPXv8SRU/oVooFtXZ/CK4aDSegMKyP1RyNQJtsgToV/
         KdHa2p9tl8TMfYVkTPrCPDNQDT4FVrNWW8McAOLdJyl/U9jQu6nWzOkKnB251lZQbEQy
         +VJ3tw/wFiE1FkmJFLP7BuG0CY1Z7BQjywAODOFexYU+7tps2uw3w6Uhagc3EoOgfuk3
         x0CcGfM9TKWr/g7+jJPi7c2Etn5TUBFEExdFanbvaVCH5R0iGd/g+ARCH3TUopJJTr1G
         2SUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5TtuUjjPq86CcXTTDDHbr9uNfeQmibYu2EZMv+pfXPU=;
        b=byMVrSTvuU+BO5B18RP37/nxrANtcGbVQHCXiU0q9Z3nuGku0b10WQlImdmUvUriST
         uFCaoIaBylg+HyQh7iXKb721eiaDdn9GHJWBVK8aQLxYIlM608ZeKAllgqJjc8/BwfNh
         ggGEZIXVlt2ypqJhlbZ5JfCfSV2VazrhU70e3WIVd9kSRFBc3LcvVNSe1SQrt50+cbc2
         l6fj9QnJ5s/bGgo2DWsD29yWGKeFbEbEiJGDBAIqjTMYIb4KWZCOYuHLZnw02XR4/vyl
         iI2kjW0erWNp9ac8kFrKAgsxU5mMMn16GTjwmTG/bjZ7mWyWjAENP7OE3tK6rMfkDH4o
         jSJA==
X-Gm-Message-State: AMke39mWufXIGOlrDj6gCiofr+j8qnOoZvPtXbYfq+MfbPNDC76ZN7gM1A2To34IEQcxyQ==
X-Received: by 10.84.241.10 with SMTP id a10mr304008pll.47.1488892628220;
        Tue, 07 Mar 2017 05:17:08 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r89sm11119pfe.6.2017.03.07.05.17.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 05:17:07 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Add braces around if condition
Date: Tue,  7 Mar 2017 18:46:50 +0530
Message-Id: <20170307131650.4318-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix the checkpatch issue:
braces {} should be used on all arms
of if-else statement.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 10cf729..7948ca9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -16,9 +16,9 @@ logical_chip_type_t sm750_get_chip_type(void)
 
 void sm750_set_chip_type(unsigned short devId, u8 revId)
 {
-	if (devId == 0x718)
+	if (devId == 0x718) {
 		chip = SM718;
-	else if (devId == 0x750) {
+	} else if (devId == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
 		if (revId == SM750LE_REVISION_ID) {
-- 
2.9.3


