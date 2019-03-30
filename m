X-GM-THRID: 6674191522051653632
X-Received: by 2002:a65:6683:: with SMTP id b3mr541023pgw.98.1553956323373;
        Sat, 30 Mar 2019 07:32:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:683:: with SMTP id 3ls1690099plh.1.gmail; Sat, 30
 Mar 2019 07:32:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyyijXFQUwcRIPB5e8kJlvPcBHjz32aHMzNtx8uPuy4ji8qZVwwwXc64R3EgKrjAXE1YmLC
X-Received: by 2002:a17:902:b08b:: with SMTP id p11mr410720plr.142.1553956322553;
        Sat, 30 Mar 2019 07:32:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553956322; cv=none;
        d=google.com; s=arc-20160816;
        b=F4Vmu+RQdaFtN7UDoXv2RWvUXarWy+keHT0mS1etdtlBU5+24lFwuXifHoCm3990fS
         xP3mEEJrVn2SFL92VgkXxbBa1UlYf0TRWAy07YugJRlr2VImKxOMXc58f1vaagubkdFV
         YnJoYNAH5+k1fVA1sLhsxa/Z0k11YXO1U+9I+/+1iBq/cYqqSrK7RclY+3ZFWgX9w44V
         3DB0UDWa1dPwfR7Ew5CUOih2JaBu5yDsbkW0X3dRYWQBc/vZBM3k+nhyi6zTSVGwpNAP
         +X2QI5btdOn4uWNTVnjzh9LXtaUf7iR2ptkCs1jEtEHFe/e8LXR2O3gDsJILP9iNEga2
         rWoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=WctxkcwLxUlCpSnk+j79cmuiIFhpY6n8Yd/le83kcOk=;
        b=wSxLfZCT7YAJzrbpn+ERoXmkBajN7wPtJTo8trllqkQ+Ginm4wIAslTg9wVSmOj7HM
         WUoEqhlKxcHvVualHSwn6NWv7RBSkhyuzDjXIylu8yVi3v37LI6K8p5ObPnrTERivuWt
         KutEXWfqyjBmboldys5y1O7wdB5xD1NejWv6KOmA3Bjl2whFQSZk4Buvppew3XMDTCMo
         gFrn78gI09yvVzq2dGKYv4srEecnj/l1XT2oIF3ZJEmBBwPaaBfuGnOQfVqNUYu47RHR
         rtXJCwgPHrCLXXntaEXqV1VuHQkFExA4Qne8dymP7J4wDQxPM1IWqSA25nGK+3Sdgexw
         /dUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FlT4+i88;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id c6si283471pgm.2.2019.03.30.07.32.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 07:32:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FlT4+i88;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id f6so2563923pgs.8
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 07:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=WctxkcwLxUlCpSnk+j79cmuiIFhpY6n8Yd/le83kcOk=;
        b=FlT4+i88o147oPooOIMumBJ97B85byOWQEz3jq5agUgA83ALJe1j+L4NfQ0YA2cOWX
         2nI6IJgwoTeD3rJaHu68z/n4RQxLQ3Hw/XtE4V6PhRssOlUiXKI9BD5lDNWkOVdNjJCI
         A+ymmFhBBk8JJJANNUm/ONDDQryGV247UFO4TBPJUuiAEyfwU88Vd6gXLQ1gFFKb0e5A
         UscKg8HdWYiaRCd55zQxowIYrHsLE/jmXO/6dcUyr5Cf+ceRSWiV3E1jIULB0YvxnneP
         d7qopQrqbJB7ol4+1KFOfneI9uPqUMzZDCsi/oOI2cs4gqN9Bn8YY4N/oiMZF8w43+6L
         3bJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=WctxkcwLxUlCpSnk+j79cmuiIFhpY6n8Yd/le83kcOk=;
        b=kjKg7k8FKnDTKh43Ewvthew69p1tpsAQNFMuJ+ec1wj3YlceOIzd082UO99ixLTnn4
         4OQMNA2qR8kxcUBvFs2j1IosHySu189K+jVFsqlwQXO/xAN65SB/FO9jwbvJF+Xgp22d
         4FMgYeFaKZA5McdZqOwyqrYQYclKUq9tuzgQzKWrAzkDbb3RE8V74omM7OS/oWmLp66h
         HLq5QEQtyi6Zn0Vl86JqEHMijwB+NyenbzWGZEzdRAldh6JWvDJMh4mPMOEuSUyGvbl2
         Vv4KV6ppofcdVEIzYizNjdJ/h1KAb3fy7xxGcULgFVxzobsnLs5YXqB//6cqEcaJ8+oo
         JVDg==
X-Gm-Message-State: APjAAAUhFAKceBQeP1k/scLJQuE+VmQprnwVEeFgHr3a3kuFWxladrde
	V42Rsg/a+wrkJ2AA+McEqwbzO1c7
X-Received: by 2002:a65:430a:: with SMTP id j10mr34807577pgq.143.1553956322048;
        Sat, 30 Mar 2019 07:32:02 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id i1sm13330453pgc.63.2019.03.30.07.31.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 07:32:01 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 3/5] staging: rtl8723bs: hal: hal_com.c: Compress two lines into one line
Date: Sat, 30 Mar 2019 20:01:28 +0530
Message-Id: <a5293592eec48263f22222fe9af12d4933045a02.1553955183.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Return value directly without saving it in a variable and remove that
variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 151e4e9..2c4b8de 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -971,10 +971,7 @@ u8  rtw_hal_networktype_to_raid(struct adapter *adapter, struct sta_info *psta)
 
 u8 rtw_get_mgntframe_raid(struct adapter *adapter, unsigned char network_type)
 {
-
-	u8 raid;
-	raid = (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
-	return raid;
+	return (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
 }
 
 void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *psta)
-- 
2.7.4


