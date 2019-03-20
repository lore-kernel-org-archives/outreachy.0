X-GM-THRID: 6670256423573651456
X-Received: by 2002:a02:449:: with SMTP id 70mr14119192jab.15.1553040096932;
        Tue, 19 Mar 2019 17:01:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls152980ioc.3.gmail; Tue, 19 Mar
 2019 17:01:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyy5yREVkxorcpsD/bjtWlZZatYlvfWIBYluDZRWtIpH6JrsPUfMyGATlE2AmyMBubTlj7C
X-Received: by 2002:a6b:f717:: with SMTP id k23mr15856612iog.28.1553040096029;
        Tue, 19 Mar 2019 17:01:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553040096; cv=none;
        d=google.com; s=arc-20160816;
        b=RTLHhjLjVG/d8hfHNM+r8XvuygeUm1Ob0PV2OEbpgAFoRf3PdTOhzMuUehmH6+Z7m+
         FFJ+f3BeeFsY8g7VovEXBMnvwkjn+9v3APOKiVl7nhZxliBDd2y54jmmiTB4rroKPBf0
         rEID7rOH0QommSFpny8qdXRK/YyOCK1NYPfVWEtUsV11rYJ6nuBsgLMUcqVHDyEUf5CW
         Db4gQxbxbR+Omayv//Knxj2EAiKt0TRs/Ry8RCuMkhQQlH9LO2kkZvOCseFLFUj8Msvy
         cNebtMKPokKkKB4CDZvl9a+Utv0z5BXo81Yw96EywN4Yj2R0zp6xhqd7/nr50rOTCczJ
         FVQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=R+D6Em1vot2jUiHmlF08guf/lPmRgLuIVkQYWDPz5Lk=;
        b=0GwCy3c3vx3zJbtStzN12j+TLXw4JXJZp44x9BQUtvOFUBFBj9FsoTjUnv2U48Khcp
         aPJ+O7F2icT45YPMvyd8PP3tKauhP/xxDNVfUWsm9pPbxCwe514K8w7Sh+maP9bwIyJJ
         pNxlnzVNIwY0o6HhZzry2zDPDdJMkco2aDwmCdkTpqLrMRrS6u/Bub+D3zZaM68ayFmY
         MFDgNSRUu3vw7X2QJPDn799n5ZHMrH0C4rADDRXiY/hYm6wEEFPsHb3XdQVpjqSxcE29
         hBRFPG1Rh0ZQ4GKtLSKEQ/gEMrrQrz+9VyW2WponwetMpQRaJEUQEOZBR6ybPtEfyHEK
         tvMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RS3vtJZf;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j196si55160itb.0.2019.03.19.17.01.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 17:01:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RS3vtJZf;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id q24so539983otk.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 17:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=R+D6Em1vot2jUiHmlF08guf/lPmRgLuIVkQYWDPz5Lk=;
        b=RS3vtJZfAhC6OPrBZrzJZ5MHAZoO1gKlD2fBZKRK2NIYcwztMfnahaN4TRsDQQ4z8P
         fvR1842zMkzYOTcqcLs2c6Y5Ze1VLeVwQRVqjJgXqsMT082ved5JuW+1qmz4Wv4LPe5S
         ODIR4FrR0lbCTudTPg+fSqpu0VtrD3gkPPn1KQiF4Sm7pKNxxMy+vsseZ35KjuUrOU8U
         2RJZlp2g7DJew+86nGZ+K6Y/eoL968qL973Ut1jE8D9DKODIGPSTPMjk9vF2khODGIwe
         HPzPbzO6cXePAvPJk/PNrhdzGCHkKduQ9PvyE55jUJ60uqwlz2bkrc45pYLn/HbrIMwV
         RMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=R+D6Em1vot2jUiHmlF08guf/lPmRgLuIVkQYWDPz5Lk=;
        b=XG3hQynpoKZ3Vu+KKXMxBEfT0dHAG1YzJuBUz7V4i7594IkDmoLX82tQnzHG0r0bmr
         2gcifq7B86ejbSxQj/O/tTwoWIC6VLoOb0G7Vu0LPwy2gDJ5uvvyxaj1qsDqdF4ILZwO
         OengG+aNuQTzLe8Ikk9DKnHLwk6gzzGBKRD9zORL5/mTg8J9KNY0PtcpVV8EdUJfBMS5
         +Mh++Z7Py2y4dar0oGyFiZvIcGP65VlbXYPdq+dNO2yfdsih8+xz5GAzZD3ecPDBo7NQ
         +ItA/eTYFQI5nQw4NSVu2wHaDid0JtTACkPIhCOgSOMv+390+i7U5MkZi9eUj8wHpePR
         /HIg==
X-Gm-Message-State: APjAAAVGpeYmv8fV4RE+nDHhbLmAs89AjhkjVIaofoV7XnueHNUSgF1p
	OUsP2Vts9bLoXt1z/auZPrbiBEn1n0w=
X-Received: by 2002:a9d:3b04:: with SMTP id z4mr3945616otb.1.1553040095640;
        Tue, 19 Mar 2019 17:01:35 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:39a7:e418:cc24:1a52])
        by smtp.gmail.com with ESMTPSA id x30sm255745ote.11.2019.03.19.17.01.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Mar 2019 17:01:34 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: rtl8723bs: Change return type and type of local variable
Date: Tue, 19 Mar 2019 19:01:25 -0500
Message-Id: <20190320000125.8930-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Change type of local variable and return type of function rtw_startbss_cmd,
as function's return type are defined for standard error codes. Change
corresponding function declarations and call sites. Along with
modifications, remove extern from the function declaration to maintain
Linux kernel coding style.
Issue suggested by Coccinelle.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c      | 8 ++++----
 drivers/staging/rtl8723bs/include/cmd_osdep.h | 2 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index bd3a5a23a418..04c6927dab8b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -256,7 +256,7 @@ ISR/Call-Back functions can't call this sub-function.
 
 */
 
-sint	_rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
+int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
 {
 	_irqL irqL;
 
@@ -331,7 +331,7 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 
 
 
-u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
+int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 {
 	int res = _FAIL;
 	struct adapter *padapter = pcmdpriv->padapter;
@@ -719,12 +719,12 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
 	return res;
 }
 
-u8 rtw_startbss_cmd(struct adapter  *padapter, int flags)
+int rtw_startbss_cmd(struct adapter  *padapter, int flags)
 {
 	struct cmd_obj *pcmd;
 	struct cmd_priv  *pcmdpriv = &padapter->cmdpriv;
 	struct submit_ctx sctx;
-	u8 res = _SUCCESS;
+	int res = _SUCCESS;
 
 	if (flags & RTW_CMDF_DIRECTLY) {
 		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
index 06ab48263757..d3af9f44ad59 100644
--- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
+++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
@@ -12,7 +12,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
 int rtw_init_evt_priv(struct evt_priv *pevtpriv);
 extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
 extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
-extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
+int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
 extern struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue);
 
 #endif
diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index fa4ebc3d7539..b83824ca2e31 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -122,7 +122,7 @@ struct P2P_PS_CTWPeriod_t {
 	u8 CTWPeriod;	/* TU */
 };
 
-extern u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
+int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
 extern struct cmd_obj *rtw_dequeue_cmd(struct cmd_priv *pcmdpriv);
 extern void rtw_free_cmd_obj(struct cmd_obj *pcmd);
 
@@ -827,7 +827,7 @@ struct RunInThread_param
 
 u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid, int ssid_num, struct rtw_ieee80211_channel *ch, int ch_num);
 extern u8 rtw_createbss_cmd(struct adapter  *padapter);
-u8 rtw_startbss_cmd(struct adapter  *padapter, int flags);
+int rtw_startbss_cmd(struct adapter  *padapter, int flags);
 
 struct sta_info;
 extern u8 rtw_setstakey_cmd(struct adapter  *padapter, struct sta_info *sta, u8 unicast_key, bool enqueue);
-- 
2.17.1


