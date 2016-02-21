X-GM-THRID: 6252997981789749248
X-Received: by 10.50.79.161 with SMTP id k1mr5725586igx.5.1456042598365;
        Sun, 21 Feb 2016 00:16:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.174 with SMTP id 43ls906765qgx.73.gmail; Sun, 21 Feb
 2016 00:16:37 -0800 (PST)
X-Received: by 10.13.215.140 with SMTP id z134mr22475608ywd.7.1456042597634;
        Sun, 21 Feb 2016 00:16:37 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id 79si2509107pft.0.2016.02.21.00.16.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 00:16:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id c10so77788332pfc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 00:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=uxeYb/ERgIlCpKIhwJFYi0Qgg0tbo9Zvv5+5OvP5Cc4=;
        b=U9fNOTBNuBbu5g4RKmK3VkWPgBbie0L1IiYA3WDP2rniWcHpPeoteofk6uLxGxAwzZ
         qsnnKskUc6YpKbxk5ZgV5y+NTQdXRsefBGhD7A2P0zDQPGFXw2iEgB0uK2bzdGNWgYqW
         lzsDk4wYOeG6Byl7dyfSFbustgKBQti1wkTZ0EH2RSzEbsIZuDAudTGAyT0y2kUzOJ7v
         tciWXFGq0fh1jVl29A/cT51aVQgeAxjLbHc0bn7kCwAoQGC4SeLO7b5OmNf8WLVM7v2U
         GF7LwLfCsD5Jrx5zf2OozRlJ1td4Xo4tKMJFOxLMpicuW6g7Swgon0mr+QeQAbDr33y3
         9fpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=uxeYb/ERgIlCpKIhwJFYi0Qgg0tbo9Zvv5+5OvP5Cc4=;
        b=bNvgQCNbnEWg10lv83ilMWq8Nn69SWgOLRSuBGG+MyyHHePJCHSiXarbTK0aBuRrbk
         SLuMdWdS4Fsq3fnEH3AVAuaCrQAXaQ5dKjnMoqanQtLez47OXNaBHb1Vfj1aoa8/3Ku7
         4NXp5FzkDE2WrWACPzeb9JwToF3DP/WzmtvTuzqygdhkOZO3fBkKzHxFhUScflRI7hlt
         QoHIzQpYHOlq2VskZeRHUYLahM/ZVAgUUhjzPNftRmm5vNGiOJHwOUvQLe4XnyekrPyX
         +ZnGxBCpJIWsyGroi8kS3+RyC75nJvihutp+HJylbXqi9mpQ50Kf1OBJtjhj5o+Qm8Og
         DGbg==
X-Gm-Message-State: AG10YOToBLVD9xOgtaQAj8kO2tVriMtGQe+sEV1kFak5CbamQi+/nK+qxZiqihrMehWsog==
X-Received: by 10.98.9.27 with SMTP id e27mr30069555pfd.59.1456042597479;
        Sun, 21 Feb 2016 00:16:37 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n68sm28662715pfj.46.2016.02.21.00.16.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 00:16:36 -0800 (PST)
Date: Sun, 21 Feb 2016 13:47:08 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] Place constants on the right side
Message-ID: <20160221081708.GA23680@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch-set moves constants to the right side of binary operators.
This was done with the help of Coccinelle.

Bhaktipriya Shridhar (3):
  staging: rtl8712: Place constants on the right side of '&'
  staging: rtl8712: Place constants on the right side of '!'
  staging: rtl8712:  Place constants on the right side of '=='

 drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
 drivers/staging/rtl8712/rtl871x_xmit.c | 4 ++--
 drivers/staging/rtl8712/wifi.h         | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

--
2.1.4


