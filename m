X-GM-THRID: 6339007630454816768
X-Received: by 10.36.76.212 with SMTP id a203mr701563itb.18.1475915226685;
        Sat, 08 Oct 2016 01:27:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.34.81 with SMTP id o78ls2047189ito.6.gmail; Sat, 08 Oct
 2016 01:27:05 -0700 (PDT)
X-Received: by 10.36.46.134 with SMTP id i128mr725541ita.16.1475915225329;
        Sat, 08 Oct 2016 01:27:05 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si6408622pab.2.2016.10.08.01.27.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:27:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t25so4092500pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7s4Cijfjs7SIMKpHjfeKwuRLcMRDPoecHNjFcYVa9OU=;
        b=Zk+svdTdwGPW079/A8FneDSD+AScsCaGHiFXgpec50b8Wu3iLBoGRaqVIPo6k3Ma+Q
         w2Qut0lSFdhFxue2mkuNDcp5UCzhSwZQn4XYApHVROplwnMeu2gmhItxKM9natCnxZUv
         +8+z4oBiTGSTS9IDVNRvg4RqMt+JMXTSCarcU5qa5X7oTdI5b8QXkUSFfYDGoIP087Hd
         X8s7kbK46KPDuptW1oBnoYoL93bbci/JA0W7g7ex2YphwvLIeEZFod2fNrkzbRvR5z5P
         E92IwBlDjG+zxAE3cz95cf7uiJ7uYQWzFuFKq/YdV4Tm3l3Emykbb6O0t0MVJwoARvI2
         61OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7s4Cijfjs7SIMKpHjfeKwuRLcMRDPoecHNjFcYVa9OU=;
        b=Nc9RjqsZ/eF1UZszgnJaeA5Nv3DBOBs5h7x+t05xjxoMdB1F+LSOudL3h2kkU6/TZ5
         5Os1ecYrWSEg/hCHOrbklv5g+WLePE6tVCEH9ub15YVjq9xWjX4vVTRpc3KvBmN2jFvi
         hqPmoYZdXjD5f8DLmUFT/9fREYkIYsVO1hwC9wLPjo52DokhoJRmI5ur07hV1pOFCDV8
         xw67a7DpytTIHa0XKohUVw5Icht/JCZ4KUnhQ4lX0Gpf9O/z/4oN6NtmhLh/BuKgaJWI
         /3EC+pC4KbuVyXrQz/uMNsX491zhLZtahAit/yEDyrjgP1KqsfqcKarog74LNEdOiYzv
         Xr5w==
X-Gm-Message-State: AA6/9RnaGTMQhohSKmzv/tTKsRMC+XE4pm/8jP4xGq5CZWVPXsTA2RjAL5Bj+NBbPc++oA==
X-Received: by 10.99.237.69 with SMTP id m5mr744465pgk.113.1475915225128;
        Sat, 08 Oct 2016 01:27:05 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id xo5sm29230711pab.13.2016.10.08.01.27.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:27:04 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:27:02 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 09/13] staging: wlan-ng: renames hfa384x_AssocStatus to avoid
 camelcase
Message-ID: <20161008082702.GA9162@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
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
index 900ae8c..b6aeb60 100644
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


