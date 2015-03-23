X-GM-THRID: 9691594752000
X-Received: by 10.180.75.232 with SMTP id f8mr2308280wiw.0.1427133870685;
        Mon, 23 Mar 2015 11:04:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.37.229 with SMTP id b5ls849655wik.8.canary; Mon, 23 Mar
 2015 11:04:30 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr2303569wix.4.1427133870335;
        Mon, 23 Mar 2015 11:04:30 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com. [209.85.215.46])
        by gmr-mx.google.com with ESMTPS id b6si122359lbc.1.2015.03.23.11.04.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 11:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of marianne@masu.dk designates 209.85.215.46 as permitted sender) client-ip=209.85.215.46;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of marianne@masu.dk designates 209.85.215.46 as permitted sender) smtp.mail=marianne@masu.dk
Received: by mail-la0-f46.google.com with SMTP id e1so8604116laa.2
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2015 11:04:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=BLGvR0mzB0FHoj9tY54eMiOybTz/M0dpT7tz50aY58g=;
        b=HiorP6e4t40kL7XDBBwAD3rSSUMUBZE3Smp3OoqMwhSeJUIJJ4jsnZOSoCrpYkqO/B
         yxRgnYjrZ0R+GO15rbhOC2n3yon4WVk5XWtMBLuTnaDV9gWusiX8u+cMB9z8s9Sny7pd
         oFupfKv7iZysh7LFSoPQtn/WCPbm2zmsPRN7dvoBp84AT70jY+DLA92fPQyFPItjzEVc
         7X507hQekZP5FImmSQu3fZXstGyFB0hQvcnIhsCyYrZaRZU0VupgTD66pbFJvdRFEUwC
         5VvoDNTBTJsHCf3qf4zyC2LgtCZ7MAC+kjl0841KYx+7VpIQemUZKgNPzxHT8uii5GMC
         iEQQ==
X-Gm-Message-State: ALoCoQlyOW+J8wFpfqkHf+57TVqNPXDQX6hkE4aor70eSdDoBSHgiYBG73so6M4E3Jlnmxk4TqIf
X-Received: by 10.112.201.231 with SMTP id kd7mr271489lbc.35.1427133869995;
        Mon, 23 Mar 2015 11:04:29 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from debianvm (x1-6-20-4e-7f-5c-75-ca.cpe.webspeed.dk. [80.162.217.84])
        by mx.google.com with ESMTPSA id k4sm324833laf.16.2015.03.23.11.04.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 23 Mar 2015 11:04:29 -0700 (PDT)
Date: Mon, 23 Mar 2015 19:04:24 +0100
From: Marianne Moeller Knudsen <marianne@masu.dk>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Replace printk with netdev_info
Message-ID: <20150323180424.GA2636@debianvm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace printk(KERN_INFO...) by netdev_info for more uniform error
reporting. Issue found by checkpatch.

Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
---
 drivers/staging/rtl8192e/rtl819x_TSProc.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index c51f7e0..949cba4 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -479,7 +479,7 @@ void RemovePeerTS(struct rtllib_device *ieee, u8 *Addr)
 
 	list_for_each_entry_safe(pTS, pTmpTS, &ieee->Tx_TS_Admit_List, List) {
 		if (memcmp(pTS->Addr, Addr, 6) == 0) {
-			printk(KERN_INFO "====>remove Tx_TS_admin_list\n");
+			netdev_info(ieee->dev, "====>remove Tx_TS_admin_list\n");
 			RemoveTsEntry(ieee, pTS, TX_DIR);
 			list_del_init(&pTS->List);
 			list_add_tail(&pTS->List, &ieee->Tx_TS_Unused_List);
-- 
1.7.10.4


