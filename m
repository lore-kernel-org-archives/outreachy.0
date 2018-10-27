X-GM-THRID: 6616097415299596288
X-Received: by 2002:a37:f4b:: with SMTP id z72mr908853qkg.20.1540635174171;
        Sat, 27 Oct 2018 03:12:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4a83:: with SMTP id x125-v6ls1672756qka.12.gmail; Sat,
 27 Oct 2018 03:12:53 -0700 (PDT)
X-Google-Smtp-Source: AJdET5da6yzfZVLLUN5kVHs/7zABSBBcaVZkwgkRzUsoShTQ/7hFNojZOWv9Pog/51+sxacd/bem
X-Received: by 2002:ae9:c306:: with SMTP id n6-v6mr5953773qkg.0.1540635173529;
        Sat, 27 Oct 2018 03:12:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540635173; cv=none;
        d=google.com; s=arc-20160816;
        b=XeH4Gg55oJlISt03mlRI3NlSlbQKV8WkhCZv2YGgMh9yDKftDXpeDFogYa4cSGLkl1
         1bTDw7Vf5vmPxC+x7yUYQv8typ3JVVRQMV+EjvV9LFkjGxsex2XLlKlcOxg89q51IUDM
         RowbDijerDvXD+DVyH2RgQLn42NqSP/Kxua6WiGo7aHCGXE4nJEhBM2zekmG7eenbKED
         ur4c82WlOYxtHxWlZQcdgXiDPeV5Uq1dFjFh4Nyr8ptOIo7xA+KBWEdmpredtGrjJFT3
         INOoN7n9SfZiKoTJhp8mnPY6d8dBwPjfZjXLJ8m2qlowK2bMW/PxgK4UM1CrUKRDXHkE
         Y9cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=rgt6mhQiDSAM0HDOhyd5G2yso9ixBO7rk3KTPKSvZnU=;
        b=n0YS0s5U58h2I8Quu3Mn4z6XGvb6P99T3xiobhmGdgiVKydmRha3Vw+WHh8vbeKBdp
         erJjKDmngnuF2+4nm0urFevUJR8B43CQ4cWxAU6+6bw3greBBpHXd8hggs4fXiIAwVyu
         Js9RHXDNVVnvMtzqP7zq64DSuq5trq4z2RYW4BaOpBGn5KGkKOTFQWnCGgRTAqygyb1h
         9cY+53iXZ003mvOlBTym49W6ivSKdGwNsr2tzhw2VmOpN2UGge9S/zwprGd4u90ipOLo
         zJ8u/vm04/um0o9ji9EsY4K83i2BKYZ5judjw/v6p898/C3ZV5YC3iaqJ2rq+hCFchum
         gqTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hu2wsoDN;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id x41-v6si664662qth.2.2018.10.27.03.12.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 03:12:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hu2wsoDN;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id n4-v6so1048622plp.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Oct 2018 03:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rgt6mhQiDSAM0HDOhyd5G2yso9ixBO7rk3KTPKSvZnU=;
        b=Hu2wsoDN2uwTJ68NfHxle3B2m1HZFjdPeZcQI10K3jWRZq8aEveVSpe5lC/nJbeLuK
         FtKdxobLGlnQBT+fjV597BEzlYJJpl/Z40foAc7bxmksqk2F4JMF/X29dP1YQKL+J493
         ZWgMQWTROZRm8QXIYNXXR+1XuJK6gMtFyd5+LoySbK0opJCAnSFd8qqqJgWZCdcexoSk
         /mxFFXPBrsAklJqUTWLGvBOHMnGmBZd/Mabi7SWYkd1eQ1PXA3Vyde77dJkDocM/oRg2
         H3gwG97YLohyNiLT9ppUDY1vH1rplUhr06oW36s5ePHkHGw1wCCUJrgAPqRFaPX20VDO
         EKwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rgt6mhQiDSAM0HDOhyd5G2yso9ixBO7rk3KTPKSvZnU=;
        b=F0gi8OvJyWz+1ZW1mqepXABOeHUlqKXtSCAdpSz42RWyIO3eImbCuF+MEHuJDRvrsz
         5/oao7exd802ePU5gM0rfQic+QpEWoAqgPJVmHH33I+AvtwwrEQUM2uGVBV/2NDmOnkE
         PArmsd/xlclT1xZQ/FP2BoKUvSOTXSoAxr2EncUZu8SC73huU+QUxHKn4ily+AnCcw9G
         RCUZCSdYYCfH8gKqH6j05YGilJSIdWDUBz7VULdWIUU/5DccSpfMmdGPvOrYpUj6PD8l
         zlTFG7XRnlP3TtRpvldbKBhF4MZlomQL4X2MlvXt30cMoqnlPC8QSPf8fkLpZ/PXACn/
         jdFg==
X-Gm-Message-State: AGRZ1gIjhzH48T87QMabqVsF857Hn6L452VOmkB7qpArc47qUnoAc4xu
	6p3fQCTX3KmQqdLap9wgBBHwK0iE
X-Received: by 2002:a17:902:6bc9:: with SMTP id m9-v6mr6941351plt.106.1540635172541;
        Sat, 27 Oct 2018 03:12:52 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id g123-v6sm36345646pfc.67.2018.10.27.03.12.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 27 Oct 2018 03:12:52 -0700 (PDT)
Date: Sat, 27 Oct 2018 03:12:48 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] staging: rtlwifi: Remove unnecessary functions
Message-ID: <cover.1540632666.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patchset removes functions that only return zero or the second
argument. It also removes the functions that are not used at all.

For version two, changes are applied based on Julia's feedback and
checkpatch results. Other modifications include braces and spacing.

Maya Nakamura (3):
  staging: rtlwifi: Remove function that only returns the second
    argument
  staging: rtlwifi: Remove function that only returns zero
  staging: rtlwifi: Remove unused functions

 .../staging/rtlwifi/phydm/phydm_hwconfig.c    | 107 ++++--------------
 .../staging/rtlwifi/phydm/phydm_hwconfig.h    |  12 --
 2 files changed, 20 insertions(+), 99 deletions(-)

-- 
2.17.1


