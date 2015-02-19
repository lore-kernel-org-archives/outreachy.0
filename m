X-GM-THRID: 566645227520
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,aff877e338498959,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.35.135 with SMTP id h7mr313447lbj.23.1424325055056;
        Wed, 18 Feb 2015 21:50:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.101 with SMTP id d5ls1328910wie.53.canary; Wed, 18 Feb
 2015 21:50:54 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr318310wjc.5.1424325054639;
        Wed, 18 Feb 2015 21:50:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com. [74.125.82.180])
        by gmr-mx.google.com with ESMTPS id l8si30614wia.0.2015.02.18.21.50.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 21:50:54 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.180 as permitted sender) client-ip=74.125.82.180;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.180 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so5170073wev.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 21:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QNcpjMzyM2YHHkBFwDw221B7QKG7xGRf18vCFaNKgGY=;
        b=nqb6je20rgqkAxgp/EaT52sya8iSSi5xfUpCQShVEOpLbeTksmkSQHccEpTwYCHuxJ
         A/tNbvLm8fT5nJKpPe48PMfZL+ygtRTfopwnSThTuT/5VeMo+g/68WyX3+ObbY6NtjdM
         YwHCKx9/4p+Edj5DcYXzXq9+nZnMD0Lxw4aicaRKvNEV142LDs4zPg3iRi1n3j3MleSy
         /nd49tU+NhlaL/H6LMTQXnJxC09mpwMrwTrCJGF9rF0lxdnPAoGQXDF7rWvmEOmtrQR9
         T/d8RWiby11sGRKLSaFtrFwO7Gnx0RTOJeHMeKzcC/W+xGM1NXlteZYF7sQMVEZw3xHs
         R4XA==
X-Received: by 10.180.97.226 with SMTP id ed2mr11628329wib.4.1424325054539;
        Wed, 18 Feb 2015 21:50:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.198])
        by mx.google.com with ESMTPSA id dm6sm32589295wib.22.2015.02.18.21.50.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 21:50:53 -0800 (PST)
Date: Thu, 19 Feb 2015 07:50:48 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] replace init_timer by setup_timer
Message-ID: <cover.1424324574.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch replaces init_timer and the 2 step initialization of
function and data by setup_timer in 5 different files. This is done to
make the code look more concise. Each file resides in a different driver. 

Aya Mahfouz (5):
  staging: wlan-ng: replace init_timer by setup_timer
  staging: dgnc: replace init_timer by setup_timer
  staging: panel: replace init_timer by setup_timer
  staging: rtl8192u: ieee80211: replace init_timer by setup_timer
  staging: slicloss: replace init_timer by setup_timer

 drivers/staging/dgnc/dgnc_driver.c                    |  8 ++------
 drivers/staging/panel/panel.c                         |  4 +---
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c    | 10 ++++------
 drivers/staging/slicoss/slicoss.c                     |  9 +++------
 drivers/staging/wlan-ng/hfa384x_usb.c                 | 19 +++++++------------
 5 files changed, 17 insertions(+), 33 deletions(-)

-- 
1.9.3


