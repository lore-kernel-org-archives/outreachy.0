X-GM-THRID: 7760961863680
X-Received: by 10.112.147.35 with SMTP id th3mr5789820lbb.15.1426126834816;
        Wed, 11 Mar 2015 19:20:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.101 with SMTP id gt5ls418297wib.28.gmail; Wed, 11 Mar
 2015 19:20:34 -0700 (PDT)
X-Received: by 10.194.201.10 with SMTP id jw10mr5935860wjc.3.1426126834397;
        Wed, 11 Mar 2015 19:20:34 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id bz6si787331wib.3.2015.03.11.19.20.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 19:20:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id r20so43903313wiv.5
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 19:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AtmuSKAxRe5fFBilrLIZU+TY4EJ1xzZnZBbCW3bewLo=;
        b=eNo2f4oTcJ/euzHtOmgNssGTz7IklnK30BmSx802n1LXYtk4eLvRLlcYHlOCHTVT1S
         ZwNSkI+2xXylZ/2Cs+qaGaQ5foTAvhdOXULK1siPpYmEdtSiHCdccgq0nUnAomTBwcq5
         CDRhSHNPwk9cJX/8Buxc3xnsasYQPMqaDMZVHtEFwRJZYLtlj2q3VQTJm44oAdxPd7+7
         x6ESROwZKJIMmZGjZyY04E/KptuZUTd9OHoPkAKKhhNdj1ADGk+KjJ7cAywKTrAcS+yA
         JjXUylDKAe8n92fyFzLcHgzNNX3LCmQ/b6C3mO9DzSts8XUWk9KPAoLAEWiuhY7eP8fY
         siUw==
X-Received: by 10.194.185.68 with SMTP id fa4mr81115218wjc.111.1426126834300;
        Wed, 11 Mar 2015 19:20:34 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id hl8sm7852954wjb.38.2015.03.11.19.20.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 19:20:33 -0700 (PDT)
Date: Thu, 12 Mar 2015 04:19:54 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Remove unnecessary variable
Message-ID: <cover.1426126379.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset detects and removes unnecessary return variables using
coccinelle.

Cristina Opriceana (3):
  Staging: rtl8192u: Remove unnecessary variable
  Staging: rtl8192e: Remove unnecessary variables
  Staging: rtl8712: Remove unnecessary variables

 drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c |  3 +--
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c        |  3 +--
 drivers/staging/rtl8192e/rtl819x_HTProc.c           |  4 +---
 drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 11 +++--------
 drivers/staging/rtl8712/os_intfs.c                  |  6 ++----
 drivers/staging/rtl8712/rtl871x_recv.c              |  3 +--
 6 files changed, 9 insertions(+), 21 deletions(-)

-- 
1.9.1


