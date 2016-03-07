X-GM-THRID: 6256304454696435712
X-Received: by 10.182.120.106 with SMTP id lb10mr18216145obb.24.1457376344005;
        Mon, 07 Mar 2016 10:45:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.203 with SMTP id b69ls1932632qge.5.gmail; Mon, 07 Mar
 2016 10:45:43 -0800 (PST)
X-Received: by 10.13.238.130 with SMTP id x124mr18452366ywe.53.1457376343230;
        Mon, 07 Mar 2016 10:45:43 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id y20si3285650pfa.2.2016.03.07.10.45.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 10:45:43 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id 1so2520204pal.3
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 10:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xnlenjJKTUWBRWYLFjmSzNOgPYWfmezUlVIDepJCr+4=;
        b=eallR6x+M9PLKZmbwwofSl9BwRrsDYzHxJJ3tOUvUJxwvZlKTDFvJbbo6TesKFmIpZ
         dKIHh6rBPCDjZlNkOAou695ZwNcen1kA2K/3VoFLVwWhDdCQ+NJ1t4yg4Dxf36ouu7aJ
         jEv6IzP5CV7LhBjJApzosfKxe3/IGnHNlw65Yzihky127zxkLDeqDAk7q5rF+SYKos65
         nkbExvkXz3NI8C6nsbl2I0x2g104eUR/ss9w1reqpL5eR+BM3EYbyUxj/38sdAUHaMjz
         1y4uPMf+GONpH47wWmvdLxjWn83m3lKKbYaIPKgCM+GtRPFeLcKRga3VRJTTbldZ7qhp
         yzfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xnlenjJKTUWBRWYLFjmSzNOgPYWfmezUlVIDepJCr+4=;
        b=D+D6ulZBRH6z5tIy+UXyB6VeEh0+GmKdGD0cj1oV6SGL8xgCUXCfE03VaIl5e9S8QM
         aAQTbrmG/QPH8X7y8AG093CQtIYvidErP8v3rce6gpPB21G7asMrEH6F0c7p2G36nQar
         LQmM1eABzXc9+EFtXX2+qL7jw6gIaYIIvp4htrcZSJ+bgcVYqQTc0H4E6Y6tVjHal5Mj
         q/XRRvFhbiX79PF+2u5RaaoyRoe/9jEaOLzbWBvd7mITCBvLbFK0tRr/IzNe5MoHqKAY
         255TFTru6RSVm7ESM2p1dlNnmbyEhpHJvDrVWdT1jTLv11Afm/Hp2fRtuAz/wdN4llH8
         G9eg==
X-Gm-Message-State: AD7BkJKkgmZFKZEog0Yjir1oi2ZK/HYB/2aqs65vbSsGFM0ldtXIw5R+XE8VLoLWBvDFYg==
X-Received: by 10.66.142.168 with SMTP id rx8mr35653160pab.14.1457376343047;
        Mon, 07 Mar 2016 10:45:43 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.28])
        by smtp.gmail.com with ESMTPSA id n28sm25693500pfa.45.2016.03.07.10.45.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 10:45:42 -0800 (PST)
Date: Mon, 7 Mar 2016 16:15:59 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: wlan-ng: Handle error condition.
Message-ID: <20160307104559.GA3306@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Handle error condition.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v3:
Change in commit message.

 drivers/staging/wlan-ng/prism2fw.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index 8fc80df..35fd5fb 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -333,6 +333,10 @@ static int prism2_fwapply(const struct ihex_binrec *rfptr,
 
 	/* Make the image chunks */
 	result = mkimage(fchunk, &nfchunks);
+	if (result) {
+		netdev_err(wlandev->netdev, "Failed to make image chunk.\n");
+		return 1;
+	}
 
 	/* Do any plugging */
 	result = plugimage(fchunk, nfchunks, s3plug, ns3plug, &pda);
-- 
1.8.3.4


