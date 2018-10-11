X-GM-THRID: 6611156296380973056
X-Received: by 2002:a24:f5c3:: with SMTP id k186-v6mr2270313ith.29.1539279995069;
        Thu, 11 Oct 2018 10:46:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:2e83:: with SMTP id i125-v6ls2783577ita.2.canary-gmail;
 Thu, 11 Oct 2018 10:46:34 -0700 (PDT)
X-Google-Smtp-Source: ACcGV620DqLy7dnWOgytH4piB3sPF9y541WaMpclIrZE6TmWEgrqjjtdXZJLdAYoKblL9buT0K9n
X-Received: by 2002:a05:660c:310:: with SMTP id u16mr5213344itj.1.1539279994232;
        Thu, 11 Oct 2018 10:46:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539279994; cv=none;
        d=google.com; s=arc-20160816;
        b=RZzBVZoEdkgwbFgJLF17n1CRIXkkzkkuWDKTPBJAat9o1H35PIduud8EL+92cOiEKA
         nEkcj2SI+V4DwGiunmRv3jnJJ95T4Xcfa2/4NC2e6J8h0BN7krGKyikKEkMiFWnkodBj
         Sa1U7tvCujmdBKTXJG/z7iwEwMa1fC+0PmPW8+PhgHXwl5C6uOsIsnUqOLhEj+eqXjuO
         xPLqpU474RNi1LUqXSZgwtmyQSa62rL0rTzMkOpsDCRQynlDjyA8x9VOc2ULVrhA2KsP
         RAoEfqJPkhmy8g6kUnro8RnAsfGN4OmId9ME+MIaOHFIJy/347vqkA0EJ50eAYZL+bmc
         xqgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Onyn8RMcFIh4kVhSZC2/dF2++X4JhAjy0UaiSn2BMvA=;
        b=SJFH1hwYEWoTN6faPYkSNJ5eUIhwgms1DrPq89/EHUm2sTsxCOlPKZ6tZTFr2K08rf
         3k/n6wHkeedmQfE7DVqGG5p3CTBLDzAujsVKdOj/17JkPFlFE4c2TirlKp4dVn72pUMz
         hNmeREPW6w7b8UQ029HEBg4UZKaTcsMn0sePL2gm6mSVPOQLvFpU3+rDMINmh1g9Jhzz
         IXWYBtqC3JaE6eE5haEz2u0zFN3MNCDnqOODiQ8xHzl2Ci9rpddCe8Rs4ZWxX5CNL24D
         Kw3cgatT6LNsdDglFLmKIOluRpLCAWyFm56tBQFd3IaMYVfk9axJfz4wDR67BJV1xHoD
         Xx+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m5sdetKy;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id n1-v6si802204ioh.0.2018.10.11.10.46.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 10:46:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m5sdetKy;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id 23-v6so4513840pgc.8
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Oct 2018 10:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Onyn8RMcFIh4kVhSZC2/dF2++X4JhAjy0UaiSn2BMvA=;
        b=m5sdetKyIklDd/LsVUlJ/ITmfi+M5B3Lb9eq10gJKwpluAWlYsvVUir+4oHlqRUQnE
         NCFlgqAoUA0pZcao9ZuPGsuYRO5eCWyeWgcYmA7pNx8MFGhgiLY2xiZk/e9kG0cKHw3F
         lgTtrikecJq+TvFgW3ZAkaDqI040NjRos2ZDakVSO7hqRZY/oIRFzjaPfGmkCM2BdQBb
         Xj9WnjvAJLdYTLOPLsO5hoQPyxRvRrVcl+NxhatvsLPc64kG0YiznkOJEhOBcjao+RRS
         HV3qGXXvlbjC/3ckwgU3B+mzupYWH9KRBA42aou3nrhvkTmS71RDrh18SLx6MHP0UAWE
         Y8xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Onyn8RMcFIh4kVhSZC2/dF2++X4JhAjy0UaiSn2BMvA=;
        b=hxIv19SQOMMWgR2VCfQVRY1fm1LQRAANype/aE/pfIIpifjkdf+lo2EFwBagwX0t4M
         QNErq1+ksE1Ciy3BIowH1q3st+/DuCHO6mhVlvsBms1Mqnv1otWolDz0EdYwKHce0Uzm
         hdyGpMeQVyPDHy1mYet8hk2IIX8WsNbHPUtP6/s+bIKPmk+nL2JWFMUK+nLi8Z7oERs9
         WL6dkOPOzXKJu9Uwkz/1UX0/RpezwtOzsdwv0uZJpI3G+CJMUpEZ5wOIlwmg0A85K2Yz
         /Rx5ZMDnyosVpX/qJ29XVcZ0Lc5JPtZ/3rNshYYH0tX7+J3BR1MIGDRgDhAknDwwc3u3
         bvDg==
X-Gm-Message-State: ABuFfog+iv0E8cXQGnMnQ/JEEUaGmo+5/YWa92zAijv8RRI4C7IqiLzT
	sMOstTkQhWVkiSSkjzWfK/Z8wG7YsUg=
X-Received: by 2002:a62:8559:: with SMTP id u86-v6mr2526840pfd.32.1539279993549;
        Thu, 11 Oct 2018 10:46:33 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.199.59.255])
        by smtp.gmail.com with ESMTPSA id 64-v6sm39122472pgb.74.2018.10.11.10.46.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Oct 2018 10:46:32 -0700 (PDT)
Date: Thu, 11 Oct 2018 23:16:26 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
	hadess@hadess.net, hdegoede@redhat.com
Subject: [PATCH 2/3] staging: rtl8723bs: os_dep: Remove space after cast
Message-ID: <07cc419de89866aa6d8c7cfc424824074872a2e8.1539278377.git.mamtashukla555@gmail.com>
References: <cover.1539278377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1539278377.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space after cast to fix checkpatch issue.
CHECK: No space is necessary after a cast

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 48a1560..243394e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -337,7 +337,7 @@ static char *translate_scan(struct adapter *padapter,
 
 
 	#ifdef CONFIG_SIGNAL_DISPLAY_DBM
-	iwe.u.qual.level = (u8) translate_percentage_to_dbm(ss);/* dbm */
+	iwe.u.qual.level = (u8)translate_percentage_to_dbm(ss);/* dbm */
 	#else
 	#ifdef CONFIG_SKIP_SIGNAL_SCALE_MAPPING
 	{
@@ -392,7 +392,7 @@ static char *translate_scan(struct adapter *padapter,
 
 static int wpa_set_auth_algs(struct net_device *dev, u32 value)
 {
-	struct adapter *padapter = (struct adapter *) rtw_netdev_priv(dev);
+	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	int ret = 0;
 
 	if ((value & WLAN_AUTH_SHARED_KEY) && (value & WLAN_AUTH_OPEN)) {
@@ -436,7 +436,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 	param->u.crypt.err = 0;
 	param->u.crypt.alg[IEEE_CRYPT_ALG_NAME_LEN - 1] = '\0';
 
-	if (param_len < (u32) ((u8 *) param->u.crypt.key - (u8 *) param) + param->u.crypt.key_len) {
+	if (param_len < (u32)((u8 *)param->u.crypt.key - (u8 *)param) + param->u.crypt.key_len) {
 		ret =  -EINVAL;
 		goto exit;
 	}
@@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	u8          j, blInserted = false;
 	int         intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-        struct iw_pmksa*  pPMK = (struct iw_pmksa*) extra;
+        struct iw_pmksa*  pPMK = (struct iw_pmksa*)extra;
         u8     strZeroMacAddress[ ETH_ALEN ] = { 0x00 };
         u8     strIssueBssid[ ETH_ALEN ] = { 0x00 };
 
@@ -1236,7 +1236,7 @@ static int rtw_wx_set_mlme(struct net_device *dev,
 	int ret = 0;
 	u16 reason;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct iw_mlme *mlme = (struct iw_mlme *) extra;
+	struct iw_mlme *mlme = (struct iw_mlme *)extra;
 
 
 	if (mlme == NULL)
@@ -2390,7 +2390,7 @@ static int rtw_wx_set_channel_plan(struct net_device *dev,
                                union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	u8 channel_plan_req = (u8) (*((int *)wrqu));
+	u8 channel_plan_req = (u8)(*((int *)wrqu));
 
 	if (_SUCCESS == rtw_set_chplan_cmd(padapter, channel_plan_req, 1, 1))
 		DBG_871X("%s set channel_plan = 0x%02X\n", __func__, channel_plan_req);
@@ -2584,7 +2584,7 @@ static int rtw_wps_start(struct net_device *dev,
 		goto exit;
 	}
 
-	uintRet = copy_from_user((void*) &u32wps_start, pdata->pointer, 4);
+	uintRet = copy_from_user((void*)&u32wps_start, pdata->pointer, 4);
 	if (u32wps_start == 0)
 		u32wps_start = *extra;
 
-- 
1.9.1


