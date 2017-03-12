X-GM-THRID: 6396623308648873984
X-Received: by 10.13.216.20 with SMTP id a20mr13491641ywe.10.1489329922620;
        Sun, 12 Mar 2017 07:45:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls6726372ota.27.gmail; Sun, 12 Mar
 2017 07:45:22 -0700 (PDT)
X-Received: by 10.157.11.109 with SMTP id p42mr12780218otd.14.1489329922304;
        Sun, 12 Mar 2017 07:45:22 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c123si2655710pfa.4.2017.03.12.07.45.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:45:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so10943285pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 07:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=F+PAdwl65B3+XxeJV7nXaU8m96gYFLcK2Z3npTO7uzE=;
        b=fd3S3upzz4KkGvdryRJpU2A1MmgTqIvcO1VMrWsTuTSZEMYdAHEDeW35mfUpBTwqgE
         8Z00pxT0pa2+3qkwIljaqeRKNwK0+X0a7R6sSsNexGBS0favqHRVcmSCAd9HuoF4L5x7
         Fr6Jz6JI8924HLJNw/q8LQt9qjVsvLK8xCFi0Ww4ynRwMAoJCCsohvxnBC+FFZDknGF+
         Q8EGBp1gtJzKPY6172saIuWWbytEWxtDENTOnRo/XVOpYpapm9YXaiT7ItGgdjKzJV43
         Ud2NQyV6u1H/fIOkYWdK7iJacNmU3bX0jYsz/sMHD2AnZxar/EWOc+6KN2c3LXVbZINO
         3A/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=F+PAdwl65B3+XxeJV7nXaU8m96gYFLcK2Z3npTO7uzE=;
        b=EgBvCrPIw4tDC/IdLP2pI1WjVpbPlZvGUektEiWZgXqzZvycOJchEegcr8NEBV7bKt
         xN92Kqcafwms+BUxdkOG7V0ppAtoq6ST0v9DhnCkEzs/H7RvLbh6jFOvbgBPDIYuSLty
         T8NHAuhuIVkvB0lZfFjxRoHpQuLwm91BjgktQI9qf/fw2p4xd0qIBPzLVG/xthgD4DFr
         7srObMaBe5yz4j5I/Io70C/MS21ymAS14CjhEI5oznZSFIX3SSywM2R8+4mXcA2eDcEi
         LXiOaJtPLF+iPltp419v9yMwTumf0Z3GR32RWpKzK+HDcxk4dj2f0I3gBxqPwshsMZCa
         7VXA==
X-Gm-Message-State: AMke39m9St3D++9KWd2j8xtxpkTab2VC9Db/lOMuebC3gQhdxv0Pi5q2kk/Tn273O2AEOw==
X-Received: by 10.84.211.97 with SMTP id b88mr41063951pli.113.1489329922075;
        Sun, 12 Mar 2017 07:45:22 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.206.12])
        by smtp.gmail.com with ESMTPSA id i3sm28751626pfk.47.2017.03.12.07.45.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:45:21 -0700 (PDT)
Date: Sun, 12 Mar 2017 20:15:03 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] Use true/false instead of 1/0 for bool initialisations
Message-ID: <cover.1489329182.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch series uses true and false instead of 1 and 0 as bool variable
values. Detected by coccinelle/misc/boolinit.cocci.

sayli karnik (2):
  staging: media: mt9m114: Use true/false instead of 1/0 for bool
    initialisations
  staging: media: mt9m114: Use true/false instead of 1/0 for bool
    initialisations

 drivers/staging/media/atomisp/i2c/mt9m114.c | 4 ++--
 drivers/staging/media/atomisp/i2c/mt9m114.h | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.7.4


