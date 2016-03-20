X-GM-THRID: 6264236778940530688
X-Received: by 10.66.65.168 with SMTP id y8mr20307345pas.10.1458506424562;
        Sun, 20 Mar 2016 13:40:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.166 with SMTP id d35ls1616931qgd.81.gmail; Sun, 20 Mar
 2016 13:40:23 -0700 (PDT)
X-Received: by 10.31.154.65 with SMTP id c62mr20597116vke.8.1458506423888;
        Sun, 20 Mar 2016 13:40:23 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id sf5si3463771pac.1.2016.03.20.13.40.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 13:40:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n5so26631411pfn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 13:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oHoTf7TAeaqbvdmKmcFyeW8cV2w+5YsHIx3dMXeHmB4=;
        b=lGlKnsKrKOx62CGt+phX31PzO9WHMBWfqZF7B/vZ3peLDLnmnvFwh+O7aBbDlFWRiw
         sRujZcmtwpg+DUwJqTHZeJiKdmMqZnPzkTSQ1nwYZaCL7gxD+YQZu8vzwWVmwwX7t0UR
         dEvN6XxvzMyZ2k6Wp9Gtca6RYnyTPjKlqHZVy/Ku9d0mbHshiCXavnZbHNbWMwSGaxnf
         BbWW6LzRLd6bqrxsytP8bIjk3GKMezHGArgFc0fyfvHxeUvABH9wQU2doZ8Qa0PwXa0Z
         VR3On08BshDnhk6QySzPtC1bURzoLBTEKkRxooozHv1q0VLcL3eN57K0RGl6uzhGgh+w
         pjXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oHoTf7TAeaqbvdmKmcFyeW8cV2w+5YsHIx3dMXeHmB4=;
        b=BAadbiT7+66u06Cs3IUXfSOw/dMlIZY6pWnyFcK/T/J7m2bzzsAOHa2IxQyvS4AdsU
         RYrp8LSWXwyHr7Kqw4fEIb1qlO/lbdE36QK0xfPImrVI17p7kQ9QmZPflf7AbyLUIOwH
         cbRKvQksf3whhMyNLzqqnvCb3YAt7V1fVkBOLSAPUyGUzIJSU3h/nIC1IWyqd9mtPXS7
         UmLQpxCg6QC6WNNgrwGD318PBeWoGTC+cc0PGpFeLd2LuwCYXg1vAVbcp3AQsKKAbUEa
         6OjcEk1kLWUCxo8y0MBEZ0lZ7fZJZkBRvT5F3WLf3LDlhxCmnul1Q8Dej7S35GjyqQ/V
         pw9A==
X-Gm-Message-State: AD7BkJIqvrSqltcbmmO+blwuxspmAojPyQGhqxGgLiHBhrEPjjF0W+7WmhwVY6Pc77i0eg==
X-Received: by 10.66.138.74 with SMTP id qo10mr39722909pab.140.1458506423703;
        Sun, 20 Mar 2016 13:40:23 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 17sm35278639pfs.40.2016.03.20.13.40.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 13:40:23 -0700 (PDT)
Date: Mon, 21 Mar 2016 02:10:21 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtl8712: rtl871x_ioctl_linux: Clean up tests if
 NULL  returned on failure
Message-ID: <8f1dbd4e6d01500c22dc734b8f58f191e0a2eeaa.1458506158.git.bhaktipriya96@gmail.com>
References: <cover.1458506158.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458506158.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:

@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 1b9e249..6c02e9b 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -399,7 +399,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			pwep = kzalloc(sizeof(*pwep), GFP_ATOMIC);
-			if (pwep == NULL)
+			if (!pwep)
 				return -ENOMEM;
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_key_len +
@@ -1793,7 +1793,7 @@ static int r871x_wx_set_enc_ext(struct net_device *dev,

 	param_len = sizeof(struct ieee_param) + pext->key_len;
 	param = kzalloc(param_len, GFP_ATOMIC);
-	if (param == NULL)
+	if (!param)
 		return -ENOMEM;
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
 	eth_broadcast_addr(param->sta_addr);
--
2.1.4


