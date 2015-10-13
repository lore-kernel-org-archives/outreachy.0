X-GM-THRID: 6205067017523822592
X-Received: by 10.182.128.101 with SMTP id nn5mr28004067obb.31.1444729747058;
        Tue, 13 Oct 2015 02:49:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.7 with SMTP id f7ls2901452qge.39.gmail; Tue, 13 Oct
 2015 02:49:06 -0700 (PDT)
X-Received: by 10.31.162.16 with SMTP id l16mr27932074vke.5.1444729746451;
        Tue, 13 Oct 2015 02:49:06 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id uv4si266320pac.0.2015.10.13.02.49.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 02:49:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id ex6so16774114pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 02:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qhc+ixBSWH+FLwpBhO+Eu4AYTeklPX+i6SNyF6K6Myc=;
        b=s8sRsX+qk8xHz9YkyWYMnu2SKalOKXHy9j619sU4YTaGcG9he9aKEl+Ly7qGWipL5o
         9dLs3HE6urVwu29HgMXZpX9lXVrg7UgykKf9lHwvtPc21NiDz5S5ce1cx/Qt6m+chwWm
         Sp5EX394rZGGttLxEtrClUV7Hlr8u8tJvFp2lW+dpusw0Q0gU3/8ru3d2lBGUwsoaMY8
         lo71S8WIUVtcoZ8RWH/o8GYnMz3ytcU3HMeXfDHHie8Fmi2/T1+i1JxjwKXbAqftQaOX
         96JUUCD91MzM7l4Ha383pUPyUB0OdM0RLP8DYB8AOpYLhbFPmDj5Ij9rUKgMMp5zrbPB
         q5FA==
X-Received: by 10.68.230.6 with SMTP id su6mr8962875pbc.80.1444729746318;
        Tue, 13 Oct 2015 02:49:06 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ez2sm2843761pbb.5.2015.10.13.02.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 02:49:05 -0700 (PDT)
Date: Tue, 13 Oct 2015 15:18:38 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: wilc_wfi_cfgoperations: Remove unused code
Message-ID: <20151013094837.GA4291@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the declaration, initialization and statement having a
variable that is not used anywhere in the code.
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


