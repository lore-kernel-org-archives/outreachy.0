X-GM-THRID: 6947727064751407104
X-Received: by 2002:a19:946:: with SMTP id 67mr19147802lfj.74.1617643766201;
        Mon, 05 Apr 2021 10:29:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3d16:: with SMTP id d22ls599102lfv.1.gmail; Mon, 05
 Apr 2021 10:29:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwbAkKUQ0nO/MzK5ZxmGtyQ4ho6dlE8oj9/rZ1akDdIQJxKC2Q/KWRh2mnEQoFnNm2v9YM
X-Received: by 2002:a05:6512:20e:: with SMTP id a14mr17556852lfo.373.1617643764558;
        Mon, 05 Apr 2021 10:29:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617643764; cv=none;
        d=google.com; s=arc-20160816;
        b=CEcIdyeB14jDxhfDSUF9ITuntt4CmPUq+B+sEAPsuKvhPH0ezSAXHl4aa1tuSUQxCm
         InNggtu1gwNpf+SH1VcdGlFRrQpuNa8pPxg+R+Vx+6zK0zfht9Gsc6e9vR6fRQMIsBqu
         11IFYHoKg7YVQVvZCklJ1YnjcrWHcGVgrCY2l/SUqlkk/Q/f86ye/8dwvEpggW4cn7o8
         s75fRMnyEC+3ykP+zj2WKhzpYmt5n0rUB4+9pTxl9TUIqMRHRUBJQoK9bMIQmwgGeiwD
         TYaGaOtT3EkS80/nKryAYFz3NzB0TyhtE5Dd/FcjAt1nMo6vvlJqLtbiWwk2phzBC47f
         dWHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=bKz/zL8aMPqGfUWgzJWrQn+k6sxAWjkqG0TRxYA7Mn0=;
        b=a/SpuVQTnDy1yGr8bkQlcFSwDCU49ccP3WApljSeGlBE1gFNaRfC4edRKYaTykcANk
         F8JLX+QyPC0o/JuyFMhmdc+Lg4PD7cg0Sz2QR3ay9LwTFZN9io2qdbOkvenNpFLpejMG
         wXlV/PM1PGOJ1bEISO+iyX6wdacxItitSswYpuaTb5+rrPFEoBZ87QP4Pg8EgXXvVLBW
         A77HJ23Ko6KxRmu6xTtv+Qkaz5Fez6ExFOqgbI1dvjfnWFpDcnu5d/mbBuoUnX4a4eyH
         lmUw8y9cRqKU+uU9/axq0RrGtrTmBHnFsPRoGIpIaLzljw837iFsXcg7Kvj/vooYAb0Z
         9Svg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B85pOMry;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id f7si1219197lfa.0.2021.04.05.10.29.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 10:29:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B85pOMry;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x436.google.com with SMTP id b9so3656007wrs.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 10:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=bKz/zL8aMPqGfUWgzJWrQn+k6sxAWjkqG0TRxYA7Mn0=;
        b=B85pOMrySjt062hHVU3fwo73VQK2XmQB1kkwMdd3bWeMvQ3Oi7KXoTBAwTICQmabm+
         hxUR4qBbq8qDRoB+WFkiD1qIYgvudSlIiKweFFFGu+8gepOZtoMh9wSq/jnExdr7/7G2
         9+cDrpJeHqnIetOIqEeV/xDMpgO1mzvWVeQxVUySt8INYJu3d/Y0aSeDW4Xw+7erTH/m
         ytQu4Ob/qf31ErU2rdhMouE0w681zsPh/RRIcjPAj4vPmUubLTsccXO+D7U1XpCzIDGL
         aDm7GD3txRSU5AQEOnr7RrLB3yEO98NYwd3bSRc8xffZCW5JDYTr+kNOynlom5jKewsi
         lRZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bKz/zL8aMPqGfUWgzJWrQn+k6sxAWjkqG0TRxYA7Mn0=;
        b=fk5c3rBiJjPFTN+F1053bnFHowVocT5IsJNt84hC37WF+5co0rdWPJtU7ptt95JHM+
         5yl6ViDA7m07403kIMTtM6rzkzRErUyKln3EedRsHnii+44z5eklI39VIyXI+AB4Yy7W
         jPLk+Z8cI2XvTY0UQVfL4z2bxobMnIinmXSqz1qiDkQgWA25eEkvHhi52Iw7BInTjlvA
         daJsA8ukXK0bNNOXF/o+faEVqCSVxPxzfNIhO5QCSGNw34zmujLcIja3lR+wMyC2eeqE
         zUXoUz9O/tOS3mTPw+s3SOnRMhCWiAa00N9SEmQowk7UPqmmxeAAhPcGe+/TVqngllvz
         DI7g==
X-Gm-Message-State: AOAM532hdvJsDi0KwuaW/ZcwaAcQYk4Gjbjp5dkL27RjzG2n3FiZP02V
	IpePYvwuOxMHg4oasugH74k=
X-Received: by 2002:a05:6000:10c3:: with SMTP id b3mr30087210wrx.96.1617643764323;
        Mon, 05 Apr 2021 10:29:24 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:9a5b:98e6:2174:bf29])
        by smtp.gmail.com with ESMTPSA id x1sm17858699wro.66.2021.04.05.10.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 10:29:24 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8723bs: core: Ending line with argument
Date: Mon,  5 Apr 2021 18:29:18 +0100
Message-Id: <ce400adc5623b3bfbd520da4aa6bcc5867ad4dc8.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Lines should not end with a '('"
with argument present in next line in file rtw_ap.c

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 98 ++++++++++---------------
 1 file changed, 40 insertions(+), 58 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 81acc6bcb092..4dab4d741675 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -67,11 +67,10 @@ static void update_BCNTIM(struct adapter *padapter)
 
 		tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
 
-		p = rtw_get_ie(
-			pie + _FIXED_IE_LENGTH_,
-			WLAN_EID_TIM,
-			&tim_ielen,
-			pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_
+		p = rtw_get_ie(pie + _FIXED_IE_LENGTH_,
+			       WLAN_EID_TIM,
+			       &tim_ielen,
+			       pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_
 		);
 		if (p && tim_ielen > 0) {
 			tim_ielen += 2;
@@ -91,20 +90,18 @@ static void update_BCNTIM(struct adapter *padapter)
 			offset = _FIXED_IE_LENGTH_;
 
 			/* get ssid_ie len */
-			p = rtw_get_ie(
-				pie + _BEACON_IE_OFFSET_,
-				WLAN_EID_SSID,
-				&tmp_len,
-				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
+			p = rtw_get_ie(pie + _BEACON_IE_OFFSET_,
+				       WLAN_EID_SSID,
+				       &tmp_len,
+				       (pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
 			if (p)
 				offset += tmp_len + 2;
 
 			/*  get supported rates len */
-			p = rtw_get_ie(
-				pie + _BEACON_IE_OFFSET_,
-				WLAN_EID_SUPP_RATES, &tmp_len,
-				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
+			p = rtw_get_ie(pie + _BEACON_IE_OFFSET_,
+				       WLAN_EID_SUPP_RATES, &tmp_len,
+				       (pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
 			if (p)
 				offset += tmp_len + 2;
@@ -226,14 +223,13 @@ void expire_timeout_chk(struct adapter *padapter)
 				list_del_init(&psta->auth_list);
 				pstapriv->auth_list_cnt--;
 
-				DBG_871X(
-					"auth expire %02X%02X%02X%02X%02X%02X\n",
-					psta->hwaddr[0],
-					psta->hwaddr[1],
-					psta->hwaddr[2],
-					psta->hwaddr[3],
-					psta->hwaddr[4],
-					psta->hwaddr[5]
+				DBG_871X("auth expire %02X%02X%02X%02X%02X%02X\n",
+					 psta->hwaddr[0],
+					 psta->hwaddr[1],
+					 psta->hwaddr[2],
+					 psta->hwaddr[3],
+					 psta->hwaddr[4],
+					 psta->hwaddr[5]
 				);
 
 				spin_unlock_bh(&pstapriv->auth_list_lock);
@@ -307,10 +303,9 @@ void expire_timeout_chk(struct adapter *padapter)
 			}
 			list_del_init(&psta->asoc_list);
 			pstapriv->asoc_list_cnt--;
-			DBG_871X(
-				"asoc expire %pM, state = 0x%x\n",
-				MAC_ARG(psta->hwaddr),
-				psta->state
+			DBG_871X("asoc expire %pM, state = 0x%x\n",
+				 MAC_ARG(psta->hwaddr),
+				 psta->state
 			);
 			updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
 		} else {
@@ -360,17 +355,15 @@ void expire_timeout_chk(struct adapter *padapter)
 
 			psta->keep_alive_trycnt++;
 			if (ret == _SUCCESS) {
-				DBG_871X(
-					"asoc check, sta(%pM) is alive\n",
-					MAC_ARG(psta->hwaddr)
+				DBG_871X("asoc check, sta(%pM) is alive\n",
+					 MAC_ARG(psta->hwaddr)
 					);
 				psta->expire_to = pstapriv->expire_to;
 				psta->keep_alive_trycnt = 0;
 				continue;
 			} else if (psta->keep_alive_trycnt <= 3) {
-				DBG_871X(
-					"ack check for asoc expire, keep_alive_trycnt =%d\n",
-					psta->keep_alive_trycnt);
+				DBG_871X("ack check for asoc expire, keep_alive_trycnt =%d\n",
+					 psta->keep_alive_trycnt);
 				psta->expire_to = 1;
 				continue;
 			}
@@ -480,10 +473,9 @@ void update_bmc_sta(struct adapter *padapter)
 
 		/* prepare for add_RATid */
 		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
-		network_type = rtw_check_network_type(
-			(u8 *)&pcur_network->SupportedRates,
-			supportRateNum,
-			pcur_network->Configuration.DSConfig
+		network_type = rtw_check_network_type((u8 *)&pcur_network->SupportedRates,
+						      supportRateNum,
+						      pcur_network->Configuration.DSConfig
 		);
 		if (IsSupportedTxCCK(network_type)) {
 			network_type = WIRELESS_11B;
@@ -711,15 +703,9 @@ static void update_hw_ht_param(struct adapter *padapter)
 	 */
 	max_AMPDU_len = pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x03;
 
-	min_MPDU_spacing = (
-		pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x1c
-	) >> 2;
+	min_MPDU_spacing = (pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x1c) >> 2;
 
-	rtw_hal_set_hwreg(
-		padapter,
-		HW_VAR_AMPDU_MIN_SPACE,
-		(u8 *)(&min_MPDU_spacing)
-	);
+	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, (u8 *)(&min_MPDU_spacing));
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, (u8 *)(&max_AMPDU_len));
 
@@ -785,10 +771,8 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	if (!pmlmepriv->cur_network.join_res) { /* setting only at  first time */
 
 		/* WEP Key will be set before this function, do not clear CAM. */
-		if (
-			(psecuritypriv->dot11PrivacyAlgrthm != _WEP40_) &&
-			(psecuritypriv->dot11PrivacyAlgrthm != _WEP104_)
-		)
+		if ((psecuritypriv->dot11PrivacyAlgrthm != _WEP40_) &&
+		    (psecuritypriv->dot11PrivacyAlgrthm != _WEP104_))
 			flush_all_cam_entry(padapter);	/* clear CAM */
 	}
 
@@ -836,11 +820,10 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	}
 
 	/* set channel, bwmode */
-	p = rtw_get_ie(
-		(pnetwork->IEs + sizeof(struct ndis_802_11_fix_ie)),
-		WLAN_EID_HT_OPERATION,
-		&ie_len,
-		(pnetwork->IELength - sizeof(struct ndis_802_11_fix_ie))
+	p = rtw_get_ie((pnetwork->IEs + sizeof(struct ndis_802_11_fix_ie)),
+		       WLAN_EID_HT_OPERATION,
+		       &ie_len,
+		       (pnetwork->IELength - sizeof(struct ndis_802_11_fix_ie))
 	);
 	if (p && ie_len) {
 		pht_info = (struct HT_info_element *)(p + 2);
@@ -877,11 +860,10 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	}
 
 	set_channel_bwmode(padapter, cur_channel, cur_ch_offset, cur_bwmode);
-	DBG_871X(
-		"CH =%d, BW =%d, offset =%d\n",
-		cur_channel,
-		cur_bwmode,
-		cur_ch_offset
+	DBG_871X("CH =%d, BW =%d, offset =%d\n",
+		 cur_channel,
+		 cur_bwmode,
+		 cur_ch_offset
 	);
 	pmlmeext->cur_channel = cur_channel;
 	pmlmeext->cur_bwmode = cur_bwmode;
-- 
2.25.1


