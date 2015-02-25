X-GM-THRID: 3506502107136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5659a1a3b16d7a5e,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.147.35 with SMTP id th3mr626312lbb.15.1424905482716;
        Wed, 25 Feb 2015 15:04:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls896104lab.39.gmail; Wed, 25 Feb
 2015 15:04:42 -0800 (PST)
X-Received: by 10.112.222.131 with SMTP id qm3mr827498lbc.1.1424905482307;
        Wed, 25 Feb 2015 15:04:42 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id by11si1468737wib.1.2015.02.25.15.04.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 15:04:42 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id bs8so8635107wib.4
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 15:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eBsEaQ7KDqWBaXQ0GV2QNHatxhCCDEgAkUdHHsgER6c=;
        b=xJDZkl7f+6uJtjazDZpg7Xb5ljJ6aCMKB5TsJVl/ov3MuEhYYVtKDBZkRpJoYzJTDy
         HBq+dZQx8ykPdxi9+gd8tIIL4j3d2p83GIR8PXuYCBnTdUin2Ju7rclVaNrXXFZ5Fwvf
         QF9AWsdhQsn2x6eg7OOsE9+Ah7YXbbZqt3ZfcP0jlgruXlRsbgpM/9fvbWgWmVXVDSOA
         oK850XumOWZR3chNH+oLLBYHzmgeP9C2k5SrGyER3kBZJmpZLOmhazgO8JjdugkeRflP
         RXxPjG2PGVpQdq1XbLoOa4bBG9DfrVKUx7oOQB/zBLNn+LfmxIDY5FECiyWHaobtkV3R
         CfyA==
X-Received: by 10.194.90.210 with SMTP id by18mr10561353wjb.80.1424905482183;
        Wed, 25 Feb 2015 15:04:42 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.150])
        by mx.google.com with ESMTPSA id q6sm101864wix.13.2015.02.25.15.04.41
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 15:04:41 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: fbtft: removed trailing whitespace
Date: Thu, 26 Feb 2015 01:04:47 +0200
Message-Id: <1424905487-7343-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
Removed all trailing whitespace in fb_s6d1121.c

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/fbtft/fb_s6d1121.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_s6d1121.c b/drivers/staging/fbtft/fb_s6d1121.c
index 1ef8c1a..7bbb21b 100644
--- a/drivers/staging/fbtft/fb_s6d1121.c
+++ b/drivers/staging/fbtft/fb_s6d1121.c
@@ -143,7 +143,7 @@ static int set_var(struct fbtft_par *par)
 static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 {
 	unsigned long mask[] = {
-		0b111111, 0b111111, 0b111111, 0b111111, 0b111111, 0b111111, 
+		0b111111, 0b111111, 0b111111, 0b111111, 0b111111, 0b111111,
 		0b111111, 0b111111, 0b111111, 0b111111, 0b111111, 0b111111,
 		0b11111, 0b11111,
 		0b111111, 0b111111, 0b111111, 0b111111, 0b111111, 0b111111,
-- 
1.8.3.2


