X-GM-THRID: 6339165268076396544
X-Received: by 10.25.215.91 with SMTP id o88mr136170lfg.14.1475951929264;
        Sat, 08 Oct 2016 11:38:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.21 with SMTP id v21ls1229267wmv.23.gmail; Sat, 08 Oct
 2016 11:38:48 -0700 (PDT)
X-Received: by 10.194.220.66 with SMTP id pu2mr1613967wjc.4.1475951927981;
        Sat, 08 Oct 2016 11:38:47 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id a126si381778wmd.1.2016.10.08.11.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id i130so7792777wmg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 11:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SBozoQLyIXG1MxWgik1pYOILZDDROo0/kPgp3zKCfG8=;
        b=kmIoGgI/wFsW7gyqxjaXnWs91ULY9qW7YAcfNO4n9lYvSU2IgTdHH3DW9PYuYXBJGG
         oaffuntcSCV5gZJNQH0VHXtLE6wgjcdyGOxrH/E6NL4mu5EWiCoOMMt1ZTxKONFKeGSh
         QsedNHyi0Tuz81LrW6lbZ16JRpneOefjFL3arrJ47qrHE/3oIjeILqqJcEy8E6JNnexZ
         5bGv5LhasBL0S7rAoGJiQpUoA7aomhmwbpNg1PW3qmnDhF7E6kHj+wbjFwhdkFS+a5zZ
         9rKiRLippSdZawX9Q1C6NJrvXxoZSdnRjJ5Z0nJ0SCDYpdXMzGWFdW7kkQ6rm1oncUI/
         3lzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SBozoQLyIXG1MxWgik1pYOILZDDROo0/kPgp3zKCfG8=;
        b=Ha/+7eTexcXyaEH0RYjwaOOBW+6PYHXpZKVQjLJnhJotRzeo0SPbiPQKLATO3DebTC
         u93ZJnq0PsxTW9xv441hHIKsam83Ke/M90Al36VwEygUeG0wh4Aesout0ztIOW47xb1V
         ZwWhnC0ei9KCTdsrDzARKqFZ7QlrwoiOKYIgXKe/RfKWQwUmnlkQJ6KuBJtxlmDMw+Q1
         P6AvBsVSiT+gbKpo96lN5+FzODWDUG/4KuFpK71fxTkIic0C8h1Eoq5MJA+0MsPRp/Z6
         z5RoNcC5JB+QP2WrSywkySzhTUlyb3SDDbrYmgP9x7T2qHBc7o8jd1ho40y+KWXQiXF2
         X9Ug==
X-Gm-Message-State: AA6/9RnKRq7rsjQx+cY0hCGY40e7uo1Rbi1yXODzvdqj4KoqaIXwOA2+ZxoNsQNVykD78Q==
X-Received: by 10.194.64.36 with SMTP id l4mr24564665wjs.163.1475951927766;
        Sat, 08 Oct 2016 11:38:47 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([95.15.158.39])
        by smtp.gmail.com with ESMTPSA id p3sm26080277wjr.31.2016.10.08.11.38.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 11:38:46 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: wlan-ng: Use ether_addr_copy function
Date: Sat,  8 Oct 2016 21:38:39 +0300
Message-Id: <1475951919-2908-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following checkpatch.pl warnings:
WARNING: "Prefer ether_addr_copy() over memcpy() if the Ethernet
addresses are __aligned(2)" in file p80211conv.c
Pahole shows that the addresses are aligned

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/wlan-ng/p80211conv.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 0247cbc..513aebb 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -178,21 +178,21 @@ int skb_ether_to_p80211(struct wlandevice *wlandev, u32 ethconv,
 
 	switch (wlandev->macmode) {
 	case WLAN_MACMODE_IBSS_STA:
-		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr);
+		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr);
+		ether_addr_copy(p80211_hdr->a3.a3, wlandev->bssid);
 		break;
 	case WLAN_MACMODE_ESS_STA:
 		fc |= cpu_to_le16(WLAN_SET_FC_TODS(1));
-		memcpy(p80211_hdr->a3.a1, wlandev->bssid, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, &e_hdr.daddr, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, wlandev->bssid);
+		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr);
+		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.daddr);
 		break;
 	case WLAN_MACMODE_ESS_AP:
 		fc |= cpu_to_le16(WLAN_SET_FC_FROMDS(1));
-		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr);
+		ether_addr_copy(p80211_hdr->a3.a2, wlandev->bssid);
+		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.saddr);
 		break;
 	default:
 		netdev_err(wlandev->netdev,
-- 
1.9.1


