X-GM-THRID: 6753896393761357824
X-Received: by 2002:a25:bc04:: with SMTP id i4mr16343922ybh.427.1572755837051;
        Sat, 02 Nov 2019 21:37:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:9113:: with SMTP id i19ls1564578ywg.12.gmail; Sat, 02
 Nov 2019 21:37:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxxF7sJv0lCoapBQXBDEdlEzGTZxB925eQdhPMUTlW85A6Z27CFx5uLJJxAVscCScDqu8vL
X-Received: by 2002:a0d:ce82:: with SMTP id q124mr484127ywd.325.1572755835242;
        Sat, 02 Nov 2019 21:37:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572755835; cv=none;
        d=google.com; s=arc-20160816;
        b=h8yLyPUyt2Mig9iBLh7BZQEqHRt9rYqXEpu2P7sduHEpCb0V4UTJ7kbwExCAoBgOU+
         miHMiDVToc60cuBc7+O982D74424aubzRvBlJnSHQvw7DwK0wdQRgXO0pp12t32qmLly
         sJm5IvfNSAL0ayNSqw91nrQEFY0s3xvCdiAWrGGFpAuiJ18c8oP70t9rbIlSY/ci23DL
         e3Fvc/Dv8tw6KFGVdjH9JEdTAj9W2NWZUdi9Fep8diveX6z0HSCbgek3CtlZTnuHMPpi
         mjtpdLJ+ba8A6PammFDQBshFkHgOCs6QNhk6VNh6kz3RZQysmj94NsyCt4IwGYaPEFS8
         5WgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gILhPaDPG+Gx2jvdn0CdLoDfc476WuuZVr8NNMhyG6c=;
        b=izhxSuJHjrCzOqsmZY3zk0tCV8PCnYUqw+1eG5lrRIhRytZk/J/XwDt5/kKUkYxAuK
         thGKP2Y7DA0yD4nTPhaisgxbiXuoEPGha6VY0DXDPUszy0cR1Yzp0mbLNa3/GP5bha+U
         ptvKxixVDD64S5o+lA2m/kJ1WiFaobomf2fKm+dW2x7UsJ9YI2yhCn0vsllAqTY4eC9V
         Za5Bej7KzjolTXlxWjNM2yExD6EiBoi5GQ7rlKSKk6ukM8VxbXZm+kZi+Klm0ybwKtPM
         KZm6vNhaLfF+HqKS+uRKshNWIowYm8GbbU6n+roQFry6cZaWKhoMxB8z7rBtIfSLESkL
         5KQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rylgb1Tb;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id c79si101976ywb.3.2019.11.02.21.37.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 21:37:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rylgb1Tb;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id v19so9876109pfm.3
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 21:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gILhPaDPG+Gx2jvdn0CdLoDfc476WuuZVr8NNMhyG6c=;
        b=Rylgb1TbT8DXb68ewIxKKYwlsr38/vphPX62sp0xO0YERFSuTGPqEutti4npId4dRM
         Oq+A9eJpRCkr0FQ9YBng8IuLvH2z5n83DIhFgM0rcOma1qAgLD+s+h1FU1XHjF60zy8h
         WHms6DABqXmwkqnI/3AHHkD6stA7mo4oXPIblzu75jMxb3wQu0+CYjtqTgwPJpjDFwmf
         uyhA69Pz+bx0UpDfYt41CWGuU2GVkdW0aPgbq4T3VozciDH9b1jiUnuhhW2hk2qPk8xN
         epqJ4gwhB0eMxs/zJaIYfN31xjn+ipMykn9/9ugzr9eUkzZWj6XlHu4WLhFkE5X11fRz
         rSnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gILhPaDPG+Gx2jvdn0CdLoDfc476WuuZVr8NNMhyG6c=;
        b=SKzEYMcVP026M81oqnSXJSpDiJHABO9jIqLjkHTo7qThmyxc+pL7suhyUi+F6DfSNU
         ETDX95CNq5ZYsNbx4AY2nQzOCp4BMSzV5d3P3Lt4VxyYYB+5w2t+GuaUWg4/Pqw6Bq8a
         NbRtFlmiixEYrcojK4ZBmf7pO690b6XLEUlgpDUaIoQHO2cy/uSTdyG/f1wCuNBqbJYh
         z+PT+SkKcZNsPFEChRWc6N97YnYYlnuh65n6mQPlh1Z8F4Wms3VzKyHr7mi/61c3M0oM
         QSipVKyiwn56RH443jD7GD+qPswze2psHHW4DtiIqmvKWAZbI2dbjqvX+nPrZo4FDCxd
         /lfQ==
X-Gm-Message-State: APjAAAVFGVFDTYzQCL7eQvH85APwQi0k7rhW6VInoQvpjL7sjwdgqIBg
	hvSTjSwTY7kTt7N85x1XPLo=
X-Received: by 2002:a17:90a:348c:: with SMTP id p12mr26598346pjb.105.1572755834381;
        Sat, 02 Nov 2019 21:37:14 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id w26sm18614726pfj.123.2019.11.02.21.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 21:37:13 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v5 00/10] staging: vc04_services: Remove typedefs
Date: Sat,  2 Nov 2019 21:36:57 -0700
Message-Id: <cover.1572755439.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch removes typedefs from vc04_services files.
Renames callback function typedefs to match kernel code style.

Changes in v5:
 - Separate vchi typedef structs into individual patches for each struct
   (now Patch 1 and 2).
 - Retain callback function pointer typedefs but Rename them to match
   kernel code style (Patch 3, 5, 6, 7).
 - Separate vchiq typedef structs into individual patches for each
   struct (now Patch 9 and 10).

Changes in v4:
 - Place removal of VCHIQ_USERDATA_TERM_T callback into callback patch
   (Patch 6). Was in struct patch (Patch 8) previously.

Changes in v3:
 - Separate removal of unused opaque struct typedefs that were remaining
   in the vchi enum typedef patch to a separate patch (now Patch 1).
 - Remove formatting in vchi enum typedef Patch 2 which was better
   served in Patch 3.

Changes in v2:
 - Split patches into smaller patches limitied to typedef type.
 Patch 8:
 - Rename "struct vchiq_instance_struct' to "struct vchiq_instance" due
   to wordiness and agreement between header files.


Jamal Shareef (10):
  staging: vc04_services: Remove instance struct typedef
  staging: vc04_services: remove service struct typedef
  staging: vc04_services: Rename function pointer typedef
  staging: vc04_services: Remove vchiq_arm enum typedefs
  staging: vc04_services: Rename userdata callback
  staging: vc04_services: Renames vchiq callback
  staging: vc04_services: Renames remote use callback
  staging: vc04_services: Remove int typedef
  staging: vc04_services: Remove vchiq instance typedefs
  staging: vc04_services: Removes platform struct typedef

 .../bcm2835-audio/bcm2835-vchiq.c             |   4 +-
 .../vc04_services/bcm2835-audio/bcm2835.h     |   2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |   4 +-
 .../vc04_services/interface/vchi/vchi.h       |  56 +++---
 .../interface/vchi/vchi_common.h              |   7 +-
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  10 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 170 +++++++++---------
 .../interface/vchiq_arm/vchiq_arm.h           |  32 ++--
 .../interface/vchiq_arm/vchiq_core.c          | 116 ++++++------
 .../interface/vchiq_arm/vchiq_core.h          |  91 +++++-----
 .../interface/vchiq_arm/vchiq_debugfs.c       |  14 +-
 .../interface/vchiq_arm/vchiq_debugfs.h       |   4 +-
 .../interface/vchiq_arm/vchiq_if.h            |  93 +++++-----
 .../interface/vchiq_arm/vchiq_ioctl.h         |   4 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 132 +++++++-------
 15 files changed, 369 insertions(+), 370 deletions(-)

-- 
2.17.1


