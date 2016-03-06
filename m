X-GM-THRID: 6258964058299432960
X-Received: by 10.140.153.14 with SMTP id 14mr578151qhz.8.1457278630295;
        Sun, 06 Mar 2016 07:37:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.34 with SMTP id o2ls579342obi.70.gmail; Sun, 06 Mar
 2016 07:37:09 -0800 (PST)
X-Received: by 10.182.200.234 with SMTP id jv10mr13036416obc.39.1457278629965;
        Sun, 06 Mar 2016 07:37:09 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id ff2si2588245pad.2.2016.03.06.07.37.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 07:37:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fy10so63319774pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 07:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xyO+gwNiw2M0KqZkL4LLrwG+eUcobj/Emyq7aeapS/s=;
        b=brDT21ZhQUuhK1DbTvK6NidtaaAAHYzx4ieHu0P49DNyHfsn8FsegycmhK7JqoHttC
         ys7cy/IHOOMlYZxzNv0MgTaHq32e/l5uGMgufujGYCpyRxgIZdzUpnM6THCAzLCUv1DY
         fmcWAtBmG8V8XIgbAkyDkrFyCZykN/lVtQPiaxmjY8kNdidmUh8L+JBnNllKMLb6npsJ
         w+rGRA/IrkwLvrRw8c1ilJjYGBGwiG9MR0B6xXxkUpt/EHEtzFhTXy241rEp6+3o4ALG
         V2lS7MSSpp9aHZlw3R+14vLG8J1XtWSEM9CoKMy+DwY/c9EOIt+eCXROKXYEwDd87VKA
         GDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xyO+gwNiw2M0KqZkL4LLrwG+eUcobj/Emyq7aeapS/s=;
        b=DjnTZGYg1swo4ByH6A1xCOZSQKxh3AQNHtUf9i2D2NH43C1hV1aUD1xPCG0GENUzaU
         +N6IL4IrBwVgNK+jCUIXmKh3n6ix5ONO1JN1Cw3X0woard9LgtvARUdKpotjAuIdBTdG
         Ka1NTQCR2y8SktF3BpA5mhMdzUEbzgLF98yUZidOucod33Y1B1bo8eRq1+ynNkLula6d
         svMbYHAqomPQwocoEgIyPRkdGgl4q0IyCCT5GwqwSBgF1L30SmAODKine0Fj4kIOFNyz
         6KEcRTmAtQpleFkyNFMCioAwk3kFZ5fxYtdWWeHLVUiU8oTuZutOguaL+NStAF3QsKZz
         nkNw==
X-Gm-Message-State: AD7BkJLsZBNCNg/8eApzkpmYEkoEF7ixzbW8mWrK7c3e3o/66+cxeoFPskEStcRdpICkog==
X-Received: by 10.66.119.202 with SMTP id kw10mr26984776pab.110.1457278629794;
        Sun, 06 Mar 2016 07:37:09 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.181.247])
        by smtp.gmail.com with ESMTPSA id u64sm18408305pfa.86.2016.03.06.07.37.06
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 07:37:09 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 06 Mar 2016 21:06:59 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: most: Use list_first_entry instead of list_entry
Date: Sun,  6 Mar 2016 21:06:47 +0530
Message-Id: <1457278607-16338-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replaces list_entry with list_first_entry as it makes the
code more clear.
Done using coccinelle:

@@
expression e;
@@
(
- list_entry(e->next,
+ list_first_entry(e,
  ...)
|
- list_entry(e->prev,
+ list_last_entry(e,
  ...)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index caff5b2..0dc86ad 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -251,7 +251,7 @@ static int try_start_dim_transfer(struct hdm_channel *hdm_ch)
 		return -EAGAIN;
 	}
 
-	mbo = list_entry(head->next, struct mbo, list);
+	mbo = list_first_entry(head, struct mbo, list);
 	buf_size = mbo->buffer_length;
 
 	BUG_ON(mbo->bus_address == 0);
@@ -362,7 +362,7 @@ static void service_done_flag(struct dim2_hdm *dev, int ch_idx)
 			break;
 		}
 
-		mbo = list_entry(head->next, struct mbo, list);
+		mbo = list_first_entry(head, struct mbo, list);
 		list_del(head->next);
 		spin_unlock_irqrestore(&dim_lock, flags);
 
@@ -495,7 +495,7 @@ static void complete_all_mbos(struct list_head *head)
 			break;
 		}
 
-		mbo = list_entry(head->next, struct mbo, list);
+		mbo = list_first_entry(head, struct mbo, list);
 		list_del(head->next);
 		spin_unlock_irqrestore(&dim_lock, flags);
 
-- 
1.9.1


