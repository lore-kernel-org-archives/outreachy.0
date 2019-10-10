X-GM-THRID: 6746014123494998016
X-Received: by 2002:a05:6830:13d8:: with SMTP id e24mr5743328otq.42.1570678845010;
        Wed, 09 Oct 2019 20:40:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:688:: with SMTP id 8ls456874otx.9.gmail; Wed, 09 Oct
 2019 20:40:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzjr62Y8qRpa6fSZbDbmPKcnpaesnc/xtOOBf9bXHyawcCekR8qs6W8KMeg2nm7A9+mHbeH
X-Received: by 2002:a05:6830:2105:: with SMTP id i5mr6199541otc.334.1570678844157;
        Wed, 09 Oct 2019 20:40:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570678844; cv=none;
        d=google.com; s=arc-20160816;
        b=nH3MyAeXjKp3oVYLbi8bKpkjLecR+eakwT+JoYb+dHZqXlj4lN1z/j2BqSnqFzIwqI
         sfClH1XHaTwUySDsumWDoXmy1pjU8aZJJEvf309xLZov4iuvRPAdJ3D5oME4gJ0avsFw
         vxHQ9MYewB/Z17f4+S9uA2tTsFXdQg9s8OJcy5x4IAym45gFgwhU291znaVgXG6fRnz1
         CqqzB60tRTuu5L8h95+kWphVQyYzKT33zzcrmEtLz4aE7CDQcg0Wv6B5/mMm9eloPz3m
         kyCd+ebj9fF0kApNrKgsrTL1++7VxYCjbuVc5eYW6ld/L3pNh5OqsezkBqC5k5nwXGzn
         bEnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZUpFJbctHLbLvrh0MpCtPGi5zG/1dlaflfj3eQWRa4g=;
        b=bTR3VfW8Pd+E/mtrQcmTrvNF5hPli1KyGvzwdLoBjiKcYAcxYEpHkSDLCAhPRsLNtq
         7J8xMKVDr2cB8a1nxdRe6CljM1gOkP7wox0EXogseMSutNuDIeZlVIz2fuZ21NhbD8cv
         04eeBNY/1xRF34bM8uuap7dm/hNH2y7Gn7sRSU/Q1YTkfwQ6EIAkvH5laQ6wRDlSywBb
         KlW+lpO40VPWbBPS9bD5v1y6mv61e9BIOXJ9MQWlD0a6RoZCYlSB6iVL2foMiSoLteCp
         mDMijnol4H+iOnupmrEtr3nQ1sn7nzazitOL0LGpElZnmnp+EVN9bQe/PWBjXworhL5g
         m8KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mHdX52nX;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w205si142287oib.2.2019.10.09.20.40.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 20:40:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mHdX52nX;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id w8so2080717plq.5
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 20:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZUpFJbctHLbLvrh0MpCtPGi5zG/1dlaflfj3eQWRa4g=;
        b=mHdX52nXAaVdlEJKU+GZNLGqhgNhQ78OkCj8rU8XubWCCC6e2F4vVfIuBLM30eLMut
         bYujFP+LA1yEd1o9F5ysb3zaPXwHf1z0sXjDuehtBwi9jlF4Ra6bwsRIRXl1VXi6Kcs9
         joeCWh0BY0VImIDbURm4IWouRClHN7hh3GyZKLkoS2Psy8/irVph3j85L0AHbMxzSeby
         1VJQE7v+uz2Idacg0YCfyoSZ1wDobgged5QX83S0ODinLOM93S7A4eyzvgsUoDk3OT8z
         N36VV+C0MyeK2x9XL6k7UgTYa06l0aTy1xcxbfOHpMCECCDiHpedr8r8reYgs+b7Fh0g
         +H1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZUpFJbctHLbLvrh0MpCtPGi5zG/1dlaflfj3eQWRa4g=;
        b=Tp7LXqQs4McoiGMPzrNs0OTuXXw822tqXtDq5350V9YHic3SwmtSkxRbETDm7L392C
         UgvLKX5jUez9KePOoFhaNyPHO6gPxVP1iEvBgKfTibFBcsGcfbhptjVgOt8nV7oeIj8+
         llgVEaHLH1uzk7rIFC8CUw1J0M0GaHgJaAl7nutGGVqS/X9JRVmm0+JcvCHVPxOI5JIq
         Plz9RLquL5q3bqoRsi701D3xzAvjjIFSoHW47xh0h1htA/gJbexWQUw/eti4Jo4ZecE8
         lrc+Q8qIMr0cGCdfmxVtWJKW2ME9PeD2vmV9pWk+ypRPvMZF9jlPdnjov/fl71PTdW1b
         CIqA==
X-Gm-Message-State: APjAAAXz5IuliBsWUtXYxpAr46hMexSNt/c8l2YJ/PdGh8tvPJpE7yCn
	4RibIf5srOqqIiwAhiNFL45s/ECkUqvZAQ==
X-Received: by 2002:a17:902:8689:: with SMTP id g9mr6785133plo.131.1570678843184;
        Wed, 09 Oct 2019 20:40:43 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id k95sm3517741pje.10.2019.10.09.20.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 20:40:42 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 2/4] staging: rtl8723bs: Remove unnecessary braces for single statements
Date: Thu, 10 Oct 2019 06:39:22 +0300
Message-Id: <8e6f986b6bb09951af5336f5033888eb9e8ef273.1570678371.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570678371.git.wambui.karugax@gmail.com>
References: <cover.1570678371.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clean up multiple unnecessary braces around single statement blocks in
drivers/staging/rtl8723bs/core/rtw_mlme.c
Issues reported by checkpatch.pl as:
WARNING: braces {} are not necessary for single statement blocks or
WARNING: braces {} are not necessary for any arm of this statement

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 37 ++++++++---------------
 1 file changed, 12 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 7f27287223e8..b15b761782b8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -112,9 +112,8 @@ void _rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
 {
 	if (pmlmepriv) {
 		rtw_free_mlme_priv_ie_data(pmlmepriv);
-		if (pmlmepriv->free_bss_buf) {
+		if (pmlmepriv->free_bss_buf)
 			vfree(pmlmepriv->free_bss_buf);
-		}
 	}
 }
 
@@ -753,11 +752,10 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 
 		if (psecuritypriv->ndisauthtype == Ndis802_11AuthModeWPA2PSK) {
 			p = rtw_get_ie(pnetwork->network.IEs + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pnetwork->network.IELength - _BEACON_IE_OFFSET_));
-			if (p && ie_len > 0) {
+			if (p && ie_len > 0)
 				bselected = true;
-			} else {
+			else
 				bselected = false;
-			}
 		}
 	}
 
@@ -822,9 +820,8 @@ void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 
 	/*  lock pmlmepriv->lock when you accessing network_q */
 	if ((check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) == false) {
-		if (pnetwork->Ssid.Ssid[0] == 0) {
+		if (pnetwork->Ssid.Ssid[0] == 0)
 			pnetwork->Ssid.SsidLength = 0;
-		}
 		rtw_add_network(adapter, pnetwork);
 	}
 
@@ -893,9 +890,8 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 
 					pmlmepriv->fw_state = WIFI_ADHOC_MASTER_STATE;
 
-					if (rtw_createbss_cmd(adapter) != _SUCCESS) {
-					RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error =>rtw_createbss_cmd status FAIL\n"));
-					}
+					if (rtw_createbss_cmd(adapter) != _SUCCESS)
+						RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error =>rtw_createbss_cmd status FAIL\n"));
 
 					pmlmepriv->to_join = false;
 				}
@@ -1166,9 +1162,8 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 
 	psta = rtw_get_stainfo(pstapriv, pnetwork->network.MacAddress);
-	if (!psta) {
+	if (!psta)
 		psta = rtw_alloc_stainfo(pstapriv, pnetwork->network.MacAddress);
-	}
 
 	if (psta) { /* update ptarget_sta */
 
@@ -1347,11 +1342,10 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 	rtw_get_encrypt_decrypt_from_registrypriv(adapter);
 
 
-	if (pmlmepriv->assoc_ssid.SsidLength == 0) {
+	if (pmlmepriv->assoc_ssid.SsidLength == 0)
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   joinbss event call back  for Any SSid\n"));
-	} else {
+	else
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   rtw_joinbss_event_callback for SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
-	}
 
 	the_same_macaddr = !memcmp(pnetwork->network.MacAddress, cur_network->network.MacAddress, ETH_ALEN);
 
@@ -1723,13 +1717,8 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
 				_clr_fwstate_(pmlmepriv, WIFI_ADHOC_STATE);
 			}
 
-			if (rtw_createbss_cmd(adapter) != _SUCCESS) {
-
+			if (rtw_createbss_cmd(adapter) != _SUCCESS)
 				RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("***Error =>stadel_event_callback: rtw_createbss_cmd status FAIL***\n "));
-
-			}
-
-
 		}
 
 	}
@@ -1902,9 +1891,8 @@ void rtw_dynamic_check_timer_handler(struct adapter *adapter)
 		}
 
 	} else {
-		if (is_primary_adapter(adapter)) {
+		if (is_primary_adapter(adapter))
 			rtw_dynamic_chk_wk_cmd(adapter);
-		}
 	}
 
 	/* auto site survey */
@@ -2988,9 +2976,8 @@ void rtw_append_exented_cap(struct adapter *padapter, u8 *out_ie, uint *pout_len
 	u8 *pframe;
 
 
-	if (phtpriv->bss_coexist) {
+	if (phtpriv->bss_coexist)
 		SET_EXT_CAPABILITY_ELE_BSS_COEXIST(cap_content, 1);
-	}
 
 	pframe = rtw_set_ie(out_ie + *pout_len, EID_EXTCapability, 8, cap_content, pout_len);
 }
-- 
2.23.0


