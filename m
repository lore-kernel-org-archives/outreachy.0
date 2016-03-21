X-GM-THRID: 6264632904116076544
X-Received: by 10.107.136.210 with SMTP id s79mr9151424ioi.25.1458598511322;
        Mon, 21 Mar 2016 15:15:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.34 with SMTP id t31ls4533128qge.98.gmail; Mon, 21 Mar
 2016 15:15:10 -0700 (PDT)
X-Received: by 10.140.221.134 with SMTP id r128mr11024485qhb.0.1458598510818;
        Mon, 21 Mar 2016 15:15:10 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id tu5si3372641pab.2.2016.03.21.15.15.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 15:15:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x3so32330207pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 15:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kBMrmSPAaBLXP6+iCqv+XXjf5jgM93tc7P7+oPk0WK0=;
        b=oEvUNb6EjVt1Tb1KcfeKIrQOj6erjZmzbEyXqBu8pQ/m/OgLhJ+1PYxOW8It0cqR87
         g4xDNRyHd4BW6+V/4HnXDy0v6w2qPPou6p/yfx7ThZh/35S29JwRSB37beEYHs+Pd0Vh
         7+GwjEYzofqtWwyOnvPBZTaqYOmBHGS+pQV3DAyN/SdRDZN4KcXNbfMTQewbOiWB8btn
         N/Xfrti80RvKYzypwii82vmc9aK6HkpZz/xTooQwc3dh0WtgVlNtAx/hECAMZ2jf89Z7
         6ztBaorngSfukK7KuYV542GcHORYkRohGptjg5l0Xzbdh+U1a8DkYL5jBU0XhXq0vATv
         Qxfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kBMrmSPAaBLXP6+iCqv+XXjf5jgM93tc7P7+oPk0WK0=;
        b=OMbY1r2djShuyDqQ4pb6aJAt0RBPy+ctpEsARdL4tpIu7hkJgkSU83GVeuuvJHj5lx
         SOPVEPIbBwDxfRfoNm8ETa+X4bMa1X3ZoFbhhtmIS0+wFxoQCoqiXHvBmYaO+TnRS2hR
         mAO7osdMp2GYS7YXXz93w8M+b4XKyxk6CFt5ccVyo69F5jYKY15d5CwR2LoUINPqJz7B
         bV06nwdS6+hcZNB3/Ql+BjYtEXk84Ioj7QdS1CHcWyH/4ADfDN4/VivQULvErn9dOksN
         7mTXPcRkNPtG/KUMM72oIyKfMaq99fUve9SVIZGLT5hLRTdKa/bUEvyvxAicswlEpP/e
         HzjA==
X-Gm-Message-State: AD7BkJI8ip7zZpze39nDd27uggLNeq0rG2HYOaBaLvat5bod4tzGNpwHf8c1Q73yD3bQwA==
X-Received: by 10.98.73.88 with SMTP id w85mr49586117pfa.82.1458598510625;
        Mon, 21 Mar 2016 15:15:10 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.53])
        by smtp.gmail.com with ESMTPSA id g74sm43032307pfj.1.2016.03.21.15.15.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 15:15:10 -0700 (PDT)
Date: Mon, 21 Mar 2016 20:46:15 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wlan-ng: Use x instead of x != NULL.
Message-ID: <20160321151615.GA4551@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use x instead of x != NULL.This issue is detected by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/wlan-ng/p80211netdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
index 88255ce..fdfc821 100644
--- a/drivers/staging/wlan-ng/p80211netdev.c
+++ b/drivers/staging/wlan-ng/p80211netdev.c
@@ -156,7 +156,7 @@ static int p80211knetdev_open(netdevice_t *netdev)
 		return -ENODEV;
 
 	/* Tell the MSD to open */
-	if (wlandev->open != NULL) {
+	if (wlandev->open) {
 		result = wlandev->open(wlandev);
 		if (result == 0) {
 			netif_start_queue(wlandev->netdev);
@@ -186,7 +186,7 @@ static int p80211knetdev_stop(netdevice_t *netdev)
 	int result = 0;
 	wlandevice_t *wlandev = netdev->ml_priv;
 
-	if (wlandev->close != NULL)
+	if (wlandev->close)
 		result = wlandev->close(wlandev);
 
 	netif_stop_queue(wlandev->netdev);
-- 
1.8.3.4


