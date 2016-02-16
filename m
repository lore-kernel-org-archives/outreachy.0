X-GM-THRID: 6251897983822987264
X-Received: by 10.107.198.137 with SMTP id w131mr9040808iof.9.1455633431613;
        Tue, 16 Feb 2016 06:37:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.14 with SMTP id 14ls1737692ioh.102.gmail; Tue, 16 Feb
 2016 06:37:11 -0800 (PST)
X-Received: by 10.98.44.87 with SMTP id s84mr21649542pfs.3.1455633431272;
        Tue, 16 Feb 2016 06:37:11 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id 79si4053465pft.0.2016.02.16.06.37.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 06:37:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id c10so108340864pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 06:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vPSv3IZJMYFuS72QTDpS0iqTpuY31gd2tQcaam4K37U=;
        b=od3wV6mTFeRu8oZPV3oB2ESMadq07S0K7e2f8xbdaAMvqjuw2b+pP4nbwmHoHk6a9t
         M+8VK3tlX+QHDugnbIKIcveWF+CeN9UEKco57iKP5fyKGKbW/kRiUOMWyep6+DYNIHD/
         77Rmy03j0ys0bOB0REzvMM+zs1FY39CDunnjdyUPakJG13yY7CBo0fzkEDZKGeQfu+pt
         48c9IoLfMAAifMhWDDp0/v0IqAYIZe+/LEFPjepxG9YpUeJwBK279n4w7VoNZv8gng5x
         UKweO7VD4em2/iB14vx6VtZMzaL3zryq6ZD0nhmZqPyufZHFRFanrmSbTrMvpnLY6fYA
         Y1UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vPSv3IZJMYFuS72QTDpS0iqTpuY31gd2tQcaam4K37U=;
        b=gwwcUARYp6I9vY75Tn6iQgLHflzM5uamocg/7IRQefuMcEPZofAbwPgxXnckccwRBe
         MnyekQNmy18v3ESIPwG9UZy3ATR7hoOIkgH+7zyzmaKf3aN4RGDyHOsgvIYt/6+njlN5
         2qHZfSG4evJ7odt8fRTHlh6mh0HZ/2pOoj2Y1N8OTIYihv39JvPgWYQODBTb/YkOuPx0
         5TQ8Mn5iMtbrugKZeDz8UDAOX8nkmMchHLUxDtZftrGWCIvNr7PP4uMjDAI/sbjS71oX
         thw7lJcFnRskogw9M5JZdB5Pfpc+wIXTxCu28/yUB5a4TIRnhf4E0nPZSC/P2l0kSCuw
         vInQ==
X-Gm-Message-State: AG10YOSdvq2xXKUVVS9FhPfH7r3jdZWSomX7tp1Mzl/9od9BvFRjriYC3dRiSEe5CMLbMA==
X-Received: by 10.98.71.210 with SMTP id p79mr31533998pfi.4.1455633431151;
        Tue, 16 Feb 2016 06:37:11 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.144.20])
        by smtp.gmail.com with ESMTPSA id tp3sm46432188pac.16.2016.02.16.06.37.07
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 06:37:10 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 16 Feb 2016 20:07:01 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 0/2] Staging: wlan-ng: Remove unused functions
Date: Tue, 16 Feb 2016 20:06:57 +0530
Message-Id: <cover.1455632723.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The functions hfa384x_drvr_commtallies and hfa384x_drvr_getconfig_async 
are not used anywhere in the kernel so remove it. 
Also remove the function prototypes from the header file.

Changes in v2:
* Combine patches 1 and 2 of v1 in a single patch to remove function 
  hfa384x_drvr_commtallies and its prototype.
* Combine patches 3 and 4 of v1 in a single patch to remove function 
  hfa384x_drvr_getconfig_async and its prototype .

Bhumika Goyal (2):
  Staging: wlan-ng: Remove function hfa384x_drvr_commtallies
  Staging: wlan-ng: Remove function hfa384x_drvr_getconfig_async

 drivers/staging/wlan-ng/hfa384x.h     |  5 ---
 drivers/staging/wlan-ng/hfa384x_usb.c | 66 -----------------------------------
 2 files changed, 71 deletions(-)

-- 
1.9.1


