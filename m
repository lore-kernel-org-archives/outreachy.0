X-GM-THRID: 2443269111808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7951813c0c2f2922,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.105.129 with SMTP id gm1mr698896wib.3.1424616171942;
        Sun, 22 Feb 2015 06:42:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.134 with SMTP id dc6ls384736lad.87.gmail; Sun, 22 Feb
 2015 06:42:51 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr735312lal.3.1424616171543;
        Sun, 22 Feb 2015 06:42:51 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id ew5si497763wid.1.2015.02.22.06.42.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 06:42:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevl61 with SMTP id l61so9457170wev.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 06:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=exq6BvwjfxWTabTyV1wAKCsGhDtbcmw9k9tJw4Z3IrU=;
        b=slDoIOXJ2JbIVokn9eMA/zWBBBBuPfRYU28E/W201oUbA3z7/6LJ3ahW7LP3axxiDs
         TxDmLAcd3cQCP/CG0+jCkkXf1+shxwKOEqFtR6enOMZVp5qy5F11J+xoLr1inhrnTcBd
         ICefaAD21CzTSSxADfNH4ct/wvgG7NcVELVqNFtz6PlLoa0zCzMWQr+FcH3uzOjERHlC
         AyPq3287C63Dbs3pCicgHxcqNuBsaAI1y7HmP4z46N0QP02b1dJnC3e45Ohf1YHNe7xw
         PigwXbjPrOR83aCma81B3N8ww+HCEA5+0BBeKaytvw0mw1c7kdFbxn8NFvsnbQQCj3oI
         zFWw==
X-Received: by 10.194.60.203 with SMTP id j11mr13781600wjr.5.1424616171469;
        Sun, 22 Feb 2015 06:42:51 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id gz3sm11725622wib.1.2015.02.22.06.42.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 06:42:50 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/2] Staging: rtl8192u: Fix grammar in a sentence.
Date: Sun, 22 Feb 2015 15:42:44 +0100
Message-Id: <5dad611e0dedf5372436692626ef440fe777f072.1424616108.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424616108.git.ksenija.stanojevic@gmail.com>
References: <cover.1424616108.git.ksenija.stanojevic@gmail.com>

Write always instead of awalys.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index f25ff0e..38b6fba 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -239,7 +239,7 @@ static int debug = \
 			 /* IEEE80211_DL_REORDER| */
 			 /* IEEE80211_DL_TRACE  | */
 			 /* IEEE80211_DL_DATA	| */
-			    IEEE80211_DL_ERR /* awayls open this
+			    IEEE80211_DL_ERR /* always open this
 					       * flags to show error out */
 			    ;
 static struct proc_dir_entry *ieee80211_proc;
-- 
1.9.1


