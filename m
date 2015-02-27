X-GM-THRID: 4353845886976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2e2a85f181fedf86
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr413801wix.0.1425031242466;
        Fri, 27 Feb 2015 02:00:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.233 with SMTP id y9ls142658lae.9.gmail; Fri, 27 Feb
 2015 02:00:42 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr1956390lbc.22.1425031242028;
        Fri, 27 Feb 2015 02:00:42 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id r6si88082wix.0.2015.02.27.02.00.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:00:41 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22b.google.com with SMTP id w55so18908988wes.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5wSbOxVOSVEhPkVHtk8O6mbEQOFWx+FmtO0EUsvvp2I=;
        b=HEbFeUL0CWWDy0XlOvdYVllbJJk2+biZWvpumBQ8exTBWwNr0kvq+oGoNIyz/SRweS
         2H6LUtT2KQhmBv3zZKORQ3ZPie/AhUODtmKeanEsYIXdRo1J/bfs2mYtHeZ071BWlPZR
         nU1DBxoSykqXD0aK+NSmCG+IOMjkPFWzfgc0+yxeyXu0lRrob3Mpo3vbPVa/zDcHP3Mw
         IXW02h7aPycomcVmZcBP25Z7R20JbnS7aCSyEiU93Gk/R088c44vqr63eUHdwoRmQLZS
         gPAEkt7D5iLGNEAH5RUa2b/hvlsC+Q7rjhOW0dBS3c2oA+JCff8fXOY3frpdGVZx/rKD
         9C4w==
X-Received: by 10.180.80.9 with SMTP id n9mr4852334wix.34.1425031241883;
        Fri, 27 Feb 2015 02:00:41 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from yeliz-N56DP.comu.edu.tr ([193.255.97.48])
        by mx.google.com with ESMTPSA id y3sm5221095wju.14.2015.02.27.02.00.39
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 02:00:41 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: vt6655: Fix do not use C99 // comments
Date: Fri, 27 Feb 2015 12:00:49 +0200
Message-Id: <1425031249-6736-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Fix checkpatch.pl issues with do not use C99 //
comments in key.h

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/vt6655/key.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/key.h b/drivers/staging/vt6655/key.h
index c01d4af..261f818 100644
--- a/drivers/staging/vt6655/key.h
+++ b/drivers/staging/vt6655/key.h
@@ -66,4 +66,4 @@ int vnt_key_init_table(struct vnt_private *);
 int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 		 struct ieee80211_vif *vif, struct ieee80211_key_conf *key);
 
-#endif // __KEY_H__
+#endif /* __KEY_H__ */
-- 
1.8.3.2


