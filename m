X-GM-THRID: 6608897994052861952
X-Received: by 2002:a62:8a41:: with SMTP id y62-v6mr6848617pfd.70.1538825083251;
        Sat, 06 Oct 2018 04:24:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:594d:: with SMTP id n74-v6ls1519805pfb.7.gmail; Sat, 06
 Oct 2018 04:24:42 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61wruNGxg8MJU6Lowke/Tg6yXHlxY7NGoynL6FnRSd9sxJ0Vtxf4pQhejdfGOiTqLsuk6NP
X-Received: by 2002:a62:f583:: with SMTP id b3-v6mr7366273pfm.23.1538825082617;
        Sat, 06 Oct 2018 04:24:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538825082; cv=none;
        d=google.com; s=arc-20160816;
        b=eQDYk79r+p84s0bqZdPBSthHfTSMBhT6QF8zqH8WKyAjUzXRHir/iUltXlDL7qlQtr
         uBenWyObuNYPE0PJMW6Xw1SO5/KpPn3uOu1tEWvuB4qLAG9Al9Kcxywpsk5FD5S+OtpN
         T5BPn6ztxwsHeB7CJov9NQgY+EOSxTiLaXuMJ9YbdJiBcs+5PhqtNjCTyU7xDR2PJQiD
         41LP1H0+ltSQ6FRTtf1o7GqGKtMWu1oCSsTswikzy7f2s9dgyAi2dETo+Bt6ToDaViBn
         lUaCe7pQxukrUa31bAWY7eA/XcXpok53SstepcOZ8tOAXMGetyk0DQvZ6EexRpx3O5z6
         gbwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=h6h+aR6S5unbsc2JiUPj5gM5nFW18SbwsHBAPhVb/JU=;
        b=r+P6o3fcWnGl2ZFoq9+UJSzm+rSE/IDPJYkDsxFY173IDU83Ty40YGZcDQR7PUOYCf
         NzawAw3e2R2bYbWiUGMg+L7M0S4L2MocTQyBBzGzjNSglbH94IPcvk2LCY3uZuQAAwPS
         m0JWAn4zwmxDrtTkUM3Mj8JtKrfcrui0Avcac8i6Vrylmj8fb7KPrXKgw3uZpPfpdyWE
         oTizrjz8fSd0NFS9tFMu2rr3zYk4mugu7WRqWEqqg2FVp+LAVWVsfqHTvN4xWUgOkKAG
         d16TBAjLp+CqUaH/L2DcI/rLjQKUFq5EXVZDNYm+LC22Nyh7MebtNM3phVgeXeRVi/x4
         pJsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xthz6BJk;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s138-v6si564803pgs.1.2018.10.06.04.24.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 04:24:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xthz6BJk;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id l81-v6so1187119pfg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 04:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=h6h+aR6S5unbsc2JiUPj5gM5nFW18SbwsHBAPhVb/JU=;
        b=Xthz6BJkpSLLk7TuBXS52eRsJpEJdp/YgfrA8lhN+IDKTpjij7Kb7QsmAZoCU7g4+Z
         FSIot5PU6/2ncqmnlquKYFhbUxoxuwbG/tmWAbRFUXn0im6NwH6RI1g0E+2VFb4VwRZl
         J6+/kWt7I96KDx2UzXaUz+ari8tyTqcwNlmcfMfncezF2CRDbunhBD+l7zS6Zjw4BSFy
         zWuER1ORjtvct3q9RV5OxXZhtmczWCB7B/uYX8djjlyT7cQcCga+9dUu20smgZgRiz6D
         XrbG1Y8YaJ06k2dBAty45DAC7YzVSqui9OydF7diUw0YIy0uYC87DMVHsgDShdFSsXy8
         p4xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=h6h+aR6S5unbsc2JiUPj5gM5nFW18SbwsHBAPhVb/JU=;
        b=bVsXZvdt9nbrVDnTeDMrZdmBGCNOxKgdCcxmS7pcqnQlXokMs9jA0rJ1MLwcUBZ1vW
         kFssLdZsYY/BG2btyxFMrO+kKJH4yHd1KpFjRZoWNiyXnXGHtK4VP6I957E5Bp6EPTuD
         gWsMKGmdOhP8rkuekyFza04CqOxou4hGJ0YkRMEOWGY0jHSU5qeqR4T1X9TgqEi9T+Fw
         5nmrUdzS+YpBmr7v/IHEQjkfStF961qLszqI1eYCR3n1UkeYhRmcRCSuR9qs8SgMus/a
         crMWy97Br1a2DxqZmsL8mwRZ1fFh1OZ5/6iQzN+eIpQlJ8mvtxzH6uaqc0cv0jepC8o8
         uTHg==
X-Gm-Message-State: ABuFfoh9jy+A6WejpTm47QlC01oEIeOUzAzVADQeYQVL6PIuCSNUBc8f
	+InTyb18pxM33f2y/SLZBGs19E8r51E=
X-Received: by 2002:a63:7f0e:: with SMTP id a14-v6mr13774134pgd.296.1538825082299;
        Sat, 06 Oct 2018 04:24:42 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.64.93])
        by smtp.gmail.com with ESMTPSA id c1-v6sm11355149pgp.34.2018.10.06.04.24.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 06 Oct 2018 04:24:41 -0700 (PDT)
Date: Sat, 6 Oct 2018 16:54:39 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH v2 0/3] staging: vt6655: Fix coding style issues
Message-ID: <cover.1538823377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch series fixes checkpatch issues such as:
-Add blank line after function/struct/union/enum declarations
-Add spaces around '*','-'
-Remove unnecessary space after cast to conform kernel coding style.

change in v2:
-Merge patch 2 and patch 3 as it solves same coding issue. 


Mamta Shukla (3):
  staging: vt6655: Add blank line after function/struct/union/enum declarations
  staging: vt6655: Add spaces around operators
  staging: vt6655: Remove space after cast

 drivers/staging/vt6655/rxtx.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

-- 
1.9.1


