X-GM-THRID: 6205119636361445376
X-Received: by 10.182.247.105 with SMTP id yd9mr27871634obc.50.1444742071748;
        Tue, 13 Oct 2015 06:14:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.112 with SMTP id 103ls3669458qgg.86.gmail; Tue, 13 Oct
 2015 06:14:31 -0700 (PDT)
X-Received: by 10.129.50.85 with SMTP id y82mr28457027ywy.2.1444742071404;
        Tue, 13 Oct 2015 06:14:31 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id pe1si258949pac.2.2015.10.13.06.14.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:14:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id ve7so21565177pab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 06:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=eWZWAWnZb3umaLE74OYygYRiERpZTQSZe2e22BtksVE=;
        b=gY3O6CxYVKUYUDnCXQwL1sh7N4wUK+A8CKIKSTt5h9duc2zUlLEtVFxfFY2MI0lCWa
         MzflC1obcymFZxjsWlEkqnPfHkTsB+80jWCwZQp4u13AUPgFjG8WCERBEpF6M+lON4VH
         zbZtyrmFufI9XqAXWPQT0gnAG3KyegqvenfkLcje+/4pr0Eru0gzYmUKpKKRrQ3AAIwP
         3Qd1FwYIu0JN7I0j+1ZyJMOcmyECTZqK2a1/k5tp6tdLfy1lIe1NHLd9UzT1k/KL0T2a
         wjmPHUbyBb/mMGvd+3kLcBd2KpZ+cwerVDEYJTad0YIVB+r+Tz0oUbhvUVaWy144qkjG
         p6aQ==
X-Received: by 10.68.242.41 with SMTP id wn9mr34539670pbc.79.1444742071266;
        Tue, 13 Oct 2015 06:14:31 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id dg2sm3964772pbb.9.2015.10.13.06.14.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:14:30 -0700 (PDT)
Date: Tue, 13 Oct 2015 18:44:20 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] Staging: wilc1000: wilc_wfi_cfgoperations: Change
 variable to bool
Message-ID: <20f17185a553556d1d6d806811bf068cd727a689.1444741377.git.shivanib134@gmail.com>
References: <cover.1444741377.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444741377.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Change variable of the type u8 to bool as the only values acquired by it
are true or false.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
        -Remove the definition of constant from header file,
        include one more patch.

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index d2e6f55..e4c134a 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1714,7 +1714,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 {
 	u32 i;
 	s32 s32Error = 0;
-	u8 flag = 0;
+	bool pmkid_found = false;
 
 	struct wilc_priv *priv = wiphy_priv(wiphy);
 
@@ -1725,7 +1725,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 		if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
 				 ETH_ALEN)) {
 			/*If bssid already exists and pmkid value needs to reset*/
-			flag = PMKID_FOUND;
+			pmkid_found = true;
 			PRINT_D(CFG80211_DBG, "PMKID already exists\n");
 			break;
 		}
@@ -1736,7 +1736,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 			    ETH_ALEN);
 		memcpy(priv->pmkid_list.pmkidlist[i].pmkid, pmksa->pmkid,
 			    PMKID_LEN);
-		if (!(flag == PMKID_FOUND))
+		if (!pmkid_found)
 			priv->pmkid_list.numpmkid++;
 	} else {
 		PRINT_ER("Invalid PMKID index\n");
-- 
2.1.0


