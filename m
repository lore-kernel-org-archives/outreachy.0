X-GM-THRID: 6616097415299596288
X-Received: by 2002:a67:878a:: with SMTP id j132-v6mr4503202vsd.43.1540430315699;
        Wed, 24 Oct 2018 18:18:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7191:: with SMTP id l17ls1429790uao.5.gmail; Wed, 24 Oct
 2018 18:18:34 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ef+I9f3+5cNWqniJmN7v4eKQlGPCBOdFC4C7eonNb8jX0HgsViNfOPnpsUzXXblkAg4Som
X-Received: by 2002:ab0:14e6:: with SMTP id f35mr4561826uae.26.1540430314813;
        Wed, 24 Oct 2018 18:18:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540430314; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZgoyVYM5cW5PzIs9qvmAZlX4DnkSISNVitYm00CYTpDxvE4efTBS2gW4TftT7lR4D
         H5KEnKfFLEcRG/D4cgN89F2k0CuZ0BtRiQpUPKi14O8pDmGG1jAegk91fBqcN5L30wUp
         k47DMG6fm3pyO3LO/2Wk49KPSda57wKzcnraUs9g+pECqxxSOsAkIPYrOwQ1pKjQiKXN
         T/5FpdlBVdhPYQQ7eGFRLRwT/v58tPav3jB62Do1/3DdX0QpwTVneQm9IEzqQFsneclP
         M2smtcAPcPwwWrpSESfFMBP1iG+VpEQ7vvAMbz/xdp/9Rp7I8xtiPSWoRSidk2KKDhM1
         K9jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=J7CnAaLliyGrvDviPxAYQIJBklijL7DHBDjq+qGASCk=;
        b=nLsVUtpuf9RFko4ubZlarzNvu9Mz4xOcKDu/A6j5YpAipG8P9RekoWjoXVL5aAtFKq
         mWCwFBWS/g74DFnMJSus3ZhbCTC8VAF8lYn6yNH3fpdmDqLtC5LTbtRZzWTQTkpS82Z8
         XbTQNPaNaeP2M1tBhPNMFrDz3emm/1Y9B7v5HywJnRjFG5qvM4kwOVnsn900HKANZN3P
         NrL+PNQyTYw54Yg3LBG2dOCUQs3gsnjQHxg+I6dG7ce8xdtwifIoo7saNUMNje7kvBCb
         wmlolfJ1K/AbrJKRK0tj99HwhSz7u1ZvkQDc0EFWf58wJoyWp2Em/b2IaaCyRK4ZsZKZ
         WDSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K/S70TEW";
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a71si374681vsb.1.2018.10.24.18.18.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 18:18:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K/S70TEW";
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 32-v6so3192584pgu.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 18:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=J7CnAaLliyGrvDviPxAYQIJBklijL7DHBDjq+qGASCk=;
        b=K/S70TEWgkS0HWt3SYEmjUY+Arrr47StWkr8jIldTGsj6D7pxrfMjAhBAwmfuy1S5O
         pUujmNl7/HWnaEeKZG1bh6WVS3NXdVVeLWmhQUuuDiJBHCt4TRuaqO+0iZ578pMLRjAb
         DPCHg5DhHtOt7q5cIlvLSlBIaiyXYF1xRb2Zii/ogEGdOvlBvxneCSZGb0tKtfIcP6uN
         Kvp2JR8fSX/WHsAsoG0Igae6C7gIjlPesenz31jrhcHtVWLlXwtRW7gr+SKiTh9jRq4C
         HPB5VfxlwhK6l3rPklBfed4+o6rnZ0aH2mhFX9iTCAP7YYlNglnGn1tTBXCwXdVLW63r
         mDfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=J7CnAaLliyGrvDviPxAYQIJBklijL7DHBDjq+qGASCk=;
        b=SkLzP3QKeC4BZonKG8OGCkbpgfc64nTRK0p8h9KV/rP+fdFi/LuljHj757nrrNID0z
         sNF/izpHQUWjRcUBQkv/HxKutHKdoLVN784Tn6edES/Zo6M2Ub6PFZXDcC5fN+LvKyF9
         AVtEwyRQgXgE8v7tAWjgUrVNhTeKG7vsGCyQ2hWDqhszGvyMhe18BhsSU6vpKX72ehMF
         tBi8PWiv53EnJDfnLxSARiUwbB+oLNuItZRFJw33lfwg25hdanXGjG5VTvcuGsVMu+Wj
         fRRyYG4ONqexdPdknQBVLkJQKy6CWueyQKwS3BjbOdjdfG1Y6Vqs7O1NzVNOrOr9TaD9
         S1iQ==
X-Gm-Message-State: AGRZ1gJmFO9yvP4JX+3xuabGuOYnQxUKtISL6UC1LRx369M0tN44Hwte
	IYJZ76NgQlu7TP9gIOqIx0GDF/JU
X-Received: by 2002:a62:9316:: with SMTP id b22-v6mr4987534pfe.193.1540430313773;
        Wed, 24 Oct 2018 18:18:33 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id e81-v6sm12142724pfb.153.2018.10.24.18.18.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Oct 2018 18:18:33 -0700 (PDT)
Date: Wed, 24 Oct 2018 18:18:30 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtlwifi: Remove function that only returns zero
Message-ID: <bfb248e133326fe1cc0ca387f6fae4129656b72c.1540428705.git.m.maya.nakamura@gmail.com>
References: <cover.1540428705.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540428705.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Because the odm_sq_process_patch_rt_cid_819x_lenovo function is only
called to return zero, remove the unnecessary function and change one
statement that calls it. Issue found by Coccinelle's semantic patch
results for returnvar.cocci.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index fd208581d857..335a435caa2c 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -477,14 +477,6 @@ static u8 odm_query_rx_pwr_percentage(s8 ant_power)
 		return 100 + ant_power;
 }
 
-static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
-						  u8 is_cck_rate, u8 pwdb_all,
-						  u8 path, u8 RSSI)
-{
-	u8 sq = 0;
-	return sq;
-}
-
 static u8 odm_evm_db_to_percentage(s8 value)
 {
 	/* -33dB~0dB to 0%~99% */
@@ -891,8 +883,7 @@ static void odm_rx_phy_status_jaguar_series_parsing(
 
 			if ((dm->support_platform == ODM_WIN) &&
 			    (dm->patch_id == RT_CID_819X_LENOVO))
-				sq = odm_sq_process_patch_rt_cid_819x_lenovo(
-					dm, is_cck_rate, pwdb_all, 0, 0);
+				sq = 0;
 			else
 				sq = phydm_get_signal_quality_8812(phy_info, dm,
 								   phy_sta_rpt);
-- 
2.17.1


