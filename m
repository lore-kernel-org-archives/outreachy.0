X-GM-THRID: 4691261915136
X-Received: by 10.182.171.2 with SMTP id aq2mr13657344obc.23.1425059743437;
        Fri, 27 Feb 2015 09:55:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.236.41 with SMTP id ur9ls279072obc.40.gmail; Fri, 27 Feb
 2015 09:55:43 -0800 (PST)
X-Received: by 10.182.142.102 with SMTP id rv6mr14936466obb.47.1425059743261;
        Fri, 27 Feb 2015 09:55:43 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id xj4si552373pbc.2.2015.02.27.09.55.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 09:55:43 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so24393362pab.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 09:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BJS24dNY6CT0ZfNzaJbI/+BMoxkyaSlNZ4CFzw6v6Qc=;
        b=k3h0h2EiyAji203w+fN8CRxHYZlttBUgbLvFViWmPrgF3SeRsvYPOvNrHfsoAbJXYg
         HpX8TXqNL0axKYAEwocFdCXtZxJ5+ysFI8kOcTaJsflhoHkgUAtMlzDHDMx8A2mONkTK
         ZIX2mHqAAs/NbrdxaecpJoyMJBK/66vRpvRo1168S0kINfkTdlQ+3w0b91ZtZadJcZYp
         ukL4SnOvB+Et02tzfDncSiOx1+Tg6ENtieFdfLtuLplnZmvqnpChgfpiYhUPkpPiNvHU
         i5HSakZN/U1WhBO9CHemqtT+vjFcOIkOhLc8NQcJwqB611MZI2v0FQ+qKDWvFuPNOmI4
         Hd4Q==
X-Received: by 10.66.175.107 with SMTP id bz11mr25463193pac.91.1425059743020;
        Fri, 27 Feb 2015 09:55:43 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.97])
        by mx.google.com with ESMTPSA id i4sm4547520pbw.61.2015.02.27.09.55.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 09:55:42 -0800 (PST)
Date: Fri, 27 Feb 2015 23:25:36 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: rtl8712: Use mod_timer and setup_timer
Message-ID: <cover.1425058745.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch-set introduces the use of timer API 
functions mod_timer and setup_timer instead of 
driver specific functions _set_timer and 
_init_timer respectively. Here, these changes
are done using Coccinelle.

Vaishali Thakkar (2):
  Staging: rtl8712: Eliminate use of _set_timer
  Staging: rtl8712: Eliminate use of _init_timer

 drivers/staging/rtl8712/mlme_linux.c        |  34 +--
 drivers/staging/rtl8712/os_intfs.c          |  11 +-
 drivers/staging/rtl8712/osdep_service.h     |  14 --
 drivers/staging/rtl8712/recv_linux.c        |   5 +-
 drivers/staging/rtl8712/rtl8712_led.c       | 327 +++++++++++++++-------------
 drivers/staging/rtl8712/rtl8712_recv.c      |   4 +-
 drivers/staging/rtl8712/rtl871x_cmd.c       |   9 +-
 drivers/staging/rtl8712/rtl871x_ioctl_set.c |   3 +-
 drivers/staging/rtl8712/rtl871x_mlme.c      |  14 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.c   |   4 +-
 10 files changed, 221 insertions(+), 204 deletions(-)

-- 
1.9.1


