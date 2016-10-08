X-GM-THRID: 6339007016870084608
X-Received: by 10.13.216.15 with SMTP id a15mr6163953ywe.70.1475915083087;
        Sat, 08 Oct 2016 01:24:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.248 with SMTP id w111ls6170855ota.38.gmail; Sat, 08 Oct
 2016 01:24:42 -0700 (PDT)
X-Received: by 10.200.56.15 with SMTP id q15mr3455740qtb.51.1475915082747;
        Sat, 08 Oct 2016 01:24:42 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id d11si2701680pfl.2.2016.10.08.01.24.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:24:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id cd13so3855619pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=noujwYXNqytsYDKcgAGcNTNyptKUoSNrWppvrDHoStk=;
        b=BpT688d+R7A/xYAq+SpxV+dZRChZ814NISVVOCyWH+PDOv8l7zONLSHST0C0KGrcCu
         53sWMs+rSkMtIrQ+zCeXwl1cx7yPViUopnN+4eTNpJXZfh9TUzat3C2Z7QcKIZOrOtJv
         A/Wwg6u84J/Mk7UGfOG7occrQXzJ3HS/zhZNCFlaLpBQO1IEYL84I5ttIQGvgqJRGpkv
         uj1b5qlMeeCPfcQZc1+RWkn1hj/KrO6mhve3k/vLzceXpdu9SVgyOOKRFOe5UAGFuzMN
         sCySTsCtv4SyD0HOs78xFsaucc0Aj9HwIq3N4mnPmX6k0cpyHYB94sgWUHwFOa66USdC
         kN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=noujwYXNqytsYDKcgAGcNTNyptKUoSNrWppvrDHoStk=;
        b=FvXmbTRirxkzWQ2iFsHaYMKlRBLbxkf2rGH8npVhPXlt9e2tcoNvSulpor5QIcpVYD
         iWrh0bZSqHPZ6MjHmYnkn3GbwYw5vCVduERbchLZXDcrHOmN7Ja/x5JKegZ7jZsknprd
         srRr4/ilKrzszhlh//GAWDknKpglaCvTLjxwlA1VSGskuFsKpJHmOq6qzW5/GgSyrswt
         +Ql48Am9bzvmoi7rXbVvxX5Jd+huyd5I7CsxC9xwtlue/adJGaPD1Y+4WrUvEVnHM1p8
         ceeENFx6bASS1MKfSJum/TY6kLBWw38Rz0Jn6m5erPzjiKU9MSfLBVwcG58GAUFuYTAr
         IrvA==
X-Gm-Message-State: AA6/9RnO0F3JnsdbgwqUgCkErEgqgiRouVArqkkeucW24z7WLZZmAGSkgMXucgVWZDKh2g==
X-Received: by 10.66.168.42 with SMTP id zt10mr5927535pab.63.1475915082545;
        Sat, 08 Oct 2016 01:24:42 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id n8sm36411708pan.17.2016.10.08.01.24.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:24:42 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:24:39 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 02/13] staging: wlan-ng: fixed lines over 80 characters
Message-ID: <20161008082439.GA7940@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Breaks lines over 80 characters that were causing checkpatch issues.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 2b35345..578f059 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -104,7 +104,8 @@ static void prism2sta_reset(struct wlandevice *wlandev);
 static int prism2sta_txframe(struct wlandevice *wlandev, struct sk_buff *skb,
 			     union p80211_hdr *p80211_hdr,
 			     struct p80211_metawep *p80211_wep);
-static int prism2sta_mlmerequest(struct wlandevice *wlandev, struct p80211msg *msg);
+static int prism2sta_mlmerequest(struct wlandevice *wlandev,
+				 struct p80211msg *msg);
 static int prism2sta_getcardinfo(struct wlandevice *wlandev);
 static int prism2sta_globalsetup(struct wlandevice *wlandev);
 static int prism2sta_setmulticast(struct wlandevice *wlandev,
@@ -278,7 +279,8 @@ static int prism2sta_txframe(struct wlandevice *wlandev, struct sk_buff *skb,
  * Call context:
  *	process thread
  */
-static int prism2sta_mlmerequest(struct wlandevice *wlandev, struct p80211msg *msg)
+static int prism2sta_mlmerequest(struct wlandevice *wlandev,
+				 struct p80211msg *msg)
 {
 	struct hfa384x *hw = wlandev->priv;
 
@@ -1099,7 +1101,8 @@ static void prism2sta_inf_hostscanresults(struct wlandevice *wlandev,
 
 	kfree(hw->scanresults);
 
-	hw->scanresults = kmemdup(inf, sizeof(struct hfa384x_InfFrame), GFP_ATOMIC);
+	hw->scanresults = kmemdup(inf, sizeof(struct hfa384x_InfFrame),
+				  GFP_ATOMIC);
 
 	if (nbss == 0)
 		nbss = -1;
-- 
2.10.0


