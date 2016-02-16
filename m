X-GM-THRID: 6251650339458514944
X-Received: by 10.112.205.164 with SMTP id lh4mr2856906lbc.6.1455662115198;
        Tue, 16 Feb 2016 14:35:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.137.214 with SMTP id l205ls157793lfd.65.gmail; Tue, 16 Feb
 2016 14:35:14 -0800 (PST)
X-Received: by 10.112.137.102 with SMTP id qh6mr2985995lbb.9.1455662114625;
        Tue, 16 Feb 2016 14:35:14 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id v197si749703wmv.1.2016.02.16.14.35.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 14:35:14 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id g62so212299027wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 14:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/dM6vd3QJiC/9G9OPXkBSWFlx6SSeJ+1utz9fwPVK8I=;
        b=uK37ekZjwkWAAu8Zh0Vx2/qI9tixpebslryqkM2K0FbCVBImim+h8ZjGJhxWiUk3Xw
         bjULsX8u38S4Sl7uBa7d6hLufs25pDfOgrYASln9bPcIEdTS0HJ8NIPlSEw6qDW59D0O
         ZLE6NqnOGJG4R8IfT3M/XZyCzCFA2zatM2mtz97uFBVwXp6UBa+ZO0Si9DgFjdfugbv3
         QJnWdQQmPejI6p19GK6Mwzc1Jp0UFewA9xchyw6Vcs9aJrM67mvotdi5B9naqiz6UFpL
         iyPdDPhhOsoJwKXiWoNJ9wDqIesVReZG/dCPMD3Vrn0Uguz10irR2SGKhk0GiAfxElrP
         FS3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=/dM6vd3QJiC/9G9OPXkBSWFlx6SSeJ+1utz9fwPVK8I=;
        b=ZwNDhvLWbfuLDBnIC4PDucwILmze8mZN6C6dFBo+fVzbpDN0utLWJQk2A3xh8xmyAr
         sUF4cTr2T3FJf4jdALemhTfZqln/K7+6A3QE6ziNDleZEX+urH7iF7EAv2eTp6AjrP5g
         jvbkDb1lxuKDNlr4jZ6qItpQs06lW2JXDnOikcCxeW/2iHftXzkNGtjgdgcWdiFc6FPP
         EB/IKBusChobN+DrTluUI+WpTyTS2BXd58t/ITTMUE05rYLJH5ONJmqfIsciCnE9ybAa
         L5A4gy2bq6iWYsJP1kV1bgmFrI6V4HjVhBH53AfslYxABwBvCuAd6ZGHuFwX0XVpvpyv
         waJw==
X-Gm-Message-State: AG10YOSvfc8qTVVVNTfnVhfsv5nwkI+nfqxtdZlbs4+VERw5hNK+U0aZgLBhD+/t/x/A/w==
X-Received: by 10.28.90.133 with SMTP id o127mr22972671wmb.101.1455662114525;
        Tue, 16 Feb 2016 14:35:14 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id 192sm143233wmw.0.2016.02.16.14.35.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 14:35:13 -0800 (PST)
Date: Tue, 16 Feb 2016 23:35:11 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/7] staging: netlogic: Fix several checkpatch issues
Message-ID: <cover.1455661648.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset updates the netlogic driver in order to clean up completely the driver source code.

Laura Garcia Liebana (7):
  staging: netlogic: Fix several parentheses alignments
  staging: netlogic: Remove blank spaces after a cast
  staging: netlogic: Fix multiple assignments
  staging: netlogic: Fix CamelCase for constants
  staging: netlogic: Fix comparison to NULL
  staging: netlogic: Insert spaces around operator
  staging: netlogic: Fix indent for conditional statement

Changes in v2:
	- Patch 2/7 Include parentheses for pointers
	- Patch 5/7 Avoid to change comparison for devm_ioremap_resource value

 drivers/staging/netlogic/platform_net.c |   6 +-
 drivers/staging/netlogic/xlr_net.c      | 174 +++---
 drivers/staging/netlogic/xlr_net.h      | 978 ++++++++++++++++----------------
 3 files changed, 581 insertions(+), 577 deletions(-)

-- 
2.7.0


