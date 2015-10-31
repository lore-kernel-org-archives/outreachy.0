X-GM-THRID: 6211848110738505728
X-Received: by 10.50.176.129 with SMTP id ci1mr3478741igc.12.1446308593137;
        Sat, 31 Oct 2015 09:23:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.76 with SMTP id qo12ls467730igb.10.canary; Sat, 31 Oct
 2015 09:23:12 -0700 (PDT)
X-Received: by 10.107.136.19 with SMTP id k19mr12301516iod.5.1446308592497;
        Sat, 31 Oct 2015 09:23:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id vy6si1230391pbc.1.2015.10.31.09.23.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 09:23:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so103255835pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 09:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=fWmb2ih5CC5rp4uSTAsYiCM6uUJEek/k/xEqNNd4iBg=;
        b=JOAznwmxK0Izxgvk4/m94qbQr3T5dL9bxbYmkPw4y9rbf4QDoj6sUyx+bYGFPDwKqj
         qUhBl5/N1pO2t7lpk6f/axvRM3OY8pLQj7p0Hp7PF+HY7wX4KFNFqGCq7NWykhUMxkt5
         LBeoLXIvnfX3mkwPO5ZuoEYtcwNEEG3EZJEH+Y58MhKfKcT/jG6IykDnH/wO1H893n/x
         nnMe7krx+EBmv62ynNWIFQkFCI1/1FcRP4MiXvhOjBAhp5BplF6EZGBkTXmb2QBCuKMn
         kiEKWkyOak0diWnbhSllWNTHfr/jA6q2oOoDXDUJr6RxVIDgkqf8vqjihXyj6yAigyKz
         UxBA==
X-Received: by 10.68.179.101 with SMTP id df5mr15738731pbc.73.1446308592364;
        Sat, 31 Oct 2015 09:23:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xs2sm14635714pbb.75.2015.10.31.09.23.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 09:23:11 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: wlan-ng: Remove unused function declaration
Date: Sat, 31 Oct 2015 21:53:03 +0530
Message-Id: <1446308583-3097-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150205.5634EAEF.003C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Function p80211wext_event_associated has been declared but not used.
Thus remove the declaration.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wlan-ng/p80211netdev.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/p80211netdev.h b/drivers/staging/wlan-ng/p80211netdev.h
index c547e1c..810ee68 100644
--- a/drivers/staging/wlan-ng/p80211netdev.h
+++ b/drivers/staging/wlan-ng/p80211netdev.h
@@ -141,7 +141,6 @@ typedef struct p80211_frmrx_t {
 struct iw_statistics *p80211wext_get_wireless_stats(netdevice_t *dev);
 /* wireless extensions' ioctls */
 extern struct iw_handler_def p80211wext_handler_def;
-int p80211wext_event_associated(struct wlandevice *wlandev, int assoc);
 
 /* WEP stuff */
 #define NUM_WEPKEYS 4
-- 
2.1.4


