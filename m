X-GM-THRID: 6470000031137005568
X-Received: by 10.31.34.139 with SMTP id i133mr5976722vki.100.1506414271883;
        Tue, 26 Sep 2017 01:24:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.161.205 with SMTP id y196ls1519661ywg.9.gmail; Tue, 26 Sep
 2017 01:24:31 -0700 (PDT)
X-Received: by 10.129.78.23 with SMTP id c23mr6547843ywb.61.1506414271092;
        Tue, 26 Sep 2017 01:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506414271; cv=none;
        d=google.com; s=arc-20160816;
        b=K278Z73ke0QGjFGpbFufLudQPgg7AkXG3K+3f5BBYUBrdC56fRCjUzivRoGhOmc3LN
         5pEgNzRS6Ap1ehMc4XFkL2tPOKRzAGVGupMKkuPWuPSnWCQDWuYtEIOaIPnvMO5O7IoD
         h3y0J/w9aSJWVCxbN+y3VfBcR6Q7ioB5E3F/+9mkOjdEn7XC0oTfn9ovRl/hDgJs6Zeh
         qOeoff9rKsJog7HWmKAx5fe94Cc3Uxe6vL79zP9pGmYYwQnSiNZW3hsVVGiGZrVVQUCr
         W2MQnmFtYi392kmk3M7Oag0JwnkX5FCiDgxjTGlHwBBF8BZ+AcrywMKIFKyrOi22dbQE
         iLTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=3fv1ZA6B6JLZiWsiIhTdy0PQimCECeLWeAdGIGY8ZPc=;
        b=0e4wirohEP54c8zYSdIp3sRISYC3wWc2INbpEcJkBZVbQGeEhaPMiWhwDn0Lse6yu+
         jYkl+PpK/tPNqNh1DOrEvClzNypLh+waKbOZIRsRYlAe3e+5daFdkwzgFyNCo3rD9HrU
         ztOwTmTYAFEtxiIZDG96bMU4JwdbPxoXQE+NGSdOrt52jcJ1Q1j/EJxJLwH4nNK6v2re
         fDoiGrspdIMToW2WAaITnXOerAJL4zYYboI92ruE00aluJ0JI8t5GJFHM7sW/jyiirPv
         YOfzUrBpj1hP+MN9soPL7ujQfBI7JtJvh8RdZArp/wmzZTsFzvCFGfzhZu7tU9QLNIyP
         VpjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SScYwNj7;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id l23si382917ywh.27.2017.09.26.01.24.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SScYwNj7;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id g18so4722133itg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 01:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3fv1ZA6B6JLZiWsiIhTdy0PQimCECeLWeAdGIGY8ZPc=;
        b=SScYwNj70s4FmdN6Uy5D7rXwTNO4nS8FBZA0MpIoqlOGRtpSZo/gyVDWvS1ovVFq7v
         wIZCPqV1uoS6IgMHUt8zzJeFW/kVVHD9Y3jxdEyhj2AjHa1iKssUj1xhNboZzeyAosZX
         bc2x6xmJ1aRiUbn//T4N4UPz3nXzxQRjI7TfY9lythTYUd4EE9GiPmnmcZB0JH7/OYes
         Mx41Ee/y9srcb4eCoaZHQrdl44Jck6k4BLOUWJachV9PaG7vTN7wwI3rKo8WEHnS59iU
         3b52FPI4u5BwyVaCRLnQd/u51C/HVSn30pNRkAg+SaxK1bBrM4FmcSqxoVcS5vOSydp2
         QL8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3fv1ZA6B6JLZiWsiIhTdy0PQimCECeLWeAdGIGY8ZPc=;
        b=i0tLSYXgQ3Mcqdfbr3cs4o5E4H3cj/rW4P2osdM7lDw+Msbo5NXi2uARJinafANM7/
         SS7kowRYOxEijGG5cQFJdQ4uFb85m6Gjvj1je99bb9k7/GZwycm579H1up9QNJ9Ay1sV
         MoStIsQkgtzSnhrqwk0ZxuHKfzwHnV02knbIx9U5C+GWE/adci7+vRStx/U56oVM2yng
         rLW3R4+n6/tFXjCAMvulhRyMLsh8eHsZqhN7Gg8ZzDSZmD3Zv9XRVILwCG8SrK53k47M
         5TWmKQq2Oj8wWFShMbBpCi1p0cYnVvBNHS7U9Dz3Xa5J6MsjX8EzpbjB3w7CCvy5bg5e
         GOfw==
X-Gm-Message-State: AHPjjUhsbWtdUrXRYT7rIjWrdkZEdBQWX98JDH9uqh8AhcSu11COIvn/
	d3L9g+/bEhAes0ftOaB4XyP0BHaXcAY=
X-Google-Smtp-Source: AOwi7QBUDoQf0Be4x7S6J4iTQB+9ZZgt9rOlpKGGd9DoFhGzZ/PKqwVQk+WDOO4IaX58t8mDcwSfrA==
X-Received: by 10.36.190.13 with SMTP id i13mr4738658itf.114.1506414270653;
        Tue, 26 Sep 2017 01:24:30 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id 8sm3906507iob.82.2017.09.26.01.24.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:24:30 -0700 (PDT)
Date: Tue, 26 Sep 2017 13:54:23 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com,
	outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Fix spaces and typos in vc04_services
Message-ID: <cover.1506413998.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset removes extra newlines within file
and also fixes smalls typos. 


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


