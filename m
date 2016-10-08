X-GM-THRID: 6339007383550820352
X-Received: by 10.159.33.167 with SMTP id 36mr5956733uac.39.1475915169442;
        Sat, 08 Oct 2016 01:26:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.204 with SMTP id c73ls1992918itd.22.gmail; Sat, 08 Oct
 2016 01:26:08 -0700 (PDT)
X-Received: by 10.107.170.90 with SMTP id t87mr6362125ioe.4.1475915167986;
        Sat, 08 Oct 2016 01:26:07 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si6537431par.0.2016.10.08.01.26.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:26:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t25so4091444pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Zl7AjfrTFAriV9Juu/p6e1S8B4fJSiu7kIcDf7nCORM=;
        b=Wpj1LxADlXBX9RqoSKUah6MWnv7r3oSguurMAoYiUeMOl4aobY1jHIFKau+nuULII5
         +fmbtdjgcLNUsPFyE4ZgN/N0CdxP92FHRbmwgtB53KCXPjdEa2sz7UzyiAxf+srBvfXk
         +4umRwBy2WBB5RMpQlyrA7wMc4CA0aDiMfPSrygPCy8Yf4qJjcjZppEOvewsETIxnYML
         6r1OlMwuWqs9Dvv/cdWFB4xxc0VYWHTf7xjG1X4OfZly16Uupfn0GwtztOrPxXz74LZK
         y3fUQMMRGjvPrnK3wi5WukLSX+X9Kd8i+rdHTVGq37H0Pxczqft0VUsYFChwFYjAMzvP
         57Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Zl7AjfrTFAriV9Juu/p6e1S8B4fJSiu7kIcDf7nCORM=;
        b=I4Kf+xNo6jqJoMKK7QcaZE36PTOcxhe8TXSbWMLysTDo0FAvDHep/sI8LJV+47Iyuy
         9t045v+IU5PnhJbFETQFvJ9rdaQYOHY8yFkVE08zpWdixEWgBTEdHhimqBc1qBffLsNE
         cu1U0FrG0SUDC1b4l9LNgkpdOVWi4yu+Nlj/urPF44w4L1YJ2Mocq7WNLVAw8cCCrmfH
         oyNPCEwNAHDtjoFVLy2PD9wQ4KkFP9NoAo+eVo8DeZzqfdQaHhbtWjY2sRbzxyomwfCA
         9vFh5IgN/OFG84HCupdnskMZfKizWpYYGteoGn41L3hleXZPhNxYvbEli3BpencFxWAg
         iM8w==
X-Gm-Message-State: AA6/9RnyAZCPrF3E6vSi4ErYiXKwE7md/MjV5pn5sil6NOTpRRudLqMsEYy4WfY/SmObTQ==
X-Received: by 10.98.61.198 with SMTP id x67mr35727161pfj.2.1475915167723;
        Sat, 08 Oct 2016 01:26:07 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id j82sm10735940pfj.71.2016.10.08.01.26.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:26:07 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:26:05 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 06/13] staging: wlan-ng: renames hfa384x_JoinRequest_data to
 avoid camelcase
Message-ID: <20161008082605.GA8624@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased struct hfa384x_JoinRequest_data to
hfa384x_join_request_data in order to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 6 +++---
 drivers/staging/wlan-ng/prism2sta.c | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 6268703..7af07cb 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -266,7 +266,7 @@
 #define		HFA384x_RID_DBMCOMMSQUALITY_LEN	 \
 	((u16)sizeof(struct hfa384x_dbmcommsquality))
 #define		HFA384x_RID_JOINREQUEST_LEN \
-	((u16)sizeof(struct hfa384x_JoinRequest_data))
+	((u16)sizeof(struct hfa384x_join_request_data))
 
 /*--------------------------------------------------------------------
  * Information RIDs:  Modem Information
@@ -415,7 +415,7 @@ struct hfa384x_HostScanRequest_data {
 } __packed;
 
 /*-- Configuration Record: JoinRequest (data portion only) --*/
-struct hfa384x_JoinRequest_data {
+struct hfa384x_join_request_data {
 	u8 bssid[WLAN_BSSID_LEN];
 	u16 channel;
 } __packed;
@@ -1294,7 +1294,7 @@ struct hfa384x {
 	int scanflag;		/* to signal scan complete */
 	int join_ap;		/* are we joined to a specific ap */
 	int join_retries;	/* number of join retries till we fail */
-	struct hfa384x_JoinRequest_data joinreq;	/* join request saved data */
+	struct hfa384x_join_request_data joinreq;/* join request saved data */
 
 	struct wlandevice *wlandev;
 	/* Timer to allow for the deferred processing of linkstatus messages */
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 7a487cf..effe46b 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1039,7 +1039,7 @@ static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
 	int nbss;
 	struct hfa384x_scan_result *sr = &inf->info.scanresult;
 	int i;
-	struct hfa384x_JoinRequest_data joinreq;
+	struct hfa384x_join_request_data joinreq;
 	int result;
 
 	/* Get the number of results, first in bytes, then in results */
@@ -1394,7 +1394,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 		 * Disable Transmits, Ignore receives of data frames
 		 */
 		if (hw->join_ap && --hw->join_retries > 0) {
-			struct hfa384x_JoinRequest_data joinreq;
+			struct hfa384x_join_request_data joinreq;
 
 			joinreq = hw->joinreq;
 			/* Send the join request */
-- 
2.10.0


