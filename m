X-GM-THRID: 845841170432
X-Received: by 10.180.91.76 with SMTP id cc12mr933159wib.7.1424374394612;
        Thu, 19 Feb 2015 11:33:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.3 with SMTP id hg3ls350822wib.37.gmail; Thu, 19 Feb
 2015 11:33:14 -0800 (PST)
X-Received: by 10.180.12.146 with SMTP id y18mr941974wib.6.1424374394352;
        Thu, 19 Feb 2015 11:33:14 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id l8si172944wia.0.2015.02.19.11.33.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:33:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f41.google.com with SMTP id b13so9266980wgh.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7D1QAv3Z33CRTb100y6QPUsh9GIZAQcjis1b9kNg10U=;
        b=Dw43n1u31jjR+EZUQCb7ga4cYMgCTgLjL8xdlLNgdIKxDinD5yZe76t2ofoIdxtdxN
         qBbWZNqzHcQN2piU7gpYgBkTOnzU+m+WHItEnEeLgFhaS4Qq/yarpmLuf4s+W7TFrTk6
         QT2OM8uqoL6Y9Io2W80j71fAAlvwRlZRvyS6/fVNQO7vF2R2FZa5UbU0Kxmq7k3BiJxv
         ZbxymDguLmh5STs6oIqPmKiTN67Hrp1/B8SJw/CH8IOA60MD825wfjrrkXQNsdk2tx61
         dL64yvp7oQ7TV/PwWH1NRMmSn4YPNsIVPFDP7JayvwreHnw/upXD7HNfwEN2cK5gAkjL
         logQ==
X-Received: by 10.180.198.37 with SMTP id iz5mr12529871wic.95.1424374394225;
        Thu, 19 Feb 2015 11:33:14 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id vq9sm38739625wjc.6.2015.02.19.11.33.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 11:33:13 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>,
	Ksenija Stanojevic <ksenij.stanojevic@gmail.com>
Subject: [PATCH] Staging: media: vino: Added blank line
Date: Thu, 19 Feb 2015 20:33:02 +0100
Message-Id: <1424374382-19896-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Ksenija Stanojevic <ksenij.stanojevic@gmail.com>
---
 drivers/staging/media/vino/saa7191.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
index 29e3296..f223e47 100644
--- a/drivers/staging/media/vino/saa7191.c
+++ b/drivers/staging/media/vino/saa7191.c
@@ -521,6 +521,7 @@ static int saa7191_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
 		break;
 	case SAA7191_CONTROL_LUMA_DELAY: {
 		s32 value = ctrl->value;
+
 		if (value < 0)
 			value += 8;
 		reg = saa7191_read_reg(sd, SAA7191_REG_CTL3);
-- 
1.9.1


