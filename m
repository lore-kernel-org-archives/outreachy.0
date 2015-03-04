X-GM-THRID: 6598140362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,230d94accd1f422f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.29.102 with SMTP id j6mr4276489obh.46.1425475472151;
        Wed, 04 Mar 2015 05:24:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.163 with SMTP id l35ls535975ioi.33.gmail; Wed, 04 Mar
 2015 05:24:31 -0800 (PST)
X-Received: by 10.50.30.106 with SMTP id r10mr27311784igh.0.1425475471910;
        Wed, 04 Mar 2015 05:24:31 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id q9si484558pds.2.2015.03.04.05.24.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 05:24:31 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x231.google.com with SMTP id y10so57451904pdj.6
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 05:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qyWhQoMiWpjiW/yLeK1ilWyrvAfvzgoRu9lAYoiJ+dQ=;
        b=1DmDRCENysbyDYovkWoKP2cmXRrHZYfacEoFTo07GzOlUpX3G4gxjAbeeDnslb5EFU
         8OoEqT5k0mPigKQozAUV90vfrDWfyBAxFe6gyGNzwHy6xiEaDiqCJUJBUGlqvvaWDpvS
         2wBDX6Mv+4Q2KXREy79XdrtEpo9Jy3pBg9tqPkkhRmveC/wCH2LPfHEHQDM9rFMSZlXH
         ugZ8FjPR7ccHD7N5TPbiJQGcNGA5XsorN9M5TNI6jlm5xGasAdGwc6VxLYrYknKClL6k
         8lqpXtG80EuSCInSBxVrDfEA+WxrmlguUDHZdf7dvp8JYqKHdgm3XwVBzssNL4DM2P9/
         IVGw==
X-Received: by 10.68.65.11 with SMTP id t11mr6954017pbs.90.1425475471800;
        Wed, 04 Mar 2015 05:24:31 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.168])
        by mx.google.com with ESMTPSA id n5sm4105227pdh.27.2015.03.04.05.24.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 05:24:31 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 3/5] Staging: rtl8188eu: Remove unneeded return statement
Date: Wed,  4 Mar 2015 18:53:03 +0530
Message-Id: <1425475385-2360-4-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>
References: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>

This patch removes unnecessary return statement from a void
function and hence make it more compatible.

This issue is identified by checkpatch.pl

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index dac4246..074f48a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -650,8 +650,6 @@ void WMMOnAssocRsp(struct adapter *padapter)
 		pxmitpriv->wmm_para_seq[i] = inx[i];
 		DBG_88E("wmm_para_seq(%d): %d\n", i, pxmitpriv->wmm_para_seq[i]);
 	}
-
-	return;
 }
 
 static void bwmode_update_check(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
@@ -779,7 +777,6 @@ void HT_caps_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 		else
 			pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate[i] &= MCS_rate_2R[i];
 	}
-	return;
 }
 
 void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
@@ -800,7 +797,6 @@ void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 
 	pmlmeinfo->HT_info_enable = 1;
 	memcpy(&(pmlmeinfo->HT_info), pIE->data, pIE->Length);
-	return;
 }
 
 void HTOnAssocRsp(struct adapter *padapter)
-- 
1.9.1


