X-GM-THRID: 6205086344963686400
X-Received: by 10.13.215.73 with SMTP id z70mr27772511ywd.23.1444734286860;
        Tue, 13 Oct 2015 04:04:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.205 with SMTP id a71ls2086706qgf.23.gmail; Tue, 13 Oct
 2015 04:04:45 -0700 (PDT)
X-Received: by 10.129.97.193 with SMTP id v184mr10964045ywb.18.1444734285406;
        Tue, 13 Oct 2015 04:04:45 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id vy6si246281pbc.1.2015.10.13.04.04.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy16so18510726pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 04:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Uf77h4K5/VriLraGSwXxQtMRTprtlUs/ZvNmFwUXsWM=;
        b=lVnyqPf5lXlgOB3qUzrPtj/T0fNs28jGu8ZYs84L70p1RwAcrxkddGVo/DwVUvkx1L
         NR2XzGLRsTDsEJ9iOvbXHwZ1fsKY4nlkPCFAzgIxrJcyY4xm6a9zgHhGNXd++T0r9ZOx
         XKLWf0aSlVFQZ0sWE3QAPzn9218qw4oMRZmIpQCMInZGpVdp7XyBzizT3/htfnC4Zn7F
         MKQJCTxIjNyrp2wooQB9mrCsYV59k+apuMfN3+te9LW6sSWIaiYyEXSzCOICj/JtEjZD
         p+Cp7+hfEJ5JjmplWMNagYRnjF1HJ440H+prYLh9PNrKdEhevwBRMAdpU2HJ5MzTxEb8
         NtEQ==
X-Received: by 10.69.26.161 with SMTP id iz1mr40396064pbd.17.1444734285270;
        Tue, 13 Oct 2015 04:04:45 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ce3sm3265199pbb.35.2015.10.13.04.04.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:04:44 -0700 (PDT)
Date: Tue, 13 Oct 2015 16:34:36 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: wilc1000: wilc_wfi_cfgoperations: Change
 variable to bool
Message-ID: <20f17185a553556d1d6d806811bf068cd727a689.1444733999.git.shivanib134@gmail.com>
References: <cover.1444733999.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444733999.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Change variable of the type u8 to bool as the only values acquired by it
are true or false.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
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


