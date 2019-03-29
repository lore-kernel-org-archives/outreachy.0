X-GM-THRID: 6673442126229929984
X-Received: by 2002:a5d:954c:: with SMTP id a12mr5689666ios.31.1553884586952;
        Fri, 29 Mar 2019 11:36:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7a07:: with SMTP id h7ls1186482iom.5.gmail; Fri, 29 Mar
 2019 11:36:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyy0GX8n6cL2ATTaabyi/liXcvkDv0xHC6nuynsgbJ16ZElFP3Df9CT+7/y4Qb3PaKAugP6
X-Received: by 2002:a5d:8345:: with SMTP id q5mr1625466ior.12.1553884585896;
        Fri, 29 Mar 2019 11:36:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553884585; cv=none;
        d=google.com; s=arc-20160816;
        b=gMsEzdAM8P/Ny2lOO4oWp9f8481tabPsrloV+pdhECMeDUhIt8UnzVvDPdRrHW8jJu
         Tns9osau15CAQmdS0TW+juo+7Vu+hllpeP/KNa6yx158r9gG3+5KGIAEspR4OQpy4cg8
         t6GhUzCY99Sia649Xz+ro9UEGabwrKCXRhnY8Py3hioXGAUsa3xj+muCZ5SwzW58KufT
         oWweQFCXmp+k2WWGJrS+fJ3zLJYsTZgtKijlE/FUe+Ch/W/fWdzssehHFhIxAYBZ/+20
         8OuD0XD5wMRXbhkXnRFs1DrgG6nC4W2WbYSBSlolazlpU7f6pqGOXfALQ/KbOva2TKCU
         5HQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wXK641OlEHNcP6KeUOByJY20hLgpdaMth1aj4GX8yE0=;
        b=cLRosAQ/uRLLjAXdnl5jfg7RS3N8D1FCmRurXVhKGccanWh8FvY+4Z0cBfxkAX5lk5
         Zh/Fgm2ArJ+P2ecxLKByfd57jJHC62fWsFw7q2rpZ7veAdTEnwiHVREL4I4gW6bJSHgB
         WU80WglhOKJQFAn11IsEQlqvMuMG15NHgNRjeLMf//jiochUoIDvAdBh58LFIULHiID7
         iuzxK6qEV9W1LSNOQujSnAtZY604bKzM//N8ZYmoRc8n8etwZVIr08pb++A/28HR/u1B
         KHc93LYqUi9lthhUO6SIZAtAo1R6d6y66rraZcZGp1DnT9wyNzot8k6pcJb3/FOCVw0N
         njzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EFT4pt2q;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id w136si117071itb.2.2019.03.29.11.36.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 11:36:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EFT4pt2q;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id c207so1446565pfc.7
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 11:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wXK641OlEHNcP6KeUOByJY20hLgpdaMth1aj4GX8yE0=;
        b=EFT4pt2q6c94+gRJ8HCVkSeYMEHLNjm9LPVG1lCSqiKu9nfpAAC60Clg7zTAZ+Uceo
         0o8JU+oEBNvxAr/MoAQ2bM+zbF63XgSuSLCK+4lYiSfKFXfA7NIyMxtPZJjfmWAODGdV
         /1d2y62oqWjsFAARolxxk8YvzptM3Vum+sHj2pxOP638XcNbRAtwd0qOxol6qMlePiMg
         7XaFMXE7BK6SaK6I5H1VBF/BatQ0vmRED33OCnSV0y8//mB1hn11276ECi7vlsvwEITT
         OTUxJj2ExZyCHysW5nIgQTxzYbFOKpfDtTm2TxhIJsnM4fOR+bgdIv+T18ePo4NiMDR2
         mkkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wXK641OlEHNcP6KeUOByJY20hLgpdaMth1aj4GX8yE0=;
        b=bYj+k4JWusrYKJpdAB8Pq2hAxBkr4JCNGxGOimMJxIPCbxmg+WGt+EHGhw/vzUhF7P
         dgUfIawyvKIRnAOV+6vqxZe+vGYGYxuUP1nQx9oToImbxK9IYlZvzKxUHR4VwN/GFcKe
         FvtSTSuPsFeX/guLPmUx3OmcqxdIj19KGx7L4vZwd1Z4mTbOHsboV342HFwOg6pjDlvT
         d0FrxYU1X5jNoKrP8DCNSYZD7ace8frjbhdN69yYdAeJmAD9LQhj3ddXy/9sEDammj+W
         pzSsy86nqQDVoN3nQ3n7cYHWtY3cSF8tDfd3NwMAuIA24tfqBQm4S49MJM7wsk3GEWwr
         JPVA==
X-Gm-Message-State: APjAAAXSxa6AKU/SyHwY3obLehuO3+zdlNqoNPK/2nh/H0pddf1vyp/X
	6K7gb0fQYw96tbVHYGc4dHgA8cM6
X-Received: by 2002:a63:e915:: with SMTP id i21mr47498493pgh.297.1553884584626;
        Fri, 29 Mar 2019 11:36:24 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.161.165])
        by smtp.gmail.com with ESMTPSA id e21sm5299577pfd.177.2019.03.29.11.36.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 11:36:23 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel]staging: rtl8723bs: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 00:06:06 +0530
Message-Id: <1553884566-3839-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Remove unnecessary parentheses around expressions and add spaces around operator.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index 7de5161..381065e 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -1076,7 +1076,7 @@ u32 ODM_Get_Rate_Bitmap(
 	/* printk("%s ==> rssi_level:0x%02x, WirelessMode:0x%02x, rate_bitmap:0x%08x\n", __func__, rssi_level, WirelessMode, rate_bitmap); */
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, (" ==> rssi_level:0x%02x, WirelessMode:0x%02x, rate_bitmap:0x%08x\n", rssi_level, WirelessMode, rate_bitmap));
 
-	return (ra_mask&rate_bitmap);
+	return ra_mask & rate_bitmap;
 
 }
 
-- 
2.7.4


