X-GM-THRID: 6255961671110492160
X-Received: by 10.31.168.130 with SMTP id r124mr5209051vke.10.1456579582320;
        Sat, 27 Feb 2016 05:26:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.194 with SMTP id g60ls1702333qge.52.gmail; Sat, 27 Feb
 2016 05:26:21 -0800 (PST)
X-Received: by 10.129.74.195 with SMTP id x186mr5180165ywa.36.1456579581831;
        Sat, 27 Feb 2016 05:26:21 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id 12si2551550pfb.1.2016.02.27.05.26.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 05:26:21 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id yy13so65939148pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 05:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=4Jp6YHr7/Ii86CQjH/QkkRcxhFjA9rgo737KcPixHkY=;
        b=Q5wJU5pbnYVHAopzsImAKvAEJFxTnOMOPCcJKCNzmOKmp8qwuoEpc5E4Vyd9Z6Onxh
         qGmUrzofBn/16V3N+wveviQr5bf3rFbbXi9Pj0t4C862+z6BBpSWg4eVugJHKSUPfVWc
         KaEBwhMXC8oh9PnrjkAvr7EU+9HFNLeP1oHBC0JDIXrLwWCon47IcyVDQIDFDMfiGagV
         7xaPRVcwkyoWZwvt2TkHSdcMsl5cEgiyiy3yP5qfLOXeH70GGUn/TqnbR3a13Xh1R0R2
         1u3sjx9d9VGHRChYNsop4lazOdk5dfMtwLi1v+EjTDw+m8LB/JQpY1ikg6QByKCdrM5s
         Krww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4Jp6YHr7/Ii86CQjH/QkkRcxhFjA9rgo737KcPixHkY=;
        b=mSCOKYWBeWE5WMlXcliTXK+NYZzFYEwNTT6SHzDe0/zaacHWffax/NEKMU5EsSh14G
         Hr+eDvlar0U/gQahl46H14INWS1pdTvD+1EVm607Z6TF2oBNO5tBHpBZnSgeczZEFc2f
         PSr9qCoKyyl+9nUYFTnhLE37HZOtWyzlHmdsO6tHq4IJUnKT9uBWv4D7S1K2kPtW/X3H
         hrWpXVpIj6WOamkg/ECGvVqcTGvKMTv/eSIUS7JmJNG2Cv6hhgJ+GBjiOodSNpeBcbzG
         4noj+B1cKyTwu+7kh+l4iaro3MDNVveJOg/C//CzMYxXWv1MOCH4eOwmnhNlR8oE+tHy
         aevQ==
X-Gm-Message-State: AD7BkJK7NTjSTvjODkRQdafvMv2isjM4UiYxuiXRUe0Jgw/cDa9361qv4CNm08djj6RAYw==
X-Received: by 10.66.244.233 with SMTP id xj9mr9281878pac.19.1456579581667;
        Sat, 27 Feb 2016 05:26:21 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id p8sm26246917pfi.34.2016.02.27.05.26.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 05:26:21 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH] staging: wilc1000: Fix warning usleep_range() shouldn't use min ==max args.
Date: Sat, 27 Feb 2016 18:55:43 +0530
Message-Id: <1456579543-27301-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

As usleep_range should not use min == max args.This patch fixes checkpatch
warning: usleep_range should not use min == max args; see
Documentation/timers/timers-howto.txt.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 83af51b..8d6a457 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -766,7 +766,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				}
 				PRINT_WRN(GENERIC_DBG, "[wilc txq]: warn, vmm table not clear yet, wait...\n");
 				release_bus(wilc, RELEASE_ALLOW_SLEEP);
-				usleep_range(3000, 3000);
+				usleep_range(3000, 3100);
 				acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
 			}
 		} while (!wilc->quit);
@@ -800,7 +800,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 					break;
 				} else {
 					release_bus(wilc, RELEASE_ALLOW_SLEEP);
-					usleep_range(3000, 3000);
+					usleep_range(3000, 3100);
 					acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
 					PRINT_WRN(GENERIC_DBG, "Can't get VMM entery - reg = %2x\n", reg);
 				}
-- 
1.9.1


