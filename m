X-GM-THRID: 6250655488927596544
X-Received: by 10.50.28.7 with SMTP id x7mr1582980igg.6.1455344140619;
        Fri, 12 Feb 2016 22:15:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.154 with SMTP id v26ls812447iov.91.gmail; Fri, 12 Feb
 2016 22:15:40 -0800 (PST)
X-Received: by 10.50.142.105 with SMTP id rv9mr1580298igb.10.1455344140224;
        Fri, 12 Feb 2016 22:15:40 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u66si2000187pfa.2.2016.02.12.22.15.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:15:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 71so4895004pfv.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=lvWANGjTy/EA5rz2T6bYNqK7iY39iojjsOIJbYp5fLo=;
        b=z5YPfJLUMZ8b6jvY0PpACHDFGJ5zInGNLKWKCyGzmPAMj6dVJudwqioTF6R79zgauY
         N9+ZMFylOa9NXtgwoFilbKV/8IsuCjzp6F4XdlLHgnFxlZz7lJkdUCV8MVD8w+NoI3Iv
         KJu0+gY0UMG96jrl872CVkwVZHmGleffxCyqxHWxstKp/PdUQaLpGWXrq7j4PvQmYpQ3
         VfpyKPhuZI6nhgvcXiwmR+PI939WT3tRGjkAaJMwDi6eWHhyZnYD5o6w/SPqy9YZ1W4t
         n14YClxNs/nFIt99hjQeXOKK87yVZriWM6ukMg/3Lc7Ma/AeZof7kD95K3zB14UVKxLO
         5Aog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lvWANGjTy/EA5rz2T6bYNqK7iY39iojjsOIJbYp5fLo=;
        b=Jj4tK/TC/VABTc1kTms+fvVyqmTUqoCTOvDxMtx7mEySjz4Fh3CNnD63z/O8OjQtC9
         VHGYFtiE+/j7+BcMQ2fOEa19wK4P1wpJXNRX/Y9XQ1FWZccs5OXcJR5LFlVxZFbOVn7f
         kkMqgXKGP0Sc7ZN7+JxI+EG95IgCniEiFSiER5KyD8/d5qodXPFRPuukWWEQw4HdB8rf
         FO1ft3IEcNR3fDLKId3tHr2baJwuYlR4AQcztY0Ua17V6/cNeMv33pBg3BygMOANDpqd
         clBJQaVwZ3TLu0HkyrpSBJVRvzvI2pp8pst5zzNMVGbGXYSf0fD6OPb7x+k/UqM4A8e+
         jfZw==
X-Gm-Message-State: AG10YORTX9b8r1+I7kDvywSel6uO+QokpsFd3N1eBurQCyk/hWtW4avQ6Bogbh1TzRd69g==
X-Received: by 10.98.70.211 with SMTP id o80mr7779522pfi.124.1455344140101;
        Fri, 12 Feb 2016 22:15:40 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.145.71])
        by smtp.gmail.com with ESMTPSA id k14sm23484528pfj.0.2016.02.12.22.15.27
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 22:15:39 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 13 Feb 2016 11:44:54 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/2] Remove multiple assignments
Date: Sat, 13 Feb 2016 11:44:49 +0530
Message-Id: <cover.1455343091.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset removes multiple assignment by factorizing them.
Made a coccinelle script to match cases:
@@
identifier a,b;
constant c;
@@
-a=b=c;
+a=c;
+b=c;

Bhumika Goyal (2):
  Staging: wlan-ng: Remove multiple assignments
  Staging: media: Remove multiple assignments

 drivers/staging/media/davinci_vpfe/dm365_isif.c | 3 ++-
 drivers/staging/wlan-ng/p80211wep.c             | 6 ++++--
 2 files changed, 6 insertions(+), 3 deletions(-)

-- 
1.9.1


