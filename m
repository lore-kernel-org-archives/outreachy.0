X-GM-THRID: 6339007282393645056
X-Received: by 10.129.122.65 with SMTP id v62mr5272543ywc.98.1475915145661;
        Sat, 08 Oct 2016 01:25:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.202 with SMTP id z68ls4133075ota.47.gmail; Sat, 08 Oct
 2016 01:25:45 -0700 (PDT)
X-Received: by 10.176.7.5 with SMTP id h5mr5046713uah.6.1475915145280;
        Sat, 08 Oct 2016 01:25:45 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 80si2822121pfw.0.2016.10.08.01.25.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:25:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id qn10so3844833pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DlXgs7nCfmZhBSfTB/eI1i3YVxpMT7J+9cR9KFLMNG8=;
        b=IPSRRHbl07d+EuwiemSE1OGPzfyEq5V8WUTH9lvH1X0a3BcYWiLpinfttxZxLh0NDg
         rxmArXdz11u/NUOnp4va+wZsol3YI3Q9Fudmu9SG+XWlLDeRUWQU/YX0RLuQ55ByfADR
         /R9m8ZVl+nDiFk47uz5dd1UWaJa+1ZguusGsxBRsZLaaYFdQD4xgBV70qdnzOmL3V9/j
         Z59Wdwn5EPZsqHvxBeFia0tWolwIHR6X98cPt1nANxG6rY+W1ex4uPmd2CgVW4BquQjC
         tKyRV7qjqwFcDeZX50YfXHV65Bkbg5Ul6Yg5qaCmeKZJZnXH1cfc36g+rAHAkCwwLI2f
         aaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DlXgs7nCfmZhBSfTB/eI1i3YVxpMT7J+9cR9KFLMNG8=;
        b=U/uzRMlBc90i0c0CNYRnBveLzM0npYR6iN+/nFnh/UxL8G3R5Qi2Yh/b+zZYjz6Oms
         AXnqcUuTwmunZtq83V7oHfRTQ4MlWegoR0c+4oZlsLZ96TGq0Y0Iizt5Qfa+UwhRhhtW
         M/zEJOyenHOc8JJ2aNzZSkcO80NmpFgMPIs0rpU/n7b3hkCBklm5oknK7n+msyCsWmoq
         rJ8HsrOScbGQ9bhX1IwGTrRIcbR6TGDScWhVe2IcUE4ngp8ktxmdPS3DEfYA1YWyzs9C
         msbUHRrNRcHHoev2q2hkK+R28CjOjpLsD5hed5tduzepOdn2Md3BEgofC5fvrAbCDVos
         fgbg==
X-Gm-Message-State: AA6/9RnYzaHWuKrRjWSPyo0HbZg4o2lKbjFWiSKKy2ullQgSfoQHBE14M9LbHKfa0WnRMA==
X-Received: by 10.66.221.97 with SMTP id qd1mr27404450pac.120.1475915145075;
        Sat, 08 Oct 2016 01:25:45 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id t79sm5235097pfg.73.2016.10.08.01.25.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:25:44 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:25:42 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 05/13] staging: wlan-ng: renames hfa384x_ScanResult to avoid
 camelcase
Message-ID: <20161008082542.GA8453@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased struct hfa384x_ScanResult to hfa384x_scan_result
in order to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 4 ++--
 drivers/staging/wlan-ng/prism2sta.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index e4105e1..6268703 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -671,7 +671,7 @@ struct hfa384x_ScanResultSub {
 	u16 proberesp_rate;
 } __packed;
 
-struct hfa384x_ScanResult {
+struct hfa384x_scan_result {
 	u16 rsvd;
 	u16 scanreason;
 	struct hfa384x_ScanResultSub result[HFA384x_SCANRESULT_MAX];
@@ -764,7 +764,7 @@ struct hfa384x_KeyIDChanged {
 union hfa384x_infodata {
 	struct hfa384x_CommTallies16 commtallies16;
 	struct hfa384x_comm_tallies_32 commtallies32;
-	struct hfa384x_ScanResult scanresult;
+	struct hfa384x_scan_result scanresult;
 	struct hfa384x_ChInfoResult chinforesult;
 	struct hfa384x_HScanResult hscanresult;
 	struct hfa384x_LinkStatus linkstatus;
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index c656ee6..7a487cf 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1037,7 +1037,7 @@ static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
 {
 	struct hfa384x *hw = wlandev->priv;
 	int nbss;
-	struct hfa384x_ScanResult *sr = &(inf->info.scanresult);
+	struct hfa384x_scan_result *sr = &inf->info.scanresult;
 	int i;
 	struct hfa384x_JoinRequest_data joinreq;
 	int result;
-- 
2.10.0


