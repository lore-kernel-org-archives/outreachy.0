X-GM-THRID: 6209878523959574528
X-Received: by 10.112.173.170 with SMTP id bl10mr8044213lbc.7.1445850013191;
        Mon, 26 Oct 2015 02:00:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.145.73 with SMTP id t70ls85459lfd.107.gmail; Mon, 26 Oct
 2015 02:00:12 -0700 (PDT)
X-Received: by 10.112.132.10 with SMTP id oq10mr7917308lbb.1.1445850012396;
        Mon, 26 Oct 2015 02:00:12 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id cm6si667061wib.1.2015.10.26.02.00.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 02:00:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id ll6so101686854wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 02:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=RZFu9L4EYyDPCzmgJLbFs3NXXXaims+Lie0chTvmyN0=;
        b=D9FnPGhOeqosXbI5mMduABNNSdZCAnXx6V1ZPQ6ljWBOXGEdt4lYC3MmX2yJ8kpoUX
         gERSWfVY0R68WvjqX0o4+B8NgzPIbyT8fZJyQkPVKWLIXEtRlu93V2rakSWZH9a+TFCd
         aZXqn9UpIbYk0fWljD2LKzWB34YD3MZ0o3D5w0dgD41os8wQ1A5Bunvq93hGPHkojtVw
         sv7HSuS0No8v0eLcfuUl12c7zKfWqHbtZ2IuA5WrN9YKiFWmoOmp7tgbhwLcPb+iE1cJ
         tDy2updWgqck5NVWfC2gBTC0cYJhCvPmDWIiK2fSte3kFgsheel+XtEC4i834hDuZtJ1
         QXuQ==
X-Received: by 10.194.77.146 with SMTP id s18mr22947406wjw.122.1445850012186;
        Mon, 26 Oct 2015 02:00:12 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id p4sm13056944wia.15.2015.10.26.02.00.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 02:00:11 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 1/2] staging: vt6656: Add space around '|'
Date: Mon, 26 Oct 2015 12:00:03 +0300
Message-Id: <1445850004-6885-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '|'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '|' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/vt6656/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index a215563..1301fbf 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -82,7 +82,7 @@ void vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
 					connection_channel, 0, 0, NULL);
 
 	vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG, MAC_REG_CHANNEL,
-		(u8)(connection_channel|0x80));
+		(u8)(connection_channel | 0x80));
 }
 
 /*
-- 
1.9.1


