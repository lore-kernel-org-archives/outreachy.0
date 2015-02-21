X-GM-THRID: 1712630792192
X-Received: by 10.112.35.135 with SMTP id h7mr247280lbj.23.1424517645500;
        Sat, 21 Feb 2015 03:20:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.207 with SMTP id jq15ls380286lab.107.gmail; Sat, 21
 Feb 2015 03:20:44 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr247277lbj.23.1424517644984;
        Sat, 21 Feb 2015 03:20:44 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id by11si503047wib.1.2015.02.21.03.20.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 03:20:44 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f169.google.com with SMTP id em10so10948563wid.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 03:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=I0mDVqNZn9VrlRY/PjedrLWCMBfkGfTN0jKBX2MtKrY=;
        b=Bz362mZN8/YJlil9gJV2nBFgCvPS2/dHp0RmO8WkZq1P76xrMS7f1vt4iihbLvLUJx
         5Gbo5Q2kxbAIbz6z2W0QCt3tdh/0tvD2QZnvwhkd7y1EeeknYYPQYHWOVeg+aaXXGTxx
         0rC4P03xAA6uH84ux0QhinjViQBTLbaKjG3JEAL3Vn7XfAlbqVFNtL9buW8Jo/vS4DXe
         ndGhNp5eUEHHMgXbC0evmiCM0s5YO/8S64lU5QYcOxiqW1qUm7p3EKBXK0b0lNe69vt8
         8YbKV3gpl03TPzs9An6CdpJCxXnAbUAhiseztdlUDPQrNfK+jN9zLIl/3M4CniKBT0H6
         4MhA==
X-Received: by 10.180.90.197 with SMTP id by5mr3273917wib.70.1424517644882;
        Sat, 21 Feb 2015 03:20:44 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([85.107.58.248])
        by mx.google.com with ESMTPSA id v7sm46225791wju.22.2015.02.21.03.20.44
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 03:20:44 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: wlan-ng: Remove space before function pointer arguments
Date: Sat, 21 Feb 2015 13:20:47 +0200
Message-Id: <1424517647-5328-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This fixes the following checkpatch.pl warning:
WARNING: Unnecessary space before function pointer arguments

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/wlan-ng/p80211netdev.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211netdev.h b/drivers/staging/wlan-ng/p80211netdev.h
index 69a4f59..c547e1c 100644
--- a/drivers/staging/wlan-ng/p80211netdev.h
+++ b/drivers/staging/wlan-ng/p80211netdev.h
@@ -180,16 +180,16 @@ typedef struct wlandevice {
 	unsigned int ethconv;
 
 	/* device methods (init by MSD, used by p80211 */
-	int (*open) (struct wlandevice *wlandev);
-	int (*close) (struct wlandevice *wlandev);
-	void (*reset) (struct wlandevice *wlandev);
-	int (*txframe) (struct wlandevice *wlandev, struct sk_buff *skb,
+	int (*open)(struct wlandevice *wlandev);
+	int (*close)(struct wlandevice *wlandev);
+	void (*reset)(struct wlandevice *wlandev);
+	int (*txframe)(struct wlandevice *wlandev, struct sk_buff *skb,
 			union p80211_hdr *p80211_hdr,
 			struct p80211_metawep *p80211_wep);
-	int (*mlmerequest) (struct wlandevice *wlandev, struct p80211msg *msg);
-	int (*set_multicast_list) (struct wlandevice *wlandev,
+	int (*mlmerequest)(struct wlandevice *wlandev, struct p80211msg *msg);
+	int (*set_multicast_list)(struct wlandevice *wlandev,
 				   netdevice_t *dev);
-	void (*tx_timeout) (struct wlandevice *wlandev);
+	void (*tx_timeout)(struct wlandevice *wlandev);
 
 	/* 802.11 State */
 	u8 bssid[WLAN_BSSID_LEN];
-- 
1.8.3.2


