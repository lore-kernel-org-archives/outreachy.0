X-GM-THRID: 1286891110400
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a9d85f36e187bc98,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr1230579lbf.21.1424436892571;
        Fri, 20 Feb 2015 04:54:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls273580laf.99.gmail; Fri, 20 Feb
 2015 04:54:52 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr1251578lbb.14.1424436892221;
        Fri, 20 Feb 2015 04:54:52 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id ew5si105429wid.1.2015.02.20.04.54.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 04:54:52 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id bs8so2716860wib.4
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 04:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=M10DlBHNxr7VuUuGH4Ey/2Ngiz+I+A4d7qrH0U2R6OM=;
        b=DPKwA8Y+9Vr3hZ6MCB7c7XiV8IOW5mW/DGsR16UsxslFckUtNo6biWAUjC7NWaq3GX
         fSqKamVCiyTxH5x2JOeiJrHmQ7wNOUg4RoXQLmGo4exH0XOcU6poyypjD2Akjc046D3g
         O9JXonH4RF92EW7STbr0C8DtbCccK+fVgTa9W7RE1MYOi34Q+1BH+ajho7hO+KEcYez6
         VF35UowizjA0JweMdHG0Rx18hhVUzzFJeGJHjU9xD/EZ2rXUtWu/beJPiGUXP62m75m/
         WAgAWv3AdSn8Z1CuMdl2MhBWYzxuJxg542YMS8EB9xJ8B4vRx7TYOMOySBuFmLPg8sOw
         YTzQ==
X-Received: by 10.181.13.14 with SMTP id eu14mr24106202wid.2.1424436892093;
        Fri, 20 Feb 2015 04:54:52 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.61.145])
        by mx.google.com with ESMTPSA id fs8sm2286885wib.8.2015.02.20.04.54.51
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 04:54:51 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: gdm724x: Fix line over 80 characters
Date: Fri, 20 Feb 2015 14:54:54 +0200
Message-Id: <1424436894-10501-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Fix checkpatch.pl issues with line over
80 characters in gdm_lte.c

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index c657639..523e782 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -281,7 +281,8 @@ static int gdm_lte_emulate_ndp(struct sk_buff *skb_in, u32 nic_type)
 		icmp6_out.icmp6_type = NDISC_NEIGHBOUR_ADVERTISEMENT;
 		icmp6_out.icmp6_code = 0;
 		icmp6_out.icmp6_cksum = 0;
-		icmp6_out.icmp6_dataun.un_data32[0] = htonl(0x60000000); /* R=0, S=1, O=1 */
+		/* R=0, S=1, O=1 */
+		icmp6_out.icmp6_dataun.un_data32[0] = htonl(0x60000000);
 
 		ns = (struct neighbour_solicitation *)
 			(skb_in->data + mac_header_len +
-- 
1.8.3.2


