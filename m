X-GM-THRID: 6746031998697996288
X-Received: by 2002:a1f:b202:: with SMTP id b2mr4213661vkf.59.1570683065889;
        Wed, 09 Oct 2019 21:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:6181:: with SMTP id h1ls137782uan.7.gmail; Wed, 09 Oct
 2019 21:51:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyQQQAR+Lj7cPoN9hzTSDSn5gAHga+8Yr5F6YiT/sD6B1gysDu6RcAHcNICusFR8F8QI+Eo
X-Received: by 2002:ab0:304e:: with SMTP id x14mr501931ual.41.1570683064704;
        Wed, 09 Oct 2019 21:51:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570683064; cv=none;
        d=google.com; s=arc-20160816;
        b=IoJ9XkLzxSo5JY1yPT+nJghzntoSxb8t/rbgmuF/cdb6ERMYvDO6qAs3COAJbKHjb1
         9LljgpnJOARb7+ITtcBI7hGEhg2mKClx9DYFyqciLJjQ13Y/m5do0oSaon1UsdhfdlZ9
         CkqRxFporVWzwIUUDPo68ARcrYjgzxmWh9L7W8SFfQoO6qX0vCYRT1VNLC9zmY048XBT
         fjSUrThKH5/oTaI896kBn447Fz/Xn/83O9ieVJDqdqXKv/PToXhB2S1bNx2BUvRhWZqE
         uPk4h5HxTQwtLQYCnQ8YHGAg90o1KF6KKtVbaIZ59FzoEXKfr+R/oc0QOpb5ai93+pQC
         haMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZUpFJbctHLbLvrh0MpCtPGi5zG/1dlaflfj3eQWRa4g=;
        b=ItExWoQOCYJbyFQ0HGEkG7VUTGyIEkVEYEyWwtkj8fZSLP6A65UkpHd0/oq7ERIDKQ
         wgU0hgp2Z2f4pTUOCpTf6uhwUdYxFGZk/xwXhkiqCDXFoWp4R+2tPMF0D8SFvnhW+PLY
         qU+OXleLzeFiPxmChke0aNBuccKS6quXV5lJNTBXgNJ936eCSQDoye+YEhLIKV0/fvj6
         o8GcLVyD8F6uJ+2QtV3L3ktsIPFxOHkJ2S7LUhxm1XjLYQdKTS1K6+2wqhEtGy138Daw
         s8fxyZPxjtbZB/moQ0GGpMSZMaqP7sRGnNCnBqJA/7bAq+t21VrAW4euTei4F4x0ILZE
         Ab8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YGgepeDf;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p18si259975vsn.1.2019.10.09.21.51.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 21:51:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YGgepeDf;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id p30so2858351pgl.2
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 21:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZUpFJbctHLbLvrh0MpCtPGi5zG/1dlaflfj3eQWRa4g=;
        b=YGgepeDf6EXaLhxLlzAad/R7SJoPuOexB9TX3oOi7is4aN0GR3HJtHSGDyxus4GGih
         SGd7KqD8N8kZMHnWLj8mazYPH8Lu2Nc27DrPS8703lHm1+Cfb9MimvHHfc3uO1lbHjD0
         +wkXda87Tt8Hf5jtJIkXlKdPkUgE3NSdngUzcGh1/tOS5zSewGrJWbXIA2cQ+/rrbXKM
         A/gfO1xYnqCFktzo34pKkRWgwmZPcrUN0WfZpgsDY+HivAdSBj/8v2KpBv1Ct1Ck6fre
         NCkg8GMp3rZNDolRRvXynjNROzyKepKRxqVoiKWoCX8zMEzeu6PjqSdI6HZwpzi7oHyb
         cJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZUpFJbctHLbLvrh0MpCtPGi5zG/1dlaflfj3eQWRa4g=;
        b=ep/RHyGOZ7HIpH+o6P3cS5yibM/kcxZNQNB7ctlxLL/rFc4MeXH/9ojT71XeaCR3yV
         79t8tPJQaGc+qaT2GeR8NPZE7jcc1u3hmVTFbMvbG3ltgNM3jRhFXbcfEp6XPrsXkIuE
         yJqouX5Qfhls8Pii47utSrnYxl/mnblduCk6mmFwFmhTUyrIgA5+6WaicZ/ADOvbnOjX
         VaMB9jtxVoGUg9Zb/kaZadCIxu2kbIRVOrVJZsjZqOhakQ6NrifUQUmdG+O8k4ADMoyy
         46EqpBY4Z6vqXAc02anRumqilQR4ru5GVmJAFjsUbaB7Kfce5cNlH/p+83rR9Zgx4lzO
         heVA==
X-Gm-Message-State: APjAAAXOxvdPkglIfeDEONkJWKRu+8M52+p/QXqJtI548g8coq+az5yu
	QMGyhbMttbN/nCOL/0vUV31nOMrFW8JdmA==
X-Received: by 2002:a63:6b06:: with SMTP id g6mr8734098pgc.104.1570683063304;
        Wed, 09 Oct 2019 21:51:03 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id q20sm4520090pfl.79.2019.10.09.21.50.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 21:51:02 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v2 2/4] staging: rtl8723bs: Remove unnecessary braces for single statements
Date: Thu, 10 Oct 2019 07:49:06 +0300
Message-Id: <8e6f986b6bb09951af5336f5033888eb9e8ef273.1570682635.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570682635.git.wambui.karugax@gmail.com>
References: <cover.1570682635.git.wambui.karugax@gmail.com>
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


