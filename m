X-GM-THRID: 6257131864000036864
X-Received: by 10.98.93.217 with SMTP id n86mr17755336pfj.11.1456852576604;
        Tue, 01 Mar 2016 09:16:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.97 with SMTP id e1ls261675igl.29.gmail; Tue, 01 Mar 2016
 09:16:16 -0800 (PST)
X-Received: by 10.50.154.2 with SMTP id vk2mr118307igb.9.1456852576280;
        Tue, 01 Mar 2016 09:16:16 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r75si2880811pfr.0.2016.03.01.09.16.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:16:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 184so5473775pff.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 09:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x9vv3WNaBGA1U2pNONx2S8l7sLxgRdagGJWNq1U/79c=;
        b=blB78g/woL0T4aSXSJeQcuZD35c3WLBSca0w2AXY+MJ9HLeXFS5HW8Npq05+2mYd7d
         xMq4b6Ik2w6k43314itEZ7PfGiwAYzFucNJruD/DxjfnixPqkRnhtRSXoNaaVv1bBkkk
         uua+RliK2Mbzuv9H76vfkUarrjwtv1AZ2EXzfCQpMIwt/YVwFrq++lVXgAZ8EvPELrG0
         CdM6szqazNqUd3t/EE+tBA5V4j4/8XLNFhYj/o5BpHQza+qpBber3q0oI/UklFxddGUU
         aDMOO4lHQv/TEnSfH40MeFuop5D6PAzfZLvucojAHOyWB64NtF4a8Y9+tphxt/xdnsQe
         6ujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x9vv3WNaBGA1U2pNONx2S8l7sLxgRdagGJWNq1U/79c=;
        b=asNxbPCN5fg6ugFTroD1NXU84uUIXdPglSt3ChLu2AqBLPN86IaqP5pUf6CA1GTT9o
         YcV7KQUYE6v+/7FjCTTmFcPLYL/e5iwPGc4toWorIG76fg9J9s0LCkWup0h3k7DAdT2L
         ES5sT8mMGoDrg5/DXjKG0Lyo4ltBpP32FZHlm2/ThC36RZ27ObcyjqZKLq4sNfVjK4ds
         8y1vj9ResxBuuXNQqVPUgZC9HK2xWE1P0P1Eqa6bCR0RwvdXeZI4Joi6XTBvYh2nRwVO
         WCeYn1KJV4p+M4OZfS/qJWNiHgLYkEV3TO97gkIYUfvMILGPAk3rtV5jNyDCl2YEyOPa
         8zZQ==
X-Gm-Message-State: AD7BkJJfg2ImfTf7vOTXpnaWqjvyFSZTntBUoq+WS9F3WvmTvr2hq74VGBJMovrvG848CA==
X-Received: by 10.98.16.85 with SMTP id y82mr31617236pfi.90.1456852576088;
        Tue, 01 Mar 2016 09:16:16 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.66])
        by smtp.gmail.com with ESMTPSA id d81sm46845583pfj.77.2016.03.01.09.16.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 09:16:15 -0800 (PST)
Date: Tue, 1 Mar 2016 14:45:53 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] Staging: wlan-ng: Do not print message if kzalloc()
 failed.
Message-ID: <c1f3a285ea9232c3f2f0e0d80a6de50c5942eb3c.1456822984.git.bankarsandhya512@gmail.com>
References: <cover.1456822984.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456822984.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 131223a..e245732 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1886,7 +1886,6 @@ static wlandevice_t *create_wlan(void)
 	hw = kzalloc(sizeof(hfa384x_t), GFP_KERNEL);
 
 	if (!wlandev || !hw) {
-		pr_err("%s: Memory allocation failure.\n", dev_info);
 		kfree(wlandev);
 		kfree(hw);
 		return NULL;
-- 
1.8.3.4


