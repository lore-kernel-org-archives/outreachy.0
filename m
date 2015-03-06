X-GM-THRID: 6865699209216
X-Received: by 10.182.18.67 with SMTP id u3mr14425116obd.38.1425639211366;
        Fri, 06 Mar 2015 02:53:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.72 with SMTP id n66ls290887qge.71.gmail; Fri, 06 Mar
 2015 02:53:31 -0800 (PST)
X-Received: by 10.236.18.232 with SMTP id l68mr13585787yhl.16.1425639211212;
        Fri, 06 Mar 2015 02:53:31 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22b.google.com (mail-pd0-x22b.google.com. [2607:f8b0:400e:c02::22b])
        by gmr-mx.google.com with ESMTPS id hs7si1290671pad.1.2015.03.06.02.53.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 02:53:31 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) client-ip=2607:f8b0:400e:c02::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdev10 with SMTP id v10so27784513pde.0
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 02:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2BGcGUyx9vRcypcjARC5lS7aOqSe+AcMoB/ABROF8o8=;
        b=Wp8mUtVf52jCRSlFcNlV49BbKmxyLPFXIx1ArLY/Bj1eP1IOh2ml2k1he73vG7TfYp
         tGjRsxW5vKqHYvg7DQqd88DxMO+iSWQXWNTyfXTmqMHzdKFzvHVFlPu908xytgnXSyBH
         Wa1S4ZAioFT7M5Lbu78X27u3G/XUMGI5/iD1OgcbdbjGx2oXQq1OOKWDODEHCwUtDUD+
         gZ209VA9IBGeuVTduzYOC9gtIB4nv3bSD0O7OPcBfDQQyT4FuNtIQJRWRpFqiYeYnWxw
         EYnBzzQpoRKMCsUtViISEIevLB7T8rtut5x9tYyHmPkGU/wkiczQrskCCJNIR/OKPE2G
         Wylg==
X-Received: by 10.70.22.137 with SMTP id d9mr24333390pdf.135.1425639211050;
        Fri, 06 Mar 2015 02:53:31 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.241.177])
        by mx.google.com with ESMTPSA id l7sm9165782pbq.92.2015.03.06.02.53.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 06 Mar 2015 02:53:30 -0800 (PST)
Date: Fri, 6 Mar 2015 16:23:23 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: rtl8712: Use del_timer_sync
Message-ID: <cover.1425638418.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch-set introduces the use of timer API function
del_timer_sync instead of driver specific functions
_cancel_timer_ex and _cancel_timer. Though definition
of these functions were returning del_timer, here
del_timer_sync is a preferred solution as besides
deactivating a timer, it also ensures that the timer is
stopped on all CPUs before the driver exists.

All of these changes are done using Coccinelle.

Vaishali Thakkar (2):
  Staging: rtl8712: Eliminate use of _cancel_timer_ex
  Staging: rtl8712: Eliminate use of _cancel_timer

 drivers/staging/rtl8712/os_intfs.c        |  13 ++-
 drivers/staging/rtl8712/osdep_service.h   |  11 ---
 drivers/staging/rtl8712/rtl8712_led.c     | 146 +++++++++++++++---------------
 drivers/staging/rtl8712/rtl871x_cmd.c     |   3 +-
 drivers/staging/rtl8712/rtl871x_mlme.c    |  10 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.c |   2 +-
 drivers/staging/rtl8712/rtl871x_sta_mgt.c |   2 +-
 drivers/staging/rtl8712/rtl871x_xmit.c    |   3 +-
 8 files changed, 86 insertions(+), 104 deletions(-)

-- 
1.9.1


