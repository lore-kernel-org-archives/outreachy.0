Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD2928ED
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 19:02:03 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id h2so10796377plb.2
        for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 12:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+QM1RVijKOjtLzd+GJ+CVT6xe047a5u1xhBsLiuogqI=;
        b=b9ZRzDdxWSoXGqw23ygGkH/cpbJVUqA3zOgB8e+5dCAmF9ChpayqtslfgvU3HGxufd
         1cNPTD8t4PjSP+L1JA+6nHEksHkGqJOHIcJWaVSBE6tAZpWZDzOKKSy8HyClmV13tg/o
         DR/SNSX+SRNcq/XMVCaGFqZd8Z8dGTTbzMC+52GWhhshjzkOi8+BInJPkLoHD4IT+GSh
         uFyQ4dr9U1b+t3OmG+994uCdOZFApb5/5sI+2pV+xMxvLQWQg0Zz2Ws0orLK9cDX63zB
         /xDmm6KYY3c8V9d0nfiT4A6g0Ai+toTcPZAlmSYbJ/VPv3UfkyQhUftghZB3MgfZ8onc
         wtzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+QM1RVijKOjtLzd+GJ+CVT6xe047a5u1xhBsLiuogqI=;
        b=Aqa0mQAWpX3+qHmh2+pyhZnE65W8+cfes9ruRlqhqehTaFDaUy1XzKKTbtdoC0mqbm
         upE7bSflenr2GeZQ7JG64RwPjtKiHKuTHkbW8vUTGL+JPK7u6tH9jwtRLM4uprsc2OHj
         pIybwMfqDqpiYW9ypZoInHGUCvxTozrvkCASGUiovo1ARzyXLBMN5fjq6kIF7aQPBjMk
         5XQtVCp/ixzPWCt8ZCwZNKS22NbvFXqxhKM81evxUBiLYm+5arCWzSqWhYzoPMdr10L1
         AyxgkVApAS5tQCA06tcIy0iRF0yeXD3EHNPVnf2zFGD+CbzpsXCO7CbTvQ77fWK66F0H
         IQ3A==
X-Gm-Message-State: ACrzQf0KUQxyFeeeUpleOWkUgbRXVp6yFnQDSkbn/0yOI0qhBOZwVmgK
	9IWWahXBdlrpdbDS9BHhJ1SwOvV3NVgcRg==
X-Google-Smtp-Source: AMsMyM5P/BwasGrsg4+AFFXYynCE7mHXSRI6SNWf2HE/ujcvikCJ5XzYoqrR/BQdGfmNOAIGKrrVHA==
X-Received: by 2002:a17:90b:1c8b:b0:203:dcf1:128a with SMTP id oo11-20020a17090b1c8b00b00203dcf1128amr45359268pjb.182.1666206122319;
        Wed, 19 Oct 2022 12:02:02 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id p9-20020a1709027ec900b00176ab6a0d5fsm11085695plb.54.2022.10.19.12.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 12:02:01 -0700 (PDT)
Date: Wed, 19 Oct 2022 12:01:59 -0700
From: Emily Peri <eperi1024@gmail.com>
To: outreachy@lists.linux.dev, gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: Removed extra tabs in conditional
 statements
Message-ID: <Y1BJpyISNFXK+RQ6@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

checkpatch found extra tabs in two conditional statements in
rtw_ieee80211.c. Should be one tab instead of two.

Signed-off-by: Emily Peri <eperi1024@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 3d8a64f69448..30e7457a9c31 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -1063,18 +1063,18 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 	/* parsing HT_CAP_IE */
 	p = rtw_get_ie(pnetwork->network.ies + _FIXED_IE_LENGTH_, WLAN_EID_HT_CAPABILITY, &len, pnetwork->network.ie_length - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
-			pht_cap = (struct ieee80211_ht_cap *)(p + 2);
-			pnetwork->bcn_info.ht_cap_info = le16_to_cpu(pht_cap->cap_info);
+		pht_cap = (struct ieee80211_ht_cap *)(p + 2);
+		pnetwork->bcn_info.ht_cap_info = le16_to_cpu(pht_cap->cap_info);
 	} else {
-			pnetwork->bcn_info.ht_cap_info = 0;
+		pnetwork->bcn_info.ht_cap_info = 0;
 	}
 	/* parsing HT_INFO_IE */
 	p = rtw_get_ie(pnetwork->network.ies + _FIXED_IE_LENGTH_, WLAN_EID_HT_OPERATION, &len, pnetwork->network.ie_length - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
-			pht_info = (struct HT_info_element *)(p + 2);
-			pnetwork->bcn_info.ht_info_infos_0 = pht_info->infos[0];
+		pht_info = (struct HT_info_element *)(p + 2);
+		pnetwork->bcn_info.ht_info_infos_0 = pht_info->infos[0];
 	} else {
-			pnetwork->bcn_info.ht_info_infos_0 = 0;
+		pnetwork->bcn_info.ht_info_infos_0 = 0;
 	}
 }
 
-- 
2.34.1

