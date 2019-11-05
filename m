X-GM-THRID: 6753896393761357824
X-Received: by 2002:a0c:e64e:: with SMTP id c14mr25407167qvn.13.1572915331823;
        Mon, 04 Nov 2019 16:55:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:4a08:: with SMTP id m8ls2794670qvz.5.gmail; Mon, 04 Nov
 2019 16:55:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqz8Tqo75DIvVu3MVO9EOae1tdq1n+NLb5nVR6C9pGU24Is83QSr1Q9CN4wJAUXVbM+W5b3e
X-Received: by 2002:a0c:c3c5:: with SMTP id p5mr24901088qvi.34.1572915330916;
        Mon, 04 Nov 2019 16:55:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915330; cv=none;
        d=google.com; s=arc-20160816;
        b=CWDqDeE6kz2OjWWpAOmISmm9CCVt8P56I6PoPHP5skI3GE/r2nubShV3IKkEfp55sC
         wCswzqvRy/0x9JKfx+WRfZqJ09lqtTZQGRihr3IkCpUCSISzocSczT4Q4WicgHRFGB83
         LeKKX5hdvI6vidLxeo+vROPRwHEAdHjNfyRMSWlY4A/ovvp2ZL1hGlb9sH+PXpDxML+A
         nYgSyCUKi8koCHDt1zr3xtqUJZxbjRRzqPOFlXC09BtqnCYMyWuhbmA0T48AQgP8jmNv
         Zj05oghO1EwLZbE7m0LZ+TkV0r7EK7iTkZfwhUbo63fA+2Oqv4D1pXfJIk2XObRotr5v
         5KQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=vLhc7VbM+zO31bszJN0FYE55kTw9Urvjcc9irb+Dh0g=;
        b=KOrSOccSd0laNCNlheVwJJnw+NORgVMoxQE+zsjLLvlmmHcf1MSCsJlPjKMon1NYSf
         nvCLNasK2QZZqBxwGnm1fzLdrddFO6NyDFelZyhQwGC3WeimVSj/TKvRF0jnMtEhiGHh
         9pSziVsq/upv35ewp9clYZGzQOa0cxs6tkKQbniraUNQ9g4H48TK3KPt/dLBerY8LLm8
         QHb8KuvetTCK8VgZ5NLlSv6cVwWBicxDDM31XhYSroUDFI+5Jbb71IhHE7RJrVJSEXV2
         VeAYNoD/V1aTOcH47yZkTr/UKyoeAHyz6fPNNl1A/su0uj9L2AA4QbsX2+q4TDeUiNmH
         ci0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dl75i8kM;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id d189si953748qkb.1.2019.11.04.16.55.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:30 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dl75i8kM;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62d.google.com with SMTP id j12so6567414plt.9
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vLhc7VbM+zO31bszJN0FYE55kTw9Urvjcc9irb+Dh0g=;
        b=dl75i8kM05Rw1jIQ1eQipk5dW87Bo2hhDCpLAOC2Gd1mokNlErEDv2Kgyt6vNz8AqC
         XXgjWAVYlBFzKYzSmGIffOfqb2cr1JmytkLLBAokJp27ZDBCgU8QwGGbSjB+egtZWaem
         d6QbimMarmO39hGBZN4235sBroOP86Lkk6e5PIUQWZZOdACp4/Q1RblgVSNcQdCxY1ea
         KzL5LQz2ef2is5a0/IPSzhO3tKEiHBXVNfRJ7X+ZoL354STDTSnoYQ611hJxk05YrxGY
         B5ML99BgBJ2V/FXvfNkhdRQ30xyHinyfI1kBT1z3qAla63KK8Y+bCXcKdk3vknlfcSiW
         9LLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vLhc7VbM+zO31bszJN0FYE55kTw9Urvjcc9irb+Dh0g=;
        b=DGmIvw6tZn45ClSOsV6uqvn6k/5gBldOGHJ/nn3/UUIv0uwEE/H8mcik+8nDCF/kmR
         mPW65fYaIhOFIZP5ySD6L+2r9u5tp/cFVgsvDRNgsmThBDEbQe2u/sb6ZipKZz+G8qwZ
         1NI7Aa6Km5QJm8CW1U0V3urgsM1pQWc0e6dZ6QeIA8uuT7y0/egWWiZKFHWOUJZffmsz
         Rm3ILdRlew3fQw+r/o5bxLSM1Xbj9Oh1a29A6F/nRfe7zEh/CD2yYX3cEbUWpC1Dh4EL
         Eg1btOvFrVvO6gkRt6/NSsflOYYWfHocvfrYmXKRvHyLhiUt30GPPXTmzXlnU6aCKuNb
         8fHA==
X-Gm-Message-State: APjAAAUt8Uwdn8Mq8maoPmm9dU84DBKdDWo+Pgda6PgKsdoHK3I4KyrX
	OgUve+28waIW550ySGazY4PQxoWhR7M=
X-Received: by 2002:a17:902:161:: with SMTP id 88mr28451369plb.253.1572915329940;
        Mon, 04 Nov 2019 16:55:29 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 1sm32385pgp.88.2019.11.04.16.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:29 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 00/14] staging: vc04_services: Remove typedefs
Date: Mon,  4 Nov 2019 16:55:10 -0800
Message-Id: <cover.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch removes typedefs from vc04_services files.
Additionally, renames callback function typedefs to match kernel code
style.

Jamal Shareef (14):
  staging: vc04_services: Remove instance struct typedef
  staging: vc04_services: Remove service struct typedef
  staging: vc04_services: Rename function pointer typedef
  staging: vc04_services: Remove status enum typedef
  staging: vc04_services: Remove bulk mode enum typedef
  staging: vc04_services: Remove option enum typedef
  staging: vc04_services: Remove connstate enum typedef
  staging: vc04_services: Remove bulk dir enum typedef
  staging: vc04_services: Rename userdata callback
  staging: vc04_services: Rename vchiq callback
  staging: vc04_services: Rename remote use callback
  staging: vc04_services: Remove int typedef
  staging: vc04_services: Remove vchiq instance typedef
  staging: vc04_services: Remove platform typedef

 .../bcm2835-audio/bcm2835-vchiq.c             |   4 +-
 .../vc04_services/bcm2835-audio/bcm2835.h     |   2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |   4 +-
 .../vc04_services/interface/vchi/vchi.h       |  56 +++---
 .../interface/vchi/vchi_common.h              |   6 +-
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  10 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 170 +++++++++---------
 .../interface/vchiq_arm/vchiq_arm.h           |  32 ++--
 .../interface/vchiq_arm/vchiq_core.c          | 116 ++++++------
 .../interface/vchiq_arm/vchiq_core.h          |  88 ++++-----
 .../interface/vchiq_arm/vchiq_debugfs.c       |  14 +-
 .../interface/vchiq_arm/vchiq_debugfs.h       |   4 +-
 .../interface/vchiq_arm/vchiq_if.h            |  92 +++++-----
 .../interface/vchiq_arm/vchiq_ioctl.h         |   4 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 116 ++++++------
 15 files changed, 358 insertions(+), 360 deletions(-)

-- 
2.17.1


