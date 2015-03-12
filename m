X-GM-THRID: 7921078370304
X-Received: by 10.112.198.34 with SMTP id iz2mr6402545lbc.22.1426180035743;
        Thu, 12 Mar 2015 10:07:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.199 with SMTP id s7ls264767laj.57.gmail; Thu, 12 Mar
 2015 10:07:15 -0700 (PDT)
X-Received: by 10.112.120.136 with SMTP id lc8mr3562884lbb.24.1426180035246;
        Thu, 12 Mar 2015 10:07:15 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id gj20si1587064wic.1.2015.03.12.10.07.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 10:07:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id w55so17834493wes.3
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 10:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NQ6PJeGkjhzGceYdVMUjBxTkt4V8UWsMO3HRV0mRgYc=;
        b=To/Yl9Wx456QSQ+vNaxeAfGF1IuLoafU1ot3PvzUOsJByzZ5Gsn4m6EhUBA0VX5Ra5
         vevEMgD8I0tX0z7tOr+a/v8UeKotSHH5F2LWrA8tkLsbMr0jHHL7u4wmr/dg0HvEAmEK
         2VkMt9Ki9oSHV3Mb1fpb5uQ1N3C+DGqk7IAPoG0pEoFdB10GrCYbAa+jcX7NNFPkbsMh
         3yv6uO0tlpbc2km0KTi3yktHl/xHaa092NMKm0ysghGd8y7G0T1gaUeBum6XT/E9x8dj
         cp2XeglsbKhFGu6iZdHT2p49OAd3iWExQKvIn225d2PK6lF5CeyX3P3mVisPZzNKE/pa
         owQg==
X-Received: by 10.194.235.71 with SMTP id uk7mr90250628wjc.13.1426180035153;
        Thu, 12 Mar 2015 10:07:15 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id md2sm13987627wic.19.2015.03.12.10.07.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 10:07:14 -0700 (PDT)
Date: Thu, 12 Mar 2015 19:06:30 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: drivers: Remove unecessary return value
Message-ID: <20150312170630.GA30999@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Change _SUCCESS return value for function loadparam to void as it never
changes and it's also never used when calling the function.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/os_intfs.c | 3 +--
 drivers/staging/rtl8712/os_intfs.c          | 5 ++---
 drivers/staging/rtl8723au/os_dep/os_intfs.c | 3 +--
 3 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index 88a909c..d2f5490 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -510,7 +510,7 @@ void rtw_proc_remove_one(struct net_device *dev)
 }
 #endif
 
-static uint loadparam(struct adapter *padapter,  struct  net_device *pnetdev)
+static void loadparam(struct adapter *padapter,  struct  net_device *pnetdev)
 {
 	struct registry_priv  *registry_par = &padapter->registrypriv;
 
@@ -581,7 +581,6 @@ static uint loadparam(struct adapter *padapter,  struct  net_device *pnetdev)
 	snprintf(registry_par->ifname, 16, "%s", ifname);
 	snprintf(registry_par->if2name, 16, "%s", if2name);
 	registry_par->notch_filter = (u8)rtw_notch_filter;
-	return _SUCCESS;
 }
 
 static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 3cac773..7b3d377 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -122,11 +122,11 @@ module_param(low_power, int, 0644);
 MODULE_PARM_DESC(ifname, " Net interface name, wlan%d=default");
 MODULE_PARM_DESC(initmac, "MAC-Address, default: use FUSE");
 
-static uint loadparam(struct _adapter *padapter, struct  net_device *pnetdev);
+static void loadparam(struct _adapter *padapter, struct  net_device *pnetdev);
 static int netdev_open(struct net_device *pnetdev);
 static int netdev_close(struct net_device *pnetdev);
 
-static uint loadparam(struct _adapter *padapter, struct  net_device *pnetdev)
+static void loadparam(struct _adapter *padapter, struct  net_device *pnetdev)
 {
 	struct registry_priv  *registry_par = &padapter->registrypriv;
 
@@ -171,7 +171,6 @@ static uint loadparam(struct _adapter *padapter, struct  net_device *pnetdev)
 	registry_par->low_power = (u8)low_power;
 	registry_par->wifi_test = (u8) wifi_test;
 	r8712_initmac = initmac;
-	return _SUCCESS;
 }
 
 static int r871x_net_set_mac_address(struct net_device *pnetdev, void *p)
diff --git a/drivers/staging/rtl8723au/os_dep/os_intfs.c b/drivers/staging/rtl8723au/os_dep/os_intfs.c
index 1b23eb1..d6d9af6 100644
--- a/drivers/staging/rtl8723au/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723au/os_dep/os_intfs.c
@@ -172,7 +172,7 @@ MODULE_PARM_DESC(debug, "Set debug level (1-9) (default 1)");
 
 static int netdev_close(struct net_device *pnetdev);
 
-static int loadparam(struct rtw_adapter *padapter,  struct net_device *pnetdev)
+static void loadparam(struct rtw_adapter *padapter,  struct net_device *pnetdev)
 {
 	struct registry_priv  *registry_par = &padapter->registrypriv;
 
@@ -233,7 +233,6 @@ static int loadparam(struct rtw_adapter *padapter,  struct net_device *pnetdev)
 	snprintf(registry_par->if2name, 16, "%s", if2name);
 	registry_par->notch_filter = (u8)rtw_notch_filter;
 	registry_par->regulatory_tid = (u8)rtw_regulatory_id;
-	return _SUCCESS;
 }
 
 static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
-- 
1.9.1


