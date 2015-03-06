X-GM-THRID: 6939320778752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,51726dff31130f74,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.98.38 with SMTP id ef6mr1687886lbb.3.1425656472166;
        Fri, 06 Mar 2015 07:41:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.207 with SMTP id jq15ls85678lab.107.gmail; Fri, 06 Mar
 2015 07:41:11 -0800 (PST)
X-Received: by 10.112.222.131 with SMTP id qm3mr2360626lbc.1.1425656471901;
        Fri, 06 Mar 2015 07:41:11 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id by11si160022wib.1.2015.03.06.07.41.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 07:41:11 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id hm9so4496800wib.2
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 07:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/g/iIurTLOF7YGYFSanhY0wvNCsCkRizgVzsvKTMJF4=;
        b=F2Ek5TeWYCjOmhXIZhWuZSumQPNeoYAeJokRLW77/Hu5zL8wBZ/HdoVR4P2cWUsfTS
         u3TW03AOvPJ5myQwa8ZjEcBriGLscy33OCJieI1ZhHpZeERNPMAXBphmaTvRY3Lm4txE
         PkUZqu5uNv2iLoSxhKkW6sqeGtVUJ0iG62te8CLhjBHv7yOKEqFavKGVWCXyN3sl76UL
         nGqd4ZBiLDx4OQ9pNE9SgSruonP+IKpxUrjQAx7lmmwr/uYwHlWneFrTnsS51jhjcVLr
         A/YTwBbAjEaKPiKZdlzwGp7NcFClfhbPf1BljeVSOFu253q867FrQ3TWfvy8PTUW1A9n
         vzlA==
X-Received: by 10.180.187.200 with SMTP id fu8mr10772468wic.2.1425656471769;
        Fri, 06 Mar 2015 07:41:11 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id ev7sm15432080wjb.47.2015.03.06.07.41.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 07:41:11 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Fixed trailing whitespace in ieee80211_rx.c
Date: Fri,  6 Mar 2015 17:41:03 +0200
Message-Id: <1425656463-4736-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes trailing whitespace error found in ieee80211_rx.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0d8d06a..f3e32ce 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -554,7 +554,7 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
 	{
 //added by amy for reorder
 		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
-		
+
 		for(i = 0; i<prxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = prxb->subframes[i];
 
-- 
1.9.1


