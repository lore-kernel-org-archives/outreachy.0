X-GM-THRID: 6510934491136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3142a4e3bee2f234
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr383459wjb.1.1425452220849;
        Tue, 03 Mar 2015 22:57:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.130 with SMTP id fw2ls51205wib.20.gmail; Tue, 03 Mar
 2015 22:56:59 -0800 (PST)
X-Received: by 10.180.11.34 with SMTP id n2mr835476wib.2.1425452219603;
        Tue, 03 Mar 2015 22:56:59 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id by11si1065092wib.1.2015.03.03.22.56.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:56:59 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id z2so8711827wiv.4
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 22:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=OATGQvGdrVdsOLDY3DkBgzKF6uEs33EttO4KYNqYPcM=;
        b=fg/3aAlkj39P49MwoKTE0YPu5vZftSPkZ1ROeBPU4dmJuKZr7CMkY1vBp7KN5kjJ25
         DT4Yhi57WlDyVeBy6fY8wmve4kWpFYpW+Yc3K89h66Amqe3ZnNI76PBjlBxa33nsKIws
         5wXaHezGCFu7KO4EdbDkmhZo8IqMi+uFE94VPcTIWzdx+SmYuCJo12611wgIoc1Ocwnq
         DBlXDLXajeEbuewB9e3OTsyQD4hTUBWnLrAgjG1+VnqYm9ZvkMPEzeWUAFMGp/9Ghr71
         bB6VQv5AsrYqvVAHmBdwZMKqeYIyLdXmlNcCLGLoqUaBksyai5zzxbbTV0rxBS876X8y
         Ss+w==
X-Received: by 10.180.189.37 with SMTP id gf5mr53122692wic.86.1425452219538;
        Tue, 03 Mar 2015 22:56:59 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id b4sm23787177wic.2.2015.03.03.22.56.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 22:56:58 -0800 (PST)
Date: Wed, 4 Mar 2015 08:56:45 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8188eu: replace memset(x,0,ETH_ALEN)
Message-ID: <4e12f106c60e86a30bde897b445d21785252b282.1425451828.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425451828.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425451828.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

eth_zero_addr() is a wrapper function for memset if 0 is going to
be assigned to a mac address. The aforementioned function replaces
memset. In addition, linux/etherdevice.h was included as a header
since it is the file that define the inline function eth_zero_addr().
The changes were carried out using the following coccinelle script:

@header@
@@

#include <linux/etherdevice.h>

@eth_zero_addr@
expression e;
@@

-memset(e,0,ETH_ALEN);
+eth_zero_addr(e);

@eth_broadcast_addr@
identifier e;
@@

-memset(e,\(0xff\|0xFF\|255\),ETH_ALEN);
+eth_broadcast_addr(e);

@linux_header depends on !header && (eth_zero_addr || eth_broadcast_addr) @
@@

+ #include <linux/etherdevice.h>
+

@special_header depends on !header && !linux_header && (eth_zero_addr || eth_broadcast_addr) @
@@

+
+ #include <linux/etherdevice.h>
+

@custom_header depends on !header && !linux_header && !special_header && (eth_zero_addr || eth_broadcast_addr) @
@@

+
+ #include <linux/etherdevice.h>

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 58998f2..96c1c2d 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -32,6 +32,8 @@
 
 #include <rtw_iol.h>
 #include <linux/vmalloc.h>
+#include <linux/etherdevice.h>
+
 #include "osdep_intf.h"
 
 #define RTL_IOCTL_WPA_SUPPLICANT	(SIOCIWFIRSTPRIV + 30)
@@ -92,7 +94,7 @@ void rtw_indicate_wx_disassoc_event(struct adapter *padapter)
 	memset(&wrqu, 0, sizeof(union iwreq_data));
 
 	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
-	memset(wrqu.ap_addr.sa_data, 0, ETH_ALEN);
+	eth_zero_addr(wrqu.ap_addr.sa_data);
 
 	DBG_88E_LEVEL(_drv_always_, "indicate disassoc\n");
 	wireless_send_event(padapter->pnetdev, SIOCGIWAP, &wrqu, NULL);
@@ -827,7 +829,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		for (j = 0; j < NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
-				memset(psecuritypriv->PMKIDList[j].Bssid, 0x00, ETH_ALEN);
+				eth_zero_addr(psecuritypriv->PMKIDList[j].Bssid);
 				psecuritypriv->PMKIDList[j].bUsed = false;
 				break;
 			}
@@ -1028,7 +1030,7 @@ static int rtw_wx_get_wap(struct net_device *dev,
 
 	wrqu->ap_addr.sa_family = ARPHRD_ETHER;
 
-	memset(wrqu->ap_addr.sa_data, 0, ETH_ALEN);
+	eth_zero_addr(wrqu->ap_addr.sa_data);
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_wap\n"));
 
@@ -1037,7 +1039,7 @@ static int rtw_wx_get_wap(struct net_device *dev,
 	    ((check_fwstate(pmlmepriv, WIFI_AP_STATE)) == true))
 		memcpy(wrqu->ap_addr.sa_data, pcur_bss->MacAddress, ETH_ALEN);
 	else
-		memset(wrqu->ap_addr.sa_data, 0, ETH_ALEN);
+		eth_zero_addr(wrqu->ap_addr.sa_data);
 	return 0;
 }
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

