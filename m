X-GM-THRID: 6673458738250121216
X-Received: by 2002:a24:390b:: with SMTP id l11mr142562ita.20.1553785753590;
        Thu, 28 Mar 2019 08:09:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:da01:: with SMTP id z1ls1192307itg.0.canary-gmail; Thu,
 28 Mar 2019 08:09:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzIYOak0bnKHap0uLz6lZ/BIZy39WJX0LMNfb+MRtEmbaM23QVP8ctIfdp8sqaO6qcsXmPg
X-Received: by 2002:a24:5c81:: with SMTP id q123mr130165itb.34.1553785752291;
        Thu, 28 Mar 2019 08:09:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553785752; cv=none;
        d=google.com; s=arc-20160816;
        b=k7lEfCpSj+xvFeZ714jTMbjnfU4MCiEwqeMpJFQnKWpoOj8TOPKqgYv+QyOlUpEl7n
         gNHOB8Zg5gS3NVZt6r5+eAXdxuLai250QarVERL+yMQToyYG3omkt1qHDnIhBrPx6DY0
         z/NGQxe8kNavluLM3GV/CCppkRB7LucQGTBxzvjB5+ux1O5CJ8j+B/SMnrZnUSlszVoc
         Mjkf1ilL+YhVqISXbBboq6b/9y5rcBo9VDt4g7DV4IajmibGe1dZ2Ts1h97pfV7dyvKT
         avNLCYlaKPw0svKCmsXRR+3Fo2xv2vevYorpqy77/0WxC/SAL3Wy5y5RrJjvou5bcmxh
         c4Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=EqVLGJ6pcFJNDXUUsigxKRjUPkPvwe6Ql/h3ak+AUGY=;
        b=wwbS+WZZAbt00hrKBNynMuAvLfE0lmLIE1rUxXJXDoulhiO+R72FsOdEHNhKZoTS9m
         jMmkGRYHaUafprcePNCDH3k9LPJDtRmmVI5ncNnPFXSYqDGyS8BPjwBMVhFGgqQ7DI5h
         h0FReehUoKcpLqzx5nqBi3b/IMpYHHcT8CHF5eQmwBzUnsptcCg1EMZt7dYJ4jnORar9
         nNXv/PK24sfk8WHk1VIATJK3jt1PWfGQX4Al1OeVv8J+qzfkricMD4738Zs96Xo0nWrG
         nxy/IfBBanW5l/hoIkkl/QyDiVvVqmptfuQIyNk1E1ivYuc8tKt/sThwo2Qr0gcOHB5Y
         Vl0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FIoA/gfz";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 3si102406itz.0.2019.03.28.08.09.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 08:09:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FIoA/gfz";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id u9so11736584pgo.7
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 08:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EqVLGJ6pcFJNDXUUsigxKRjUPkPvwe6Ql/h3ak+AUGY=;
        b=FIoA/gfzT7wITIjmeQ3AaVbd2IPsteoT9nBD81pWySDehDXEv5LeHLSV94k7bdJ0sk
         OY2CYPHr4iw1uGubVzLtTZceSK3Cof9iRBSqN8NYeXV1d7/fBWbL8y97FLwtrloxXKLg
         kPUr76g0+NTcCFyia4b8eT+p4MO3zM2BRa+2SLvczvEsBsyikbKiguFi6uYl93wE9Sk8
         5OGQ1DAZgfbos6nffaZOVBD7mz4JK29RUf+oGXY9q3LRZQQd9f3WLEo8L465vVl8b4x1
         IxO3rso5kykSvpRlxcMzybGEVUby3T1TWUhUoX9z9acpETozVGi8mrUFXJ4mVGp9kJIA
         w76Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EqVLGJ6pcFJNDXUUsigxKRjUPkPvwe6Ql/h3ak+AUGY=;
        b=Km3kJR1mFl4qiqa/1lWJmb0nJkAv8Hy+joNX7hxtm+1f9HYelIItyzBIXD0zCEFbU+
         TazoUKVc5JbAd3kJku+jz1rLarySpj6pRZ1ZaOHwVon+IOIkkIfuaINRQhYWJqWIy5AI
         oA97G1b2blt8XMVysJM/f7q+ORHqVENHdwLUeRs09OWhecHKrVsW9bTI8KK9jKh0B7rs
         XDI/h+6PN69oq73px4K302dvQOh3vUp8Dwx2XqhW9SbTV1lDY+IOEyIGcbe1vPtu/azC
         erh8gXSWTeJP26Lc1MYEVEAcmELi8rEhp8oKYh16XrIXa1fgeXgkcj+TQe9ETmS8qXZ9
         BM0g==
X-Gm-Message-State: APjAAAUjbd0Om5AYNAQOxtnC7xeB0jRA+8bl2ZaX6rkk5TABecyT6s8l
	XOxZWq1vhoLv/6k1J2QM7j0=
X-Received: by 2002:a62:5385:: with SMTP id h127mr40355697pfb.10.1553785751726;
        Thu, 28 Mar 2019 08:09:11 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.77.58])
        by smtp.googlemail.com with ESMTPSA id 71sm26653441pfs.36.2019.03.28.08.09.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 08:09:10 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtlwifi: Remove return variable
Date: Thu, 28 Mar 2019 20:39:01 +0530
Message-Id: <20190328150901.10595-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190328150759.10539-1-sanjana99reddy99@gmail.com>
References: <20190328150759.10539-1-sanjana99reddy99@gmail.com>

Remove return variable and return "return" value directly. Issue found by
Coccinelle using ret.cocci.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtlwifi/rtl8822be/phy.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c b/drivers/staging/rtlwifi/rtl8822be/phy.c
index 048904d783fc..aed315143cbb 100644
--- a/drivers/staging/rtlwifi/rtl8822be/phy.c
+++ b/drivers/staging/rtlwifi/rtl8822be/phy.c
@@ -219,10 +219,8 @@ bool rtl8822be_halmac_cb_init_bb_rf_register(struct rtl_priv *rtlpriv)
 	txpath = RF_MASK_A | RF_MASK_B;
 	rxpath = RF_MASK_A | RF_MASK_B;
 	tx2path = false;
-	ret = rtlpriv->phydm.ops->phydm_trx_mode(rtlpriv, txpath, rxpath,
+	return rtlpriv->phydm.ops->phydm_trx_mode(rtlpriv, txpath, rxpath,
 						 tx2path);
-
-	return ret;
 }
 
 static void _rtl8822be_phy_init_tx_power_by_rate(struct ieee80211_hw *hw)
@@ -1580,11 +1578,9 @@ _rtl8822be_phy_get_txpower_by_rate(struct ieee80211_hw *hw, u8 band, u8 path,
 	else
 		tx_num = RF_1TX;
 
-	tx_pwr_diff = (char)(rtlphy->tx_power_by_rate_offset[band][path][tx_num]
+	return (char)(rtlphy->tx_power_by_rate_offset[band][path][tx_num]
 							    [rate] &
 			     0xff);
-
-	return tx_pwr_diff;
 }
 
 u8 rtl8822be_get_txpower_index(struct ieee80211_hw *hw, u8 path, u8 rate,
@@ -1858,8 +1854,7 @@ static long _rtl8822be_phy_txpwr_idx_to_dbm(struct ieee80211_hw *hw,
 		offset = -8;
 		break;
 	}
-	pwrout_dbm = txpwridx / 2 + offset;
-	return pwrout_dbm;
+	return txpwridx / 2 + offset;
 }
 
 void rtl8822be_phy_scan_operation_backup(struct ieee80211_hw *hw, u8 operation)
@@ -2218,6 +2213,5 @@ bool rtl8822be_phy_set_rf_power_state(struct ieee80211_hw *hw,
 
 	if (rfpwr_state == ppsc->rfpwr_state)
 		return bresult;
-	bresult = _rtl8822be_phy_set_rf_power_state(hw, rfpwr_state);
-	return bresult;
+	return _rtl8822be_phy_set_rf_power_state(hw, rfpwr_state);
 }
-- 
2.17.1


