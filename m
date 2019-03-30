X-GM-THRID: 6674191522051653632
X-Received: by 2002:a1f:654:: with SMTP id 81mr5414027vkg.3.1553956332774;
        Sat, 30 Mar 2019 07:32:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c51:: with SMTP id j78ls864833vka.1.gmail; Sat, 30 Mar
 2019 07:32:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwnQqlcPgdAOcmgUG0ByyAwATbvDnHGbtng4IRX85DulgP9gijIC33IFXYBqU0UPlSevpe0
X-Received: by 2002:a1f:3c0a:: with SMTP id j10mr4530170vka.17.1553956332260;
        Sat, 30 Mar 2019 07:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553956332; cv=none;
        d=google.com; s=arc-20160816;
        b=vhC8uiknScYlsCz9KHDrCFNEX4PCfgDvKYsqhf8UXcUybBawawteIMwb+mrAHxCeai
         HTSa3KMW0wuj7qedeOPEivYyrPJovIpJI8XC1Mmqv0tef5w4TJ4dUjgMeE3azLw3gBOs
         omJjioUg0TTA8cLa0QjusWiODFIsj+2IzaTm4T8hSVa71cEmodZb3k7zV3696fmVSZ5e
         y2DPvKBfrLlPnTMH59W8jIqUztbWfy3UNsrd2tlB7wWfBmW7YvAnSLDac37N9My2ZR7K
         A7QZCU9YyTbVWjZZbRJXdD8f6LiR5C/v+G0+f7Zh/C/0aciaGCCnzpusYmKXg32vfSgR
         2wrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=A1Bj03vJnlfGft9WdKyxkkbMTuifzLA2fET+TzCWDCw=;
        b=wBh8cyqfU8SowqimMPDewTNwCNxgajVLx9CmjpwWVt9j+3e69lXEf1oWaRM1KqaB25
         UWW5PCrwPdxJsz6tzG+6cszJsu1xdIDt0wAo+CAJ5Iaj9kcTZFDPXeV4SkzhdgFIZ8di
         KY/93KUICPwZOTRowRWsYwBF5596uYQyLZAxP2Htr/tVtgxG6Skpw+cIPHeE9FNsFm3U
         NkTMNupaDGPSmZ1KKPo0DGrlM1dd5bHHdpvX5lnUyBHTYI7ofz+UEPmVcCz7p/xEKCYQ
         cO1w4KzqPrLw3xuUBSa8uq9U04KVL8OD+dzITdYu46V8C/sI8o+oGGIxwsA/Swv78n7q
         gpyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YV0RziAK;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h13si346664vkf.4.2019.03.30.07.32.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 07:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YV0RziAK;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id i19so2403093pfd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 07:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=A1Bj03vJnlfGft9WdKyxkkbMTuifzLA2fET+TzCWDCw=;
        b=YV0RziAKgD79Dt6bZWfie2/Reea6WWxdhdgZn07E6GCBsuv8LAyhu6Kx7D4dRGRSvH
         rvmpBjmD2K+phu+DHYSAhrsKjZbTI9xCMfCt+ijJGoLisqEtrS1rDEmoP38Jo8etK5ny
         l/urOZDltHuqXK6ETiaSuzidI4H4HIPzP0Ty1TCOUlSi3VQ3YZxBweiPAVBSS+6VwneD
         Rqs4fHFSNYzXD8BB0VnFA5kqm+62brmlWPODCbFUD+BklcuRJvNbfY9aOQCxyBW5fV2f
         /lcLew2FWq2lWDB0obLje7SS0vz7W/duUmDPWx9CEH4jH4tIFbnOMri6t9Fb+MnKg8LU
         7YsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=A1Bj03vJnlfGft9WdKyxkkbMTuifzLA2fET+TzCWDCw=;
        b=MM6+VKTdE4cVZXOU4JpRp68j5oBnsQp0SSeSMHqnxCbxmEdPt+E6d4Gyv8SP3uQ0JS
         juwn3Flr7F2UBq1LkIBnmD6exMcWEjLzy1JoMDOZb8vmdNJy8FsRaKy6wPeyj9dJ4TSD
         6nReCG7aWWddcLrEd4CJjy37Hsp4T6X1zBKKJOYB9HxgweX/f5a3iCbRzH753HnWZH0t
         o8TJ/Yw6yxs880tBc+aCGFib2OPjUndYIK0/UFKXhjE4OHV1ZmYuxtmYvlM8YRlYU2LH
         WnAsQXg2zWpY8IRb8I3Z6L60QgHpKIrBaU7SBP8x6rmHMqMK+2h1I9yk74K9md8ctIyZ
         qz0Q==
X-Gm-Message-State: APjAAAWowlT2rd/k1ySMbdV91WnPh+GH0+vI/cGFVCLN0p+2MTTpp1uG
	OY1pz6koXNJ9ewNL4+fT1r7tuE3V
X-Received: by 2002:aa7:884b:: with SMTP id k11mr17933090pfo.49.1553956331639;
        Sat, 30 Mar 2019 07:32:11 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id i1sm13330453pgc.63.2019.03.30.07.32.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 07:32:10 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 5/5] staging: rtl8723bs: core: rtw_mlme.c: Compress two lines into one line
Date: Sat, 30 Mar 2019 20:01:30 +0530
Message-Id: <4756f370659f5e98dcd00f7dea94b062d202235a.1553955183.git.payal.s.kshirsagar.98@gmail.com>
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
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 12661d7..ef5f78e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -353,10 +353,7 @@ u8 *rtw_get_beacon_interval_from_ie(u8 *ie)
 
 int	rtw_init_mlme_priv(struct adapter *padapter)/* struct	mlme_priv *pmlmepriv) */
 {
-	int	res;
-
-	res = _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
-	return res;
+	return _rtw_init_mlme_priv(padapter);
 }
 
 void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
-- 
2.7.4


