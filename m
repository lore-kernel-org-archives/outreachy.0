X-GM-THRID: 6673458738250121216
X-Received: by 2002:a25:2f44:: with SMTP id v65mr2013713ybv.2.1553790937589;
        Thu, 28 Mar 2019 09:35:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b8c7:: with SMTP id g7ls1893679ybm.0.gmail; Thu, 28 Mar
 2019 09:35:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjf0hKKuqv7EbdIdwL/JV/CG2nVj4BWYKAuBMl8zMgz+ZliYtXORd7j0wl1/gZ2/mjyvpO
X-Received: by 2002:a5b:4c9:: with SMTP id u9mr2577822ybp.93.1553790936842;
        Thu, 28 Mar 2019 09:35:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553790936; cv=none;
        d=google.com; s=arc-20160816;
        b=t2r/jmp/ya04+0Xqb61ni8hPS0u2V9vZV15LNJkzrr2c2rgd9z6Fx7RZr+Etfvavsn
         B/eIs1HDe/KRl9nYHGsenEfd8hRlq5dfRE2cJcWp5tvQd8tDjT5jh/BAdJy1xM5AYrVP
         +DVvJuC928x3JcEuY0a41gVkxcZhnBVmShadP5d69J2kzTHss/h8NSwejsnZdyZo75LU
         uWiWx9BW/clL/vijp+IXHXCdDy+edn1We4vnyMyguVLnM9Flo1FVxcyr4zf/i/zSdKPf
         BoIrX61E0d3x2J6+IvmFkFpBiZpDJooBk3WZUvqss+53xFZb2nY6VvfncEyeMdtzvBiT
         iTMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=465PxIouiHJf11fhPJEXj6DlpCK915RINCaENh4yJR8=;
        b=DzRPPe1YZrg2sRDqDgUBZl0yCeAHuSaO29C5ZRCOJItwNBhGL/fdNC+As6D3tlFbmI
         YfiPJZ18qv0LWxSvMzUt6GJ7XRNbTR2pKahko/l13tDL6U/HBS2nKBALc+BfizI1Z2b0
         JOE/SnH0C8Dvnh1ZGZBkjB7BBBVGrFsvjFaQIFDb22NX4Pq8EnlrHeLSinTWTeJl28wi
         q4fCsIq0r1b5w394NsK3hjmx2g/uEpjUIM5/m7kP0OGucLiIC0rwrpq/idhPzVahIVQm
         zjq/VFaJJrIVetpMPlajCPMqbMg6ykQyRAh/rVab8XE+IR7KfHi88six7/L3XjNoTUcR
         IJhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jt5Iencz;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id s11si1478648ywg.3.2019.03.28.09.35.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 09:35:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jt5Iencz;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id u9so11851231pgo.7
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 09:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=465PxIouiHJf11fhPJEXj6DlpCK915RINCaENh4yJR8=;
        b=jt5IenczJrgMyjfLfxM8nN693fEQAK71QoKUvHY+jlURCKV7JJTvbNnt9rWW310SyZ
         NBFSW35n4Bm7Un+auf/rz8eSp1C+C4Le3ZDW4jOJGVG2AGn+Q5YCw3QrstqKOdp0rMTq
         J63rpj+YjeMaMKbpAI2qPQ3reb/9a85YDZ6PwJVSh9KRrR5NsdWENkatP+IB+6khtJp2
         96TR1fEcGT+W58apl9Ejj59A6qqWqH/0LzIIF0rQ4SEmihMSNdGUc7IYwq6wFRnBEzTr
         7Suo9Zzs4C8q+CMmE60aM6dJLHDjlRm6hM7k2nUMUcuZDPYLXE8sYAcixNzmFAihJ5fh
         EPUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=465PxIouiHJf11fhPJEXj6DlpCK915RINCaENh4yJR8=;
        b=UfHs4nHTbilrSp99fg0Btk6zR7j0IDruuvhCaWjykHRLEhEu17ShpFruez7wFdgiG2
         xyzQgOl8Qx9T+WK/fJMQoxTFwD81D92Tnh4Wpw4zm8u3njKJKgsAobXH1tqy+rXwrsMe
         K5Ui+UFwShSV3HX7O38muOfXQjXTofPJXvSjD0ByE/MfSowM8Z+EZx184n2sBkXyybS4
         BvjiFslcQG0gQPfL/H7yv5olQuLfNybokx51YbkPggPuNIbO/lOegaqTeeLfp/3GknXN
         mu2OJjIN7ORFbjct+/sFmYqHQpacFRVyVvof8btPqFmmLiS2PsLJ/ojCo0PFj3WQ94xZ
         jQww==
X-Gm-Message-State: APjAAAUpp7v7BDv0Z+T9GSM5ahl5QrAfhEXrVBFFdNCVa1cGdIdEZGCL
	/k8vwtqLjobGdbiVY/tyEJjQd+uuyxE=
X-Received: by 2002:a63:68c9:: with SMTP id d192mr42189532pgc.264.1553790935885;
        Thu, 28 Mar 2019 09:35:35 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.77.58])
        by smtp.googlemail.com with ESMTPSA id i1sm27419578pgc.63.2019.03.28.09.35.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 09:35:34 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtlwifi: Remove return variable.
Date: Thu, 28 Mar 2019 22:05:22 +0530
Message-Id: <20190328163522.15103-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190328150759.10539-1-sanjana99reddy99@gmail.com>
References: <20190328150759.10539-1-sanjana99reddy99@gmail.com>

Remove return variable and return "return" value directly. Issue found by
Coccinelle using ret.cocci.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Merge 2 patches to one i.e remove unnecessary
variable is merged to [PATCH 1/2].
Remove patch series.
 drivers/staging/rtlwifi/rtl8822be/phy.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c b/drivers/staging/rtlwifi/rtl8822be/phy.c
index 048904d783fc..ececfed7b35a 100644
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
@@ -1844,7 +1840,6 @@ static long _rtl8822be_phy_txpwr_idx_to_dbm(struct ieee80211_hw *hw,
 					    u8 txpwridx)
 {
 	long offset;
-	long pwrout_dbm;
 
 	switch (wirelessmode) {
 	case WIRELESS_MODE_B:
@@ -1858,8 +1853,7 @@ static long _rtl8822be_phy_txpwr_idx_to_dbm(struct ieee80211_hw *hw,
 		offset = -8;
 		break;
 	}
-	pwrout_dbm = txpwridx / 2 + offset;
-	return pwrout_dbm;
+	return txpwridx / 2 + offset;
 }
 
 void rtl8822be_phy_scan_operation_backup(struct ieee80211_hw *hw, u8 operation)
@@ -2218,6 +2212,5 @@ bool rtl8822be_phy_set_rf_power_state(struct ieee80211_hw *hw,
 
 	if (rfpwr_state == ppsc->rfpwr_state)
 		return bresult;
-	bresult = _rtl8822be_phy_set_rf_power_state(hw, rfpwr_state);
-	return bresult;
+	return _rtl8822be_phy_set_rf_power_state(hw, rfpwr_state);
 }
-- 
2.17.1


