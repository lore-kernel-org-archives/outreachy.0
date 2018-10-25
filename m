X-GM-THRID: 6616097415299596288
X-Received: by 2002:a24:4e06:: with SMTP id r6-v6mr3934629ita.14.1540430369136;
        Wed, 24 Oct 2018 18:19:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:6605:: with SMTP id k5-v6ls1905608jac.0.gmail; Wed, 24
 Oct 2018 18:19:28 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dwm4K30vkVghoyBvaAM4gvhDKrr2PD2fFSYpZdcyyYOJsS38ngHx/eESUNs0PduTJeizLe
X-Received: by 2002:a02:854a:: with SMTP id g68-v6mr4301741jai.12.1540430368250;
        Wed, 24 Oct 2018 18:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540430368; cv=none;
        d=google.com; s=arc-20160816;
        b=RpVh4kt0k+ZgznFKWHcGQyQhZqrD9ISn/VZ5d2MPDgJ2koXyfcXzYd9GmXYc02MZ4h
         KIJYcTnjgJELmCYzTBQyL+Fdlsmcgbi0RhH+trx0QRBuzdHnjy34RCLf5UYBtd8i2qjA
         df0KAaR3q2EziNpw7w5gCSXJnhctq1f+Yu9re52yOyC7Z0nvCYQT7dMY1Y+gPyJRmB/u
         QZ0ozdCmNhL0/VbqFi2DdkuAL/WHeF1aSsh2/Wz9i5Uhs4eGYKdI2jYiH8pnRLbtqDEn
         oG5Prg8cNLcX5r3hXFLsTYz6wevuJ+r8MR84s4vPjquTv+pG8IPcImMTnv01RzvYKBy1
         TnQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=tj36TKj2NjAXV8t7anNyx7W/tB7qvn38XvLQnlkPzzA=;
        b=jzBUZEqJut7F3jPN8glc/UIvSsOIFIeRuS4TiVBjj0wpO6eLWgXPSmV7J78luaCnbK
         zZSsdTYvRTZ4WhijjcK9ICVESO2WFsWomWuuF5dlA2h7i4YvktPxYFJi/luaUqnbnX9t
         KNGqZbG0sviESU82b6fM7zABkZHk8798Tt4MyutmCljNSM58B7aLbMcHmbyiXHFk/Eqh
         MY/YAC8owyBPFcqrUZ+QW+2l1S6XjOM7tkqr8Am6PRZH5CvyBHVbBB/ApZHju3q19188
         xnbbXE9a8SOtInlQlwpR6uRoDTajLpPs9OxQ2eayfp0CQ4SdxS4MptvMKjPkLhMgqHH2
         VPuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=psu09K4D;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y9-v6si314738ioc.1.2018.10.24.18.19.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 18:19:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=psu09K4D;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id f78-v6so3333918pfe.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 18:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tj36TKj2NjAXV8t7anNyx7W/tB7qvn38XvLQnlkPzzA=;
        b=psu09K4DQ5VFdBgx6expX8q1HIQUirVqsUYLeaEjVA208IO/0n0mw24q9YWDZCuR0c
         9Lij4MkAwZeXU2TdTeeJnkKVmGgqqmjeukfMyPit1/f7BH5aNLIZEXllHdGcmoMimNVZ
         BnYHiZig8SRqGcphnjE+d4MFEJi5tkQyK4jqLke8bJz0f0Jcgaz7QQqSXfj2vIEte+pE
         PbA3RTPZacgwgCcwE1WbBlCT5NVFqACZwZIi5YBiFc+2GA8GdpY0seIAwl9Y3GK2wq75
         +9jvLa+zP44Z9IWjg6zUQdGwCxmRN3ElmoFx39qnGV5Vl6oYnBCQJsCGA4E7rSZSKXWI
         7VXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tj36TKj2NjAXV8t7anNyx7W/tB7qvn38XvLQnlkPzzA=;
        b=I1VXniXZLnD8D7cWoh/gVxyHG1+av468yfiLjQNbphrRiJlT4fhQ/J74RTqjxr6Y9P
         k+J2ZBiVZbgJkqXtXplGWRTJkT2UBgrLhRaaDYGmWvRwhxyZXyGgfaOSrxKihVHTV8B3
         YlZBAwNAdilRlDhItKjhZlZdU7VFISjGct4KQt69+evc2Uuctmbi2uNKOs7dlKiPx1wJ
         TbrS7TUsGKST2aifkr4nWbqOMhQVtLxqbu0wr95lHm32ETiKbAjb28wqGK4XOirW8PGq
         p5MeSz8NlPCiE/XPmzOah1jkdSfFOv1etRa8eMdejdMU5PRLzOKFG8Aa0FsaClZqJxOb
         8qPA==
X-Gm-Message-State: AGRZ1gJq81K9aMRkm9kvmt+jtIm3CGjVXu8BxPLk6+52YlH9lZYLUMuu
	E/RvBtr3y1V3q8yZcYUNSHWEodPD
X-Received: by 2002:a63:87c3:: with SMTP id i186mr4583102pge.74.1540430367456;
        Wed, 24 Oct 2018 18:19:27 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id 84-v6sm8042699pfv.33.2018.10.24.18.19.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Oct 2018 18:19:26 -0700 (PDT)
Date: Wed, 24 Oct 2018 18:19:24 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtlwifi: Remove unused functions
Message-ID: <0cd63fddafab8af0f8b98a58701669dbed89f58d.1540428705.git.m.maya.nakamura@gmail.com>
References: <cover.1540428705.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540428705.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove the five functions that are not used from the source and header
files. Issue found by Coccinelle's semantic patch results for
returnvar.cocci.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 .../staging/rtlwifi/phydm/phydm_hwconfig.c    | 35 -------------------
 .../staging/rtlwifi/phydm/phydm_hwconfig.h    | 10 ------
 2 files changed, 45 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index 335a435caa2c..397352de46bc 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -1854,38 +1854,3 @@ void phydm_rx_phy_status_new_type(struct phy_dm_struct *phydm, u8 *phy_status,
 	/* Calculate average RSSI and smoothed RSSI */
 	phydm_process_rssi_for_dm_new_type(phydm, phy_info, pktinfo);
 }
-
-u32 query_phydm_trx_capability(struct phy_dm_struct *dm)
-{
-	u32 value32 = 0xFFFFFFFF;
-
-	return value32;
-}
-
-u32 query_phydm_stbc_capability(struct phy_dm_struct *dm)
-{
-	u32 value32 = 0xFFFFFFFF;
-
-	return value32;
-}
-
-u32 query_phydm_ldpc_capability(struct phy_dm_struct *dm)
-{
-	u32 value32 = 0xFFFFFFFF;
-
-	return value32;
-}
-
-u32 query_phydm_txbf_parameters(struct phy_dm_struct *dm)
-{
-	u32 value32 = 0xFFFFFFFF;
-
-	return value32;
-}
-
-u32 query_phydm_txbf_capability(struct phy_dm_struct *dm)
-{
-	u32 value32 = 0xFFFFFFFF;
-
-	return value32;
-}
diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
index c9833889688c..ee4b9f0af2a1 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
@@ -484,14 +484,4 @@ struct phy_status_rpt_jaguar2_type2 {
 #endif
 };
 
-u32 query_phydm_trx_capability(struct phy_dm_struct *dm);
-
-u32 query_phydm_stbc_capability(struct phy_dm_struct *dm);
-
-u32 query_phydm_ldpc_capability(struct phy_dm_struct *dm);
-
-u32 query_phydm_txbf_parameters(struct phy_dm_struct *dm);
-
-u32 query_phydm_txbf_capability(struct phy_dm_struct *dm);
-
 #endif /*#ifndef	__HALHWOUTSRC_H__*/
-- 
2.17.1


