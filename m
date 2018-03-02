X-GM-THRID: 6528334297317769216
X-Received: by 10.46.67.147 with SMTP id z19mr374639lje.24.1519996308429;
        Fri, 02 Mar 2018 05:11:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.17.66 with SMTP id f63ls1071100lje.1.gmail; Fri, 02 Mar
 2018 05:11:46 -0800 (PST)
X-Google-Smtp-Source: AG47ELtwtR9B+VM4QGe+12i3DAR/bQxDv3WBcojo8VMZ+IVR9vYryFgxtOQRKrmGisYO9g9oIroB
X-Received: by 10.46.23.6 with SMTP id l6mr380222lje.11.1519996306808;
        Fri, 02 Mar 2018 05:11:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519996306; cv=none;
        d=google.com; s=arc-20160816;
        b=phD5iIMVAk36jX9Xtg2c9Nw4eqG1zv0VB2kHEUxepPewgcSpj4GHRVkkU6Csf3WHvx
         8FF9HBEaYlJFpVxDuyzqIBGvVxZ1U+GkBlg8m19BGbFKq/dPZnKc1Y1EqSwK/K0DTKhv
         a19MUIU8yFiTKjfcaiqCCUOmnILU20NBW9c8QbgekHuMx+NQKoXT4ur493QeD2EPx6E0
         O9zRk/cm6WZ96kNNW0zap/YzeT2K5aAWn3XDqcH7L4H7ChqDtqqsHlzTSoTYdDEQfOq2
         ilU9cMiNL/lXhlzjU9h9uCFoR4fTEwTDMGj6syRzDojXT9fWn6aTgTGfns5Fk6P/wks9
         O04g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=Z2Jngq+XYmzqD8noQMSTDMuLGrlwHWHKAqHbQP9Qvj0=;
        b=HbRFA2VCbf0jcosuRhQXY2G7Mm68BCMFsO3VcKyR/lB8KRRBqxTQVwmB2VzJlqha2K
         NyFrJyTJAk8BkX7gV4DiuIBUMlH7p20J9Y+jC40q53um8VO+yCAk6vgekri47HJFHoKc
         +ZsNIdNB/LT3sP054hEdGDjIrlbCqcqAJ8/i9v5MHuMGLqurxy7HVm9IRTodXiLMnlg0
         8xxyFCDcoCQEajvd9KRLRip/FjXnuYsYFgO97nmbfvj+Yn5yGKYq+dkECyA1toMxmGxZ
         P9pRq6kAdvIMeA1S8bc/7vR+iTiq3Qb5Yt81lwi2EmuYB/DwZ/JBiRHlmwFwgUumgFBY
         MTrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gY+ZGKZ7;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id u16si255618lfc.3.2018.03.02.05.11.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 05:11:46 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gY+ZGKZ7;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id l43so10076065wrc.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 05:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Z2Jngq+XYmzqD8noQMSTDMuLGrlwHWHKAqHbQP9Qvj0=;
        b=gY+ZGKZ7xXPhoIp2cd1o+vOHNnuxWESIZI2DnuKTZ6SKvexaVrJaUILODd1JqVPpS+
         QD83tzxdpInnWvtr5p1MYKX7+jajepIWTgFjZJ2+o/v2i8BTuIPuH2h5cc9ZNbGwwnZs
         4rUwDzDaa/D/vzynLJsw5ug5zyjuEB+dMF6v49NERaqnulgZmDgIt7Pq6tHjI/W6vBlr
         OARgnfc5OIQLUL/7UzDLZqDgE53/+C8+N5QPmlr6InSfjz4NZpQMzExC2Wicdz0NfpK6
         SP1pGsdTgBaz89mgBOHTO0IWaWHt6wtR4EuSk8SBomwq2+H876VsnWxsIcH/aj7edqiJ
         wihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Z2Jngq+XYmzqD8noQMSTDMuLGrlwHWHKAqHbQP9Qvj0=;
        b=ttQfIkJwpQDROb3SLlOYMrBK9s8X6yaDlLrV6x4ahhu9Wao6k6tE+Gtm4NT54t5l/f
         I1JLVVBkA56SwHkFuBKXqLXZVPKEYPqIXBJwIuX9iMKLaaxAWuymY0c6Gauuk8e+z+0l
         Wq+EQ8XmAn/qJfiCHChzO9qtKzSxeXaAQalT175jiRmTDlu3tC4pIn0ziB4FufmOVPNO
         YVMjMwbh1eI1A8kHH6hwoPGiXLDKE45vKn8gzWK6gBObA8xe4ieyLG9f0nqxQavOGCah
         piK4rDAHrCCbpipWVq+UcqbEdEQDPlXHUY3dM+C77MWC/d0cE9EBcAi6xwA4W4guPh5A
         AYgA==
X-Gm-Message-State: APf1xPC5xD7hPDVnZJJnWI0wAezbiq5txPSW9eQpDAcnQK2lfxA7n6gJ
	03dWAi8lBJeORYrtdXvc6BA=
X-Received: by 10.223.152.228 with SMTP id w91mr4698263wrb.74.1519996306331;
        Fri, 02 Mar 2018 05:11:46 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id 47sm5896815wrb.48.2018.03.02.05.11.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 05:11:45 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8192e: Fix issues regarding blank lines
Date: Fri,  2 Mar 2018 15:09:56 +0200
Message-Id: <74a7206205ca976e024df3cb9044f01af79bb570.1519995327.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1519995327.git.dafna3@gmail.com>
References: <cover.1519995327.git.dafna3@gmail.com>
In-Reply-To: <cover.1519995327.git.dafna3@gmail.com>
References: <cover.1519995327.git.dafna3@gmail.com>

Fix multiple blank lines and blank lines after braces.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 27 ---------------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
index f802f60..1d9eb54 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
@@ -36,7 +36,6 @@ static int _rtl92e_wx_get_freq(struct net_device *dev,
 	return rtllib_wx_get_freq(priv->rtllib, a, wrqu, b);
 }
 
-
 static int _rtl92e_wx_get_mode(struct net_device *dev,
 			       struct iw_request_info *a,
 			       union iwreq_data *wrqu, char *b)
@@ -149,7 +148,6 @@ static int _rtl92e_wx_set_rawtx(struct net_device *dev,
 	mutex_unlock(&priv->wx_mutex);
 
 	return ret;
-
 }
 
 static int _rtl92e_wx_force_reset(struct net_device *dev,
@@ -165,7 +163,6 @@ static int _rtl92e_wx_force_reset(struct net_device *dev,
 	priv->force_reset = *extra;
 	mutex_unlock(&priv->wx_mutex);
 	return 0;
-
 }
 
 static int _rtl92e_wx_adapter_power_status(struct net_device *dev,
@@ -231,7 +228,6 @@ static int _rtl92e_wx_set_force_lps(struct net_device *dev,
 	priv->force_lps = *extra;
 	mutex_unlock(&priv->wx_mutex);
 	return 0;
-
 }
 
 static int _rtl92e_wx_set_debug(struct net_device *dev,
@@ -475,12 +471,10 @@ static int _rtl92e_wx_set_scan(struct net_device *dev,
 	return ret;
 }
 
-
 static int _rtl92e_wx_get_scan(struct net_device *dev,
 			       struct iw_request_info *a,
 			       union iwreq_data *wrqu, char *b)
 {
-
 	int ret;
 	struct r8192_priv *priv = rtllib_priv(dev);
 
@@ -490,7 +484,6 @@ static int _rtl92e_wx_get_scan(struct net_device *dev,
 	if (priv->bHwRadioOff)
 		return 0;
 
-
 	mutex_lock(&priv->wx_mutex);
 
 	ret = rtllib_wx_get_scan(priv->rtllib, a, wrqu, b);
@@ -552,7 +545,6 @@ static int _rtl92e_wx_set_nick(struct net_device *dev,
 	memcpy(priv->nick, extra, wrqu->data.length);
 	mutex_unlock(&priv->wx_mutex);
 	return 0;
-
 }
 
 static int _rtl92e_wx_get_nick(struct net_device *dev,
@@ -596,7 +588,6 @@ static int _rtl92e_wx_get_name(struct net_device *dev,
 	return rtllib_wx_get_name(priv->rtllib, info, wrqu, extra);
 }
 
-
 static int _rtl92e_wx_set_frag(struct net_device *dev,
 			       struct iw_request_info *info,
 			       union iwreq_data *wrqu, char *extra)
@@ -619,7 +610,6 @@ static int _rtl92e_wx_set_frag(struct net_device *dev,
 	return 0;
 }
 
-
 static int _rtl92e_wx_get_frag(struct net_device *dev,
 			       struct iw_request_info *info,
 			       union iwreq_data *wrqu, char *extra)
@@ -633,7 +623,6 @@ static int _rtl92e_wx_get_frag(struct net_device *dev,
 	return 0;
 }
 
-
 static int _rtl92e_wx_set_wap(struct net_device *dev,
 			      struct iw_request_info *info,
 			      union iwreq_data *awrq, char *extra)
@@ -651,10 +640,8 @@ static int _rtl92e_wx_set_wap(struct net_device *dev,
 	mutex_unlock(&priv->wx_mutex);
 
 	return ret;
-
 }
 
-
 static int _rtl92e_wx_get_wap(struct net_device *dev,
 			      struct iw_request_info *info,
 			      union iwreq_data *wrqu, char *extra)
@@ -664,7 +651,6 @@ static int _rtl92e_wx_get_wap(struct net_device *dev,
 	return rtllib_wx_get_wap(priv->rtllib, info, wrqu, extra);
 }
 
-
 static int _rtl92e_wx_get_enc(struct net_device *dev,
 			      struct iw_request_info *info,
 			      union iwreq_data *wrqu, char *key)
@@ -707,7 +693,6 @@ static int _rtl92e_wx_set_enc(struct net_device *dev,
 	ret = rtllib_wx_set_encode(priv->rtllib, info, wrqu, key);
 	mutex_unlock(&priv->wx_mutex);
 
-
 	if (wrqu->encoding.flags & IW_ENCODE_DISABLED) {
 		ieee->pairwise_key_type = ieee->group_key_type = KEY_TYPE_NA;
 		rtl92e_cam_reset(dev);
@@ -716,7 +701,6 @@ static int _rtl92e_wx_set_enc(struct net_device *dev,
 		goto end_hw_sec;
 	}
 	if (wrqu->encoding.length != 0) {
-
 		for (i = 0; i < 4; i++) {
 			hwkey[i] |=  key[4*i+0]&mask;
 			if (i == 1 && (4 * i + 1) == wrqu->encoding.length)
@@ -786,8 +770,6 @@ static int _rtl92e_wx_set_scan_type(struct net_device *dev,
 	return 1;
 }
 
-
-
 #define R8192_MAX_RETRY 255
 static int _rtl92e_wx_set_retry(struct net_device *dev,
 				struct iw_request_info *info,
@@ -833,7 +815,6 @@ static int _rtl92e_wx_get_retry(struct net_device *dev,
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-
 	wrqu->retry.disabled = 0; /* can't be disabled */
 
 	if ((wrqu->retry.flags & IW_RETRY_TYPE) ==
@@ -862,12 +843,10 @@ static int _rtl92e_wx_get_sens(struct net_device *dev,
 	return 0;
 }
 
-
 static int _rtl92e_wx_set_sens(struct net_device *dev,
 			       struct iw_request_info *info,
 			       union iwreq_data *wrqu, char *extra)
 {
-
 	struct r8192_priv *priv = rtllib_priv(dev);
 
 	short err = 0;
@@ -963,15 +942,12 @@ static int _rtl92e_wx_set_encode_ext(struct net_device *dev,
 			rtl92e_set_swcam(dev, 4, idx, alg,
 					 (u8 *)ieee->ap_mac_addr, 0, key, 0);
 		}
-
-
 	}
 
 end_hw_sec:
 	priv->rtllib->wx_set_enc = 0;
 	mutex_unlock(&priv->wx_mutex);
 	return ret;
-
 }
 
 static int _rtl92e_wx_set_auth(struct net_device *dev,
@@ -995,7 +971,6 @@ static int _rtl92e_wx_set_mlme(struct net_device *dev,
 			       struct iw_request_info *info,
 			       union iwreq_data *wrqu, char *extra)
 {
-
 	int ret = 0;
 
 	struct r8192_priv *priv = rtllib_priv(dev);
@@ -1089,7 +1064,6 @@ static int _rtl92e_wx_set_promisc_mode(struct net_device *dev,
 	return 0;
 }
 
-
 static int _rtl92e_wx_get_promisc_mode(struct net_device *dev,
 				       struct iw_request_info *info,
 				       union iwreq_data *wrqu, char *extra)
@@ -1109,7 +1083,6 @@ static int _rtl92e_wx_get_promisc_mode(struct net_device *dev,
 	return 0;
 }
 
-
 #define IW_IOCTL(x) ((x) - SIOCSIWCOMMIT)
 static iw_handler r8192_wx_handlers[] = {
 	[IW_IOCTL(SIOCGIWNAME)] = _rtl92e_wx_get_name,
-- 
2.7.4


