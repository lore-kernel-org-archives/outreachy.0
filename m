X-GM-THRID: 6470000031137005568
X-Received: by 10.176.64.131 with SMTP id i3mr7298642uad.17.1506439725055;
        Tue, 26 Sep 2017 08:28:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.76.133 with SMTP id m5ls3882749pgt.21.gmail; Tue, 26 Sep
 2017 08:28:43 -0700 (PDT)
X-Received: by 10.84.216.69 with SMTP id f5mr6094508plj.0.1506439723962;
        Tue, 26 Sep 2017 08:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506439723; cv=none;
        d=google.com; s=arc-20160816;
        b=nUcjtWNIlh805x2XxcCwvr9YejZXpSfjmE1HOpWZ1M20wP/zOqYzUahKYja7vdENLy
         FpyfgblT2ciB9/l5JTP31gcnheJjQCMc1I4tmQov1YrUSYhFC7ZbC2M9WdMGlwXZTfqK
         +0CtbxpOkDXjbjRx+TXd2XzbyyzUPTwZ4qtQaf4D8TyBLpnBI0LW8rZPE5/2eh1Mww5h
         Ye2vutO8W/aLIGVvs1sSf3lL++BDawnR4OEv6iOyR+3+xcRElapyMu3mrJFrXLV0v4GJ
         Ruzxr2KWnYCX5yJ0hjnB80tC/Rsl9Or/nFpl9G2NKdFa0ys8ifjJw9H40D2XoplpRmTw
         NMAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=42WTiE2qWhPfPK+hYF5kiN8VXZ3uhRZ0tQHdwnjRwKA=;
        b=vq3AGW82SUVbMS4F+aOuHm5gzFcAhvPN32pWwXuWULGt4cnzH2UBW4frqut6DLuXid
         LAi2YkyUZprF7TyI8evef5JRQX/HXTgXMU0oZaZqFTXidcg3UShiJcXPiP5mkvHR2bIG
         F4/ChJQEPoDEhtfAflZvUbUPOIbTqHqj6Ics2uylrWoiFG7gDSjnedn7rtWmpGuwYUKj
         mwZS5cwcS2ATk9noUAcw6J0DZ+n7zU3aKNkmaQKS0Wo/WzaIecs3DG+KOyhQtO6JOI3U
         1jocbRowulLch1SkJtWgR9K6dKvfm/HuAKQow9KgCUzaV/OxcfEq2vdvhDzC08Im6QEG
         X1Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RXT/05e6;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id v9si691880pfj.24.2017.09.26.08.28.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RXT/05e6;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id u18so6971572pgo.1
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 08:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=42WTiE2qWhPfPK+hYF5kiN8VXZ3uhRZ0tQHdwnjRwKA=;
        b=RXT/05e6keBqvVZCM0fTSLTWqOWEYs/Y8xdcTs37DuYIRy/5bgdQ/yC3KL9RIQG6LH
         LXXNwYHfwSehGf04UtGVQo8IQ8601SQDSCWVCOeg3kBCgq/m42IM8cwMgNnh/O4Lf4cS
         XO2gw+/iGEuoa02sdL9hvBv7d1393rnAK7YM7Dl097wIvVa0XbGwBQRi2KLtj+CnqNsH
         CWdvaK9/XCuQC7x1YfdtngIkesViCLQxb7jBnpVf5cE7A2wUO4PIO4RWdUr0dyYiITKS
         /faLbM94gYKil7esQm/fdDrDEsZ/TjtAZcxi28HWb4fVdYHiDLis42nmxG3aPpKA5bOV
         Sm4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=42WTiE2qWhPfPK+hYF5kiN8VXZ3uhRZ0tQHdwnjRwKA=;
        b=Ek7SsWHE7Cgu4Gt1wFgqh8iH6nUn3SJYrTYo6iSjzu7KARnsskwz9F7I9v8PsXZ3h6
         ygn0edXrV0q+aWPbRK4BOSoJSW6gtGFc8LHQyyCOZkbGQLAUMZ9ZEyb4HGfgTX06oDT8
         EsAlsSioiWEgatx6VxB8Cf7sk0YHeN1rmPUwnQiLunBoZDJtQIenP96xd4Ry/8lm5Bz5
         pc/ruuDwSm5EO7Hn/1Jb74eEa7Z3aqBRWuqpiLFE4qPS7yVv8CgCldMnHdKbbrDCfOpn
         NXHNd3lqwCboX/Uh95luLD/JK/XZvdfV6JC6/u9rjpZPKhpSpQdp6Gy97bh2LnMDEiL3
         Il7Q==
X-Gm-Message-State: AHPjjUjolZnDwpNmrDxdDjeOHHHyM4B0mlLDZLK6LRc03LuHBeoZWUKW
	nuNZTOAwldffTtqjmwRHDbB0eFFx
X-Google-Smtp-Source: AOwi7QCGhfACz4PsOwOYDG0p19RnGxr0g9CEcDVxjhxfnJ1aU+ux2ttvClE3E5q/rWxQ/s7n+zImvg==
X-Received: by 10.84.129.226 with SMTP id b89mr11059554plb.36.1506439723748;
        Tue, 26 Sep 2017 08:28:43 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id d23sm10634528pfe.115.2017.09.26.08.28.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:28:42 -0700 (PDT)
Date: Tue, 26 Sep 2017 20:58:38 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com,
	outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] Fix spaces and typos in vc04_services
Message-ID: <cover.1506439214.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset removes extra newlines within file 
and also fixes smalls typos.

---
Changes in v2:
edit commit message for patch 2/3

Keerthi Reddy (3):
  staging: vc04_services: please do not use multiple blank lines
  staging: vc04_services: fix typos
  staging: vc04_services: add spaces around << operator

 .../vc04_services/bcm2835-audio/bcm2835-pcm.c      | 11 ----------
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 11 ----------
 .../vc04_services/bcm2835-camera/mmal-msg.h        | 24 +++++++++++-----------
 .../vc04_services/bcm2835-camera/mmal-parameters.h | 12 +++++------
 .../interface/vchi/connections/connection.h        |  3 ---
 .../interface/vchi/message_drivers/message.h       |  5 -----
 .../staging/vc04_services/interface/vchi/vchi.h    | 12 +----------
 .../vc04_services/interface/vchi/vchi_common.h     |  6 ------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  |  9 --------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h  |  5 -----
 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 10 ---------
 .../vc04_services/interface/vchiq_arm/vchiq_core.h |  1 -
 .../interface/vchiq_arm/vchiq_debugfs.c            |  3 ---
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c |  3 ---
 14 files changed, 19 insertions(+), 96 deletions(-)

-- 
2.7.4


