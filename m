X-GM-THRID: 6339007383550820352
X-Received: by 10.36.14.84 with SMTP id 81mr741440ite.7.1475920075786;
        Sat, 08 Oct 2016 02:47:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls6592770otj.7.gmail; Sat, 08 Oct
 2016 02:47:55 -0700 (PDT)
X-Received: by 10.157.31.12 with SMTP id x12mr5939338otd.31.1475920075491;
        Sat, 08 Oct 2016 02:47:55 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ua1si6562599pac.1.2016.10.08.02.47.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:47:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t25so4188226pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lxE3sZOQGLz/pg4kGOl87c2LN1YYtwgRHCfIznNqwYA=;
        b=bMuoCMiMhbd6f0Odh3YciTWWBUXy3jSQdvJJ4r9GxrsNPyTQIuKmw2RLo7E69Fxf9z
         LrLiXyzvne8D6cwmmQWtHiB6i7NuO4dsCTUo1r22sAj36TgC9irRG/uhmz+lcQnUIBfB
         8Gz9h5LH8mXSuFOZxW4D6LCsxcvsoZdKAndtJH0XdJyfI9Yd6I1p8Bb3Vg7Zu3qwDxbz
         4hMV21E+J9KiR0/QLDzZ3+RhIGIg4B+AuWFvXLJUJLBi8ERbYSK7j1HUlysjQWx24eAr
         S3QQ/EtUm/uXx3UUrGUpyHFCQ1i2DeHW/r6EO/5tWLit3bjuB7lTJRgkULKXZRuR2hoC
         cfAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lxE3sZOQGLz/pg4kGOl87c2LN1YYtwgRHCfIznNqwYA=;
        b=CdgK+dzzDz/zJP7ZYx+wwtXwtl5s0aPdc3eLv9ost6fEoSFlRUA+HNX0Lmo5MeBScF
         3yxN3as95DO4watJgRghbPWuJYb271fRIs/7/YIgsXhjEl3NacsHRBQ4Nf04+WpDrkMr
         ceYQ1nbr8BOIYsvSJBEuod/AwPytA5TF6w4vmiJKCVBV9g0oxpW+fjilXzD5Xzi+Pp9S
         L8JvPXm4sgk6mELsTjaVHSxLCEuHNORDPbHxvNaZdLvLaqXJMvgFsQ4LWModiQV7dkx2
         ajffHT+088lTU6GxbN15OeKVv8B3ijQQEUZuNZk2I1rDHqFQxXjMEYk2Q84StlDx+6fb
         xhiw==
X-Gm-Message-State: AA6/9RnYIn98I5HYaOy4lA9WnqGctHsj71nj6K6os2czXzzplDOMwBfrBgID4yg0sHd1rg==
X-Received: by 10.98.91.197 with SMTP id p188mr26808240pfb.101.1475920075278;
        Sat, 08 Oct 2016 02:47:55 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id h8sm6030805pab.9.2016.10.08.02.47.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:47:54 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:47:52 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 06/13] staging: wlan-ng: renames hfa384x_JoinRequest_data
 to avoid camelcase
Message-ID: <20161008094752.GA13180@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
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
index ec62bb5..c74f486 100644
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


