X-GM-THRID: 6250764782783168512
X-Received: by 10.66.148.4 with SMTP id to4mr6321780pab.8.1455369587043;
        Sat, 13 Feb 2016 05:19:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.198 with SMTP id d6ls368600igx.22.gmail; Sat, 13 Feb
 2016 05:19:46 -0800 (PST)
X-Received: by 10.107.133.10 with SMTP id h10mr7422365iod.8.1455369586656;
        Sat, 13 Feb 2016 05:19:46 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tn7si2015683pac.1.2016.02.13.05.19.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 05:19:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id zv9so735908pab.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 05:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/HRAOOptuhBo9MJJ+9P8FCbq7xonLtkQ8bu0eTUN9Ww=;
        b=BNoWY20LFKc8Ypjxsd/MP/rSCriFa3KQE5c+jUFE6AmvK6eIukg6yy8sryAzyNr63n
         bFMEL+Er8pv38NClrcbdIWaST8dNaqBvZLRKueu8BWp76m4IIcojJWxsuEaQk+6fwwjv
         BEO28xHnYvD8trvS5rIGN+ToEg/YgajQKGwuNO/D/h3DmZrMFufqdfoj5OQ8br4ebDj8
         RPjama2YjOgSIFimHdpR7jEV3l5V7+1NtOJ2kl7oIJIQ+lZz7+QnXJH+1agAg7THH5pu
         H98T1lRuKFJQ86oTEOkHDF66EILeFbC9l6YGEULrlTbNZNIs2AW0oWtfD4HPqMWiDO68
         orpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/HRAOOptuhBo9MJJ+9P8FCbq7xonLtkQ8bu0eTUN9Ww=;
        b=O6+HJiMEnvvJDIckE1Dw68tKNtnIrje+sDs9pidDS0tYd5W/D6QDhnkJWZ/KVuu3Do
         Jl2dwjWSBP+6IWrXFKJaBFyrmb9likO+10VIDnNnkACzzWpCguwLD8ydwNn7AXL6hg/1
         Ic8U/sGHxFGsBFnTEhuPxVgc4syt+VXEPN/7SR3dkoZa4sfjbm9omIPh8MRrFXN8pOSk
         LMC6N6uNG3RB/OIypi4DTUZ/Rnfv/CpQUI3TNtBzJNX4vpJGObqLKgEHUGDkmcQLChLk
         lLlR2eWrAr/wFa5bc1pe9U+vXrRpPmX7m8ofYsgypHEmIINIyoA5X2ZCk8ta8OJiZinf
         wvkw==
X-Gm-Message-State: AG10YORljjUVvow0ri51KLPfMB2dK8cWoWrJlo+RqvkKlczCyckltyoMg0lvu9xwpeDDpQ==
X-Received: by 10.66.121.110 with SMTP id lj14mr9709398pab.152.1455369586506;
        Sat, 13 Feb 2016 05:19:46 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.191.38])
        by smtp.gmail.com with ESMTPSA id n84sm26320036pfa.45.2016.02.13.05.19.43
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 05:19:45 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 13 Feb 2016 18:49:37 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/2] Staging: wlan-ng: Drop wrapper function
Date: Sat, 13 Feb 2016 18:49:33 +0530
Message-Id: <cover.1455368638.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset drops the wrapper function prism2mgmt_pstr2bytearea and 
replace its call by the function it wrapped. Also remove its function 
prototype from the header file as it is no longer needed.

Bhumika Goyal (2):
  Staging: wlan-ng: Drop wrapper function
  Staging: wlan-ng: Remove function prototype

 drivers/staging/wlan-ng/prism2mgmt.h |  1 -
 drivers/staging/wlan-ng/prism2mib.c  | 24 ++----------------------
 2 files changed, 2 insertions(+), 23 deletions(-)

-- 
1.9.1


