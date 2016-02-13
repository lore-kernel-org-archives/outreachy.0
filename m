X-GM-THRID: 6250740412870295552
X-Received: by 10.182.255.203 with SMTP id as11mr8631164obd.49.1455393670719;
        Sat, 13 Feb 2016 12:01:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.73.199 with SMTP id n7ls1054727obv.83.gmail; Sat, 13 Feb
 2016 12:01:09 -0800 (PST)
X-Received: by 10.182.120.106 with SMTP id lb10mr8418897obb.24.1455393669230;
        Sat, 13 Feb 2016 12:01:09 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tn7si2129642pac.1.2016.02.13.12.01.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 12:01:09 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id yy13so5304241pab.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 12:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eBtr+gPYP6aVS8Nv1BFgHuWPQvSyNI82JccWRBpuBiA=;
        b=O9eRp0PHfa+w+HRx1JrLLKcJ4cYElfM+3P4FGYpI5/up6f+gKWmz2qIDLH0lrupXRb
         1jkeiUUBtNZJqEKqnishwcP766bJcRjoRGH7Xl2B4XkXGhhbQJNylF6nxan0udU6iy4G
         NaFlKV5cwEMs6UfBIzSaUMBFRy18YfXnJKzr8n59dJJBtbWBul0H4vUeqHQVFLZ//AKJ
         Uu7Dw13wrstRo6soSWOW1L8BL3Qi+e3/OSCQBPcaShWNRH13rAyjFf3R5jvEO5RHHvJX
         nFRBZ1V88+P268/gOu1/e1rUQOnWZLK3c/8DIhWxlbtk871M7TuoqNlaLooWhpL+rb7K
         y7bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eBtr+gPYP6aVS8Nv1BFgHuWPQvSyNI82JccWRBpuBiA=;
        b=KEtypUqsp9B3Tz5XJw8UBGfuDubPJE5x5LlkN4BjMhchr8v45sY49WIAulTLlWmbZC
         cCrlPvGbHo0G2VcxnLy/JaREN3YpJbbwL/E3iVMlZj83hnD9NatmYcfZ+t5U1tLM8gC4
         67pEsm03PXotSET+ATJGlIjbrkay/gultOOElRDcjSrtThZ0Uoh8XLjb2NvAR/3eDWKq
         n/QbIyyv1MvuH+yHB/nPmNjJ5rCK3IpCQ9RWyOuaI9CRtHD9Soe9L8TLuNbOt5A4d0gq
         94Oj4SVlHP3wUYg7puiQQ9xxOM5S3/lu7TVGIMAgw0Gso1iV0qln2eEY8GiG+YN0BDEW
         HZog==
X-Gm-Message-State: AG10YOT2FdfgoR8lqRwxCWsI+SFM0qoKd5CaQR2+HW7mjUtUhqw9agNQbRbtZYucWJM9nw==
X-Received: by 10.66.62.161 with SMTP id z1mr12156545par.108.1455393669068;
        Sat, 13 Feb 2016 12:01:09 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id i15sm27931499pfi.55.2016.02.13.12.01.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 12:01:08 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH v2] staging: wilc1000: Fixed a return coding style warning.
Date: Sun, 14 Feb 2016 01:31:01 +0530
Message-Id: <1455393661-24284-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove unneeded return at the end of void function,as warning generted by
checkpatch.
WARNING: void function return statements are not generally useful.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
Changes in v2:
  -Remove blank line and replace unusefull by unneeded in commit message.

 drivers/staging/wilc1000/linux_wlan.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 54fe9d7..1d2382d 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -1119,8 +1119,6 @@ static void wilc_set_multicast_list(struct net_device *dev)
 	}
 
 	wilc_setup_multicast_filter(vif, true, (dev->mc.count));
-
-	return;
 }
 
 static void linux_wlan_tx_complete(void *priv, int status)
-- 
1.9.1


