X-GM-THRID: 6250664265920806912
X-Received: by 10.129.51.2 with SMTP id z2mr5320883ywz.49.1455346184204;
        Fri, 12 Feb 2016 22:49:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.42.164 with SMTP id p4ls655945obl.13.gmail; Fri, 12 Feb
 2016 22:49:42 -0800 (PST)
X-Received: by 10.182.29.10 with SMTP id f10mr5540814obh.36.1455346182820;
        Fri, 12 Feb 2016 22:49:42 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si1860438pad.2.2016.02.12.22.49.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:49:42 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id zv9so433511pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=1IgTdK1mqNA7nDPgi0JYLM8Ne3PxI9n1kbpHnvxxlAQ=;
        b=V/1i1mWxdnuov9EOgRbx8S+ag+SDOXLFGT75Wv2dZZWzc6gCRi+G//r3G2cE35TkV6
         Cge5HVe8c1gb+Cy3evQLh/w9/41e7uGFJpYPEHmQB7nMfTtCy5C78on280sPmAuOK5DH
         uzuCJvMY366pTCK7E53mrZ6ffpTVsXKu5g3WThMVb60FcCUKNygMZ5DTfX1HfY6MkdbV
         mAI3c5CctsgLQkoplIiqUatsmEHtrHD1BvwACiT26YEep6HrYOyVHCcBinVLYkYe19JJ
         0FrBXMF9no7Z7Xc0msPP0WrWdUfduZ242r8DELbXEF7V8fAHgPiad4EtMVVwbZlVBXJw
         plXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=1IgTdK1mqNA7nDPgi0JYLM8Ne3PxI9n1kbpHnvxxlAQ=;
        b=gKiq2DzhmBv/piCBhzLkDVox8dDFSBbN9rYcEaD/cNqHU7ShZOTiKyBme3PQE+le9e
         n7OTfPQUCxnuRasrWKjD0pQxxLhQ6yjU4J4SVmDrv4q31zfZa1AIolSSJvtY1yb0W9Pv
         0oLphk+w5asSGbARohPniatbUs9zlUn5C9dk3ByjYpDu3YVv6lIVrJWH/ZICBkvdApyI
         DYoDJgOKxE9/4uMSQl46psMio9pAhVE5RvMeeYvgbqESqB+uD/noT5LzuiaO22wbgewi
         s9FSZEEeb4bsTeZxRUuYdyA5ukB8kvhwOiYV2kuYII7srZGoYhKwHwfXitiDOFF7il72
         7b7Q==
X-Gm-Message-State: AG10YOSBVJqqsvtlA3H76hTLjPxiQ5T+CkiB40+S1jIjXMx7L6MkL4AyyiWYmf08XmS1uA==
X-Received: by 10.66.142.132 with SMTP id rw4mr7723930pab.26.1455346182682;
        Fri, 12 Feb 2016 22:49:42 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id z67sm23696001pfa.71.2016.02.12.22.49.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 22:49:42 -0800 (PST)
Date: Fri, 12 Feb 2016 22:49:41 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: wilc1000: remove cast on void pointers
Message-ID: <cover.1455344328.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Patchset removes casts on void pointers in wilc1000.
The patchset is separated by .c file. 

Alison Schofield (4):
  staging: wilc1000: host_interface: remove cast on void pointers
  staging: wilc1000: linux_mon: remove cast on void pointer
  staging: wilc1000: linux_wlan: remove cast on void pointers
  staging: wilc1000: wilc_wfi_cfgoperations: remove cast on void
    pointers

 drivers/staging/wilc1000/host_interface.c         |  4 ++--
 drivers/staging/wilc1000/linux_mon.c              |  2 +-
 drivers/staging/wilc1000/linux_wlan.c             | 10 +++++-----
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 12 ++++++------
 4 files changed, 14 insertions(+), 14 deletions(-)

-- 
2.1.4


