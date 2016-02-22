X-GM-THRID: 6254033434194214912
X-Received: by 10.107.7.200 with SMTP id g69mr28229290ioi.3.1456130669670;
        Mon, 22 Feb 2016 00:44:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.35 with SMTP id v35ls696518ioi.34.gmail; Mon, 22 Feb
 2016 00:44:29 -0800 (PST)
X-Received: by 10.107.8.216 with SMTP id h85mr28271408ioi.0.1456130669394;
        Mon, 22 Feb 2016 00:44:29 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id u66si3348176pfa.2.2016.02.22.00.44.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 00:44:29 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id e127so89432817pfe.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 00:44:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=3DOrpHGCsoEx/KA6Z5/h7hFd1ZYIPVkWWuHR93eKMi4=;
        b=M9L31acM09uB/BtaKT7j3OIWXeIAQsIoZLtxblxKHKFE/i6B0bnfeH0FfgldKoFIhv
         dnaYEj5cNgTe2B6m7X6typJk6Bqe7BXy9chBA3s5TZq1xUPvXZvAXzSRVA1kkL0kl0um
         sWugh0dzEV/aaQdbQ7TymXskCe8R46kolaRItsgE+L1c9z7e9g4M3fUyQhpl1Nj7FF9e
         w+Sct8ouitLuoCfsheBJ4p4E0Vl20NJFuJ9WvFjKqrM1FGh9P98S+Mj3zaqTPigWw3aR
         sRMvbFDwrSBA5yaNQ6+oZnDdY4poXnRGMZGt8MCnAgU5MRjY9x3uGzjxdi+t40N2vhOm
         ozzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=3DOrpHGCsoEx/KA6Z5/h7hFd1ZYIPVkWWuHR93eKMi4=;
        b=BnQVU4AZptIWY9i9xoPCjVnUJgHHY8xG/jWd9/d3tz52RdzDx5upTrK+VIRORu0Izw
         mv6/HYI4U73n3/QDEGu2v6MJdqepU5+h1+wY/BbKBuB7YkbvHCq3Jby3+xyU4Z+0/1f9
         TdyAlWFUwzjwU7P5WAkDaW5cE7mQdNPIy1kyPfFRzhkcX6GBwfA1X9mGl0pBO5gHmFoI
         Og1kN0MJ3qoz33BqB0CW7yk8XxOXVdu0LIk+P0iYyurdM0u8UCOBYlxZ2mjFuhnTLFe2
         VEG9dOAKNfqYoflMAbcxEFcFVmzaRv+kCJejgD1GCDrWkUh6IVneiXbl9AVFrqQZEF7w
         zwDg==
X-Gm-Message-State: AG10YOQPbC195u9xUOHujGoMR4ddhNhV2bWaKjSaMHqqUzfEjZ08Dbhk/nhV+wZ5ARxlGg==
X-Received: by 10.98.72.24 with SMTP id v24mr36095951pfa.15.1456130669236;
        Mon, 22 Feb 2016 00:44:29 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id ac1sm2548984pad.41.2016.02.22.00.44.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 00:44:28 -0800 (PST)
Date: Mon, 22 Feb 2016 14:14:24 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 7/7] staging: wilc1000: wilc_wfi_netdevice: Remove header
 files
Message-ID: <6be83b28c65a283e083b3b1842449a544468140c.1456129759.git.amitoj1606@gmail.com>
References: <cover.1456129759.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456129759.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove duplicate header files. Found using includecheck.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_netdevice.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_netdevice.h b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
index 3077f5d4..817dcf5 100644
--- a/drivers/staging/wilc1000/wilc_wfi_netdevice.h
+++ b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
@@ -35,8 +35,6 @@
 #include <linux/skbuff.h>
 #include <linux/ieee80211.h>
 #include <net/cfg80211.h>
-#include <linux/ieee80211.h>
-#include <net/cfg80211.h>
 #include <net/ieee80211_radiotap.h>
 #include <linux/if_arp.h>
 #include <linux/in6.h>
-- 
1.9.1


