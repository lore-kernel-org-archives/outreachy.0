X-GM-THRID: 6389312414166286336
X-Received: by 10.99.141.68 with SMTP id z65mr2514184pgd.86.1487627721766;
        Mon, 20 Feb 2017 13:55:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.78 with SMTP id u75ls2989940ioi.50.gmail; Mon, 20 Feb
 2017 13:55:21 -0800 (PST)
X-Received: by 10.36.246.200 with SMTP id u191mr1186346ith.6.1487627721020;
        Mon, 20 Feb 2017 13:55:21 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s64si1915365pfk.0.2017.02.20.13.55.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 13:55:20 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x243.google.com with SMTP id 1so7388739pgz.2
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Feb 2017 13:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=BqKoSYr7O/16jHY7Z8NFKMV1ST+RcJQ+4sCtVemCIFc=;
        b=DVEFQZgmWP9e3EyAdpcDREOhxrLT7hERotYSdbviAwYTRBtK0Lhc22FPcvD9ekadX9
         l88ZzpIToFdSUDrzM7nVp6SgDQRCjjywvdcE68wB8gV/0ePLENYUfFpkwqMo5coHE+Pt
         YMf1K+RjekLpwrKSp5tyTxP9LXWdamQCqEig+9fwJB+c4kuCVesgaebsQwycHEbcGSLQ
         dJqRW7KmIi7AS8kxGMgMsVzfA8pJQ21aq1hnmk4DJt0uvFSSuExO52jGtiRhsVQOMtBl
         yZB3T2G7ZJ3z93g6vq07RE5IXehnPqTw4wK/OjVFGOKYZTMLD0Sx2SX/+SboeJwoAALZ
         KRQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=BqKoSYr7O/16jHY7Z8NFKMV1ST+RcJQ+4sCtVemCIFc=;
        b=WPKMblG/DDeax9ncykVny+gFAH9zi80ds71DZdzEkKCCSxgSG5Zg9lbuHOL1pIzkPb
         dAsuv2epOFVv8h4l1LEBHxsp7NLWFE3AqfEnemsR5I6hvmr7ouvKYkPFpD3s/vPtAiBm
         oayy1M5Na/3b2vs+Npelg5GvpuK3r53HsHXbTmT1GbzURCzJKvu/gy7E3mkTaTVuPQzc
         7HDZCGXguPi5q8A3Lha51kwZ8H3pKZMbrorNn3OH5QhQ+ICzrJDZ1erZqSBoIt0tbUST
         3l/U0ESt2YCbXWrQzORjP9MFEyeXYqkCmYdplieDPW2IM3t7+vYqUwHPbJCEx2F3FzEH
         ULrw==
X-Gm-Message-State: AMke39kuDfN145VQOHf5H6yz9B2YQ67mB0w5I4duU5Vd8dO+mnJLh3KoDPdDQLOn/OTp40gq
X-Received: by 10.99.127.14 with SMTP id a14mr13953381pgd.64.1487627720747;
        Mon, 20 Feb 2017 13:55:20 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id c204sm36769433pfb.51.2017.02.20.13.55.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Feb 2017 13:55:19 -0800 (PST)
Date: Mon, 20 Feb 2017 13:53:07 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH] staging: vt6656: remove blank lines at opening and closing
 braces
Message-ID: <20170220215307.GA3235@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes unnecessary blank lines after opening and before closing braces.
These instances were found by checkpatch.pl.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/vt6656/wcmd.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/vt6656/wcmd.c b/drivers/staging/vt6656/wcmd.c
index 9f6cc2e..b2fc17f 100644
--- a/drivers/staging/vt6656/wcmd.c
+++ b/drivers/staging/vt6656/wcmd.c
@@ -45,7 +45,6 @@ static void vnt_cmd_timer_wait(struct vnt_private *priv, unsigned long msecs)
 
 static int vnt_cmd_complete(struct vnt_private *priv)
 {
-
 	priv->command_state = WLAN_CMD_IDLE;
 	if (priv->free_cmd_queue == CMD_Q_SIZE) {
 		/* Command Queue Empty */
@@ -165,7 +164,6 @@ void vnt_run_command(struct work_struct *work)
 
 int vnt_schedule_command(struct vnt_private *priv, enum vnt_cmd command)
 {
-
 	if (priv->free_cmd_queue == 0)
 		return false;
 
@@ -178,7 +176,6 @@ int vnt_schedule_command(struct vnt_private *priv, enum vnt_cmd command)
 		vnt_cmd_complete(priv);
 
 	return true;
-
 }
 
 void vnt_reset_command_timer(struct vnt_private *priv)
-- 
2.7.4


