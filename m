X-GM-THRID: 6674542859228545024
X-Received: by 2002:a5e:8c1a:: with SMTP id n26mr8658919ioj.16.1554038116288;
        Sun, 31 Mar 2019 06:15:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:3553:: with SMTP id k80ls2033340ita.4.gmail; Sun, 31 Mar
 2019 06:15:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwnzOtKB9n1pQAE7c1vVv1QTjArbL6LBPJk/qg91tVO2AH9wRI2hHTRZfRG5XJAF1//bI8e
X-Received: by 2002:a24:9fc4:: with SMTP id c187mr4860906ite.23.1554038115615;
        Sun, 31 Mar 2019 06:15:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554038115; cv=none;
        d=google.com; s=arc-20160816;
        b=YaQMMVDJhcp9vJjo+OLle3dvw2Zhikgo9IgNc92IspsxLNnE6LtioNjz66VlJduIA2
         l+tCfph7g052rWjGVAeojnadH6N5sxywn4d51fmX5gOy04EVWicc6bGmqwuEqg8IA8C7
         rAKojUqDz1cEv1OyCmhP1b3RCHoznm06uyeylnovb6X2IXqub08z5BvzS859UBAA4BZi
         XIrV8JV0/HP0TU4Tl/vZcdolXCut3OsFEX8WjoyRzOnW3kNci6KXpGpQ4/PEs2ffr2DH
         z2c4GSmkexngOK9PDVoBrjEwqOpXauB1BkbAfgV060y37epJTio9ofe0aOV+iZAVTYbH
         Vtdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=+xy+L3+qvjJp+AIjaQXsZfhFUXuag7Wupruv4RpMMYc=;
        b=pqTE0doCpWLk3+QSX0f2QW9KdqsiXu6ZS1cmP8J+wrP9zPDyibO7C+5JZ2//lbM2QX
         ijx8DkfYYWI3UVroGKHUToAPJFHaBCM7TGIaJpUJDiwL0coUL2yHpiRKxJlKm5t1cG41
         GtRPsbDnQTNMyXwVcLnA7ZHtjGwNgvceESPgE9PLKnemULPlGR9sx1IzWrdMqGq/OKJN
         2nq2TS10xsA6ugLVWn679xJpbcET2sPF7bk8Oh+HJrHGLTicITzH5b0PcyeSj+ypBlHa
         czYLeQpC9GCU9//x4Oun+t6GiWvvsUXpEMAcrTP6zinELuWIq55IwtcpyTHTunSM7y7a
         paJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DrM8rmBC;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id 196si1191806itw.0.2019.03.31.06.15.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DrM8rmBC;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42f.google.com with SMTP id y13so3192652pfm.11
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 06:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+xy+L3+qvjJp+AIjaQXsZfhFUXuag7Wupruv4RpMMYc=;
        b=DrM8rmBCXn1KQSwvgJNC70xBCZ7LjnKcrGydBuhF8ySfq2/NtbVGgYES+wGTVuMEm2
         P6LG7dIlsYQ/W1iQStK6d6sh0iUkTW3ogKyvqUqOEtxpteKvyf9Zwr2g+5y3MiqavWpN
         PIyGPU/rxl7GFiL/Tb16aLysHG1eVRG8d/NrK6ZDq7QJp5ithezNgpqKKrQlzE+qqMTY
         qIJipizjbW/Iv4ii/cp11PvIwdHA29IwiH3WBJ+Ym/ATCyoHeto1HXsxoLpO3urqm24f
         VxyFyc/WWNdxWY3Ufs/Gfe1TeaD2lPeMruXbxqQ5ToE/kQX+rlrKu6OCozKihpHb2Tpx
         WFwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+xy+L3+qvjJp+AIjaQXsZfhFUXuag7Wupruv4RpMMYc=;
        b=KMZ8NongAXmYjwhYl106bAVXablnSHs4hHn2j6og0xxB0yyaeN9Q1mX5PSPm0X8f7H
         cATjMUlV6I+wMOZrn69rM0VLQTOuIrgN2dRnSqEs3nCLMUI/z3MZlwEHCJnIGXxYp2LR
         P1EHDlaOKysfRZ/SieKh9///XkzEMdkPWIgBtUV1N7Jm+Y4lPI3dJJOjhyCDTEdRMC7w
         wSqXqY9uHJh1GTUYMq3fezrVreNhNIbNkF/T07UpmMuiKlDOfDbiTcjEQNu8t8eY6ff0
         y71dCv7KD6nVVZisExFKhXszIyUZjTqgyPvIOMxYSx4d+bxJws9bMIWtWndlYDQlLeJN
         7UMQ==
X-Gm-Message-State: APjAAAUlZ/J3NJDF9axMJCIW41aXqQxwpob5Mpoy1KhXHiDmcz5xfLex
	4/akuWDFHmzHhxgixY35pVu81iFx
X-Received: by 2002:a65:414a:: with SMTP id x10mr41596258pgp.237.1554038115058;
        Sun, 31 Mar 2019 06:15:15 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id v6sm10085946pgv.92.2019.03.31.06.15.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 06:15:14 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 1/7] staging: rtlwifi: Compress two lines into one line
Date: Sun, 31 Mar 2019 18:44:47 +0530
Message-Id: <b6405f65834d83d12478b14e310295c4c27da469.1554037161.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Compresses two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/rtl8822be/phy.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c b/drivers/staging/rtlwifi/rtl8822be/phy.c
index 048904d..4f69776 100644
--- a/drivers/staging/rtlwifi/rtl8822be/phy.c
+++ b/drivers/staging/rtlwifi/rtl8822be/phy.c
@@ -1566,13 +1566,12 @@ _rtl8822be_phy_get_txpower_by_rate(struct ieee80211_hw *hw, u8 band, u8 path,
 	struct rtl_priv *rtlpriv = rtl_priv(hw);
 	struct rtl_phy *rtlphy = &rtlpriv->phy;
 	u8 tx_num;
-	char tx_pwr_diff = 0;
 
 	if (band != BAND_ON_2_4G && band != BAND_ON_5G)
-		return tx_pwr_diff;
+		return 0;
 
 	if (path > RF90_PATH_B)
-		return tx_pwr_diff;
+		return 0;
 
 	if ((rate >= DESC_RATEMCS8 && rate <= DESC_RATEMCS15) ||
 	    (rate >= DESC_RATEVHT2SS_MCS0 && rate <= DESC_RATEVHT2SS_MCS9))
@@ -1580,11 +1579,8 @@ _rtl8822be_phy_get_txpower_by_rate(struct ieee80211_hw *hw, u8 band, u8 path,
 	else
 		tx_num = RF_1TX;
 
-	tx_pwr_diff = (char)(rtlphy->tx_power_by_rate_offset[band][path][tx_num]
-							    [rate] &
-			     0xff);
-
-	return tx_pwr_diff;
+	return (char)(rtlphy->tx_power_by_rate_offset[band][path][tx_num]
+						     [rate] & 0xff);
 }
 
 u8 rtl8822be_get_txpower_index(struct ieee80211_hw *hw, u8 path, u8 rate,
-- 
2.7.4


