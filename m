X-GM-THRID: 6256394426333003776
X-Received: by 10.66.232.41 with SMTP id tl9mr10072900pac.35.1456689492630;
        Sun, 28 Feb 2016 11:58:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.112 with SMTP id j103ls2259561qge.57.gmail; Sun, 28 Feb
 2016 11:58:11 -0800 (PST)
X-Received: by 10.140.252.131 with SMTP id x125mr2110264qhc.12.1456689491915;
        Sun, 28 Feb 2016 11:58:11 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 12si3206215pfb.1.2016.02.28.11.58.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:58:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id a7so6117799pax.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=azK+KG4Sh+Dl8/f21e78N/FkpnN6BuBaU9tMPgDMI2M=;
        b=i1KGagsnbZ0jXs34YaA4wlRvnFxXv+MDQLZ0udCKbzPFnv6mXVAsohvF4EiD/lA2RQ
         yJBRabBDaGL38tZ9hZ/ZtwMV4mXKrQcVMA6ldq8imz6AkWdPtPRdh3N6XSCJtRvoihxo
         n/NMf49dQQxUgDW6JSkDc8eMwEhVMbDBsd5nFAG0Gk7KTZtXqLBUuH32CeSmZWtSb1Rk
         bHHor1q5UgazRtydd+i+6VdyDlEKKxpnYXgGv/6DmysQ50bd5i2nvOxMcaiiHmlLXWIK
         c/KZqiixTtwPhjmj6XrC1M5mMoBJw7EflJP08dqNhRAGfZ1hbN6kFcP51QyaFsbi8XED
         SqJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=azK+KG4Sh+Dl8/f21e78N/FkpnN6BuBaU9tMPgDMI2M=;
        b=hjUynKDy9MMeO21B9zRd0iXwtKxyNCP0sBuNEHst7s9u+LmCuAjvNBAJ/kS9g9nmxT
         E7re6KVpThzJ7dlNc9fI2EaUsWXqNiIcNQuKg8MxQP7/VNBmSQ4bPrJTKZYLTYStomsk
         GE7K1Y8N44kus1WfMhxTaXQRrRcA5x2yDUUo0Ff1ysYWlctEVpe0KoV4XVeoSA0G6DWD
         Yzrx+XzJL2AUOm0B9fgFN5tgEV8NT1XAbilMjaPT72c5sXx+b7BIa4umr089bHkt+gPx
         goenLuCjBHhXhu0Aou2OI3gl7h7izxWXEuOAmeQ+pqIHagwoqVS7R3zB7+ev3QmazZr/
         syEA==
X-Gm-Message-State: AD7BkJIG8Ztxve7fgU6JrIAPn2+YB/reMjAED1UAvnf1s2HYcAIrUjRwWk/UZnWTmJ2WVA==
X-Received: by 10.66.55.6 with SMTP id n6mr17383670pap.35.1456689491566;
        Sun, 28 Feb 2016 11:58:11 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.134.212])
        by smtp.gmail.com with ESMTPSA id ko9sm32879998pab.37.2016.02.28.11.58.07
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:58:11 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 29 Feb 2016 01:28:02 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: rtl8723au: Remove print statements and debug messages
Date: Mon, 29 Feb 2016 01:27:59 +0530
Message-Id: <1456689479-10273-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The  memory allocation functions generates a call stack containing
all the context information on failure, so print statements and debug
messages can be removed on failure of these functions. Also remove
unwanted {} around if block after removal of these messages.
Done using coccinelle:

@@
expression e,e1,e2;
identifier x;
@@
e=\(kmalloc\|kmalloc_array\|kzalloc\|
   devm_kzalloc\)(...);
...when!=e=e1
if(!e)
-{
- \(printk\|DBG_8723A\|pr_err\|CERROR\|DBG_88E\)(...);
(
goto x;
|
return e2;
|
return;
)
-}

@@
expression e,e1;
@@
e=\(kmalloc\|kmalloc_array\|kzalloc\|
   devm_kzalloc\)(...);
...when!=e=e1
if(!e){
...
- \(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
...
}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Improve the semantic patch by including ... before the print statement.

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


