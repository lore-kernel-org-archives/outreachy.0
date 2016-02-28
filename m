X-GM-THRID: 6256350272839221248
X-Received: by 10.140.101.242 with SMTP id u105mr27092567qge.12.1456682109936;
        Sun, 28 Feb 2016 09:55:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.230 with SMTP id i6ls302724igt.39.gmail; Sun, 28 Feb
 2016 09:55:09 -0800 (PST)
X-Received: by 10.98.42.67 with SMTP id q64mr9744570pfq.9.1456682109657;
        Sun, 28 Feb 2016 09:55:09 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x243.google.com (mail-ig0-x243.google.com. [2607:f8b0:4001:c05::243])
        by gmr-mx.google.com with ESMTPS id p10si885678igg.1.2016.02.28.09.55.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:55:09 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::243 as permitted sender) client-ip=2607:f8b0:4001:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x243.google.com with SMTP id sv7so7489433igc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=L1SRqKDYH0/q9pGE7xmNCasrOuMO7eg17BYU9OseSbk=;
        b=wofLSWra2VbbEoj5pXpoS4XsireEEt+D+JYEslEkDC6JYwX6rPUiC8qt5wphLYzC5x
         gHl5h7jB3kS7wAzhbruZPn6vFAdgoVLpUvrNxExbq3T9DgLFHvjqRK4111oxqwZfMgYZ
         Ytfx4Vh37CGUVFt9ZNjOEjlkec4XbCMdUeNYJSP2X0zo7K4AUO/QH13aJB4zBKXcyiP7
         nsYsaiFzKBCvk69942qqP/307EwBt5wCqGD8WyXJBi5IJCMBU+NpuKtOUk1IHGjkCbya
         LYmJ0C7SUXCfH6Szxi0hmbutiTVL3FlaDCwBW1hjAprhncuIAI0pEJk45fenYqE/g3we
         PvAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=L1SRqKDYH0/q9pGE7xmNCasrOuMO7eg17BYU9OseSbk=;
        b=h/wq0nGzaJZh3tEJX0fLLtG/QQHloJy9zgi1dX6E8ahieDaWZgmBh54xuPE6Ncr+MY
         1ekN4vRLjPyxQ3Z8qGBGvydCBES9aCoxk16dV9lclvAXHUG57O0/geCT8xYhRQXxNgsu
         XOpyJ4Yy+g1/kypuI5USXc+QTMlCbjqDQ2MlT6Pk/k3/sP/WYI9aXYOdps9Yv2BQzpCr
         1C+XUlcMbvq/kJZe6i2lw3xo9oPrFtrMxgFgwNZENLlVfmBtqegLa6NmGIxYMZqg2Hvs
         QQe4qNke0ZA35s6R3ZQv60KmCTwxF9GiAJSDFjb0nO3TU7WQ7buv72ClLyFSEgSLbaLA
         eb8A==
X-Gm-Message-State: AD7BkJKVYa0guZ+FMu+mdCWXioSxoFbCrXEHEaJyuQ4A4s2+GK92MM2uxRxqZkIMPJIVtQ==
X-Received: by 10.50.8.42 with SMTP id o10mr1066850iga.59.1456682109449;
        Sun, 28 Feb 2016 09:55:09 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id j10sm5382143igx.15.2016.02.28.09.55.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:55:08 -0800 (PST)
Date: Sun, 28 Feb 2016 17:54:01 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723au: os_dep: Use list_for_each_entry_safe()
Message-ID: <20160228225401.GA9879@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry_safe() rather than a combination of
list_for_each_safe() and container_of(). Also, remove variable plist
which becomes useless as a result.
Semantic patch used:

@a@
expression pos, n, head;
expression mem;
type t;
identifier var;
iterator name list_for_each_entry_safe, list_for_each_safe;
@@

- list_for_each_safe(pos, n, head)
+ list_for_each_entry_safe(var, n, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when != pos
  }

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
  *Removed variable plist.
  *Changed semantic patch.

 drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
index 908b84c..b4bcaa8 100644
--- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
@@ -1945,7 +1945,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 				struct cfg80211_connect_params *sme)
 {
 	int ret = 0;
-	struct list_head *phead, *plist, *ptmp;
+	struct list_head *phead, *ptmp;
 	struct wlan_network *pnetwork = NULL;
 	/* u8 matched_by_bssid = false; */
 	/* u8 matched_by_ssid = false; */
@@ -1994,8 +1994,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 
 	phead = get_list_head(queue);
 
-	list_for_each_safe(plist, ptmp, phead) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+	list_for_each_entry_safe(pnetwork, ptmp, phead, list) {
 
 		if (sme->bssid) {
 			if (!ether_addr_equal(pnetwork->network.MacAddress,
-- 
2.5.0


