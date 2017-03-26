X-GM-THRID: 6401745642575626240
X-Received: by 10.159.35.99 with SMTP id 90mr4877084uae.23.1490522558629;
        Sun, 26 Mar 2017 03:02:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.77 with SMTP id v74ls3302779ioi.41.gmail; Sun, 26 Mar
 2017 03:02:37 -0700 (PDT)
X-Received: by 10.99.97.85 with SMTP id v82mr5751066pgb.11.1490522557757;
        Sun, 26 Mar 2017 03:02:37 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id s67si1219904pfs.4.2017.03.26.03.02.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 03:02:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id p189so4792311pfp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 03:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=20QMXJ5/wXlQpyF23PjIvIGAg76F6wUlcvUqJzFgGHE=;
        b=iwrRn6KXmbfQksBwf7lvDH4V/xYflk30RCNVgeudU+kVo0/A2U7vTF6cm2MAoE82gi
         CAa1uYUiN/pZ79HA9mP1yXATa07uxOH4NDXfCYR1Fer2dU84e7fC924oPe8ckKTkrIkN
         uh2dhCj5EBS4qHZEKzowCRWBQLbTUq2JY+286C8qXG3oim1evVeGDJ6xs4nHjUj1pROb
         sIm1I6OGFd011zIzOLGFJ3PGLs77Z1ZvibbrUjw/lQ9Dn9VOQl9fcl6qmLUYN8yngKq7
         Bs6NcGESXLjDE9OOmhMaa6JUI226jQpB/Sp8jNni/4+4TxrxzpLl6t8omSVanVKlUxt7
         lMpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=20QMXJ5/wXlQpyF23PjIvIGAg76F6wUlcvUqJzFgGHE=;
        b=JlW/HdrJDF6ZXghGJbdtvJgZ2dGLt6x0E5nrIb/nUFZ946wzxgrdQNSNGB6TwgfWQB
         M0qjsDQwT0wsRFqQX0rHsGGqgMp5oDlN92wORgmOfh9XN//0ScrMawdWwRPyGHhDRj6L
         3DJ1Z4u9NohDoDdNtud0IGeaN5wca7V7Uhm/9r1BSnjvvsX8jxO7Y2oFtvPIo9oahxL4
         B2U3BMv5xsXJ2hwSnJEbivlqwpUnSPsKj7Vs/FSRyY5NFiYLsO+4O5ZeWJDoKdZ83a8e
         GiRq6GXPRy4ZgCdphSaQEpmBl72Sl1V1VMNd2hK5YS0kDymI6v7bOak7PI8LktokCpZI
         ZRdg==
X-Gm-Message-State: AFeK/H3wFIN8kbTRweEVTrIQE2dXohS9VVY1nmaDuuYg0VFvD/mO5Z2IuHoc6AqBjFG+NQ==
X-Received: by 10.98.205.7 with SMTP id o7mr19214069pfg.171.1490522557313;
        Sun, 26 Mar 2017 03:02:37 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id c1sm14451558pfk.112.2017.03.26.03.02.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 03:02:36 -0700 (PDT)
Message-ID: <58d791bc.8195620a.65104.4c57@mx.google.com>
X-Google-Original-Message-ID: <20170326100233.GA15926@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 15:32:33 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/5] include: linux: pid: Update documentation and fix
 checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset fixes multiple checkpatch issues and updates documentation
of pid.h file.

Varsha Rao (5):
  include: linux: pid: Update documentation.
  include: linux: pid: Move open brace to previous line.
  include: linux: pid: Add identifier to function definition argument.
  include: linux: pid: Add a blank line after declarations.
  include: linux: pid: Remove space before tabs.

 include/linux/pid.h | 64 +++++++++++++++++++++++++++++++++++------------------
 1 file changed, 42 insertions(+), 22 deletions(-)

-- 
2.9.3


