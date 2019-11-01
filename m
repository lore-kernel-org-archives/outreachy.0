X-GM-THRID: 6754207479593172992
X-Received: by 2002:a81:574a:: with SMTP id l71mr6909133ywb.30.1572586474152;
        Thu, 31 Oct 2019 22:34:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:7845:: with SMTP id t66ls786220ywc.14.gmail; Thu, 31 Oct
 2019 22:34:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyNYxbmrBEcMQSVeA8S2Cldytq7xzrh+n3cZCf95R3BddFPLF7/xrSaEdIZ4tx0BilGJe1a
X-Received: by 2002:a0d:e003:: with SMTP id j3mr6936948ywe.87.1572586472839;
        Thu, 31 Oct 2019 22:34:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572586472; cv=none;
        d=google.com; s=arc-20160816;
        b=fySICaHUWL6sbM0zbVBZ0VlYBDXK+UOOweZd9qjqI/hYGubhp5eHqZ1np56/w3sJFE
         fyYqxGzPzZ8HQerQyT7WRlIAfXT65BXP/apq0WNVZO4kN5X3TVSmd3qfRFQEnvRU2P5G
         R6OZOMBCNiQFAkvNZIv6EP9LT77RJBcatb+fkczXAvza8DLbYErYjEkisBRgvLnyDmNE
         jKD+dUZp6smrU7lJxkUddMid2o0E/bvbojsBiw8F3tinOvkVZDWxcJaLsH12CsDIQOrI
         pVPCAMhEBB9W0Ibzz+idgW7/BRbUDK0zNgJd/LADYHoZbFtKItqZiz8VGCdQtuJ/f6xZ
         SxEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=15UgTTLd2sgK0grC/SQ+M4bWtyhRFdyKbWi2Bx9uF/Y=;
        b=0uscA3+pfbAYN1KtUvvBvu9rwnqupC//i5P8HKHk+7ONww4LsE5RDjOrxeWsliWMkg
         e43eeRyq1ury22I0+FIeMDJVAiZj1DerqnIFn5HQ/6JLd4JxBthxUe/l6DzMLZNOx6We
         bgg1R6FJfwl/achIKg7z3yT6NRoKMT+KfEQ5zcg2Zmn6kIMBy4/qpQjuds+CG4aTRVOd
         1otpujxPZRZ3543GVNLrxXiSH6HyPIY8mpQNZH7R3sGPvQgrZOxEeaElcYcgRDxynKkq
         T/ch1OWxiRQnoLMuaSUukze/SLLDsdSqlPfWSPgyiKtnI0uH8eoZRbpA0jivMSHH9Awp
         SrUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b="wSTgc/4x";
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id t73si376283ybi.4.2019.10.31.22.34.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 22:34:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b="wSTgc/4x";
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe43.google.com with SMTP id k15so5696580vsp.2
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 22:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=15UgTTLd2sgK0grC/SQ+M4bWtyhRFdyKbWi2Bx9uF/Y=;
        b=wSTgc/4xjs2PSVI51Xcb57w9lENCp/q6hDCKJi4tXoVJjiDiYXLhsQKShcvMaKbY7C
         f3xviGbN73DpmFiREm7WWZD/wFXBiIYYilTnIoINrR7ELDIJTaDwVbwL3yvfAyEWN47f
         Pp566pJvcnyk1SA/ViDPQ5wx1uuFluY+OZ50D8nsUPlq3qogsZ+hhGoSQAuHMpaM6v67
         C+HDo1EDOWgTChi/mZG5RieKtk7G+bHIisYclpLSnqNWljFueFnZOLzKtCEk97sSBeaM
         /psVQ6QDuVFMlbmCkXBbl7c3XKfe5GblD6hxDIqq57ijLrzGAzqFeUPCZRHWC89LByUD
         WnRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=15UgTTLd2sgK0grC/SQ+M4bWtyhRFdyKbWi2Bx9uF/Y=;
        b=W/cfvf6P1L0x6AeJYWvHa+dBqJqucek2AId8uAQw6z8ORyjbIkcm3oa1rFnWTY5I+l
         12nyAXS/IqjujM9yT81Sdu8694prfggISF63NiKxhcwRl6Oq7wJy8BFk4ZTQObsnFl4q
         BdvAF1haOQIXwKA/neVw0osppxUPO19rbVg+DjIvjpRsxSZdkz5rBcMPmTRuLsHiozNn
         QahsugULpk1p1MoC3Z7kZyYQttvLFfwpSYBfyGpwA9oDP4VVTw8riF/t/2OIafLtQ/lR
         kb3pnIL2yDPKSaQ5iy2vKae0qWEvQkdogL1YOP4YuRHmimEptFmDB6IC18Cd0hqdS2gk
         KjWg==
X-Gm-Message-State: APjAAAUfxl5vWzo70wor/lH9bNjKW0SJ1/FTk0h+2bgXSUIjWNhE/Jnh
	hyMTTEVMnMgVUfOQMZeQQiq8yg==
X-Received: by 2002:a05:6102:810:: with SMTP id g16mr4841525vsb.69.1572586472021;
        Thu, 31 Oct 2019 22:34:32 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.12])
        by smtp.gmail.com with ESMTPSA id a21sm1885936vka.52.2019.10.31.22.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 22:34:31 -0700 (PDT)
Date: Fri, 1 Nov 2019 05:34:26 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH 0/2] Fix alignment and logical operation continuation
Message-ID: <cover.1572586238.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

This is a simple patchset that improves alignment and readability of 
multiline logical expression.

Frank A. Cancio Bello (2):
  staging: exfat: Fix parameters alignment issues
  staging: exfat: Fix logical operation continuation

 drivers/staging/exfat/exfat_core.c  | 5 +++--
 drivers/staging/exfat/exfat_super.c | 8 ++++----
 2 files changed, 7 insertions(+), 6 deletions(-)

-- 
2.17.1


