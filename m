X-GM-THRID: 6391110237247504384
X-Received: by 10.36.95.75 with SMTP id r72mr3739524itb.15.1488189657694;
        Mon, 27 Feb 2017 02:00:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.14 with SMTP id k14ls1179366ioe.35.gmail; Mon, 27 Feb
 2017 02:00:57 -0800 (PST)
X-Received: by 10.99.226.3 with SMTP id q3mr6207412pgh.129.1488189656986;
        Mon, 27 Feb 2017 02:00:56 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h130si2995604pfe.1.2017.02.27.02.00.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 02:00:56 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so1705548pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 02:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=ndrWSHSqmjNB6xb0yzOH6rTmx4mtxjFdTNo63KBKNJU=;
        b=S16oMFiQaZI+WFTDD69jSOToU16x3KLRwYKo/09+BNoOkHx+QwXNJt854VO/QJ7NdY
         VZMK6WPlJVRDcT+SaWnOfs18a6d+DDBWHye/s4PDSzsC4Pcy2UVmPU2G3lAk9qyWkgJZ
         jh5tuCDBPa+iZ/Ux/kp+OlzN+K764qxTxeoC7j//0frKIj7laxljBgfnVTorJS7jEBEU
         qp9L1flVZc+K70lKCyMLs5w0zKZoHYKYi5eM42aRj8bWSBVPUzhvsSbcltrq1Cl5YKc7
         vQ3BojKKvPbvxqU2HZlz3hasxi7g2C25ZUMKQbLRhhAKd+70Vj9jsvs4fVAM9e7SB7GC
         KTag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=ndrWSHSqmjNB6xb0yzOH6rTmx4mtxjFdTNo63KBKNJU=;
        b=ZOVvX7tXL0kpcjrI8GgWqsx/ECa59kWcS7/rx6kpJrNO9thBCE+laZq2QqW51/qROa
         tAJsrHYnRc90CpHv3fHzjLTyhpSNiHK45S+B/VvI2/hYrG69mzy7V/C9zMSpJEy+VT+G
         IDZggrfbsL70PFX0GjlrU50HIbieGtXvL+GPcX85z7NYKTrsTWiu28H9Gx6DQ3bYRKnN
         AuH2/ibtUmvKteDzLkYgoN0o01cQqkcOp08zTZr3/52Nq60XFKKA5+q7FRdZSsZZC7+h
         ghlv+VJ8jqdA2ZIVfVqJTAQXTcq3OobB7vrwGuNxQxKGIVMc2OcXiQuvrolDHBxtxyIf
         4i4Q==
X-Gm-Message-State: AMke39mK1PAF5z4XgGllJ5buvt9c7H4rzaxYG6Sxa8rh/MrZuaioKHdPW9moDb4lOGOK/w==
X-Received: by 10.99.124.3 with SMTP id x3mr19646041pgc.146.1488189656760;
        Mon, 27 Feb 2017 02:00:56 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([118.151.209.30])
        by smtp.gmail.com with ESMTPSA id b7sm29560878pfg.53.2017.02.27.02.00.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 02:00:56 -0800 (PST)
Message-ID: <58b3f8d8.07cf620a.eedac.f3ce@mx.google.com>
X-Google-Original-Message-ID: <20170227100047.GA2710@<rvarsha016@gmail.com>>
Date: Mon, 27 Feb 2017 15:30:47 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5 0/7] staging: sm750fb: Fix multiple checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Fixes multiple checkpatch issues in sm750fb driver.

Varsha Rao (7):
  staging: sm750fb: Add braces around if statement.
  staging: sm750fb: Fix line over 80 characters
  staging: sm750fb: Add identifier to function definition argument.
  staging: sm750fb: Remove unnecessary blank lines.
  staging: sm750fb: Added spaces around arithmetic operators.
  staging: sm750fb: Replace NULL comparison.
  staging: sm750fb: Remove blank lines after { and before } braces.

 drivers/staging/sm750fb/ddk750_chip.c    | 14 +++++++-------
 drivers/staging/sm750fb/ddk750_chip.h    |  2 +-
 drivers/staging/sm750fb/ddk750_display.h |  5 -----
 drivers/staging/sm750fb/ddk750_dvi.c     |  6 +-----
 drivers/staging/sm750fb/ddk750_mode.c    |  5 -----
 drivers/staging/sm750fb/ddk750_mode.h    |  2 --
 drivers/staging/sm750fb/ddk750_power.c   |  5 -----
 drivers/staging/sm750fb/ddk750_power.h   |  1 -
 drivers/staging/sm750fb/ddk750_reg.h     |  4 ----
 drivers/staging/sm750fb/sm750.c          |  1 -
 drivers/staging/sm750fb/sm750.h          |  2 +-
 drivers/staging/sm750fb/sm750_accel.c    |  6 +-----
 drivers/staging/sm750fb/sm750_cursor.c   |  4 ----
 13 files changed, 11 insertions(+), 46 deletions(-)

-- 
2.9.3


