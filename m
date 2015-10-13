X-GM-THRID: 6205086344963686400
X-Received: by 10.182.58.105 with SMTP id p9mr10563956obq.21.1444734267080;
        Tue, 13 Oct 2015 04:04:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.85 with SMTP id p82ls1774551iop.89.gmail; Tue, 13 Oct
 2015 04:04:26 -0700 (PDT)
X-Received: by 10.107.40.133 with SMTP id o127mr27811600ioo.27.1444734266728;
        Tue, 13 Oct 2015 04:04:26 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id vy6si246281pbc.1.2015.10.13.04.04.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:04:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy16so18510726pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 04:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KlGGk5ZBzt19r+wgdP3BJK2nhilTb9donoJAgms54nQ=;
        b=clO5hgd9MQlrcLhDzftMYDfexd7pvqK9GGO/Gdxopf/woZSEH/+tw0d9YeBv4vADuy
         4jPBuZxKLwR5mn0lcTPlHC3ctEGQiq47Zz1PbmInkvkriX4kDv+0FfSitVcyzWYu7XPB
         BvbdbwBfRQFsI5XEDVDjrdBYUbV1j0n4BnNlVbjScKsRTwdYqoW0JuDJxTyyx0doydou
         FdhSrGEsLLInY8NG4i9sR4d+gA/Lzyz31hznlsSigQgwQksPKRUE0B8QP4kRswjWchXx
         tFyDYLKiLd+lSqEWLBS7Fc0pt+SC0wzNL+qrKhsKIucWV8Oq5UY6ayK2RY3zv0pRq0Vg
         MXog==
X-Received: by 10.68.69.108 with SMTP id d12mr39356830pbu.137.1444734266587;
        Tue, 13 Oct 2015 04:04:26 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id tb9sm3291685pab.13.2015.10.13.04.04.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:04:25 -0700 (PDT)
Date: Tue, 13 Oct 2015 16:34:17 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: wilc1000: wilc_wfi_cfgoperations: Remove unused
 code
Message-ID: <492f629b583485eb4ed9d218215f15ee03030823.1444733999.git.shivanib134@gmail.com>
References: <cover.1444733999.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444733999.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove a flag variable which is not used anywhere in the code.
Semantic patch used:

@@
type T;
identifier i;
constant C;
position p != e.p;
@@

- T i@p;
  <+... when != i
- i = C;
  ...+>

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 6472777..d2e6f55 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1764,7 +1764,6 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 {
 
 	u32 i;
-	u8 flag = 0;
 	s32 s32Error = 0;
 
 	struct wilc_priv *priv = wiphy_priv(wiphy);
@@ -1777,7 +1776,6 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 			/*If bssid is found, reset the values*/
 			PRINT_D(CFG80211_DBG, "Reseting PMKID values\n");
 			memset(&priv->pmkid_list.pmkidlist[i], 0, sizeof(struct host_if_pmkid));
-			flag = PMKID_FOUND;
 			break;
 		}
 	}
-- 
2.1.0


