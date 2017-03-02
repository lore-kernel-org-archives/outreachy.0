X-GM-THRID: 6392997475785900032
X-Received: by 10.129.112.83 with SMTP id l80mr5790415ywc.45.1488485717454;
        Thu, 02 Mar 2017 12:15:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.71 with SMTP id j68ls109537ita.12.canary-gmail; Thu, 02
 Mar 2017 12:15:16 -0800 (PST)
X-Received: by 10.99.178.15 with SMTP id x15mr4869956pge.99.1488485716542;
        Thu, 02 Mar 2017 12:15:16 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 207si78568pfu.8.2017.03.02.12.15.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 12:15:16 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so7692359pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 12:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KtIwk4uq3SEICXanWiMKAGDXPoSN78M1q78Os+Z/V5A=;
        b=rCLXi274o3glOz+RvFVkS8vpX6D+rASI9Mo82GVZDH8foNgjsBz+2TCkZCuepYCfe3
         JoqH1tEUtqA/NZbLqF7nlDHCeR401F9re5OIMZQBeIbRCAYJcwz5RCd7DHHVs0VURuH/
         qOdAriBvyE+nCiDf+7EaL7snoFQgogKn1g3p+zzc28wu3MEAJAX1HO7yeuEmr4PdO9yk
         G8LTyIxzBIqncqRJ82AlhoZNT1P7e5IaXtRviH+XZXYb31Yrd5I4JDMUKIRm9fnjsxax
         nJFG7KyqSu1mc1op4ZxPD+7SKZ2B48eCW/emZwaSJSREkeYi1VhCQz6ZHKSWzLkAmAzJ
         KrPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KtIwk4uq3SEICXanWiMKAGDXPoSN78M1q78Os+Z/V5A=;
        b=RxmTuexpmhXdkFteFopSyWHd/OO180dlsPZxGm707IJYglSS3VQ98Bgsj25SxdqP6L
         MnT7VVAoEqQy+Yd3i4o2+ANv4wmvBBkkZEdsAVox2Rcz7M/1XrZEzECdRaw0IoTMqeWG
         WVa5hCq1Tg5a9tOhWikRAb9fz/mcaxsJZY7S4ITqauSBMZ2/NNebLW4DyFc2AdkzAgIT
         HOC98V6GxXIcmJbDatr+nCWlG4I1iLjX0iGvR+16EsuAQTXVjHgoyX9xpOXQM+LhXGmt
         zOQ+guglApzBcE9CqUHqBee6TEhNSscNCd8caalCLGjwY0VRoLCDtiz+AE7bZvYcKqdq
         4EMA==
X-Gm-Message-State: AMke39nAKpDgjJEbXZlNJbH+eZe0PQSfDGrpxuQ/FZ/sDEghJCf+x8UNxEAbJrDbx0WYfA==
X-Received: by 10.99.216.85 with SMTP id k21mr2943942pgj.10.1488485716025;
        Thu, 02 Mar 2017 12:15:16 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 73sm18722214pfh.56.2017.03.02.12.15.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 12:15:14 -0800 (PST)
Date: Fri, 3 Mar 2017 01:45:11 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: marvin24@gmx.de
Cc: gregkh@linuxfoundation.org, ac100@lists.launchpad.net,
	linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: Remove unnecessary cast on void pointer
Message-ID: <20170302201511.GA5080@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The following Coccinelle script was used to detect this:

@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/nvec/nvec_kbd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec_kbd.c b/drivers/staging/nvec/nvec_kbd.c
index e881e6b..a01f486 100644
--- a/drivers/staging/nvec/nvec_kbd.c
+++ b/drivers/staging/nvec/nvec_kbd.c
@@ -58,7 +58,7 @@ static int nvec_keys_notifier(struct notifier_block *nb,
 			      unsigned long event_type, void *data)
 {
 	int code, state;
-	unsigned char *msg = (unsigned char *)data;
+	unsigned char *msg = data;
 
 	if (event_type == NVEC_KB_EVT) {
 		int _size = (msg[0] & (3 << 5)) >> 5;
-- 
2.7.4


