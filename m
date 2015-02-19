X-GM-THRID: 784492134400
X-Received: by 10.180.80.35 with SMTP id o3mr531595wix.0.1424370122551;
        Thu, 19 Feb 2015 10:22:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.9 with SMTP id o9ls192670lao.83.gmail; Thu, 19 Feb 2015
 10:22:02 -0800 (PST)
X-Received: by 10.152.37.200 with SMTP id a8mr775886lak.5.1424370122092;
        Thu, 19 Feb 2015 10:22:02 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id by11si160538wib.1.2015.02.19.10.22.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:22:02 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id y19so8821100wgg.10
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 10:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6AtieyRS4/NPYTZUm2Co796TNU9QOuyFxc86dhS1554=;
        b=xYevCs0rPs36GeJ3R1PaHEZAb7igNjYFX6vNu0ZcZOVnuHixyIs+hBfN0xtFNhsjd0
         GDR4uMXGvgcURUm9lJnncWnVwOzQ6kgHPPd80EMcqHyMov0C3jSvYP6OYzcmRoAjeToa
         WOMf/7q4NJehpWvcyY8exo86qRZ6qxKZUSN/VhkC0wuxfiR234wCQ3JB1nDQtZIV3UKt
         8gKajaalvuE1f25C/IB9ESs1C5K+Penx2qJZ4be8Mxa7daZJRO/PiGYGcvveEgzHu0UG
         475iYwBJ7GF390aCHh2A583yeqy2xo3+j8374fJaGSJRapCNN0+kzNDEILnOWGpJr4f7
         c/hA==
X-Received: by 10.180.85.70 with SMTP id f6mr12541375wiz.22.1424370121936;
        Thu, 19 Feb 2015 10:22:01 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id ev7sm38487536wjb.47.2015.02.19.10.22.00
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 10:22:01 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH v2] Staging: dgnc: Removed unnecessary braces
Date: Thu, 19 Feb 2015 20:21:22 +0200
Message-Id: <1424370082-14359-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---

v2:changed the subject

 drivers/staging/dgnc/dgnc_tty.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index f81a375..9ae1656 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -887,9 +887,7 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
 			}
 		}
 		/* No FLOW */
-		else {
 			/* Empty... Can't do anything about the impending overflow... */
-		}
 	}
 
 	/*
@@ -921,9 +919,7 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
 			ch->ch_bd->bd_ops->send_start_character(ch);
 		}
 		/* No FLOW */
-		else {
 			/* Nothing needed. */
-		}
 	}
 }
 
-- 
1.8.3.2


