X-GM-THRID: 6336120731935440896
X-Received: by 10.157.27.241 with SMTP id v46mr1821161otv.46.1475243086009;
        Fri, 30 Sep 2016 06:44:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.169 with SMTP id u41ls2216296iou.49.gmail; Fri, 30 Sep
 2016 06:44:41 -0700 (PDT)
X-Received: by 10.66.124.162 with SMTP id mj2mr2058483pab.25.1475243081674;
        Fri, 30 Sep 2016 06:44:41 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id x73si2066300pfd.1.2016.09.30.06.44.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 06:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id cd13so3011562pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 06:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=djFFJwvXV0EJ4BjPyhP7jdINR9tWPeAnUbKrDHVuLc0=;
        b=zx4n3Nq2lMEfz918pPABjDQQ9+PN457TKBSIrb4deT/8lElpFX/UfqOQ/2C68MDZdY
         Z5TTxUftFcj+hP+CiKXI6vte04R/In8HeeydNw5UWbZMbqK0Tnmy8T5hyGf/ZU2kpVvW
         A0KhfQgrMQ3NNjkWRsOKMh4iJgXdcDBBzX/VfhL3BXelVkMBpCc/x1L+JPIoDR0HNXzH
         UlvJvMboI7crGJd99Ysu8QNSBl8kcWHTAOHP3XbORJSwbIAXjl+e3Hr2SGSsS6qv2Q10
         72xWF1R2+d1ShPolIdgeL3BhqRHk2uLOdNVjro9kTMZW/gpHF4bAUReU2U1AwDHbWhn7
         /JjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=djFFJwvXV0EJ4BjPyhP7jdINR9tWPeAnUbKrDHVuLc0=;
        b=AMzYERZ+ATJv4ohvZugLulsh92tLf//6Hk9g6sfEMgVGTBFebklCEsk5ZrAgEqF5PG
         nRDE1iK9eaLueeVg91ATLKKjWsqz+kLD/IOLFPiAFDFR8Jbc9ZQ/C6pfBhOFx2MqhZ2v
         X8SIGIyqPYYyfhjvxHlYwdYWNynsMooDV3NFy3YGs+MpeVZa1pMtXY53sDcsU4gt9tP9
         97gV3HBrm9p2eYjqfN0b+C7Jmd1OeZAPuxuQ4+0vYFxksg9HWCbHc79Bp5pdVEcqvWVU
         ztYsb0rOJbNOm37NfD9yHzEEtaX1XFAuOY1B0bcBJMJTevrTRyt4PNt2SSIsV9Deq7B1
         g8yw==
X-Gm-Message-State: AA6/9RnT8nJsDPjkREmBi7ttIJjIJn+dfs01m7rQxcVnaT8lxxJqgJnkSSwbz+WWiI6fDQ==
X-Received: by 10.67.5.136 with SMTP id cm8mr11663857pad.127.1475243081532;
        Fri, 30 Sep 2016 06:44:41 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id ra13sm28298093pac.29.2016.09.30.06.44.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 06:44:41 -0700 (PDT)
Date: Fri, 30 Sep 2016 19:14:36 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/3] staging: wilc1000: wilc_wlan: Compress return logic
Message-ID: <304ee3c0224a8203b15b2a38acc9843f06c783fd.1475241561.git.namrataashettar@gmail.com>
References: <cover.1475241561.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475241561.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Compress return logic. Done using Coccinelle :
@@
local idexpression ret;
expression e;
@@


-ret=
+return 
  e;
  -return ret;

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 2b307ce..58843f7 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -1033,8 +1033,7 @@ int wilc_wlan_start(struct wilc *wilc)
 	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GP_REG_1, reg);
 	if (!ret) {
 		release_bus(wilc, RELEASE_ONLY);
-		ret = -EIO;
-		return ret;
+		return -EIO;
 	}
 
 	wilc->hif_func->hif_sync_ext(wilc, NUM_INT_EXT);
@@ -1042,8 +1041,7 @@ int wilc_wlan_start(struct wilc *wilc)
 	ret = wilc->hif_func->hif_read_reg(wilc, 0x1000, &chipid);
 	if (!ret) {
 		release_bus(wilc, RELEASE_ONLY);
-		ret = -EIO;
-		return ret;
+		return -EIO;
 	}
 
 	wilc->hif_func->hif_read_reg(wilc, WILC_GLB_RESET_0, &reg);
-- 
2.7.4


