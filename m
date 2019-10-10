X-GM-THRID: 6746031998697996288
X-Received: by 2002:a37:a089:: with SMTP id j131mr9410820qke.446.1570713378991;
        Thu, 10 Oct 2019 06:16:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3f5d:: with SMTP id w29ls346926qtk.0.gmail; Thu, 10 Oct
 2019 06:16:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz/XbqQHCGhFNDOeyQidcokwzcVdnpsNt4AOx24a1m6wv7pvFMOAOxD19Wut+XV555K5gYB
X-Received: by 2002:ac8:1894:: with SMTP id s20mr10498640qtj.241.1570713377830;
        Thu, 10 Oct 2019 06:16:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570713377; cv=none;
        d=google.com; s=arc-20160816;
        b=iMFxqcpypa4lXUDCfpyRoO88gJ1iqnDR6xRqmcr6LvNEEzHq9FAbacUzd6eiXjtkgT
         wxfOvVGwcSnFokI5c2quShgORVFPMmKSqKSmKpGPBgEGQZFWbBrx8h4wToOgR8IMrQB2
         6VvFOm65Ehz8HpTV+WeaziFQAxWD3vjYxZDJpCbUXYTgrRUqAqzD73z/OTkJESeavxhE
         +HswXbZr09oVCCb3fnVa51n3w3D5wiNv9TJRcV9WuE81E1jxJlQ3VFFLyAZTtTwc8TLH
         upn+9ZNVt3w7S5hAKdfPSJW53YNKf3GHhrr+b3bsEjavQf6DvQ9ozqPr+X21sv7jsemw
         4N0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ej8sdrlqNx6j3ep07H4HGglONlqNhSIvUHcKT297Bxw=;
        b=nur9A9sELSDlXIOotEVmXcPL3Z32CS4m3tbP6GBRel/T1jsHSUNbBoyxj0YkRlYdBS
         VMm0AVxYeB21+ils1dXA9oIx5h3j9f1bU0Y0sEnUscPcEEw0rChRQ6lrqRkbzYYiC2u/
         dRqqm4QK4sRoZvKhQbkKb2Oov7AdYJXFKggnW6J10FEb6+bAZAj0pAfDagUaWsFpTt80
         bTQo4MBQYAhRWz7jFqgCsiP4dvB1gf5YDM4E5gfYp2K8oeodna/BlpXNgglU8LqavmK6
         Hzbp5ftQ6PmDtoV0DTJGPTNzEmaKEV5U3X9qs4f//1egrVgBCc5NzXnr3yqRKdIPwLFW
         31hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OJmFnoDU;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id l4si210462qtl.1.2019.10.10.06.16.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 06:16:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OJmFnoDU;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id y72so3866317pfb.12
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 06:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ej8sdrlqNx6j3ep07H4HGglONlqNhSIvUHcKT297Bxw=;
        b=OJmFnoDUoAZyG0K6NMhqzi5T9cYJR0Q7RWHg2+XfT3X8uqR1hpirt60hedYso008J0
         xNX9wncwKvovvHHxTViiqg0oqqe5dQhSYNZl6uXqyGZ3HHKIvw7QCRMZy8QLswmPkMbp
         mu1dqNkPPvD3T56mgXz1durH5Gxvt9qGkkJChOuMxL3HDr62c4FAx8wrW48k4jTebbey
         7h7JwLtIiy7r9tUpghJvCD/v/y3Fv/+Krj3KfzEdntUe2xGFxzHJUl8pmtwWZIYNsYIO
         GImRrp1Gfr7Avk+HZCb49Ivj6Gd6aFVZ+HnsU7XIgLmS6xRT4Sp9ZiuJL+BA6zW2Zk3d
         Zqig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ej8sdrlqNx6j3ep07H4HGglONlqNhSIvUHcKT297Bxw=;
        b=ZNIjJxQmga3+6NRIBrAwPXCt5zuvfbw3GoSaeqJ/28EQm70HvJtTTaTAIX6hbaXEHr
         /WGqXJndJ9gZACvJrFNA/aVZQP06HZZYDHSDzLOfK5Ic5tVSyidwMvMsrJSZqU77CMS9
         Q0tDLOJL7ygxJoqWSKjGG6lj2QLaZ+rF4lAqmqf3jFSlfMXoQWPMmA49LhEvyPZwB5eN
         PdXY3x25LBL82hq/rV0ZukeaUkdT4GIlQNLPZ0HN5dtbGRs7VWMBd0Vv/IekZlDy1DNb
         HRVVl2Rv4OPXZ57LJop80ABfrA1p9AQA3BeABvedgGx6/ZpkeGE4of/ZF/7Abv2j0J08
         00pQ==
X-Gm-Message-State: APjAAAXvVv7y/Nnn4A4U47OzrKvl6qZwvmGnTN9MkIJtji6QvosMpFng
	tyGmthTk4I+3+bGBeEysaaUw2QcGSkXsDg==
X-Received: by 2002:a63:d803:: with SMTP id b3mr11230212pgh.310.1570713376543;
        Thu, 10 Oct 2019 06:16:16 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.brck.local ([197.254.95.158])
        by smtp.googlemail.com with ESMTPSA id 2sm8707720pfa.43.2019.10.10.06.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 06:16:16 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v3 2/4] staging: rtl8723bs: Remove unnecessary braces for single statements
Date: Thu, 10 Oct 2019 16:15:30 +0300
Message-Id: <c459741e8dc51dc2283fc69f07ed947e2994d0e9.1570712632.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570712632.git.wambui.karugax@gmail.com>
References: <cover.1570712632.git.wambui.karugax@gmail.com>
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
index b0018fe7bae3..52f490d5ebfb 100644
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


