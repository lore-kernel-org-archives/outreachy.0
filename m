X-GM-THRID: 6254033434194214912
X-Received: by 10.13.215.140 with SMTP id z134mr27598353ywd.7.1456130629005;
        Mon, 22 Feb 2016 00:43:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.23 with SMTP id g23ls742421iod.90.gmail; Mon, 22 Feb
 2016 00:43:48 -0800 (PST)
X-Received: by 10.50.124.73 with SMTP id mg9mr10529575igb.4.1456130628709;
        Mon, 22 Feb 2016 00:43:48 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ff2si3272500pad.2.2016.02.22.00.43.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 00:43:48 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id yy13so87675729pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 00:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BJTcKSdM+/oJbGe7r7nIAWCbdPX6b9m2VJigxaxIiLI=;
        b=IEyvD/wYOqYU3vLTxcBIAsx/KuyQLmixgrVg8iv0S9IXAqKy8VmwUaocQ6mUyqJkNc
         0fTNExi0+nGge9yZ9NOb6/9oosNNnN9FKFVrO3fwaQIlpbct2Zx4SnxLfhuLEu+Wyd4P
         mT6x+Wl+g3q2UUbMdpRR+xMqCK7vbaaZC4YfCy1/E3vQdDBgVMAaLg4UhydyiWFS3nP7
         ylrLmy2qxDNd1D9Tt6ygQRmmGLiNjTBrqcReJ0GAoam0CLPsxdlFhoCTHJmGj0a7LzZf
         kcoHFBmVPEYl7lAJ+l7NR/rp7O1wx/8GLgw2REhN/J9s1SZWEfkBadJjIkYiGcycHY3m
         +lQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=BJTcKSdM+/oJbGe7r7nIAWCbdPX6b9m2VJigxaxIiLI=;
        b=dYB4Nbfvek1+i/CorU0v1bp0oRi47Q69iPubbBlMb0N3h7aRpz+3KQODNkhmFCDYXW
         3v1Sr6AJ/7La8WcWKxZ+H4JGFrhfDW0ywEXA7YhrsQ4klTUYDhGETt24gbSgHuJY7PL0
         DdhxrFffhNQjrlm9+bxiVEbjGHxjkA57FADCLYU4XcqGOjmF4C9wqyzYrO56XmmwQrC9
         //6agEAah9NHHGl6UtCwjbMo6DLAazTJXUZ+xNlhtd2/f8b92Fu2qyhOQTbH80qSGuDD
         dRnrdAVFaatW/z2VyA3M3dkrVrhX0509Dbci15MF50k02TA/N+MAoHbEfBl+/w6aGAPY
         YNJg==
X-Gm-Message-State: AG10YOQlgJBLUeTGWdNoRc7l9WR7PsHtZBcKXbP0K2rGOhOrQKyDJD2oG/WtjAqOBX1TgA==
X-Received: by 10.66.221.10 with SMTP id qa10mr36358622pac.4.1456130628521;
        Mon, 22 Feb 2016 00:43:48 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id z7sm34913875pfi.19.2016.02.22.00.43.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 00:43:47 -0800 (PST)
Date: Mon, 22 Feb 2016 14:13:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/7] staging: Remove duplicate header files
Message-ID: <cover.1456129759.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove duplicate header files from files of staging drivers. Found
using includecheck.

Amitoj Kaur Chawla (7):
  staging: emxx_udc: Remove header file
  staging: lustre: obdclass: Remove header file
  staging: rdma: hfi1: Remove header file
  staging: rtl8188eu: os_dep: Remove header file
  staging: sm750fb: Remove header files
  staging: wilc1000: Remove header file
  staging: wilc1000: wilc_wfi_netdevice: Remove header files

 drivers/staging/emxx_udc/emxx_udc.c                         | 1 -
 drivers/staging/lustre/lustre/obdclass/linux/linux-module.c | 1 -
 drivers/staging/rdma/hfi1/user_sdma.c                       | 1 -
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c              | 1 -
 drivers/staging/sm750fb/sm750.c                             | 2 --
 drivers/staging/wilc1000/linux_wlan.c                       | 1 -
 drivers/staging/wilc1000/wilc_wfi_netdevice.h               | 2 --
 7 files changed, 9 deletions(-)

-- 
1.9.1


