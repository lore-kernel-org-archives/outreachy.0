X-GM-THRID: 6753896393761357824
X-Received: by 2002:a81:1189:: with SMTP id 131mr7433378ywr.308.1572586130358;
        Thu, 31 Oct 2019 22:28:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1f41:: with SMTP id f62ls348053ybf.1.gmail; Thu, 31 Oct
 2019 22:28:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqywvmbTvYEv5E8FqSxFuOO2aEbUSIh9CO+bl+uhm2/Q7ZwJSdJXSj+ZsZFFIttFTHhvAZCr
X-Received: by 2002:a25:98c2:: with SMTP id m2mr7958082ybo.320.1572586128939;
        Thu, 31 Oct 2019 22:28:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572586128; cv=none;
        d=google.com; s=arc-20160816;
        b=JWwar2a/LJdutJ6Dqx7DdGrd0fjUHt+kxB6iFHteMFx+2ABs3IQAr7f/LuLtB5XTe8
         lyhbAO9rqJ8ZZlrNYa4wfypdMSI7yYPjdWqfSOM1az99nxlnIyjqSIcCOIo8CrsoyoCn
         g40us/1UQYZU6PiRLu2RUlEatAQ62o0P04Dx7CDadvZhbHjFAEnxVUpLa7Rnuh1foPQA
         onyPrDGcHoVJUDcw0JfNwNlqnceS24V4pdZrPsxdO+zqI1RCYeQiIn/ylt0dn1BoXgK0
         04xo/RCvAYLjNBmyrdICkSJ84f4Pvwj088n+2ORBERJwiZDGSau4ATA13ym8Q55WO09i
         CyIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=35ucTQBTpEO0XMS1/BqCU6LkAI9n3NxlBzcOirv1yVQ=;
        b=e9hj5FkzBjknaMXrsICC3KbTW6xzaIARZipm1tTJj76raheIvuY2G1m2CkmD79RhUd
         k3FyP4QGxF1Zee+TIC8pQsIiMo0bv3kgSSFnqTYTrOSQlc7klfs22ZsOzW12u49c72gJ
         +BQF5jwp0ERqjLJYQNldIHofiV7YJE8HYO9aJgK4lldJlQ0vbYINx+fmdIeVFQCNM3b7
         uXjnWjYLtlRo4eWS4PLfEyGDw01M4Zj1daYNizY3e4zlTqGvurDF+PcZpyNM72D3RPdi
         0OzECfqVzXJ80D7IsbHUCxezxgBhAjHyOmCdUkF7OA95UXGh4yPJ/zgpQNx7HgNaUCzp
         8RJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hKJQK3iy;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id r185si616665ywe.2.2019.10.31.22.28.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 22:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hKJQK3iy;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id v19so6256478pfm.3
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 22:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=35ucTQBTpEO0XMS1/BqCU6LkAI9n3NxlBzcOirv1yVQ=;
        b=hKJQK3iyvI35oPUAk3QUQF9olEf1gRgtRsOKoDr6/XnyZFRNQGYpu/rQMFp5IGgCdf
         ANiEo0aByanL/H8bB8W5p7XYITZim1K8uAdpixtDV+ipsEDsS57sSZy0v5jMwtGgHQuC
         4YqRDYQcuBJ4fjZYhWqGPDoMUNYCV3R5BlFrwogZusVh60TQPn9u/zmSovBDvm1pbslA
         394AgGYnbrfsk0zQeq3G+fj06RGu6yuEUU/HSMGwrLNOlILNvNJyYqDcJ+CACF1LP3EJ
         GYgsNr9lJh4ts1M45R30jgOa/aCywvvSoWVaDPA2fcCDPUZUYp0c29hFxxhK6lrhj4Sc
         eUwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=35ucTQBTpEO0XMS1/BqCU6LkAI9n3NxlBzcOirv1yVQ=;
        b=m//RA2TIW80K5sNOtDwvS9MTyFe7ttSirWN9L/0luUYp4Mm0zYYDB0DMa8kODI00x6
         wD2Awn4nDMRteSyJ0Bi4HDsJutt8rsnKFW6W7oaxQfn4s7b6ZrxaGqjhvCZbPMphhEYv
         S2F6ToUGUIMrpwNrdwi89ts1Ov+IcDVO20/wYr0I4HhZCJJxKX7lhefFOVU0t0TmQvza
         JX+e+YKHKSLCWGP3iAqCjqR+cbSUAai0c22zmjWNSPS1H4QehnTcDfx3bWqeh0+GvBja
         +mgZFJ3QV291z22hZZoqZzM040U5YW3QVLJ7AXIGiIq8Q3t2hhWLbElGUzWo2DwvIMkO
         j9+A==
X-Gm-Message-State: APjAAAWvFpiPpa7RDN86Z/W9PMpB/fGO6LDCb7ZxoioO4mACNMKwiy7V
	uAKKrqRUsQ4eNz43O+DtLT4=
X-Received: by 2002:a17:90a:898d:: with SMTP id v13mr8783360pjn.125.1572586127950;
        Thu, 31 Oct 2019 22:28:47 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id x25sm8341860pfq.73.2019.10.31.22.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 22:28:46 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 0/7] staging: vc04_services: Remove typedefs
Date: Thu, 31 Oct 2019 22:28:28 -0700
Message-Id: <cover.1572585566.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch removes typedefs from vc04_services files.

Changes in v2:
 - Split patches into smaller patches limitied to typedef type.
 Patch 7:
 - Rename "struct vchiq_instance_struct' to "struct vchiq_instance" due
   to wordiness and agreement between header files.

Jamal Shareef (7):
  staging: vc04_services: Remove enum typedefs in vchi
  staging: vc04_services: Remove struct typedefs in vchi
  staging: vc04_services: Remove function pointer typedef
  staging: vc04_services: Remove vchiq_arm enum typedefs
  staging: vc04_services: Remove callback typedef
  staging: vc04_services: Remove int typedef
  staging: vc04_services: Remove struct typedefs vchiq_arm

 .../bcm2835-audio/bcm2835-vchiq.c             |   6 +-
 .../vc04_services/bcm2835-audio/bcm2835.h     |   2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |   6 +-
 .../vc04_services/interface/vchi/vchi.h       |  78 ++++----
 .../interface/vchi/vchi_common.h              |  26 +--
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  10 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 170 ++++++++--------
 .../interface/vchiq_arm/vchiq_arm.h           |  32 ++--
 .../interface/vchiq_arm/vchiq_core.c          | 116 +++++------
 .../interface/vchiq_arm/vchiq_core.h          |  90 +++++----
 .../interface/vchiq_arm/vchiq_debugfs.c       |  14 +-
 .../interface/vchiq_arm/vchiq_debugfs.h       |   4 +-
 .../interface/vchiq_arm/vchiq_if.h            |  92 +++++----
 .../interface/vchiq_arm/vchiq_ioctl.h         |   4 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 181 +++++++++---------
 15 files changed, 407 insertions(+), 424 deletions(-)

-- 
2.17.1


