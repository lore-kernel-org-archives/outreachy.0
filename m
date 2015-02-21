X-GM-THRID: 1798172573696
X-Received: by 10.181.29.66 with SMTP id ju2mr255084wid.1.1424524939639;
        Sat, 21 Feb 2015 05:22:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls385563laf.99.gmail; Sat, 21 Feb
 2015 05:22:19 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr293048lbb.14.1424524939216;
        Sat, 21 Feb 2015 05:22:19 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id ew5si310781wid.1.2015.02.21.05.22.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 05:22:19 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw55 with SMTP id w55so10247002wes.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 05:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Mw6uryxrYL+cKTI+HEYsEowxhreZNmNjiFnIq++du0U=;
        b=ejYw4JRucGt/AbRm7YhnU1KoYHTe5Zt8ukyHJDNBC49nEOsV1y8p+jDh1oy2XzJ5A3
         iSTn5OTx2yPZZjL547HwU857iz6w9IRW9sOZ5R6uWS82SUSWzilphvCTBbFUyb8jbN7H
         E+upNpB9WBoYZrYh9CQHwCYDdQBzaLzNIJrsuPR6/40e0ABZw0XshW0iEcNM+TrgQpVs
         UQxVePEe5uLyw/eQcLx3Sdc26xzeNjzpFjYgHFdC1BYDycGweG55ai2v3J7kd0k0Xxrc
         eIJEWQUJ+PZwklU5J9LhUJuWd5xufoXphtus+DGSP9H/vFiG8jNsBg/3JLgWrEq5/6YP
         gGtQ==
X-Received: by 10.194.205.138 with SMTP id lg10mr4528289wjc.130.1424524939108;
        Sat, 21 Feb 2015 05:22:19 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.61.145])
        by mx.google.com with ESMTPSA id dm6sm6936333wib.22.2015.02.21.05.22.18
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 05:22:18 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: media: as102: quoted string split across lines in as102_fe.c
Date: Sat, 21 Feb 2015 15:22:22 +0200
Message-Id: <1424524942-10625-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Fix checkpatch.pl issues with quoted string split
across lines in as102_fe.c

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/media/as102/as102_fe.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/as102/as102_fe.c b/drivers/staging/media/as102/as102_fe.c
index b686b76..11a5108 100644
--- a/drivers/staging/media/as102/as102_fe.c
+++ b/drivers/staging/media/as102/as102_fe.c
@@ -145,8 +145,7 @@ static int as102_fe_read_status(struct dvb_frontend *fe, fe_status_t *status)
 				"as10x_cmd_get_demod_stats failed (probably not tuned)\n");
 		} else {
 			dprintk(debug,
-				"demod status: fc: 0x%08x, bad fc: 0x%08x, "
-				"bytes corrected: 0x%08x , MER: 0x%04x\n",
+				"demod status: fc: 0x%08x, bad fc: 0x%08x, bytes corrected: 0x%08x , MER: 0x%04x\n",
 				dev->demod_stats.frame_count,
 				dev->demod_stats.bad_frame_count,
 				dev->demod_stats.bytes_fixed_by_rs,
-- 
1.8.3.2


