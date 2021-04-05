X-GM-THRID: 6947727064751407104
X-Received: by 2002:a7b:cb04:: with SMTP id u4mr188976wmj.122.1617643767583;
        Mon, 05 Apr 2021 10:29:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls50789wmk.0.canary-gmail; Mon,
 05 Apr 2021 10:29:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzCT1wDd2OJ5rdyXFxpwwEUP1vQQltdwy3Gp7tYCipktgazIWnnB9/DYkRv+Tx4ObenGErW
X-Received: by 2002:a7b:c003:: with SMTP id c3mr172215wmb.59.1617643766209;
        Mon, 05 Apr 2021 10:29:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617643766; cv=none;
        d=google.com; s=arc-20160816;
        b=coH2C5PJuz8mcQUzjvP1WvTysX+IVEm64WdFrU4lVyXDh5iXh2g3pKmjn2kRn8C8PK
         IQjTc3Yarq+AlxpKQxQU91nRg1TDSsICzxfk8JhETyQgI0LnCSFM6RITzMkZ9vtBBaHA
         xU+YDsK7Oz1yRkWgLNyZANMNSU3H0ak+EMi+oQmqr9q3KDKtMVZ44ZhLYm5wiPO+qfhF
         W2BHWWTM8dKw8c+PhbVFCyabPk0HxlH4qRunQXvYdEno1QBEsC+wLIvje57xjXt+JfiD
         3EEG5N6t75WpSrhlqeCs0a/Wwqia4rivqiQzWyOnNmJPVaMlvn1Fc5wQREvoYfkIOLO8
         iuhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=rcUgpTqj2kdU+YBskPn+v5vQYu9sPyQVI1xkvuqXoSs=;
        b=skpWEXyKqtY4pYuzUs/nrGEbkQOCbqqh6hdY+DLMRDdeONEr210qxuMn+j+jkvIIVy
         aVl1On1pwZwYNq6HZU0htDmvNLu/e6IRC3QrpqY+hXw8Ae+CQdIoiN7+F0U2jMW7hLmB
         bZW1EXEHQnF/KNESx5WouthHsqmzg/EEFwT8KKtvGYmxAg3Uojg3ndbf+V9pgMqZo8Yu
         0uAaoyMwgtF4gfWwAI6mEgupPwj04h34retCO6PnmSpJ04IpZ2bA7tNX1EKdjhDjDB73
         vmIelaO/s3tPj997qYALy5dwFMRMkVeo66SaqqDzwy9+/sZ6hiO8y9T0wXTth/+sF7dX
         WJgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pcn1mDLV;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id z202si9467wmc.0.2021.04.05.10.29.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 10:29:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pcn1mDLV;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x430.google.com with SMTP id v11so11522897wro.7
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 10:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=rcUgpTqj2kdU+YBskPn+v5vQYu9sPyQVI1xkvuqXoSs=;
        b=Pcn1mDLVtc2ZToBS3hq3liVHxCZozL7WAC8eAFCcnnfpjQxtun1OD7nOkWsg03hmR8
         YHOTEuom5dqrubW9YGhKDojT24v1KNUi7RFLDcG0onDJ0xg698AImgstOFj3uBWqsDKo
         fb9pEqFiSeSpuIVxNPqlkiWuowNSFNJnK4celRjZHFYKsgdhpoyqWYzXyL/hQ+gkkkad
         Uu9RSmDuvVT7fBMD9j8K3gKjaj7Vk/hFUISjnRq2kVO6HS48WYwVDoUUUuaFI5CoXUk1
         CAhiLz3ym6DgWEx3EwDOP2h+ruEGSTgz6YXl+XTFCFfzCL1tPWDzxpGGaiK7uks61+jT
         ojUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rcUgpTqj2kdU+YBskPn+v5vQYu9sPyQVI1xkvuqXoSs=;
        b=qPAKL32CC1r3mrgTyG56ov/NVLv4P5qGrLnOGZyJ8gLkjGEPoYDM37MZCwYctxBmNv
         woE2+NLVW7kDd6IQV8ex0FalGOdQ9uzkNRdGwx9cOFUJD24r17DiVlqRiILtPL7xTpjw
         YgxyUehsl5I8h4kd4lJRwEYv/YJRAQSlG2AtZBzjgYyVO3Yg7IciCtUkqOJ4mW7urnib
         Sh4FA0LjzsSlMuCMrLMU0NTSrCANSE+m9noronHEAY9G99UV2qPVP/gUW97LTYv+0/8S
         jleMCN3pfo0WNb0WisQTrVv+1Yc3DUq+vdfgZNMAZqNtlJ361XhM25D5GTLb+F7YnGYI
         hQFw==
X-Gm-Message-State: AOAM531gqptUscGj+wrQCYR0CW/U6BBzXVhc0zFG3aMKuv4ytnQdBfxZ
	rf0IDYzpN0aKCKv25OPkrz0=
X-Received: by 2002:a05:6000:c9:: with SMTP id q9mr3496265wrx.17.1617643765979;
        Mon, 05 Apr 2021 10:29:25 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:9a5b:98e6:2174:bf29])
        by smtp.gmail.com with ESMTPSA id x1sm17858699wro.66.2021.04.05.10.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 10:29:25 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtl8723bs: core: align arguments with open parenthesis
Date: Mon,  5 Apr 2021 18:29:20 +0100
Message-Id: <00250c746ed850f6a73ff0ad4c1735cbd019b58f.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Alignment should match open parenthesis"
in file rtw_ap.c

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index ca6fec52d213..73a35b3320fe 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -439,7 +439,7 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 		arg[3] = psta->init_rate;
 
 		DBG_871X("%s => mac_id:%d , raid:%d , shortGIrate =%d, bitmap = 0x%x\n",
-			__func__, psta->mac_id, psta->raid, shortGIrate, tx_ra_bitmap);
+			 __func__, psta->mac_id, psta->raid, shortGIrate, tx_ra_bitmap);
 
 		rtw_hal_add_ra_tid(padapter, tx_ra_bitmap, arg, rssi_level);
 	} else {
@@ -512,7 +512,7 @@ void update_bmc_sta(struct adapter *padapter)
 			arg[3] = psta->init_rate;
 
 			DBG_871X("%s => mac_id:%d , raid:%d , bitmap = 0x%x\n",
-				__func__, psta->mac_id, psta->raid, tx_ra_bitmap);
+				 __func__, psta->mac_id, psta->raid, tx_ra_bitmap);
 
 			rtw_hal_add_ra_tid(padapter, tx_ra_bitmap, arg, 0);
 		}
@@ -605,14 +605,14 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 
 		/*  B0 Config LDPC Coding Capability */
 		if (TEST_FLAG(phtpriv_ap->ldpc_cap, LDPC_HT_ENABLE_TX) &&
-			GET_HT_CAPABILITY_ELE_LDPC_CAP((u8 *)(&phtpriv_sta->ht_cap))) {
+			      GET_HT_CAPABILITY_ELE_LDPC_CAP((u8 *)(&phtpriv_sta->ht_cap))) {
 			SET_FLAG(cur_ldpc_cap, (LDPC_HT_ENABLE_TX | LDPC_HT_CAP_TX));
 			DBG_871X("Enable HT Tx LDPC for STA(%d)\n", psta->aid);
 		}
 
 		/*  B7 B8 B9 Config STBC setting */
 		if (TEST_FLAG(phtpriv_ap->stbc_cap, STBC_HT_ENABLE_TX) &&
-			GET_HT_CAPABILITY_ELE_RX_STBC((u8 *)(&phtpriv_sta->ht_cap))) {
+			      GET_HT_CAPABILITY_ELE_RX_STBC((u8 *)(&phtpriv_sta->ht_cap))) {
 			SET_FLAG(cur_stbc_cap, (STBC_HT_ENABLE_TX | STBC_HT_CAP_TX));
 			DBG_871X("Enable HT Tx STBC for STA(%d)\n", psta->aid);
 		}
@@ -1176,7 +1176,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		);
 
 		if ((psecuritypriv->wpa_pairwise_cipher & WPA_CIPHER_CCMP) ||
-			(psecuritypriv->wpa2_pairwise_cipher & WPA_CIPHER_CCMP)) {
+		     (psecuritypriv->wpa2_pairwise_cipher & WPA_CIPHER_CCMP)) {
 			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY & (0x07 << 2));
 		} else {
 			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY & 0x00);
@@ -1233,7 +1233,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	pmlmepriv->htpriv.ht_option = false;
 
 	if ((psecuritypriv->wpa2_pairwise_cipher & WPA_CIPHER_TKIP) ||
-		      (psecuritypriv->wpa_pairwise_cipher & WPA_CIPHER_TKIP)) {
+	     (psecuritypriv->wpa_pairwise_cipher & WPA_CIPHER_TKIP)) {
 		/* todo: */
 		/* ht_cap = false; */
 	}
@@ -1820,7 +1820,7 @@ static int rtw_ht_operation_update(struct adapter *padapter)
 	}
 
 	DBG_871X("%s new operation mode = 0x%X changes =%d\n",
-		   __func__, pmlmepriv->ht_op_mode, op_mode_changes);
+		 __func__, pmlmepriv->ht_op_mode, op_mode_changes);
 
 	return op_mode_changes;
 }
@@ -1865,7 +1865,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 			pmlmepriv->num_sta_no_short_preamble++;
 
 			if ((pmlmeext->cur_wireless_mode > WIRELESS_11B) &&
-				(pmlmepriv->num_sta_no_short_preamble == 1)) {
+			    (pmlmepriv->num_sta_no_short_preamble == 1)) {
 				beacon_updated = true;
 				update_beacon(padapter, 0xFF, NULL, true);
 			}
-- 
2.25.1


