X-GM-THRID: 6205076512382648320
X-Received: by 10.50.4.4 with SMTP id g4mr16562413igg.10.1444731958303;
        Tue, 13 Oct 2015 03:25:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.201 with SMTP id b67ls36203qgb.85.gmail; Tue, 13 Oct
 2015 03:25:57 -0700 (PDT)
X-Received: by 10.129.70.6 with SMTP id t6mr30268305ywa.5.1444731957669;
        Tue, 13 Oct 2015 03:25:57 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si250461pbb.0.2015.10.13.03.25.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 03:25:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id hy16so17730460pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 03:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=hAFsBkz/J+8Nn76YipldgT/r1u81ihoz783tJY0JNxc=;
        b=g7Ip/V45OsIy+YDLA4JBxe+hXYvHOK+3XJj5uQfu9A5PMblPOHDxRH71DDettdlWPF
         SSYw5jLn09+q1nkP0V9eaaFy1mrFsppP//KkTp4itjGONAB1X5LN7zP8Vrr3Otdq3jRo
         WMqpfiZPFZo5+qe6Z54G74mGElCdlgA0pBeo99kMy5f8sRxVdZD750nVC9EvHMT7zOi0
         0nrVwQ0EZHaTA1VC6SfYa3HBcpiLhmPLpe1XqV6S4AHRU8CJrK3ZBvxGi6F2h31f+bS6
         ZFXHfAj+82gJ2c+o/v+WRAhG8phTwJia6w77IcRl1t6VNDaqX/J8COR4ZaN6mTZ2kv3Z
         315A==
X-Received: by 10.67.1.73 with SMTP id be9mr18748638pad.35.1444731957541;
        Tue, 13 Oct 2015 03:25:57 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id zc4sm3046417pbb.24.2015.10.13.03.25.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 03:25:56 -0700 (PDT)
Date: Tue, 13 Oct 2015 15:55:48 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: wilc1000: wilc_wfi_cfgoperations: Remove
 unnecessary constants
Message-ID: <20151013102548.GA8383@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove constants wherever not required and change variables to bool type
to get rid of constants.
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
Changes in v2:
	-Improve the patch by completely eliminating the constant.

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 6472777..f6259f7 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1714,7 +1714,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 {
 	u32 i;
 	s32 s32Error = 0;
-	u8 flag = 0;
+	bool flag = 0;
 
 	struct wilc_priv *priv = wiphy_priv(wiphy);
 
@@ -1725,7 +1725,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 		if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
 				 ETH_ALEN)) {
 			/*If bssid already exists and pmkid value needs to reset*/
-			flag = PMKID_FOUND;
+			flag = 1;
 			PRINT_D(CFG80211_DBG, "PMKID already exists\n");
 			break;
 		}
@@ -1736,7 +1736,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 			    ETH_ALEN);
 		memcpy(priv->pmkid_list.pmkidlist[i].pmkid, pmksa->pmkid,
 			    PMKID_LEN);
-		if (!(flag == PMKID_FOUND))
+		if (!flag)
 			priv->pmkid_list.numpmkid++;
 	} else {
 		PRINT_ER("Invalid PMKID index\n");
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


