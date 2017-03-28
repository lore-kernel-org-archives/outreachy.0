X-GM-THRID: 6401745642575626240
X-Received: by 10.157.62.202 with SMTP id b68mr9252028otc.53.1490695513809;
        Tue, 28 Mar 2017 03:05:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.95.9 with SMTP id r9ls2333152itb.14.gmail; Tue, 28 Mar 2017
 03:05:13 -0700 (PDT)
X-Received: by 10.99.122.65 with SMTP id j1mr9612487pgn.89.1490695513042;
        Tue, 28 Mar 2017 03:05:13 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si506297pfb.2.2017.03.28.03.05.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 03:05:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id o123so17393408pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 03:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=5LaLSuAuYBwv7ug21wPhGIh01qA1qRGePRytBg/Srtc=;
        b=V3YdetW6HbTLdAb6JD+azVFlDTSjf7ZwsIYfDLo6Crez0yFbls369wfkAv8H/NQsrC
         myxMJwECfnS/zLPiNUN5jCtmD0PWOHvOvpvyqAM8Qs4o/H+GJJCSv2Gg3pEeVFTIfC0n
         RIoyNGhUv6tWIBpi7BmwrqJFNQ8TZaT4/K2Emm7GiGsM9NMHzLYLLz6U40KQHfqxXURp
         6vpDiWNmYJAUVh854wcK+s3imFF+ELQludhArM+v2Lvn/Kato/FQbGIV94CVIHA3zY0t
         jcWgVGfksoJUD7PlBKOp9dcJY4qzAABEthYKh90WuQiuGwpNY9TswGyhwf5MqxhtVngC
         uApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=5LaLSuAuYBwv7ug21wPhGIh01qA1qRGePRytBg/Srtc=;
        b=mjxxinWuPzFZGyT2eto29j5tniAbidtVvQS95Q1yJ+XEDs59UdNgxUlNzp36Woyvn8
         4fiT4NnA3qHetG9WY0OWOkZr53T5vf1ATf98kpgqE4tzyPEpgl5b9OJrrr5UetFvjSiW
         G6KEr/Na9fFg/FYJQwq5hRadmvXFnXwXI6WKBy/vQ3pf4LN/ZxLzwFOs02i4rbyiu3ws
         cueA/o3xlhdPrf/46R0fflK78Mu31FH6Cvrr/2sqnYV10daAbNU6NJXPvHWMaOsbYh1I
         ydwPUWjUP8vijnA5oyesxJTP46Gxp/d7OqBP/pEvcuxIKtz68Vz+Ji5tRx/PCsE/4tUw
         x6pA==
X-Gm-Message-State: AFeK/H0e6snUQWH6R/nxJecHd/giPgrks0XAcZTxeiDk/wMpuWtjs6s0V0NltjBtmbTO2A==
X-Received: by 10.84.137.165 with SMTP id 34mr34559300pln.125.1490695512869;
        Tue, 28 Mar 2017 03:05:12 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id o17sm6366576pfa.98.2017.03.28.03.05.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 03:05:12 -0700 (PDT)
Message-ID: <58da3558.1141620a.224a.08a3@mx.google.com>
X-Google-Original-Message-ID: <20170328100505.GA566@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 15:35:05 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 0/5] include: linux: pid: Update documentation and fix
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

 include/linux/pid.h | 52 ++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 36 insertions(+), 16 deletions(-)

-- 
2.9.3


