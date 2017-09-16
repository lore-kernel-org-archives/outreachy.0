X-GM-THRID: 6466263123755008000
X-Received: by 10.202.71.136 with SMTP id u130mr15530472oia.89.1505544205932;
        Fri, 15 Sep 2017 23:43:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.82.21 with SMTP id g21ls3749503iob.39.gmail; Fri, 15 Sep
 2017 23:43:25 -0700 (PDT)
X-Received: by 10.107.164.86 with SMTP id n83mr4445135ioe.108.1505544205252;
        Fri, 15 Sep 2017 23:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505544205; cv=none;
        d=google.com; s=arc-20160816;
        b=IZfs8eyjaEUdGyTi4kkNn2R1miSI4GaTOuq5mjYBrfQFRfVTKGpAaSragJDG6Oob5j
         Wnks6a+vuuTkx2xNDgUCu+cAV2jDd97sVIzOXPNyjfLL07Icb6mpcWU7dM5eGKMrbXGC
         uY9fut3elQZABhx0oC7WmD2RUN572qbqaPhPJqAUVPuO2MHncdkcVSJU/7CwvVHfs167
         9Z/Fq3xaydK+gYz8ZleaVmwc0y2t+CamJ16EbGr7mWwkBKWI9+Y+iZzqNSNU9bKbCaq3
         ZvqMjuAM4kpCFhsmB5uNv03+eX1NO7xMdCTsyuRjtq9vPQSE1It0wd39PAyXTyTUgxh8
         qprQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=nAzdfDX/fKBejTz55eEUbj9nB0oe6FVKgJsoN9bx3SY=;
        b=N095eYM3ikhE+DUYs70RIn28RUjOjoYXEH5ch9sMF2qACw8qAfLQ3ZhyA8oTfw8rro
         5nX3EH93WsWxPCI9ne+Bb4bkZhHLDlNJ1yeOHjbuWpi1O4xgoO/3GZ28/Uy2NCMvm+Zb
         +6i99UH8xJYrvSQgg8ie3kPakuODvb950QG2nKjQWM7i/g0e8TPBtAMYLEqa/5Y5QmiQ
         U63BG4gDghOQaI88hVWBGOiZ5wKhyOWtJNhFdU81h0T3pS90zU/hCTBKFUMZpTurIBs7
         koxMy7Py5aPpY9nLDIt2st66EB8hRxfsGzycXS7MNNptUTvZ6VTceFdRDvg35FyWEkmh
         d2rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DTqSloGK;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s81si272248pfg.19.2017.09.15.23.43.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 23:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DTqSloGK;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id j16so2399163pga.2
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 23:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nAzdfDX/fKBejTz55eEUbj9nB0oe6FVKgJsoN9bx3SY=;
        b=DTqSloGK5iYr6kznJ4TVfuOkIehU4tXZR4nCqxMg6Jot8ykMySxqlk0HGffSCM7f1T
         GqoT5uZ35d1i6lxKXg6WK3v3IADJzFQAStGW5ZeAiHw0xBDkjnHMvzaC+cTmrt6IqKZJ
         IF2Ps9uWrKBxew4tvdrfEtxqNziyV6RkZwFC7XiyfyLQMqtnA1L/ErISzSdTbjYBSACl
         wXyKZSCpq1qKUh4Ld0CnyGPN2YaEr6G2z+vJaTtuoOz0w5NygIkhtKfjRg2Ya516oUs4
         SLn99WzhEzDL9Ni9L0MkojaEICrGuI7Z6Vfw9B6+9vS/4BkIOHlh5lBHss5FBXo11fmD
         1V8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nAzdfDX/fKBejTz55eEUbj9nB0oe6FVKgJsoN9bx3SY=;
        b=NNwiSNkKFu+PM1nDN6HegiMg07jBcgk+AhyFUn71mx5vbWk59Kpr1V6fQCWeobj7MS
         pH7hOvEL+D0QJTRrhAzq1VeYsTq1WhGCmhV9qGymVjIAL0obpHtjdjQyncN1rh4VqAZl
         7QMTAamPbVzZN8TJQ7OoUpv03go9lnXk+8WhCHIqMeCPFtpbFebtG9h/QGbJsNB8YWRn
         zpc5CIdFWE1hBDlb0DOpMG+kKDZUmCQ/eTs5km138FksVC7aJSdp1UOWoT1E2Ddr8YiO
         VGl4D0KxfOsZvnJb9k+d0PO4AsnN/9gZ28u7reIrt9tEc7XUSKHmJhLCpSpY9d9TqXf4
         oDAQ==
X-Gm-Message-State: AHPjjUge4ptXNM8kI2ZArjeudV7iO2z8T52hyJNrD6Rfbf28/iQWA0sw
	Ae0MAZQfUzrp4J8kc/A=
X-Google-Smtp-Source: ADKCNb73ksWbq1tc9SeLfQN2R8FMg5VA7pDwNOlMsTH2qy3wn9JSPh0VgI+zv0yAVl7/oe6FTeaJjA==
X-Received: by 10.84.133.2 with SMTP id 2mr22938826plf.427.1505544205019;
        Fri, 15 Sep 2017 23:43:25 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id q23sm5348320pfk.182.2017.09.15.23.43.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 23:43:24 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: most: hdm-usb: add comment for struct mutex definition
Date: Sat, 16 Sep 2017 12:13:19 +0530
Message-Id: <1505544199-13800-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes following checkpatch.pl checks:
CHECK: struct mutex definition without comment

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/most/hdm-usb/hdm_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
index 85775da..9c58598 100644
--- a/drivers/staging/most/hdm-usb/hdm_usb.c
+++ b/drivers/staging/most/hdm-usb/hdm_usb.c
@@ -122,7 +122,7 @@ struct most_dev {
 	bool is_channel_healthy[MAX_NUM_ENDPOINTS];
 	struct clear_hold_work clear_work[MAX_NUM_ENDPOINTS];
 	struct usb_anchor *busy_urbs;
-	struct mutex io_mutex;
+	struct mutex io_mutex; /* synchronize I/O with disconnect */
 	struct timer_list link_stat_timer;
 	struct work_struct poll_work_obj;
 	void (*on_netinfo)(struct most_interface *, unsigned char,
-- 
2.7.4


