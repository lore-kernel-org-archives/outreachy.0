X-GM-THRID: 6673827435643928576
X-Received: by 2002:a24:64e:: with SMTP id 75mr555276itv.6.1553871537787;
        Fri, 29 Mar 2019 07:58:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:33ca:: with SMTP id k193ls748422itk.3.canary-gmail; Fri,
 29 Mar 2019 07:58:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwY6Btc2Y9nMdT5B8AyngUMagoJTvDHPR1UHVtX1+afxS5sD5iYstDNuomx19WiTr49hFXJ
X-Received: by 2002:a24:7bd3:: with SMTP id q202mr1621510itc.32.1553871536448;
        Fri, 29 Mar 2019 07:58:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553871536; cv=none;
        d=google.com; s=arc-20160816;
        b=kEIRJR+o3oWp6yj5D7CcNXbEXJpR/ysKVeRaPuLyJFdgJ0TjdO24QWToJdQZKY1fUq
         QZh1jHG3r6ph3wufZmcphY4Ov99+qDEowm1rLaEQnpgEVaB60fvgtuKOzsIPumGfDPQd
         hdwf0beiLg00OuilcIDSNY4kZeg+DXjLUlAqf7ivPU7dofyoHrWfoha0lS2Vzh3M8r0D
         oAQIFsDqWHKNA+DocemFT598StAjEOZeAOoWH87MZZ4TdwdMldPWdipIiYcbeaOf4M4K
         UkA+PKUdt9vd0Kv+bFB53Q8VYLwlON80UhtalaY4e0zVJ70qcZxocBdB3hychXZaAF7p
         pTFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dk+AZEpxnf3s/oad2fdODcaB50C2jJY0QL7qj6G1DLo=;
        b=OL04rn4Zq9T4lmAMlM9+ZVLNitLMfq6TLz9SZe6xF/bb2ERabjcFC4dfZ31/OGiGZO
         /m30Q1InCVjfIEWuVEwSSc80rF0fw9vXTWJVqVah+C7s8yetuJ5jwK2yCKZi29QC1WL8
         5J44QwyBeXP+xOwGXhTVMxLReNpmoYSr12/i/1pAZMsFqnUj78RFZ3BdBkByMJ9vONG8
         GMMYQykHhjTft9R43eJ05HcOmM8IZ6Tb6lk/jpbT5vQHORI2LQaZiKmQExcGoKW/69ic
         CSArdz/nhI+5o7MGAWuoujW+Gqo1e451dCOFPaYEEqOs7qGHk9aG3gjBYoQWFwD+rSEv
         PgUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Aj0PJdFa;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id w136si83531itb.2.2019.03.29.07.58.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 07:58:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Aj0PJdFa;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id b65so1161441plb.6
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 07:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Dk+AZEpxnf3s/oad2fdODcaB50C2jJY0QL7qj6G1DLo=;
        b=Aj0PJdFalQJRdELeczI8nbKgu7RLAMRZyXzZUnlR/PqrFJqB6NwY9LtPbjMTJ5M6bq
         NZwoXhwzqM47Tsl9nUSkHmUOPMPqevFz50BFHhI2l3woAGt//SYYsZifUXpbJzIvqBZX
         lk2T62ySx2PlMlgOHSmCcgoTolHUe3fQdra6d16dwmfaE36+VGufLRl2dudUv2ejmUSL
         a2/FxomP3T+ddryGX3vMlSB1YJhTCGlgtBA/ob+614IhkHuPOm5zc6A00oig+CODjH9T
         e0ns5oZz7CqSPsddCUWInrcjb8KG+WdxFuoXT3eAOMmhF53Z6cYLSJJSghxbdavKf/g+
         YGlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Dk+AZEpxnf3s/oad2fdODcaB50C2jJY0QL7qj6G1DLo=;
        b=ASouaenyEh03GrVtXa0xul/aOdk0vfsSCXCmVZKco8yOL0AAzbylcM46hgMbdZxUgl
         1WgYADUIaXJeEtA+OBPJBJLkzFel7l4JWQXG6GcGFxC9b/l6eiUpoxNy9DydOUhlA/bo
         dI4ujRaxYGQBKNfv2F0P4Pwg8E2mdpfo1r5yCrq8JUo0ojlugwHMiQgP2ogIv6ZpJ9Cy
         yp57QcCnMxyMgkWw6j+3vWUduSdj2S0xQMWXnTODpZh1GxsNf+tWdUdjeAwcufIsMFL7
         vL1hvKHb4l3cZyKmFd6jiJ61/4Zv2sE75pFEBciI5edqqSjghwc8I052XM5SfYYBMf5z
         PPuQ==
X-Gm-Message-State: APjAAAU1vce2++UV3JHuYC+oxYu6bQkBX7Q7V7YF518B9Ghs1rU3SSB0
	2lFAVnkFUoSRuIvNnldKYmRBMNCU
X-Received: by 2002:a17:902:e182:: with SMTP id cd2mr14767814plb.240.1553871535709;
        Fri, 29 Mar 2019 07:58:55 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.161.1])
        by smtp.gmail.com with ESMTPSA id 17sm2686404pgz.52.2019.03.29.07.58.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 07:58:54 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtlwifi: rtl8822be: compress two lines into one
Date: Fri, 29 Mar 2019 20:28:39 +0530
Message-Id: <1553871519-8008-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.

Returning something from a function need not to be stored in a variable, 
can be return directly.

This patch compress two lines into one using following semantic patch:

@@
local idexpression ret;
expression e;
@@

-ret = e;
+return e;
-return ret;

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
diff -u -p a/phy.c b/phy.c
--- a/phy.c
+++ b/phy.c
@@ -219,10 +219,8 @@ bool rtl8822be_halmac_cb_init_bb_rf_regi
 	txpath = RF_MASK_A | RF_MASK_B;
 	rxpath = RF_MASK_A | RF_MASK_B;
 	tx2path = false;
-	ret = rtlpriv->phydm.ops->phydm_trx_mode(rtlpriv, txpath, rxpath,
-						 tx2path);
-
-	return ret;
+	return rtlpriv->phydm.ops->phydm_trx_mode(rtlpriv, txpath, rxpath,
+						  tx2path);
 }
 
 static void _rtl8822be_phy_init_tx_power_by_rate(struct ieee80211_hw *hw)
@@ -1580,11 +1578,7 @@ _rtl8822be_phy_get_txpower_by_rate(struc
 	else
 		tx_num = RF_1TX;
 
-	tx_pwr_diff = (char)(rtlphy->tx_power_by_rate_offset[band][path][tx_num]
-							    [rate] &
-			     0xff);
-
-	return tx_pwr_diff;
+	return (char)(rtlphy->tx_power_by_rate_offset[band][path][tx_num][rate] & 0xff);
 }
 
 u8 rtl8822be_get_txpower_index(struct ieee80211_hw *hw, u8 path, u8 rate,
@@ -1858,8 +1852,7 @@ static long _rtl8822be_phy_txpwr_idx_to_
 		offset = -8;
 		break;
 	}
-	pwrout_dbm = txpwridx / 2 + offset;
-	return pwrout_dbm;
+	return txpwridx / 2 + offset;
 }
 
 void rtl8822be_phy_scan_operation_backup(struct ieee80211_hw *hw, u8 operation)
@@ -2218,6 +2211,5 @@ bool rtl8822be_phy_set_rf_power_state(st
 
 	if (rfpwr_state == ppsc->rfpwr_state)
 		return bresult;
-	bresult = _rtl8822be_phy_set_rf_power_state(hw, rfpwr_state);
-	return bresult;
+	return _rtl8822be_phy_set_rf_power_state(hw, rfpwr_state);
 }

