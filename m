X-GM-THRID: 6674542859228545024
X-Received: by 2002:a17:902:6b:: with SMTP id 98mr1601953pla.119.1554043316396;
        Sun, 31 Mar 2019 07:41:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:868e:: with SMTP id d14ls2935634pfo.2.gmail; Sun, 31 Mar
 2019 07:41:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw9TbrytSG8HPgcaR5WjVgm5E5v9cGjcBwx5X38ib+yeQuBABu26weFHB+rSu3SKpUaM64/
X-Received: by 2002:a62:1996:: with SMTP id 144mr98108pfz.83.1554043315715;
        Sun, 31 Mar 2019 07:41:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554043315; cv=none;
        d=google.com; s=arc-20160816;
        b=BOTKhqefKmXrtPj7pYNqGVuxN15WDJKB3TV8R5wPvYqzj6OnazpD0w6myOVNKxUfdn
         smtOQFyQCtbDDvcIkqCvC1CEHpg3HMktBD9L9PYaO8/BiweTZh8Nc+fX60v4AqeyFVok
         /+R/8qbaRjqCAQMQkyUtHkje0LrUqB7u4RCGPO2NaAfhsiTvAPlGZyJ0B9kjPXpEhY80
         r8+5X7VdqCDvQ7PTTsvpXwp/NoUTZUfiGR36EhNXxYHjvgisSbLjz5Ah54ee6HF0rKXA
         8pFfcCPhWZpAnNOOIb4zRk4NUvhgFRSxy/oEIDsJPplGFgEzQT9x3ixlgEaG2KrZbc9d
         r56A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=+xy+L3+qvjJp+AIjaQXsZfhFUXuag7Wupruv4RpMMYc=;
        b=VQP4jSdDaW9Gq6dSN9/8K4fGXAuE36JzpofVzsFNEEurghGHbRN5leee5DAYyvilY0
         oA5m78qMpGZCkZlOt7z57GCfJ5YVxJKX/dAkTUFrQ/vUAG+cGYc0tsmk8AbESgoJLxkS
         UrFb1bHu45h9Z0aFIsIZ5lslnuelwe0BONTna35UnI/CfXnZVbHL6879v2J0ggVoGdSI
         o9VaLn7Y1UMm1vOAcYy2kjpHBs34RQ70NmAXpqJ+jsXxiDR7IcP0y0UI6cNYyvHtWAtK
         FGPzQnl5+KNJdpWi2KMhX5hXS8KXJYRIrMxIR6c0SYbcWv5UsT14vCJmrFAwwn5nEKlX
         ENXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A/DH2Oyk";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id j8si502684plk.3.2019.03.31.07.41.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 07:41:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A/DH2Oyk";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id ck15so1999943plb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 07:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+xy+L3+qvjJp+AIjaQXsZfhFUXuag7Wupruv4RpMMYc=;
        b=A/DH2OykrP+ZccWe8w50o5+udIDFY39+x7u2IlvqR/R9Jfdp76A3lfVgCVAvacM8Cp
         cuyFMsttIe3KY+tgiRfjksx299F4dPN5ProcfYQQfN51mCrfAKzdzl6lrg2M668fm7Yz
         nOOkrbCrpfI5zv5cLQCcZtzHN/HOr0Mje+JWGjaeKv0pbSbsemUZ1XfIhGJJNiXlJ1NS
         BzILyyn7fUBLAUU3/EXfWAaZ2t1KDZ2uSYlFNFwEgZom1N39O2qwsjGXx5iVgw+e8RfP
         skWsAm9cfd7sxYf+7OzYvfa06VZyp/LF18bmh8geK3wSH+xrvo83ftRB+UpqtUSSU3A0
         kdYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+xy+L3+qvjJp+AIjaQXsZfhFUXuag7Wupruv4RpMMYc=;
        b=PjqcX/4AKlqJK+DkREtj5c1QMiRs7RoLx+cH8tktj6/zvCME/9JEv6BS4UH8RCaq9F
         X+7NMynzIddyx6whBvgT4nOiUscCB6IGrBplX3L5iDyJUtKoJuD9N//Eh1aglfGpJd4r
         BKxEr6wjDN3ar04mrjWhQB+G8exf/SEJIplEZRUTo+gEaFy6nxq1BvHGr5DLTot8yA5G
         lIKev3mqQyOb3aJX41VF0Ju2ExjTFk+0RGgaCQ1eOTWIMdSMlPRkV0Gl1nnkDAqPtblF
         ZQaDAjykpT0B52pgUA+zYSL0P58cInhpWyMQg8f5ipqNzK+vUXymWEox+XFiQXf0sFWE
         kIHw==
X-Gm-Message-State: APjAAAU5lxud5zm8EoY3v04Zk+K1WlyoLBx09YFLJU6uAyxU0gq74BAy
	Tp9xP4HRBgTE5im+B67NyunhyGvo
X-Received: by 2002:a17:902:2c01:: with SMTP id m1mr59463375plb.186.1554043315099;
        Sun, 31 Mar 2019 07:41:55 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g67sm12397858pfg.94.2019.03.31.07.41.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 07:41:54 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 1/7] staging: rtlwifi: Compress two lines into one line
Date: Sun, 31 Mar 2019 20:11:28 +0530
Message-Id: <b6405f65834d83d12478b14e310295c4c27da469.1554042596.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>

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


