X-GM-THRID: 6465604112701456384
X-Received: by 10.176.93.200 with SMTP id l8mr13125202uag.119.1505390767278;
        Thu, 14 Sep 2017 05:06:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.139.4 with SMTP id g4ls5095666ite.15.gmail; Thu, 14 Sep
 2017 05:06:06 -0700 (PDT)
X-Received: by 10.36.175.66 with SMTP id l2mr1082688iti.42.1505390766340;
        Thu, 14 Sep 2017 05:06:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505390766; cv=none;
        d=google.com; s=arc-20160816;
        b=N7n7c6A5UpPnZm2lMcnWMTC9/Zgve7gQDjtmVsKdcHdhI7/7avAts0O7ymANA6DsYg
         2E8wLViaQDOl4yGcuiCznN0IiHNcaxdPxOC4WyDTo+2KLCzoFAxWdPXiyRn/F4ZpNHNw
         Sz4xnP4wRSlqTyjhAE6nq3Cywt6fNis5yrs68SDvI8fNjWbbiDtdDnRrXOYkFpu1zcEd
         4uOryNTt2pGyEhQTR8BTUdkfHc7nx8Gb7AmyhuxOdzHx/AvFzBhLGVQj8g6raPDWSp3Y
         tKZ5OyR4EKN94jI8mWBRIjWAWJ4+ailCYRMgW/yMl+P7s4MqAdJMX8/GqeNXGPWpNwLy
         2XWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=LMxCibz8Lw5T0uMGeRNgH5VqUJ7q1SkCrs9inOsJwvg=;
        b=OYi9JvVh0BR/uk+8oWYsxYJb4cdqEJzxvunDRHRTZq8YLCoXEQ/ZZUAZ/g19vemUQY
         xX4qUOLpHCxeyo7gvpMpKEnjN+vFf3vWpksSKa4lPE+4TSyN1RHKb7JN89wktjQ+o5+J
         tmLnTdXf9J8fOrVFrOe7poYlKn0imbzK8LLjoUyHt0lzhfGpIodDLZQd0IXwEFey75fB
         tnLCqtFTasOb40JIBQTjwBmOARaZox3sdxhDvjBeZlA9Gvkw2RDZoYjrlO3REzmBWfqi
         AjrufK2ZTIoVneyHLbdVEqCiSDPDB6R4qJSpq/q8zTzibC6F3b3p7AX24GrS6QSq1GIl
         7TjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dJzKEFLK;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r78si641064pfb.3.2017.09.14.05.06.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:06:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dJzKEFLK;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id d8so1591586pgt.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 05:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LMxCibz8Lw5T0uMGeRNgH5VqUJ7q1SkCrs9inOsJwvg=;
        b=dJzKEFLKH0SNSkQ0UUhaBVxR6ViS0SHuOd1AFHzbThJa2ehFWuT45RhPD6nHRlp0Ue
         Y1Co+ecVJo5cGBDucwOLwUJTizw8d5ZdoG1loJe6yrvobGegky71iVM1YI2G7Z0jbjed
         dllIidlso+VA7UbnoTeD3N5HWmTBFzz+jW24rEFCAyv1Q0hr4latmq9eLfLy73cs/VcW
         DXJYDLLhXzaYsGNMl6qpA4IFh+icNEZkZDVQjgQ0fH1+QXAvCDU650yPezpjlNyFB2/Y
         j0zMhNX9b5Rsur/p2lnw5RJ0w4HtARfS8VLcoY6wS/XtxkZn4rldyeu6xrSWq9qpKK3F
         pXEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LMxCibz8Lw5T0uMGeRNgH5VqUJ7q1SkCrs9inOsJwvg=;
        b=PxdwUaQ7AoNbNEKZ8EgKxuxx1z4RiOmdpGafI/VTa9xxQCM4Z2mALMWf2ix7o2qgk4
         SMwHQKVNRwJVXvRXTL4VVu26sdHDpo8Us52HbJC6Lr7beqsdJgu+aWQOji2GV6RwLCgc
         0GG/rt1MmUbXaFUQjbvncvrFvC3XHeXk/rA5KQLxaKIjaNYouGRykYj1TdAp0N1aGPQY
         sj10SwtcxwsLGhsoRiU5DT4Gxxv1vU8P03FxXIbQ242qC/ep8Cb5zw1v6O4CQJS5Kxor
         55Zd3iw9MmpxCJ5CmeHkekPfDzVxIx2/MEaaj29WzqDlaZMQjARZe4TpDGkJCtn+tzV1
         0YUQ==
X-Gm-Message-State: AHPjjUi3VdHX0csRg3Yi7z3/TeTwf6Sut9m8CCNuE8zZ7Wp8WnaxC9U+
	1tzR386tmcaoFQ==
X-Google-Smtp-Source: ADKCNb7MJpmQQDVvZC36yvHZmRpO/RFKzUCVpqd/pDD7m6aEDCzcC2cdEdN6qYrhyXvIOuJNM47e8g==
X-Received: by 10.98.33.134 with SMTP id o6mr21189737pfj.91.1505390766012;
        Thu, 14 Sep 2017 05:06:06 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id d124sm27765222pfc.42.2017.09.14.05.06.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 05:06:05 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: rtl8723bs: Merge assignment with return
Date: Thu, 14 Sep 2017 17:34:05 +0530
Message-Id: <1505390645-4461-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Merge assignment with return statement to directly return the value.
Done using following coccinelle semantic patch

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index ffbb35a..6a8f805 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2123,12 +2123,9 @@ static int rtw_wx_set_gen_ie(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	int ret;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 
-	ret = rtw_set_wpa_ie(padapter, extra, wrqu->data.length);
-
-	return ret;
+	return rtw_set_wpa_ie(padapter, extra, wrqu->data.length);
 }
 
 static int rtw_wx_set_auth(struct net_device *dev,
@@ -3857,7 +3854,6 @@ static int rtw_hostapd_sta_flush(struct net_device *dev)
 {
 	/* _irqL irqL; */
 	/* struct list_head	*phead, *plist; */
-	int ret = 0;
 	/* struct sta_info *psta = NULL; */
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	/* struct sta_priv *pstapriv = &padapter->stapriv; */
@@ -3866,9 +3862,7 @@ static int rtw_hostapd_sta_flush(struct net_device *dev)
 
 	flush_all_cam_entry(padapter);	/* clear CAM */
 
-	ret = rtw_sta_flush(padapter);
-
-	return ret;
+	return rtw_sta_flush(padapter);
 
 }
 
@@ -4266,7 +4260,6 @@ static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param,
 
 static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *param, int len)
 {
-	int ret = 0;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
@@ -4279,15 +4272,12 @@ static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *p
 		return -EINVAL;
 	}
 
-	ret = rtw_acl_remove_sta(padapter, param->sta_addr);
-
-	return ret;
+	return rtw_acl_remove_sta(padapter, param->sta_addr);
 
 }
 
 static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *param, int len)
 {
-	int ret = 0;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
@@ -4300,9 +4290,7 @@ static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *para
 		return -EINVAL;
 	}
 
-	ret = rtw_acl_add_sta(padapter, param->sta_addr);
-
-	return ret;
+	return rtw_acl_add_sta(padapter, param->sta_addr);
 
 }
 
-- 
1.9.1


