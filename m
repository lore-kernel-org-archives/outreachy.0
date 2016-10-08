X-GM-THRID: 6339007630454816768
X-Received: by 10.66.232.138 with SMTP id to10mr1542629pac.15.1475920130935;
        Sat, 08 Oct 2016 02:48:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.30 with SMTP id n30ls2442457ioe.35.gmail; Sat, 08 Oct
 2016 02:48:49 -0700 (PDT)
X-Received: by 10.66.82.33 with SMTP id f1mr4415642pay.98.1475920129532;
        Sat, 08 Oct 2016 02:48:49 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si6454372pab.2.2016.10.08.02.48.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:48:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id i85so4190551pfa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aGCuDYjrUjk8uzLNj+fACUVKHsO7HDLv6QH62jAV5ZU=;
        b=XgPb+ThVPYbnzgeE1dFkY3JYzblxHFHkRdDk67iE+gEVtSwsJkW69pBT56COl9ONDV
         flkuJNlTQGoGSzhstJI3uVb3IEqxl9slr1S58C+Vayj2Ps+RdU5eH7XL3/XSKKxgaplW
         OyjYzfqIUBVY5apGf3StpvrOKOFo3gKt3x3Fn36tXktBx0DDQTXbvWgXcRej5a2hfRVR
         BIGHz7ST1ew+/V31UwDjAKmYSmDwvhUFM2ttLpro6mNxkFNBYitoXf++Vw0QnvD+0NVI
         M+gX2gunNx3iSANF/8/IKD5jWnhpK9J8OrJVzKyswGq8hbJl8RMV1dU86QaNjqejdN4e
         4JhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aGCuDYjrUjk8uzLNj+fACUVKHsO7HDLv6QH62jAV5ZU=;
        b=h1fCe2lDUj6UIsnsK9kN9bobqZEFA0vcc/D4OKb/5d4qVPlQgm4WUHFIqUIP7xswHk
         I4u+JVqfxOUFEDjKDjdR3rJx11QP24RjCtr/VZGQwPo4Fx1VIugcT/IP2qM5/spoR4GO
         mHdPvkfkR7sKY8YdkMrJaZOqCiR9p/SIDqIeFNCDDpNX8UGY2tHv5zzkOLwkszOpqIRz
         /k3Zqe2hAU+24kC4kbMz6DY3afv5FeYCZ+Szk01uhT1rEyPPILbSU1DWwxe80C8vZ29f
         q1HKp8AuSVlkPAPoz2mtaXvCVP4cRNkPegZdcb6MdC2bCoAdaXfsWdIzW3tT0R1uR7Um
         AFIA==
X-Gm-Message-State: AA6/9RnO4p4FjSK/Ye74qFDJcq0HOss4f8eDkN03neUM3+y6xSiKEpJ0n7tkcmdGrAGkFQ==
X-Received: by 10.98.20.67 with SMTP id 64mr36645163pfu.56.1475920129371;
        Sat, 08 Oct 2016 02:48:49 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id h65sm20017940pfg.15.2016.10.08.02.48.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:48:48 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:48:46 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 09/13] staging: wlan-ng: renames hfa384x_AssocStatus to
 avoid camelcase
Message-ID: <20161008094846.GA13717@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased struct hfa384x_AssocStatus to hfa384x_assoc_status
in order to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 4 ++--
 drivers/staging/wlan-ng/prism2sta.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 7b6b373..adbac69b 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -733,7 +733,7 @@ struct hfa384x_LinkStatus {
 #define HFA384x_ASSOCSTATUS_REASSOC	((u16)2)
 #define HFA384x_ASSOCSTATUS_AUTHFAIL	((u16)5)
 
-struct hfa384x_AssocStatus {
+struct hfa384x_assoc_status {
 	u16 assocstatus;
 	u8 sta_addr[ETH_ALEN];
 	/* old_ap_addr is only valid if assocstatus == 2 */
@@ -768,7 +768,7 @@ union hfa384x_infodata {
 	struct hfa384x_ChInfoResult chinforesult;
 	struct hfa384x_HScanResult hscanresult;
 	struct hfa384x_LinkStatus linkstatus;
-	struct hfa384x_AssocStatus assocstatus;
+	struct hfa384x_assoc_status assocstatus;
 	struct hfa384x_AuthRequest authreq;
 	struct hfa384x_PSUserCount psusercnt;
 	struct hfa384x_KeyIDChanged keyidchanged;
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 0d2bc69..b39ef74 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1474,7 +1474,7 @@ static void prism2sta_inf_assocstatus(struct wlandevice *wlandev,
 				      struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
-	struct hfa384x_AssocStatus rec;
+	struct hfa384x_assoc_status rec;
 	int i;
 
 	memcpy(&rec, &inf->info.assocstatus, sizeof(rec));
-- 
2.10.0


