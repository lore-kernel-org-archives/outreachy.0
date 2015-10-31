X-GM-THRID: 6211753081535725568
X-Received: by 10.182.27.101 with SMTP id s5mr9841380obg.35.1446286869120;
        Sat, 31 Oct 2015 03:21:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.227 with SMTP id z90ls1431000qgz.37.gmail; Sat, 31 Oct
 2015 03:21:08 -0700 (PDT)
X-Received: by 10.129.156.198 with SMTP id t189mr10004678ywg.26.1446286868748;
        Sat, 31 Oct 2015 03:21:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id pe1si1126841pac.2.2015.10.31.03.21.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so98032882pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ia5Hkd3zx4/MABiUffOCm07ZmLDCjEJQ8GSZt3WkuFE=;
        b=FEqvUa1V5FC4ZF57wk1WkiNoxKwPVsC5zjukKItvOb9hz6xfnpQSnMa0dHShX/Rh6U
         TsEnTL3PMdrSiaioEvw8tlj3a1QQUrBoBZESNWGHhh3uyIKTVRpxE9schqjqoSeOw+V3
         xxrBlUu9zA8pYFVtMho1EsjpicmVmFCxt5k1nDqyhkaTnc2YZVWke+5m+tBaur56sz0G
         uoCkvA6anWyCtPEPLvucNDS3REaxl1p30FZ3fwbo5iIgoa70aRpZ00XqmpOX2gKtwl87
         kr/b1P3JCyS1xXldyFoFTZUOodW5gUczrGqb361cSqITluI9ujn7I+0cLTAVnUxQsVDy
         pxXA==
X-Received: by 10.66.193.134 with SMTP id ho6mr14323120pac.52.1446286868564;
        Sat, 31 Oct 2015 03:21:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.170.60])
        by smtp.gmail.com with ESMTPSA id yp9sm13116816pab.1.2015.10.31.03.21.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:21:08 -0700 (PDT)
Date: Sat, 31 Oct 2015 15:51:04 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: wlan-ng: Remove wrapper function
Message-ID: <e8a3a711bc6154adbbd62903368bd19fa3a6c487.1446286290.git.amitoj1606@gmail.com>
References: <cover.1446286289.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446286289.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove wrapper function that can be replaced by a single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c |  4 ++--
 drivers/staging/wlan-ng/prism2mgmt.h  |  1 -
 drivers/staging/wlan-ng/prism2sta.c   | 21 ---------------------
 3 files changed, 2 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 444ebed..e3c9860 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3504,7 +3504,7 @@ static void hfa384x_usbin_rx(wlandevice_t *wlandev, struct sk_buff *skb)
 		rxmeta->signal = usbin->rxfrm.desc.signal - hw->dbmadjust;
 		rxmeta->noise = usbin->rxfrm.desc.silence - hw->dbmadjust;
 
-		prism2sta_ev_rx(wlandev, skb);
+		p80211netdev_rx(wlandev, skb);
 
 		break;
 
@@ -3628,7 +3628,7 @@ static void hfa384x_int_rxmonitor(wlandevice_t *wlandev,
 	}
 
 	/* pass it back up */
-	prism2sta_ev_rx(wlandev, skb);
+	p80211netdev_rx(wlandev, skb);
 }
 
 /*----------------------------------------------------------------
diff --git a/drivers/staging/wlan-ng/prism2mgmt.h b/drivers/staging/wlan-ng/prism2mgmt.h
index 16f1239..7a9f424 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.h
+++ b/drivers/staging/wlan-ng/prism2mgmt.h
@@ -68,7 +68,6 @@ u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate);
 void prism2sta_ev_info(wlandevice_t *wlandev, hfa384x_InfFrame_t *inf);
 void prism2sta_ev_txexc(wlandevice_t *wlandev, u16 status);
 void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status);
-void prism2sta_ev_rx(wlandevice_t *wlandev, struct sk_buff *skb);
 void prism2sta_ev_alloc(wlandevice_t *wlandev);
 
 int prism2mgmt_mibset_mibget(wlandevice_t *wlandev, void *msgp);
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index c57f48a..131223a 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1837,27 +1837,6 @@ void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status)
 }
 
 /*
- * prism2sta_ev_rx
- *
- * Handles the Rx event.
- *
- * Arguments:
- *	wlandev		wlan device structure
- *
- * Returns:
- *	nothing
- *
- * Side effects:
- *
- * Call context:
- *	interrupt
- */
-void prism2sta_ev_rx(wlandevice_t *wlandev, struct sk_buff *skb)
-{
-	p80211netdev_rx(wlandev, skb);
-}
-
-/*
  * prism2sta_ev_alloc
  *
  * Handles the Alloc event.
-- 
1.9.1


