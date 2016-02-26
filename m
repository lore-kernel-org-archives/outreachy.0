X-GM-THRID: 6254513741412433920
X-Received: by 10.66.148.4 with SMTP id to4mr451945pab.8.1456481086257;
        Fri, 26 Feb 2016 02:04:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.139 with SMTP id c11ls877013qgd.84.gmail; Fri, 26 Feb
 2016 02:04:45 -0800 (PST)
X-Received: by 10.31.168.130 with SMTP id r124mr448973vke.10.1456481085799;
        Fri, 26 Feb 2016 02:04:45 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si1951973pad.2.2016.02.26.02.04.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:04:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id a7so2944067pax.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 02:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=T2lfrtxRZd/2XyXNRvfg/ZEAk8hABmhmY1pAGZ/xLX4=;
        b=cCGBusaP9+/FfhP+mn2fii5ZGMDQBuQ7hyeFLYTgvdCPFDzQx7DqjHuLn4hDb+YPNp
         KLzsrrK3T54FaFrN2pRkEC46/kmhipkZNLm9B1WEraAHbPSaPPfg6SP5mLtj7iy2LrNf
         FX1jLW/AF/E22ZtWAbYUxerT/nht5/X8WDEDPuVnhhTaMQOA4TR4AXCjJeRZupWz4Elx
         rcdSk/MfLCv3OmjtwlRmI1/NlYE9TFV19QN3saa466UY8n+UQmZ2fonPNvMpH1l8grWB
         cavDdJu1tx9XQm2x8nG6zwYuXZ+8aBJmg4hZdWVkM+qLs8Xq7ir2hlQ9Ihvkjn/VZ18L
         aRiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=T2lfrtxRZd/2XyXNRvfg/ZEAk8hABmhmY1pAGZ/xLX4=;
        b=RQBxkAW7NdueETNyv/MRCMs1cmpe6TKBmaqt1qm9fiAj1lao2PzweqAXjJvdDkXzui
         4TMPvmgbhW2m0U0t8F43wyQcMOkMqfRWAM4RMp/wAxvY/MkF+BxYYu4CDEt9FtmoeA0g
         vrT9Ia58fkAsUC8M+Ji00zcEAhRyEBBliLIT2yDbkwH4UNKsQ86QyeCW3laTH1RaKuCp
         uImGo651K9w+/PgdP7jvRIoSemcQ1x0NrmDUDR1JkSFMij0YilBVmMty7PhfPUad0sxR
         x27+xIomvmyiryeqisTq6ziJ1YLxIxdvGanP5wmAhuzAmtkwN5ocpqdOPM0XUeXAZ+X6
         iNnQ==
X-Gm-Message-State: AD7BkJKbpmDdMkFMGNAbPM/2Lsq8HyZXFJdDTI5QwzYADcbD0X/XteF55dat2KOxN94h0w==
X-Received: by 10.66.65.109 with SMTP id w13mr828327pas.142.1456481085590;
        Fri, 26 Feb 2016 02:04:45 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.139.245])
        by smtp.gmail.com with ESMTPSA id l24sm18109724pfb.73.2016.02.26.02.04.41
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 02:04:44 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 15:34:35 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 0/5] Staging: Replace ternary operators with macros min/max
Date: Fri, 26 Feb 2016 15:34:29 +0530
Message-Id: <1456481074-9898-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>

This patchset replaces ternary operators with macros min/max as
they are shorter and thus increases code readability. Macro min returns
the minimum and macro max returns maximum  of the two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Changes in v2:
* Use min()/max() instead of min_t()/max_t() as the values passed in the
  macros are of same type. 
Changes in v3:
* No change.

Bhumika Goyal (5):
  Staging: rtl8723au: Use min macro instead of ternary operator
  Staging: rdma: Use min macro instead of ternary operator
  Staging: gdm724x: Use min instead of ternary operator
  Staging: lustre: Use min or max instead of ternary operator
  Staging: rts5208: Use min instead of ternary operator

 drivers/staging/gdm724x/gdm_mux.c                   |  2 +-
 drivers/staging/lustre/lustre/include/lustre_disk.h |  6 ++----
 drivers/staging/lustre/lustre/osc/osc_request.c     |  2 +-
 drivers/staging/lustre/lustre/ptlrpc/events.c       |  2 +-
 drivers/staging/rdma/hfi1/pio_copy.c                |  6 +++---
 drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c   | 14 +++++++-------
 drivers/staging/rts5208/sd.c                        |  4 ++--
 7 files changed, 17 insertions(+), 19 deletions(-)

-- 
1.9.1


