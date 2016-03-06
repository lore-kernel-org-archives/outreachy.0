X-GM-THRID: 6258948965600854016
X-Received: by 10.66.216.100 with SMTP id op4mr13874179pac.9.1457275116292;
        Sun, 06 Mar 2016 06:38:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.50 with SMTP id s47ls1431935qgd.34.gmail; Sun, 06 Mar
 2016 06:38:35 -0800 (PST)
X-Received: by 10.140.250.69 with SMTP id v66mr13189887qhc.22.1457275115560;
        Sun, 06 Mar 2016 06:38:35 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ui7si2470501pab.0.2016.03.06.06.38.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 06:38:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fy10so62887903pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 06:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=OjqOIqMAOhPiN5fLStRqVk9ox39ZZOIIsI/AQ0uALFs=;
        b=D5OehTC3oB/jv7+UUD7ZDOAjKQto1LGijtvJ8Bu45v/uX0GUPJJSMTW5mQjvkx840b
         YTVn/IeYuxgNj2KJKEe0KMDEWByvYrLMqYACigncj5YPQOQaOFGr/Lsbe0tvmrJqmbSp
         GM1TFteg9n+IiLjKRnsE4rffuzitZBQPseItx/QWAQygEGQLrsDfx0aNRZDYFEWYD74h
         agAWJT7+Bf7TduDqjGnDPxkV1+a5lHOQZsOeJn6xpshKk1xIFlnbD8hqD+K17/b5C0S/
         QUAzy7bFtwFunEMAtUyd7PDJuQ51O60Ry8VMl8RRq/gols8//wKJb6gKOoorlI6IAXw3
         HWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OjqOIqMAOhPiN5fLStRqVk9ox39ZZOIIsI/AQ0uALFs=;
        b=jWsefQCE7oUgCEwba99CIaeCxOPYLRjKik78l16ePnbSdbhx+ede5PM2x14TxLqryo
         Xub000KS2++NuFuM/TylM5lkOqdmIeZ2Bu1rZX4ZwDtRG27fW4xAx4OiMzygpBM+XeEi
         5Rysai23SzJIzRdGxzlK9dDuPrWWUKwAWGGhjTyXmLcc9suYY6K9EQE+grsT31WFzJJ+
         g2bLYJlMH0nRcxMDrk4MwSUGFfgFk3IFojicneRzdbiZoqeFLMi1p4NnftkPlVCEOuzH
         MOjeW/M9KBpwewOm/4KyAsJCEN1lLVXebuQrEK+SRDtLJiZ8eUMHEADlbAky/q26biGc
         7eRA==
X-Gm-Message-State: AD7BkJK6eprtYqKC6vvrxpTSDEvnhJKtpdVdUP071MnWhFZz7JofopjpeonozmN+mRj3Mg==
X-Received: by 10.66.193.226 with SMTP id hr2mr26788468pac.20.1457275115400;
        Sun, 06 Mar 2016 06:38:35 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.181.247])
        by smtp.gmail.com with ESMTPSA id ac1sm18189388pad.41.2016.03.06.06.38.31
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 06:38:34 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 06 Mar 2016 20:08:23 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: gdm72xx: Use list_first_entry_or_null
Date: Sun,  6 Mar 2016 20:08:07 +0530
Message-Id: <1457275087-9418-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replaces list_empty and list_entry with
list_first_entry_or_null as this makes the code more clear.
Done using coccinelle:

@@
expression e1,e2;
statement S;
@@
- if(!list_empty(...)){
  e2=
- list_entry(e1.next,
+ list_first_entry_or_null(&e1,
  ...);
+ if(e2){
...
}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/gdm72xx/gdm_sdio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_sdio.c b/drivers/staging/gdm72xx/gdm_sdio.c
index 9449418..b593691 100644
--- a/drivers/staging/gdm72xx/gdm_sdio.c
+++ b/drivers/staging/gdm72xx/gdm_sdio.c
@@ -551,8 +551,8 @@ end_io:
 
 	spin_lock_irqsave(&rx->lock, flags);
 
-	if (!list_empty(&rx->req_list)) {
-		r = list_entry(rx->req_list.next, struct sdio_rx, list);
+	r = list_first_entry_or_null(&rx->req_list, struct sdio_rx, list);
+	if (r) {
 		spin_unlock_irqrestore(&rx->lock, flags);
 		if (r->callback)
 			r->callback(r->cb_data, rx->rx_buf, len);
-- 
1.9.1


