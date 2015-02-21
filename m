X-GM-THRID: 1698312486912
X-Received: by 10.180.94.134 with SMTP id dc6mr201187wib.2.1424514580581;
        Sat, 21 Feb 2015 02:29:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls379108lab.39.gmail; Sat, 21 Feb
 2015 02:29:40 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr240384laj.6.1424514580057;
        Sat, 21 Feb 2015 02:29:40 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id ew5si283905wid.1.2015.02.21.02.29.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 02:29:40 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f173.google.com with SMTP id bs8so7727513wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 02:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eOQd5Isuzfmr7p3ROOcz4l8K84eS23jT1vuuoFyB7iY=;
        b=qC4xxJB1wCh5bkwgfOQAmXPR2vCtw9hFY1bcdZsizeDJZt9j74LJ7byfMk9XEDjlj/
         XpH1vTvL7NWwxkuV+HoMumNoqkssA0NSz8rinT9oD5bmv9XXNvvJoly0emg79KjGHRYS
         ncJ1mSjI1TpW07IJ4GySB4bTwe66JGKJ7tCRPipPLvBqC4Pta5qDkXOu3v15H9p7P8Sq
         1AZb2HBxK3od1IpUyd0WLso4hFv6e9Aifgh6KSZkPetVFTupAPQKxPZNaTqfNh5n4iaS
         uupzN7MLwgAgR/zu11jmHcxgB2KGXmh0rq1jDmOhzQEgOXgvRWNPQlIB2npkjI+5VRDZ
         RxaQ==
X-Received: by 10.180.211.45 with SMTP id mz13mr2958038wic.20.1424514579954;
        Sat, 21 Feb 2015 02:29:39 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id v16sm6383212wib.5.2015.02.21.02.29.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 02:29:39 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8712: Removed unnecessary else expression.
Date: Sat, 21 Feb 2015 12:29:28 +0200
Message-Id: <1424514568-14515-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "else is not generally useful after a break or return"
checkpatch.pl warning rtl8712_recv.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index cd8b444..800b2b3 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -496,8 +496,7 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 			plist = plist->next;
 		else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
 			return false;
-		else
-			break;
+		break;
 	}
 	list_del_init(&(prframe->u.hdr.list));
 	list_add_tail(&(prframe->u.hdr.list), plist);
-- 
1.9.1


