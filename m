X-GM-THRID: 2004918206464
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b8f4bc22680c0184,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.39.164 with SMTP id q4mr358667wik.5.1424542622694;
        Sat, 21 Feb 2015 10:17:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.46 with SMTP id cb14ls296019wib.52.gmail; Sat, 21 Feb
 2015 10:17:02 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr395259wjc.3.1424542622395;
        Sat, 21 Feb 2015 10:17:02 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x244.google.com (mail-we0-x244.google.com. [2a00:1450:400c:c03::244])
        by gmr-mx.google.com with ESMTPS id ev8si339051wib.3.2015.02.21.10.17.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 10:17:02 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) client-ip=2a00:1450:400c:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x244.google.com with SMTP id k11so3640422wes.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 10:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1ceRbeTiIVuFMO355TPNHKiNhlQi2DHXf3ibap6ng8c=;
        b=iAnT33tA6FJkcozRSNJ3zkAGtf08XM/3Y0R9bGCS5/wV9sGVaHOyE+Ihs570M0gWgj
         KZQNoyRagayBf6SC9PPxrNH5DtnD6jP5D3TGi4eNN2VhY8oPCgpRUP+N6+cK6ilzRCKz
         Vxzrjngzsg6FxMKNT98vSuHlVt8J51YwHxsYrMnFC7pggzcdTe3a83X6BztBsw07Ecbr
         DcPetq/fYg8D1azUzU4m9eN0oarVdK80wYGSAojJhXcOEO9BpAMQOMV8GVBxBylOZyri
         j2zCkblEQZ1RBji/5VvazWZM3vJZDjsxZjzeawUYwTFyR0EJzTV2A6uNizkV0mS7RZDK
         zfhg==
X-Received: by 10.181.13.42 with SMTP id ev10mr5858678wid.69.1424542622313;
        Sat, 21 Feb 2015 10:17:02 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id bf8sm38666463wjb.37.2015.02.21.10.17.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 10:17:01 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: else is not generally useful after a break or return
Date: Sat, 21 Feb 2015 20:16:52 +0200
Message-Id: <1424542612-19551-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixes checkpatch warnings:

WARNING: else is not generally useful after a break or return

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index bd79e9e..2b022be 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1779,8 +1779,8 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 			plist = plist->next;
 		else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
 			return false;
-		else
-			break;
+
+		break;
 	}
 
 	list_del_init(&(prframe->list));
-- 
1.9.1


