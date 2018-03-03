X-GM-THRID: 6528829311020957696
X-Received: by 10.101.81.200 with SMTP id i8mr1975380pgq.103.1520111530692;
        Sat, 03 Mar 2018 13:12:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.194.153 with SMTP id w25ls3801535pfk.10.gmail; Sat, 03 Mar
 2018 13:12:09 -0800 (PST)
X-Google-Smtp-Source: AG47ELv1/nui4qXQ6F2BKkN0psxcnGDlZwuKQB5Kvy9u+btkl4bFA3mD8hS0sBPAM+cMWOIJIcbF
X-Received: by 10.101.64.66 with SMTP id h2mr1914252pgp.119.1520111529219;
        Sat, 03 Mar 2018 13:12:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520111529; cv=none;
        d=google.com; s=arc-20160816;
        b=AM5sIIwVRPlN5SfqNiYtGmhqy89awXgIGuzHWQSqypxaFgwm1PaqI8t71l6qUOWyoU
         2yI0VI9e8UTzK2WkZajFBTzN5GudNIFUtbtObL/hRPusl7a0KUgJfbg2OfUNUogwAuav
         J2dtAxN8r+POlmuvyzk2gAM/DAKriwfTTp3ADATE5JTvRXk5/50Zbru8f8ZgsIGoph/W
         4+q3Cj5/UfI5FSTU1neujnfkBb48w8wTfABfNV/PBUxF9J2l5ovl4+mRzJT2kyRz13Jr
         /e8RAAv42tXw8o2iYPrt1utzz2VhBo+m1csWQORX2cE3lLux1XJ+UFlTIANUgK23U6o8
         2zvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=qYFOliKs+GL/KpN4UyjZwqeV2Fe1NyMsGcGIf7VxdLs=;
        b=MLI8ytjiT28rhPC36Oysn4sqtwJpRdI5jlivkM902MzMprTKK/KZkqC8xe+6Y6i6iW
         jlRV4CHhGTdhnwQdzy47sxIbcKh0kkilD1FIkl/7SAU05TFkygGxduIqYqpuIXodAS/a
         yMxD2g/lK7SwE37I3Ooian7uXYETmiX1UBQ6oQSZyhQF25ergttm/H3uFgGLVVtmQv6Z
         odjOsOkMHG/FgxXGFLm8Zm6Crya8/o9NB3KZh3QWrD3ZzIUVHjuljTEL2o0bpnHgUw+J
         tGTyDm0M0d14l96yopmdA1Ld8g1tRZofudQv6U5Enm8xFXt5OB8cI6cjVT+GTeOulXuQ
         ERLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tMiWR76U;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y22si410068pfe.5.2018.03.03.13.12.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 13:12:09 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tMiWR76U;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id y8so5237981pgr.9
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 13:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qYFOliKs+GL/KpN4UyjZwqeV2Fe1NyMsGcGIf7VxdLs=;
        b=tMiWR76UNIBMC7/+8F7Ur3omtptZBd1dmQ6CxLVxyAuB3E9WZc5fzofVR6hdjIbnUi
         /6Bor6TkQH3Q3NGsHdFvsZX/bVRMdfXd3qo9CWr1uRnKVZxXjK2KEtGSdw7sIftkE1wP
         YY3NkEnxZSubTYMzAkoLMYm8My+6fZ6bvN+H/Nz78ke6QQ/jelS4fKW3pVzm+vPUcGiY
         MBrE06ijCUUYTccQYvXxT9Z655ek6mQ9zaGXoD40U4kzrwVNZpQbcD4NfFgqyxEfB3ah
         /W5FUOcJfxr4hvZcuuTZbp4tmeEjzI0vvdZ7AZ4atsuN+v2Uh66x3S2/N0tGVtVcmL/x
         H+xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qYFOliKs+GL/KpN4UyjZwqeV2Fe1NyMsGcGIf7VxdLs=;
        b=t02CTLGaNNlQcsepxGUKumlOCXCU/CvkuBqXrSJMeXhiT90pRceO3uZwxutXkrOD3h
         5L1CPLqKg6WMvF+JMQp8flbtinB6o7UoZpjxOfS0puIe4IKLVQCe2/sx4XbRzSk/S7UH
         InhOV5GDbgMCnAKKD4pHWHhogJFgizIipbr6TwkfHx+Ei7q8rTttl1QCeK5ncgQi0ObV
         L2v+ENghSG7UduBYfWBapSvx0GzyPmiwMB6mnfc2ft8C2gR2wTOVH17+shd+yN+kuHjS
         dwRUO9bxNd9imNvibNMQxtyrvzvzMOrzKZJ3hcQZl5tGAc/tFOen5VDbKVQXNhlLfvcv
         y7kQ==
X-Gm-Message-State: APf1xPCfczbuQmUWt9a+6hCOyUeQ7SX2YYAhZ2j1Irhe4fFWATBGdhw5
	kwTwlhmebOldD+cghye/Z8vkpQ==
X-Received: by 10.98.33.204 with SMTP id o73mr10211577pfj.54.1520111528058;
        Sat, 03 Mar 2018 13:12:08 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g80sm19511765pfj.101.2018.03.03.13.12.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 13:12:06 -0800 (PST)
Date: Sun, 4 Mar 2018 02:41:42 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Replace memset with eth_zero_addr
Message-ID: <20180303211142.GA10078@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use eth_zero_addr to assign zero address to the given address array
instead of memset when the second argument in memset is address
of zero. Coccinelle was used to do the replacement and add the
header file linux/etherdevice.h if not already present.

The Coccinelle semantic patch that makes this change is as follows:
@header@
@@
#include <linux/etherdevice.h>

@r1@
expression e;
@@

-memset(e,0x00,ETH_ALEN);
+eth_zero_addr(e);

@includeheader depends on r1 && !header@
@@
+ #include <linux/etherdevice.h>
#include <...> 

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c         | 3 ++-
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 3 ++-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 9 +++++----
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index fe739eb..c13e514 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -14,6 +14,7 @@
  ******************************************************************************/
 #define _RTW_MLME_C_
 
+#include <linux/etherdevice.h>
 #include <drv_types.h>
 #include <rtw_debug.h>
 #include <linux/jiffies.h>
@@ -2109,7 +2110,7 @@ int rtw_select_roaming_candidate(struct mlme_priv *mlme)
 		mlme->roam_network = candidate;
 
 		if (!memcmp(candidate->network.MacAddress, mlme->roam_tgt_addr, ETH_ALEN))
-			memset(mlme->roam_tgt_addr, 0, ETH_ALEN);
+			eth_zero_addr(mlme->roam_tgt_addr);
 	}
 
 	ret = _SUCCESS;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 1e6c587..75a4b23 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -14,6 +14,7 @@
  ******************************************************************************/
 #define  _IOCTL_CFG80211_C_
 
+#include <linux/etherdevice.h>
 #include <drv_types.h>
 #include <rtw_debug.h>
 #include <linux/jiffies.h>
@@ -2391,7 +2392,7 @@ static int cfg80211_rtw_del_pmksa(struct wiphy *wiphy,
 	{
 		if (!memcmp(psecuritypriv->PMKIDList[index].Bssid, (u8 *)pmksa->bssid, ETH_ALEN))
 		{ /*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
-			memset(psecuritypriv->PMKIDList[index].Bssid, 0x00, ETH_ALEN);
+			eth_zero_addr(psecuritypriv->PMKIDList[index].Bssid);
 			memset(psecuritypriv->PMKIDList[index].PMKID, 0x00, WLAN_PMKID_LEN);
 			psecuritypriv->PMKIDList[index].bUsed = false;
 			bMatched = true;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index cc18d0a..bf437c8 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -14,6 +14,7 @@
  ******************************************************************************/
 #define _IOCTL_LINUX_C_
 
+#include <linux/etherdevice.h>
 #include <drv_types.h>
 #include <rtw_debug.h>
 #include <rtw_mp.h>
@@ -124,7 +125,7 @@ void rtw_indicate_wx_disassoc_event(struct adapter *padapter)
 	memset(&wrqu, 0, sizeof(union iwreq_data));
 
 	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
-	memset(wrqu.ap_addr.sa_data, 0, ETH_ALEN);
+	eth_zero_addr(wrqu.ap_addr.sa_data);
 }
 
 /*
@@ -1080,7 +1081,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
-                                memset(psecuritypriv->PMKIDList[ j ].Bssid, 0x00, ETH_ALEN);
+                                eth_zero_addr(psecuritypriv->PMKIDList[j].Bssid);
                                 psecuritypriv->PMKIDList[ j ].bUsed = false;
 				break;
 			}
@@ -1294,7 +1295,7 @@ static int rtw_wx_get_wap(struct net_device *dev,
 
 	wrqu->ap_addr.sa_family = ARPHRD_ETHER;
 
-	memset(wrqu->ap_addr.sa_data, 0, ETH_ALEN);
+	eth_zero_addr(wrqu->ap_addr.sa_data);
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_wap\n"));
 
@@ -1303,7 +1304,7 @@ static int rtw_wx_get_wap(struct net_device *dev,
 			((check_fwstate(pmlmepriv, WIFI_AP_STATE)) == true)) {
 		memcpy(wrqu->ap_addr.sa_data, pcur_bss->MacAddress, ETH_ALEN);
 	} else {
-		memset(wrqu->ap_addr.sa_data, 0, ETH_ALEN);
+		eth_zero_addr(wrqu->ap_addr.sa_data);
 	}
 
 	return 0;
-- 
2.7.4


