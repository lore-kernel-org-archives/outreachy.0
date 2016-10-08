X-GM-THRID: 6338573496941019136
X-Received: by 10.66.151.175 with SMTP id ur15mr5651529pab.94.1475949538050;
        Sat, 08 Oct 2016 10:58:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.166 with SMTP id 35ls6957491otq.35.gmail; Sat, 08 Oct
 2016 10:58:57 -0700 (PDT)
X-Received: by 10.13.206.135 with SMTP id q129mr6746270ywd.163.1475949537443;
        Sat, 08 Oct 2016 10:58:57 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x244.google.com (mail-ua0-x244.google.com. [2607:f8b0:400c:c08::244])
        by gmr-mx.google.com with ESMTPS id p131si2171493vkf.1.2016.10.08.10.58.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 10:58:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) client-ip=2607:f8b0:400c:c08::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x244.google.com with SMTP id m26so2895392uaa.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 10:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=m+uAcC1iwRyxn/DngK9vasIaiTDmwDQtHHeKGp3QsFE=;
        b=qXq81oIBLbsZ3jIzH0pHCm55Ey5aIBZTU1467sOlSAKuqASV+mGd0O/SaVj7BUCsXn
         6RAOA0cgTBteZ9heYIr3E0jh/0P/jdTIGsgCHpVscfTiR5n7aV8Anx/JQnP1m5ptLxEA
         qtJujyatJc1lq6/FJbKlNJeBFlb3yh5wyHurAxt+I0PI7J8AYOc9i7mZ2pasTzdsnq8k
         hXlqCbQKYleBnnax9rlaXRGiY3IMNYpDuNLHDQpv50oh+lNsq2VfY1wqYIsm5m5NIT+f
         v4J0J63k7xUl8rM1DcEYdP+G4zBnhaevKuagGKmvo54/tmFTJ35gXRDqQBODQ5pLH6lc
         7y4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=m+uAcC1iwRyxn/DngK9vasIaiTDmwDQtHHeKGp3QsFE=;
        b=Ufng9GtqFTmDKmmBgJe3xtC/pbuOhrNU3rcf+P/EXLN2Rs7WIGUR/UeaOLWyXoGIQW
         OTqFCJfr0T1/pbonbTnBY20Kw9xb4RJ9xHlCcSprN1yRdMhF64CCUCDH3nHaokh+siMk
         9ywBp56zee9rzBD1AAIRUjOs3/lPkKNsG2JERCgC3ZH6PjBhvI2SAUKtLoDsD3hk8YBl
         b8v9vyQLFH1Jn0zyQcqevKz2Eq7MrSRsy1CFCxBsFf6N4AoAmN/bI5vzQhMkWFKOiKe5
         67D4BmzYT+27x70QsX3DzrVrTZzf4gvkR8x2smF+e71lLhlLAYLgLG3wBck+6AeRF0Yj
         2pGg==
X-Gm-Message-State: AA6/9RkCEchdTDxRAymiEPxpYtknmTfJ4K5vrHkfIkvz5tt/QTQNAUgAte53QQ1/gBZb+A==
X-Received: by 10.159.33.239 with SMTP id 102mr15780964uac.141.1475949537314;
        Sat, 08 Oct 2016 10:58:57 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id l26sm3636454uaa.27.2016.10.08.10.58.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 10:58:56 -0700 (PDT)
Date: Sat, 8 Oct 2016 14:58:51 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4 v2] staging: wilc1000: Move externs from .c to .h files.
Message-ID: <20161008175851.GA16792@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: externs should be avoided in .c files

The externs were removed because there are already declarations in wilc_wlan.h for them.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index fca96d3..a5e2d96 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -90,9 +90,6 @@ static const struct wiphy_wowlan_support wowlan_support = {
 #define IS_MGMT_STATUS_SUCCES			0x040
 #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
 
-extern int wilc_mac_open(struct net_device *ndev);
-extern int wilc_mac_close(struct net_device *ndev);
-
 static struct network_info last_scanned_shadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
 static u32 last_scanned_cnt;
 struct timer_list wilc_during_ip_timer;
-- 
2.7.4


