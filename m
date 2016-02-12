X-GM-THRID: 6250422711327129600
X-Received: by 10.50.13.101 with SMTP id g5mr3922595igc.6.1455289942233;
        Fri, 12 Feb 2016 07:12:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.214 with SMTP id 80ls1810717qgj.83.gmail; Fri, 12 Feb
 2016 07:12:21 -0800 (PST)
X-Received: by 10.31.174.2 with SMTP id x2mr1789230vke.13.1455289941577;
        Fri, 12 Feb 2016 07:12:21 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 12si1394458pfb.1.2016.02.12.07.12.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:12:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 71so4100475pfv.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 07:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=086Fc1k2X9F+gJk7DYYNiC1k8XMXZHDgd/7Lf/tXBLo=;
        b=TKVqTgy3WSyn0CGqSUB3VJWP8++5f9YHL68ddZOC4PT8n1y6qWodokeWZXV3Xp3Aak
         uiTW0oJ+Krp/vpiuhsWZa0/Ur5PkYeL0AYlgTvB2kC+DGV5NUgy8u682ne+ytyG+2jka
         NUgP+mz3ydm20SunIPRB7ozHqoNXE+3O1xJpznBxD99wSV2reULaDPAI2kZSU4I7v0j6
         q6eG3pzKLkPWLzSYlGcTfXgGTKeJ/Dav9CmUGG13e/85Xxvk2AX3apJwIiQ/mQrjmxd2
         kaqnnvPhBIDJqP/HdSYB7W9VNfP+UoBERV1RVKwpwuYPWSOrQVKMvxgT6S7mW4mRR3tn
         MRsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=086Fc1k2X9F+gJk7DYYNiC1k8XMXZHDgd/7Lf/tXBLo=;
        b=XMSl8O2YDFsTacDbz09rrgUXT+F3ZFQ5SHC8H+4rNtVK52ymLTPnCBzS/Pb8pnM6el
         6ixkmb4Cn4AVmjO14wZRgPo/M6AAqSapQOvEEgvuAtpe5X7//ahn6tqGnHfv95A8jTml
         M3RoPjt2TikNgjuipZNHaT63NZ8bg5EUQjWS8soAYBMgabLqPSMhNR6SwYZqR4KJdVZ8
         mFBveBPQuskY+SGlKPKkTI6sgwNai/DAUYFc9dnmGMg2NYhwj6Gr9VLF+JkexyJIw/yK
         vqewKnPpMWLhKtYYPR+5AfsDZNqbhRdQoxZ7ea+ePCW0nkAKVh9C2B/O/ffEay9iNh/8
         chgw==
X-Gm-Message-State: AG10YOTITZjXlFzyvs/Xt9nRuAdNHt+/y8Ove7nb5Cwnq8jypmXCP5+tmpbjqyp/xtKCbA==
X-Received: by 10.98.72.77 with SMTP id v74mr2874402pfa.33.1455289941417;
        Fri, 12 Feb 2016 07:12:21 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.165.202])
        by smtp.gmail.com with ESMTPSA id c9sm20149547pfd.90.2016.02.12.07.12.17
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 07:12:20 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 12 Feb 2016 20:42:11 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/3] Staging: iio: remove exceptional & on function name
Date: Fri, 12 Feb 2016 20:40:26 +0530
Message-Id: <cover.1455289270.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

These files function names are otherwise used as pointers without &.
Found using coccinelle.
// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl> 

Bhumika Goyal (3):
  Staging: iio: light: remove exceptional & on function name
  Staging: iio: light: remove exceptional & on function name
  Staging: iio: magnetometer: remove exceptional & on function name

 drivers/staging/iio/light/isl29018.c            | 8 ++++----
 drivers/staging/iio/light/isl29028.c            | 4 ++--
 drivers/staging/iio/magnetometer/hmc5843_core.c | 6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

-- 
1.9.1


