X-GM-THRID: 6249370730393239552
X-Received: by 10.107.18.216 with SMTP id 85mr36455146ios.16.1455045009575;
        Tue, 09 Feb 2016 11:10:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.64.179 with SMTP id p19ls2683igs.0.gmail; Tue, 09 Feb 2016
 11:10:09 -0800 (PST)
X-Received: by 10.66.121.110 with SMTP id lj14mr33364984pab.22.1455045009264;
        Tue, 09 Feb 2016 11:10:09 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id 12si4812121pfb.1.2016.02.09.11.10.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 11:10:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id c10so65333286pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 11:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/86vfE6ZnNOQNHO6ZTnz8+rcSA47tJn0wmncqRu14VA=;
        b=iXbJbGPt4nslH+Y2OpoHbJzfL/nsDxycc7NNkZsKCcAgusLvY3Fk3QjHpHuBqXCAwo
         F4JAiBrubNHCq/lgF+eVXFw98VH1v+/QTil1tn6GvNn732je6G63qTB77e4bKh+NhCpp
         wZaX3iiEl25x2PSRkR+tcQm7+WVG7AWhuaLSFNCdb3sxhy7MkCX4+jMXcUiDrUgMFMCk
         DDtxwPPOd7LZFdOtESRS+Wj7iibt3Lxiu3b7NF0hi4LIb73W7YZJPtG6RckntHg5H38g
         ZsKcXArICwlePP6SE5RiT0nw0ern334kZodUSN51N8/QUxgOs8RhsOGqASOWkxCrDdZh
         swqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/86vfE6ZnNOQNHO6ZTnz8+rcSA47tJn0wmncqRu14VA=;
        b=ZCXdEWhtnOnoau0z2ytIeA8JjLgt7AlgJCQnOGfM1EgrZQnl4XjYcVPRQIsf//k5oG
         rKqjpQP2L4TNsiU138zgvQaxyeswgxwnh5GpuN5fM1d0F1Rk2JBg5AJziepiYFAf2bfd
         4fTjrAfc1/x19Qn8s5SDe3+o2lavhEC+JVkY0oXAM0SAgINgdQdcHrhP64ZvjidpOWvw
         seqFqUB8bhBxag7jqqTnCVCvYuGgCjnJfEymLNkn2v4m6QwtFzc21OvZoePjJs9niNgi
         4gttY0z9cSUL8ROn58EGf0s+pfg5lLkXNDLHIEvg6xV3UbyJMs1ENcJZyUAMsfO/hKEe
         tzdw==
X-Gm-Message-State: AG10YOQ8WRb3YGmMjb1ZAqpLq4xBaq56YCfDXDQI5BYS0MuQdGO/7BVK8t92y6A1xDYAmQ==
X-Received: by 10.98.72.24 with SMTP id v24mr52082998pfa.15.1455045009148;
        Tue, 09 Feb 2016 11:10:09 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.157.195])
        by smtp.gmail.com with ESMTPSA id e79sm52288434pfb.76.2016.02.09.11.10.05
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 11:10:08 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 10 Feb 2016 00:39:59 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Remove unnecessary variable
Date: Wed, 10 Feb 2016 00:39:08 +0530
Message-Id: <1455044948-1425-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Variable ret is initially made 0 and it's value remains unchanged in
function. It is used only as return value.So remove ret and replace
return ret with return 0.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
index 0ae2180..b10fdce 100644
--- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
@@ -242,7 +242,6 @@ rtw_cfg80211_default_mgmt_stypes[NUM_NL80211_IFTYPES] = {
 static int rtw_cfg80211_inform_bss(struct rtw_adapter *padapter,
 				   struct wlan_network *pnetwork)
 {
-	int ret = 0;
 	struct ieee80211_channel *notify_channel;
 	struct cfg80211_bss *bss;
 	u16 channel;
@@ -295,7 +294,7 @@ static int rtw_cfg80211_inform_bss(struct rtw_adapter *padapter,
 
 	cfg80211_put_bss(wiphy, bss);
 
-	return ret;
+	return 0;
 }
 
 void rtw_cfg80211_indicate_connect(struct rtw_adapter *padapter)
@@ -1300,7 +1299,6 @@ void rtw_cfg80211_surveydone_event_callback(struct rtw_adapter *padapter)
 static int rtw_cfg80211_set_probe_req_wpsp2pie(struct rtw_adapter *padapter,
 					       char *buf, int len)
 {
-	int ret = 0;
 	const u8 *wps_ie;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
@@ -1330,7 +1328,7 @@ static int rtw_cfg80211_set_probe_req_wpsp2pie(struct rtw_adapter *padapter,
 		}
 	}
 
-	return ret;
+	return 0;
 }
 
 static int cfg80211_rtw_scan(struct wiphy *wiphy,
-- 
1.9.1


