X-GM-THRID: 6256394426333003776
X-Received: by 10.66.244.171 with SMTP id xh11mr9821585pac.32.1456680341145;
        Sun, 28 Feb 2016 09:25:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.60.134 with SMTP id h6ls961566obr.78.gmail; Sun, 28 Feb
 2016 09:25:40 -0800 (PST)
X-Received: by 10.182.220.132 with SMTP id pw4mr2476915obc.4.1456680340783;
        Sun, 28 Feb 2016 09:25:40 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id y20si1051003pfa.2.2016.02.28.09.25.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:25:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fy10so78234842pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1WenI5SL8mlB9e7turMJGR3mYsowFBl0hPzx9dctAqc=;
        b=rybou6Or9sQGHgZFGobATHg8a3ShBOcb/p24q3vwamVqvVGOz1AC/gAmCICbTURB9C
         IW6WiypRWnkITAKtDlfmFI7WybnddMIFNhtkMpiWDf53PLbJtNwCKLy0N9j2vqT0Ywhj
         rG3YDLYzul9qVLcRPSZ/aLwucV5wSMUa45Y/mlbExe+nF4UuaSSzZOrqtEqOHsw6cfOU
         Pqylj2klWgqC4TjKN5CsZpMYEPJOeb7BC8sBP6fI+3Na1VRA1ZC50zOt6yTI1T4BKw2n
         JKk3Gxqmf7ABoe6aoPMMgH+JrTQyR7mFDi7nsQWlMtke99RDurE1zN0wl19n7SL2ZiRn
         ZzwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1WenI5SL8mlB9e7turMJGR3mYsowFBl0hPzx9dctAqc=;
        b=lQLE3VK+Qhes8vaSOn9Q4Of7BRPK9keQvFYOZFUjd8U+QOekD1yL9h6++UpPMTtm9y
         928nnqdzvwAKOYlvAsahy+QcE6Nb4Uy3tOJRUvfHTUdqPsl3jHAIiB6RpX6CCFpaTWck
         1ULknQApFeF193z0hA2zE5li3CvyupFuUFh51a5edSTRpX6vZc5H4DFuIDJS/HvZOPJz
         qbp294InwwblE1AbH+eXrrzpu4IeyVC+g+FhYro85Tk3Wdbf3FaZD+d8m+htHyPVjpax
         QZ/bI4OPxlZMki337ocvWAXDfUNfLnVWdQT8MzWbj0x+x+AaFdTtMENiU2f1gVFzGJAw
         YkCA==
X-Gm-Message-State: AD7BkJIGKk6OkTPdNDxg5mWYFeyBZA9d/2ZGU/+HY1pp/6qzel6Qe/t0PP/2UmYAXqkP9Q==
X-Received: by 10.66.147.74 with SMTP id ti10mr16815969pab.128.1456680340617;
        Sun, 28 Feb 2016 09:25:40 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.134.212])
        by smtp.gmail.com with ESMTPSA id y21sm16399022pfa.85.2016.02.28.09.25.36
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 09:25:40 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 28 Feb 2016 22:55:30 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Remove print statements and debug messages
Date: Sun, 28 Feb 2016 22:55:29 +0530
Message-Id: <1456680329-31568-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The  memory allocation functions generates a call stack containing
all the context information on failure, so print statements and debug
messages can be removed on failure of these functions. Also remove
unwanted {} around if block after removal of these messages.
Done using coccinelle:

@@
expression e;
@@

e=\(kmalloc\|kmalloc\|kmalloc_array\|alloc_netdev\|kzalloc\|
   devm_kzalloc\|devm_ioremap\)(...);
...
if(!e){
- \(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
...when any
}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8723au/hal/usb_ops_linux.c     | 6 +-----
 drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 3 ---
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/usb_ops_linux.c b/drivers/staging/rtl8723au/hal/usb_ops_linux.c
index 371e6b3..5c81ff4 100644
--- a/drivers/staging/rtl8723au/hal/usb_ops_linux.c
+++ b/drivers/staging/rtl8723au/hal/usb_ops_linux.c
@@ -256,12 +256,8 @@ static void usb_read_interrupt_complete(struct urb *purb)
 				c2w = kmalloc(sizeof(struct evt_work),
 						GFP_ATOMIC);
 
-				if (!c2w) {
-					printk(KERN_WARNING "%s: unable to "
-					       "allocate work buffer\n",
-					       __func__);
+				if (!c2w)
 					goto urb_submit;
-				}
 
 				c2w->adapter = padapter;
 				INIT_WORK(&c2w->work, rtw_evt_work);
diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
index cf0daa1..722d5f5 100644
--- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
@@ -2608,8 +2608,6 @@ static int rtw_cfg80211_add_monitor_if(struct rtw_adapter *padapter, char *name,
 	/*  wdev */
 	mon_wdev = kzalloc(sizeof(struct wireless_dev), GFP_KERNEL);
 	if (!mon_wdev) {
-		DBG_8723A("%s(%s): allocate mon_wdev fail\n", __func__,
-			  padapter->pnetdev->name);
 		ret = -ENOMEM;
 		goto out;
 	}
@@ -3260,7 +3258,6 @@ int rtw_wdev_alloc(struct rtw_adapter *padapter, struct device *dev)
 	/*  wdev */
 	wdev = kzalloc(sizeof(struct wireless_dev), GFP_KERNEL);
 	if (!wdev) {
-		DBG_8723A("Couldn't allocate wireless device\n");
 		ret = -ENOMEM;
 		goto free_wiphy;
 	}
-- 
1.9.1


