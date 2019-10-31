X-GM-THRID: 6753896393761357824
X-Received: by 2002:ac8:4a92:: with SMTP id l18mr4545206qtq.256.1572514044953;
        Thu, 31 Oct 2019 02:27:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2276:: with SMTP id o51ls558753qtc.12.gmail; Thu, 31 Oct
 2019 02:27:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyrxZs2l/seuY7lb9Yq5e3J9HSbiBFdEuSbmG8jKoWfiBxh5cuxpLa0lhM4wgGJEkl1XDgl
X-Received: by 2002:ac8:67ca:: with SMTP id r10mr4742703qtp.124.1572514043077;
        Thu, 31 Oct 2019 02:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572514043; cv=none;
        d=google.com; s=arc-20160816;
        b=NLYYkb9pYtnXQhj9CxaOi+Guj9SaOfxv97L2ySmNhArn+N92ljQXMcenyD7STuiIg0
         Ez1vBwua9Ej4GzvTbRsqraRmwCKpibkseUBq2OYPwZHu151HEW92T1fxc1ZueMBaIj6e
         my5W29jvcIz0rAm/Pa+jDlTxnit51ukD4Yceu2PTr45k6abYD3GDHIrsLcvz7MZZxp2F
         vH3RhVug5Gj2h93N8chD5n710J87Xu6daern5MsWtkL9bFNrDaQl6L77k03ld6duBupR
         lznQ+FM6WmEW5UcCNXHBoq9AWcUC9F04mbkbkrzPEro8hSeAp9h3IXLaHK+gLUorBAlZ
         kX5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=6ai1NjXdRze9tPXyPjzCWyWOAYSITBxzOlXdR2l9swo=;
        b=YHKjsGuX0le0XIZSn4Zpv9+E0kYhxUIlatFBVwMiOFQ7o8BrE+xJ2k8WHOoO4zbADc
         F9BwKXz5H6jsALXsyI2RI1VB41OKmECK7jaE4Vo7c5XrbVaRhcLK7vvoC5bLNn9NT4j9
         8pb2Q1hnoTWLcqUw0xsb0g2A40lyTVG0KpmES++ZVd+ggC9rm6fIcTP7KXZa3ZvEb2GT
         armxRRdhLhUd8PucKBgbW9qBrr7gjIOx90xBvVC06LUuN/I9npPxYrzDiD5XduFUJP9v
         p3oJsDqd9TZIMTNXtl8ifdoQSvW8bdLNhjY7J5rgih4nzacWouQCJYT7Suh8PMfEDTK5
         Hk/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eH+UXna9;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id x135si150282qka.3.2019.10.31.02.27.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 02:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eH+UXna9;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id u23so3687402pgo.0
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 02:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6ai1NjXdRze9tPXyPjzCWyWOAYSITBxzOlXdR2l9swo=;
        b=eH+UXna9yiW2uy3G6jkKLk5R46VYy/8eouF7sjBxiaybhqZ1h0UjDuDxlqjjQCy8Vm
         cy5yVSvgKca+hDlPQNCCwBBV6pbnXHLaKYEkzw1E2pOZF+5IXNXnUkqJ+Eg0pG987J1o
         pg9jW4+VodlT4RNQobPcgA2J8ph2dpgH3A++TFJGOAKahd2/khW/DA2rwQFD+07VfjcW
         L8y+08hCO+g2TJcwARuLs+N7RTTS1ZTt9oVFzhxfl2vd0PG/aZ1FHoAdYhqHVjVcdiuc
         uAcdzgrWGsY8NA+9ETCgwTG0Quvasd1MGRCqoxQqdv2tsQUSuhuJwFzAiQtmvB8zMzQg
         Y6zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6ai1NjXdRze9tPXyPjzCWyWOAYSITBxzOlXdR2l9swo=;
        b=T0WCX4/xRsrK1WWr3z9SVY5pDSI+krV+F4T5HFGmLwZfcUrARpztL42A0O3p9h8qL7
         WBXLDFRohqJeYyQg3/MX8QyhxAEG+UWpDk+9qwpkVikDPlJNFCn8nj05PXiqD5kG0U2O
         90n3vjJzPONGN/wVf+WR8AtvkmABOq+dUFpYpbJdH2TJbigwCm8DJTnYbV3TvCOCYw2s
         Hn7ABoVerDlihJ5ZcYAiXE6YNWTloafEyKeW4A5X8cuyYFH0wRoYHhE17yUHOZL+LaUC
         sa8p9RVC3KmX9uLpO30B0EjHNjVYbstNA2pAEJGJxZ1gPQy8yQc38CKlR6jDCbJO6wxV
         nfIw==
X-Gm-Message-State: APjAAAUABeWDmpxDCJJfE5bVm9qieEiPDLuUhEazW7+vUgaalVkJ8UT6
	EpKuSMLiVvrOPKMWoaG3vLM=
X-Received: by 2002:a65:4c41:: with SMTP id l1mr5394841pgr.163.1572514042125;
        Thu, 31 Oct 2019 02:27:22 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id b5sm2904520pfp.149.2019.10.31.02.27.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 02:27:21 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 0/2] staging: vc04_services: Remove typedefs
Date: Thu, 31 Oct 2019 02:27:11 -0700
Message-Id: <cover.1572513863.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch removes typedefs from vc04_services files.

Jamal Shareef (2):
  staging: vc04_services: Remove typedefs in vchi
  staging: vc04_services: Remove vchiq_arm typedefs

 .../bcm2835-audio/bcm2835-vchiq.c             |   6 +-
 .../vc04_services/bcm2835-audio/bcm2835.h     |   2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |   6 +-
 .../vc04_services/interface/vchi/vchi.h       |  79 ++++----
 .../interface/vchi/vchi_common.h              |  25 +--
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  10 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 168 ++++++++--------
 .../interface/vchiq_arm/vchiq_arm.h           |  32 +--
 .../interface/vchiq_arm/vchiq_core.c          | 116 +++++------
 .../interface/vchiq_arm/vchiq_core.h          |  90 +++++----
 .../interface/vchiq_arm/vchiq_debugfs.c       |  14 +-
 .../interface/vchiq_arm/vchiq_debugfs.h       |   4 +-
 .../interface/vchiq_arm/vchiq_if.h            |  92 +++++----
 .../interface/vchiq_arm/vchiq_ioctl.h         |   4 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 182 +++++++++---------
 15 files changed, 410 insertions(+), 420 deletions(-)

-- 
2.17.1


