X-GM-THRID: 6669265984427130880
X-Received: by 2002:a6b:f305:: with SMTP id m5mr7744411ioh.8.1552809491004;
        Sun, 17 Mar 2019 00:58:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4203:: with SMTP id i3ls2588782itb.1.canary-gmail; Sun,
 17 Mar 2019 00:58:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSufheUZ0yXrzeJz04xaBc4u1tQ73usC60aFMcWfWJalDP98lltWfxAU05LjFfLrn0u7lm
X-Received: by 2002:a24:6b55:: with SMTP id v82mr6874986itc.37.1552809490184;
        Sun, 17 Mar 2019 00:58:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552809490; cv=none;
        d=google.com; s=arc-20160816;
        b=zyxLWg5UNmArFw+1tjKqz5ZXWUPh34z4sQXtcD/lqKXOAsWm4wNNujLG9cbcCADp4m
         Q7hmnVE3Ad4+0UC7h4P9GoVHaJ4tvM8itwMbBllcZI0kTSAHcm6K12XFnA7AUjGs3LKx
         vULJmISTJkPnBxzhHerWVrq3QafuN+3lnJBFqf7s1WQZfNW7UXDtU6EP6z0o4YLMEuQF
         F+gXiuuTIiox1NTK/qXKg4hLjPAGL1m5RVj7dF6aBPdl40ChEzA3t/nOYnxoFkxLfpKl
         JMmCdHaWB81KUab4gUh9X6M8AIg6yiTet/RbNO6Jw0B+HVXy5WrjW9nOhfg+ORLNSsHS
         PeYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Hw5MLJa/4YpJh5rs+BEfVIoihYLwKljlSVsnt0vDZGo=;
        b=P/dINXdPW4JI4lzEV3ubDr7IOU3E3uyoX+FfIVPsMKdae/hNdrs7xMvivFQKy5j7YH
         8aNY3xku8ZYZ8KOIIQW6EKVzd69Lt7eE2MDfXntE6RH3Zrpiukv4HikBJYAuhBzTGdj1
         CsuQ9JWgnPq+oV1d+FtSH85Fmgp5bi3bN14rgxe/qzytn5oZcdJNbhmGOnwKp1Rlrys6
         6Dw8e+M3jbkEcEBUMferD0JVxbo3GxnslCI4j0FRcXanFV3Bb50NHu37RcvyblzS9ewe
         H37WYO6czKl6oHSxc9ex0zkp79i7teLf3X/3qpYQdmd8cdumZ8K907oL6iKCR2F4rl1r
         59xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d6vZbraA;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id j196si323995itb.0.2019.03.17.00.58.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 00:58:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d6vZbraA;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id i20so9177214pfo.6
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 00:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Hw5MLJa/4YpJh5rs+BEfVIoihYLwKljlSVsnt0vDZGo=;
        b=d6vZbraAISrNs5RhwsAObU3E4tcz/liguI7oIxsEN2Rg7sM/Z9iGAK+mV9tJlGIyin
         2nEcDYARaNW1EFp6Ca/lKpDtdwM50nGhqxv1Pes1GW/DwD68OtkA8rs3MBYlKj4UxY8e
         XBnhb0vQDLKiKAZGjuv1kQV5K43vSKQInJe2nHfH84D38zjsWCkXpWtusHdbIYlQqoPE
         fZWJ2E538zouDCMQDt6HzHuzUxNm1K4OWj9lt+t5fPDPGEpClb6CJ5HIC+6dRLRIL0lC
         F7K1GA0hRKNn/hYf8wHfGFv/B8H/JkQsd2r08Em6chTaABZiIuVwwqETCxmWL27kP0CQ
         eWvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Hw5MLJa/4YpJh5rs+BEfVIoihYLwKljlSVsnt0vDZGo=;
        b=Mncr8ZzeaVB5oMY5A2tWLaYBwHWJ/5dPq/smtfp2BNrVM1f78z3a9bAafvgOImh89z
         RqscayOcFwfVkPnvFo619NflIJYSlrmtDiM7zC6KmzWgwDNPfK4X+oHFJ1lX01lWnjPZ
         tagaRRhRpVzLeu2I1b6IM06Kr2HZBVNFGXf8lazn+7W/cKsiGGirzebWS5om9gdd6In+
         i9I4mn3r0nVlFC+zhvgHKPDEpFbz8tgH8801VX6y9CiUs41ssFeBteBO3wGd5sgVyoAs
         H8rCa1nd63RqO7gTRnLibt7OnrJswc15CgYFfZu2E6UMBBYN3RiQVGUFefEyg88+B710
         2quw==
X-Gm-Message-State: APjAAAXGT+RQLoONPAWOC+dUz2ZlCNFXwwOlwsFXRuT3VwCNCACwAABU
	f83d0S29AK523qR5YD8eK7LIfJBNuG0=
X-Received: by 2002:a63:1960:: with SMTP id 32mr11925083pgz.171.1552809489358;
        Sun, 17 Mar 2019 00:58:09 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from localhost.localdomain ([2409:4042:2485:583f:cd8b:f0a6:143e:a331])
        by smtp.googlemail.com with ESMTPSA id 9sm8751251pfj.8.2019.03.17.00.58.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 17 Mar 2019 00:58:08 -0700 (PDT)
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtlwifi: Remove unnecessary statement.
Date: Sun, 17 Mar 2019 13:27:59 +0530
Message-Id: <1552809479-10739-1-git-send-email-digholebhagyashri@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove unnecessary conditional statement.
Detected by Coccinelle semantic patch cond_no_effect.cocci.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/comedi/drivers/das1800.c            |  8 --------
 drivers/staging/rtl8723bs/core/rtw_cmd.c            |  4 ----
 drivers/staging/rtl8723bs/core/rtw_mlme.c           |  6 ------
 drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c     | 12 ------------
 drivers/staging/rtl8723bs/hal/hal_btcoex.c          |  2 --
 drivers/staging/rtl8723bs/hal/odm_DIG.c             |  3 ---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c        |  5 -----
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c      |  2 --
 drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c |  3 ---
 drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c |  6 ------
 10 files changed, 51 deletions(-)

diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
index f16aa7e9..35f890a 100644
--- a/drivers/staging/comedi/drivers/das1800.c
+++ b/drivers/staging/comedi/drivers/das1800.c
@@ -1299,14 +1299,6 @@ static int das1800_attach(struct comedi_device *dev,
 			outb(DAC(i), dev->iobase + DAS1800_SELECT);
 			outw(0, dev->iobase + DAS1800_DAC);
 		}
-	} else if (board->id == DAS1800_ID_AO) {
-		/*
-		 * 'ao' boards have waveform analog outputs that are not
-		 * currently supported.
-		 */
-		s->type		= COMEDI_SUBD_UNUSED;
-	} else {
-		s->type		= COMEDI_SUBD_UNUSED;
 	}
 
 	/* Digital Input subdevice */
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 91520ca..62e2582 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -527,10 +527,6 @@ int rtw_cmd_thread(void *context)
 				DBG_871X(ADPT_FMT" cmd =%d process_time =%lu > 1 sec\n",
 					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
 				/* rtw_warn_on(1); */
-			} else if (pcmd->cmdcode == GEN_CMD_CODE(_Set_MLME_EVT)) {
-				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
-					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
-				/* rtw_warn_on(1); */
 			} else {
 				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
 					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 406e313..0eaeb91 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2900,15 +2900,9 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 			/* remove this part because testbed AP should disable RX AMPDU */
 			/* phtpriv->ampdu_enable = false; */
 			phtpriv->ampdu_enable = true;
-		} else {
-			phtpriv->ampdu_enable = true;
 		}
-	} else if (pregistrypriv->ampdu_enable == 2) {
-		/* remove this part because testbed AP should disable RX AMPDU */
-		/* phtpriv->ampdu_enable = true; */
 	}
 
-
 	/* check Max Rx A-MPDU Size */
 	len = 0;
 	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), _HT_CAPABILITY_IE_, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index cb62fc0..0632f78 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -1605,9 +1605,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 					} else if (maxInterval == 2) {
 						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
 						pCoexDm->psTdmaDuAdjType = 14;
-					} else if (maxInterval == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
 					} else {
 						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
 						pCoexDm->psTdmaDuAdjType = 15;
@@ -1619,9 +1616,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 					} else if (maxInterval == 2) {
 						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
 						pCoexDm->psTdmaDuAdjType = 10;
-					} else if (maxInterval == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
 					} else {
 						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
 						pCoexDm->psTdmaDuAdjType = 11;
@@ -1635,9 +1629,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 					} else if (maxInterval == 2) {
 						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
 						pCoexDm->psTdmaDuAdjType = 6;
-					} else if (maxInterval == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
 					} else {
 						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
 						pCoexDm->psTdmaDuAdjType = 7;
@@ -1649,9 +1640,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 					} else if (maxInterval == 2) {
 						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
 						pCoexDm->psTdmaDuAdjType = 2;
-					} else if (maxInterval == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
 					} else {
 						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
 						pCoexDm->psTdmaDuAdjType = 3;
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 2b43f6d..fb4d130 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -495,8 +495,6 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 			*pU4Tmp = BTC_WIFI_BW_LEGACY;
 		else if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_20)
 			*pU4Tmp = BTC_WIFI_BW_HT20;
-		else if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_40)
-			*pU4Tmp = BTC_WIFI_BW_HT40;
 		else
 			*pU4Tmp = BTC_WIFI_BW_HT40; /* todo */
 		break;
diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index 4fa6cd3..a15f033 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -499,9 +499,6 @@ void odm_DIGInit(void *pDM_VOID)
 	if (pDM_Odm->BoardType & (ODM_BOARD_EXT_PA|ODM_BOARD_EXT_LNA)) {
 		pDM_DigTable->rx_gain_range_max = DM_DIG_MAX_NIC;
 		pDM_DigTable->rx_gain_range_min = DM_DIG_MIN_NIC;
-	} else {
-		pDM_DigTable->rx_gain_range_max = DM_DIG_MAX_NIC;
-		pDM_DigTable->rx_gain_range_min = DM_DIG_MIN_NIC;
 	}
 
 }
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 3c65a9c..8ff4029 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -562,11 +562,6 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
 		/*  Timeout value is calculated by 34 / (2^n) */
 		valueDMATimeout = 0x06;
 		valueDMAPageCount = 0x06;
-	} else {
-		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
-		/*  TX/RX Balance */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
 	}
 
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH+1, valueDMATimeout);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 8fb03ef..6a30363 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -214,8 +214,6 @@ static char *translate_scan(struct adapter *padapter,
 	} else if (ht_cap) {
 		if (mcs_rate&0x8000) { /* MCS15 */
 			max_rate = (bw_40MHz) ? ((short_GI)?300:270):((short_GI)?144:130);
-		} else if (mcs_rate&0x0080) { /* MCS7 */
-			max_rate = (bw_40MHz) ? ((short_GI)?150:135):((short_GI)?72:65);
 		} else { /* default MCS7 */
 			/* DBG_871X("wx_get_scan, mcs_rate_bitmap = 0x%x\n", mcs_rate); */
 			max_rate = (bw_40MHz) ? ((short_GI)?150:135):((short_GI)?72:65);
diff --git a/drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c b/drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c
index ade271c..959e0d7 100644
--- a/drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c
+++ b/drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c
@@ -3365,9 +3365,6 @@ static void halbtc8822b1ant_action_wifi_connected(struct btc_coexist *btcoexist)
 				/*sy modify case16 -> case17*/
 				halbtc8822b1ant_coex_table_with_type(
 					btcoexist, NORMAL_EXEC, 1);
-			else
-				halbtc8822b1ant_coex_table_with_type(
-					btcoexist, NORMAL_EXEC, 1);
 		}
 	} else {
 		if (coex_dm->bt_status == BT_8822B_1ANT_BT_STATUS_ACL_BUSY) {
diff --git a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
index 7e60710..cfa194c 100644
--- a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
+++ b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
@@ -2696,12 +2696,6 @@ static void halbtc8822b2ant_action_hid(struct btc_coexist *btcoexist)
 							     NORMAL_EXEC, 4);
 			halbtc8822b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true,
 						108);
-		} else if (wifi_bw == 0) { /* if 11bg mode */
-
-			halbtc8822b2ant_coex_table_with_type(btcoexist,
-							     NORMAL_EXEC, 8);
-			halbtc8822b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true,
-						111);
 		} else {
 			halbtc8822b2ant_coex_table_with_type(btcoexist,
 							     NORMAL_EXEC, 8);
-- 
2.7.4


