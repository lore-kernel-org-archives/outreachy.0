X-GM-THRID: 6865699209216
X-Received: by 10.236.42.228 with SMTP id j64mr35924754yhb.36.1426054851760;
        Tue, 10 Mar 2015 23:20:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.100.174 with SMTP id s43ls472991qge.25.gmail; Tue, 10 Mar
 2015 23:20:51 -0700 (PDT)
X-Received: by 10.236.11.196 with SMTP id 44mr36215716yhx.31.1426054851573;
        Tue, 10 Mar 2015 23:20:51 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id m1si553143pdc.0.2015.03.10.23.20.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 23:20:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfb1 with SMTP id fb1so8727043pad.7
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 23:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=iN8xb93+FefeHOTuNk/1SzgHoq3bGt8YrUip1OA13e0=;
        b=sAX1cDEV9pnHrv3vR4i3zZ4u7+NGyighGFNyvA5BsinddgKC1EKlp+Zj90Rv1/MJBH
         KENT/PMSykD4+WwrTZ6jNqECbcbtaruAPoXIEYstyeifcA3/11J6f1Y5HvwcTm9MlzaH
         Ca5icxe1OezfhvgLV22ME+lac5RRe03KZOLtuK4SNWLPsOb9fCi37g6MJP6uNWJQlaZT
         FFsMPvKQvbE4ZduRcr4pX9FaK2F0J569LUOcIspRz8C2fjmYlT16RyBy/cfFVV+UOvUw
         /yFG6yCx7cMMkUNRmR80RZLYocqZhPzNEk1y+aWruqm2eP9cdeDFtMUfWRAznHx9xUIh
         Jj7A==
X-Received: by 10.70.0.207 with SMTP id 15mr23959308pdg.56.1426054851431;
        Tue, 10 Mar 2015 23:20:51 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([106.66.86.3])
        by mx.google.com with ESMTPSA id i6sm4166168pdm.4.2015.03.10.23.20.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 23:20:50 -0700 (PDT)
Date: Wed, 11 Mar 2015 11:50:39 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 0/2] Staging: rtl8712: Use del_timer_sync
Message-ID: <cover.1426054595.git.vthakkar1994@gmail.com>
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
  Staging: rtl8712: Eliminate _cancel_timer_ex
  Staging: rtl8712: Eliminate use of _cancel_timer

 drivers/staging/rtl8712/os_intfs.c        |  14 +--
 drivers/staging/rtl8712/osdep_service.h   |  11 ---
 drivers/staging/rtl8712/rtl8712_led.c     | 146 +++++++++++++++---------------
 drivers/staging/rtl8712/rtl871x_cmd.c     |   3 +-
 drivers/staging/rtl8712/rtl871x_mlme.c    |  10 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.c |   2 +-
 drivers/staging/rtl8712/rtl871x_sta_mgt.c |   2 +-
 drivers/staging/rtl8712/rtl871x_xmit.c    |   5 +-
 8 files changed, 88 insertions(+), 105 deletions(-)

-- 
1.9.1


