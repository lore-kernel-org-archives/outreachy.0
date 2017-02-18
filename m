X-GM-THRID: 6388328536690655232
X-Received: by 10.159.48.150 with SMTP id j22mr2988163uab.40.1487398645195;
        Fri, 17 Feb 2017 22:17:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.19 with SMTP id p19ls1804009iod.9.gmail; Fri, 17 Feb
 2017 22:17:24 -0800 (PST)
X-Received: by 10.107.128.160 with SMTP id k32mr3559082ioi.52.1487398644464;
        Fri, 17 Feb 2017 22:17:24 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z73si1187786pfa.2.2017.02.17.22.17.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 22:17:24 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 68so5575387pfx.2
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 22:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bJDwpMQcLIIHIAou+Z95KKhpmios8tIcMqgG+YAHCWQ=;
        b=X5fBbkLbD9Ae1OoTtocpaFZXmi8x3tH8C3rboybKh/NbVTgnUk8SUK7kQEWiWyIisS
         9SKLUp+gB7D/XNe72biHuJEwFQjqODUs6p1CBkGYtOdDLeXe5ZPMqbFRiU1CSGmE19op
         49ub9t6KW73GhbXHOSqHASBi0bjcmO8Zi+hAWgn6TUgi657PHXOfJuOQr+r+g5fE67Hl
         RhN8Bsd7dNYjkT63sAVO4uKVz1tYiUbgBDOIQ81u8XK7GHgCTBBap3g9ikpn9mpc7P0P
         rTDJthnQjEwAAVAIm4I3uNrzWChxAiU/EFymEIvWR/swBLETQgxWy3Cp7X1JM7ZsWo28
         9oQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bJDwpMQcLIIHIAou+Z95KKhpmios8tIcMqgG+YAHCWQ=;
        b=Sqejfd4MPdh0UvwmRK2HfBhBYriXrSpEryjszqM70nDTFnT/8f5Q0WrSXMXMPQY5hg
         8iVjQAetJR4hJZ2xx6yMchdVCy4ACzF2xUaM2pfvx7bAv0FPgsqeQEuGjMZH4eIgkA/j
         h167Sj4cl5i901w9fCRe8R52eDtgGXivxB+eCfE1/H4Knrs2GxMnECfK3YMTswMpAyVe
         msDEsRdUu+L3yUsjiDj1LwBCYmazyna6+d+dy8BDQ86cg+trGbQUmkp9KFoxIzZuJEOo
         OpU1TW23p/uSkiGhdDoWT9nUEYH3WFX+scSbM6/Uy40nNeE69Vz3BmEmi5er/JbOv8Gn
         6+Rw==
X-Gm-Message-State: AMke39meNm4PusVIHJmOus/zukaoc7Hf4F/IcU7qja7jMCVJ5HaOzmdQV9jARo83OcoC8Q==
X-Received: by 10.99.134.198 with SMTP id x189mr14057203pgd.171.1487398644069;
        Fri, 17 Feb 2017 22:17:24 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.167.219])
        by smtp.gmail.com with ESMTPSA id w89sm22699786pfk.133.2017.02.17.22.17.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 22:17:23 -0800 (PST)
Date: Sat, 18 Feb 2017 11:47:10 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8192u: ieee80211: Remove typedef to structure
 _bandwidth_autoswitch
Message-ID: <20170218061710.GA24477@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Using typedef for a structure type is not suggested in Linux kernel coding
style guidelines. So remove typedef from the _bandwidth_autoswitch structure.
The typedef pointer pbandwidth_autoswitch is not used anywhere, so omit
it.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 176083e..0df9812 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1461,13 +1461,12 @@ struct tx_pending {
 	struct ieee80211_txb *txb;
 };
 
-typedef struct _bandwidth_autoswitch {
+struct _bandwidth_autoswitch {
 	long threshold_20Mhzto40Mhz;
-	long	threshold_40Mhzto20Mhz;
+	long threshold_40Mhzto20Mhz;
 	bool bforced_tx20Mhz;
 	bool bautoswitch_enable;
-} bandwidth_autoswitch, *pbandwidth_autoswitch;
-
+};
 
 //added by amy for order
 
@@ -1873,7 +1872,7 @@ struct ieee80211_device {
 	Fsync_State			fsync_state;
 	bool		bis_any_nonbepkts;
 	//20Mhz 40Mhz AutoSwitch Threshold
-	bandwidth_autoswitch bandwidth_auto_switch;
+	struct _bandwidth_autoswitch bandwidth_auto_switch;
 	//for txpower tracking
 	bool FwRWRF;
 
-- 
2.7.4


