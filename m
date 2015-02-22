X-GM-THRID: 2431942393856
X-Received: by 10.194.221.65 with SMTP id qc1mr762441wjc.7.1424620558920;
        Sun, 22 Feb 2015 07:55:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.227 with SMTP id v3ls400359wiw.33.gmail; Sun, 22 Feb
 2015 07:55:58 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr731389wiv.0.1424620558548;
        Sun, 22 Feb 2015 07:55:58 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id i7si508402wif.0.2015.02.22.07.55.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 07:55:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f47.google.com with SMTP id x12so21408324wgg.6
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 07:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=46hxcVnjq4Pam4/xlSvGxiQ6Uu3Tyb4syC+rIfEYcIw=;
        b=MmsAtr78Z+ISuxwJZeqqXiMLp53tb/V90Q5JFQ59n+w+5t8hdmY1PwFmWPUZnAc4JB
         PaJa2OuO78uoZXVYNOmRxYpKKbCoORJLL0bBx96CK7aJZJB0KGVt3/umH18Hn20BePR6
         KCxScK+QpEO7G2Kt9kvwKJPPnj6MlpalF1KFH+6YLFRQa/oTlMSG/eG2Lvnjn7WUPpBX
         KIieW1ZlLSFSPPPOdvF6Au8I5F8RQ9eka26+VDqwjfuEi2MTcXdxVtJY+WdJxrA6tZXB
         4yBl31WWzJB50Jslbco1dGG38Qwp/ipYBuG+slst63tUxxkIYVcnuMFoxt8jEMShrDFb
         zmeA==
X-Received: by 10.180.84.166 with SMTP id a6mr12626880wiz.4.1424620558474;
        Sun, 22 Feb 2015 07:55:58 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id hv5sm51637489wjb.16.2015.02.22.07.55.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 07:55:57 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3 2/2] Staging: rtl8192u: Fix grammar in a sentence.
Date: Sun, 22 Feb 2015 16:55:50 +0100
Message-Id: <a51cddc38543d947119aef8715d739c2adf676f2.1424619767.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424619767.git.ksenija.stanojevic@gmail.com>
References: <cover.1424619767.git.ksenija.stanojevic@gmail.com>

Write always instead of awalys.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v3: nothing has changed
v2: nothing has changed
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index 4d6bd2e..0a76f81 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -238,7 +238,7 @@ static int debug = \
 			 /* IEEE80211_DL_REORDER| */
 			 /* IEEE80211_DL_TRACE  | */
 			 /* IEEE80211_DL_DATA	| */
-			    IEEE80211_DL_ERR	  /* awayls open this flags
+			    IEEE80211_DL_ERR	  /* always open this flags
 						   * to show error out */
 			    ;
 static struct proc_dir_entry *ieee80211_proc;
-- 
1.9.1


