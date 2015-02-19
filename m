X-GM-THRID: 983245520896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e95d31bf9b9e189f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr1293846wib.5.1424379969746;
        Thu, 19 Feb 2015 13:06:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.178.229 with SMTP id db5ls35138lac.49.gmail; Thu, 19 Feb
 2015 13:06:09 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr833825lbf.21.1424379969435;
        Thu, 19 Feb 2015 13:06:09 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id o3si4243151wib.2.2015.02.19.13.06.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 13:06:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id l2so9570025wgh.9
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 13:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=UiUTrqwrxQVvq7lUxjOD7ZyfhNbKBrrs6NOrrigz/tg=;
        b=treLq6j/XESWFkKMAXwaI1UrYGWUyoAPwaLwzbZq5ccn8lzJZ7Z9bBfySX8AFdsT2A
         k99jsmk0+YWyWLiCGiCbDbjP/I9DYN8tksNdwltzYFwIuKiC9uQTpaurWrFpRBh2yvgr
         T5B/E37cOUlr3iFovq6m45Gn5Y/GM56EsektXOkhwQZOb5A1rBDZ1WCxR6yq+vrrKH/D
         ax4TGHlu3ZOZqFgk0117mERgPpsCxCeOCU2Ln3kFkb6pYxlSwfUXUDVnuFvgBrBY4DV8
         CFfcapkA3vmUb4IJemXbeOtLr7g6SOZ0K2YgqxXvhrJ8YVAVdULcC0/SJIxHMxPa603Y
         xvDw==
X-Received: by 10.180.84.98 with SMTP id x2mr10048074wiy.14.1424379969324;
        Thu, 19 Feb 2015 13:06:09 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id v5sm23092416wiw.24.2015.02.19.13.06.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 13:06:08 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3] Staging: media: vino: Add blank line
Date: Thu, 19 Feb 2015 22:05:52 +0100
Message-Id: <1424379952-21236-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v3: Use of imperative language(add instead of added).
v2: Fixed e-mail address.
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


