X-GM-THRID: 6343298226858229760
X-Received: by 10.237.59.166 with SMTP id r35mr2675891qte.5.1476914209167;
        Wed, 19 Oct 2016 14:56:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.212 with SMTP id f78ls3035718otf.43.gmail; Wed, 19 Oct
 2016 14:56:48 -0700 (PDT)
X-Received: by 10.13.197.66 with SMTP id h63mr2647558ywd.125.1476914208785;
        Wed, 19 Oct 2016 14:56:48 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id r142si2902262vkf.2.2016.10.19.14.56.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Oct 2016 14:56:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 2so1852698vkb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 19 Oct 2016 14:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VY2bS4jNfcFfmivBYgYJBLup+2BpByY3TzyKVw1MFj8=;
        b=UE0NYrj9tdHHIpnkH69/h72Rd6U6qhipVpN51+K14UUfc+AoqT1KpTLr2Op6dGMYZh
         023L00B02U4KuIze2c9NOEUV5lpQEA/kcQphsFfLaTZlhz7p9G7P13aS+mPBhmUMBaw9
         0kEDarYNV6RtcbJ5Jf+6RZoSRs/BsEMSrRq6aMu33kZhX92tv965vYvkBy8pzOQMhJPd
         2d4Bhb5pak0XjVEV3sBR1qiyQriQ6rqfEWMtJQtoNKpJnnPuJGkfRO4sx/xeOeV2gT2m
         yFX/cTVjRSOtF+UMrNKg+TIKPaF/QuaH44vRyOCVcAzNk8yhkQCa5PWkJNmOJ2pTN0HK
         5U2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VY2bS4jNfcFfmivBYgYJBLup+2BpByY3TzyKVw1MFj8=;
        b=SbLJ1I46jaundMYLrs0kM0rOd5P1JfF05a397OrjoQ3IGLnVe7+eGjViHThNubUyWu
         snl6bCT5Bo2dsA9JUNqsSMpwMqCEYJwiqhRC8m4WVdE9bMuXXoQfF7EJhAZgc8wP7yHR
         szsFaSvps8Uyxc0lCo6+G+G80YMmQvF52UfMbWwXzToe6rw0UMuch3YvSz9e3C+DLzOU
         9MfnMg1rW2dLPxCYhNt+MBZxUsOAYIzaXC7yCkk7+Cv0kyRJWGI3fotCCvdLP541SA36
         eNigT1Tf1FmNdml3SFLwaaoF7ZqfAcxHGr4XAUmV/99qQzxZRibkOrhzO6kVkmCFEraH
         xpHQ==
X-Gm-Message-State: AA6/9RncpyK5QNWWJYGkuzUoTAcEtF/ma9IlUkUYCzye2f8fBpcCS9k4+aI5hcH9b7ATwQ==
X-Received: by 10.31.185.133 with SMTP id j127mr7663433vkf.62.1476914208582;
        Wed, 19 Oct 2016 14:56:48 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id p30sm128160uaa.22.2016.10.19.14.56.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Oct 2016 14:56:48 -0700 (PDT)
Date: Wed, 19 Oct 2016 19:56:41 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211: Move assignment out of the if.
Message-ID: <20161019215641.GA309@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Assignments inside of if statements confuse the reader and should be
avoided, so it was moved out before the if.

Found with Coccinelle, semantic patch:
@@
expression e1, e2;
statement S;
position p;
@@

+ e1 = e2;
if (<+...
- (e1 = e2)
 @p
+ e1
 ...+>)
S

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 89cbc07..0d81b3a 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -1145,8 +1145,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	/* skb: hdr + (possibly fragmented, possibly encrypted) payload */
 
-	if (ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) &&
-	    (keyidx = ieee80211_rx_frame_decrypt(ieee, skb, crypt)) < 0)
+	keyidx = ieee80211_rx_frame_decrypt(ieee, skb, crypt);
+	if (ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) && keyidx < 0)
 	{
 		printk("decrypt frame error\n");
 		goto rx_dropped;
-- 
2.7.4


