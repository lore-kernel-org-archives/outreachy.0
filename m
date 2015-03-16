X-GM-THRID: 7921078370304
X-Received: by 10.112.148.10 with SMTP id to10mr4523306lbb.18.1426539066254;
        Mon, 16 Mar 2015 13:51:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.85.229 with SMTP id k5ls716661wiz.0.canary; Mon, 16 Mar
 2015 13:51:05 -0700 (PDT)
X-Received: by 10.180.90.175 with SMTP id bx15mr6217375wib.3.1426539065775;
        Mon, 16 Mar 2015 13:51:05 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id cl5si757287wib.3.2015.03.16.13.51.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 13:51:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id p1so46990520weg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 13:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Tez2fhBB3yA+mdd5u4LXlJXWPeSolok57RJdnE1GxHk=;
        b=G1W7PY9+mdFPHjCpPqzugQBGAEwVl71/lThB0HRjbAWuIntKqMRpLAnyjYPvsOEdSt
         JkifNrnKkcfwPnKe9Bnl325d1b6HRPL4HJMZ3N+LVDgJi4jKbWv//wvStRzaPFHWNnQn
         hTGYzUzQ8wgYAxPWwHICQrws2sah2zMlRJucQNq1CD5t9m2MbLWdiGNns/4u5L0Noeww
         3R9Q+QDwj48yKC1pUjTvJJfcY6E2t0xGCQ1EIjeLSlD9p5Yxuaghmbx2ZGAtzIdoDo+A
         R1E+z4D9yM6C7XNfbx5VTM/LHVYiGpa2PFs3j5ZrKQJRMvu/im8i4TNXYlHy1SbiDEX8
         uArA==
X-Received: by 10.195.12.97 with SMTP id ep1mr128769885wjd.134.1426539065704;
        Mon, 16 Mar 2015 13:51:05 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id m4sm16990352wjb.25.2015.03.16.13.51.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 13:51:05 -0700 (PDT)
Date: Mon, 16 Mar 2015 22:50:22 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: drivers: Remove unecessary return value
Message-ID: <f972425373892a028f783e456e9990fa1ffba62a.1426538724.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Change _SUCCESS return value for function loadparam to void as it never
changes and it's also never used when calling the function.

Done with coccinelle:
@rule@
typedef uint;
@@

(
-uint
|
-int
)
+void
loadparam(...)
{
	...
-return _SUCCESS;
}

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
Changes in v2:
 - use coccinelle script to apply the changes easier
 - reaply patch on the refreshed tree

 drivers/staging/rtl8188eu/os_dep/os_intfs.c | 3 +--
 drivers/staging/rtl8723au/os_dep/os_intfs.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index 750c87b..218c69a 100644
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
diff --git a/drivers/staging/rtl8723au/os_dep/os_intfs.c b/drivers/staging/rtl8723au/os_dep/os_intfs.c
index db6a1597..0f1ae47 100644
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


