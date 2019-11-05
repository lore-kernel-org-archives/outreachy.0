X-GM-THRID: 6755960127598100480
X-Received: by 2002:a81:ad24:: with SMTP id l36mr27166381ywh.416.1572994545183;
        Tue, 05 Nov 2019 14:55:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:ad26:: with SMTP id l38ls54752ywh.6.gmail; Tue, 05 Nov
 2019 14:55:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqwZIMens/OjhRi8lBtT+LbnYSgpxL5BEmIRNjuMIrz7UDHsc1Bx7VB3126MAglNopY8+DBc
X-Received: by 2002:a0d:ef46:: with SMTP id y67mr26032245ywe.364.1572994543343;
        Tue, 05 Nov 2019 14:55:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994543; cv=none;
        d=google.com; s=arc-20160816;
        b=LjtYICCQ1nKm65z1NnksR1RlnstCDkFbDLaiFXiy4XgUYH6a6G94NdA2h0ybNLa5ai
         2IR96DGHTaIhenekK5/CEfn5xZTnjT18bq+yMtsG3dpy9HOi8yeAczFp8WMj9AC/A8PK
         EI/LaZimkVlSWxCnxKW9vCMzzXykJ+EFU8usTnJ0yv7X/ethOyxR3AJpE4WRUkyDJEU5
         Q/Q5zy5GyekNqvmjYcDqWDkrcYPJkL1htVE2IVPhxaso2HDA5iTrO0sljGR3pr5Yf4eW
         RKGUQMSnjz9MAzgxsbFuuntQeqyIXUVH4NN2ABag9tCUftxjnWLQOoALhNABtsdfaHxG
         ezWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Po2HxMGk48IbsFh16rn+HWzv7+38wEWzcuk8mG/pt7s=;
        b=Mr5AWKxAlijy5X739cL71g009m0Sk+t9Sjwx3H7IXicJc4yuJTY9HuhR0KQ6usxUJG
         WY4YFkrRyDlXgJ1bbdua7UFeuC82wbi91Oz05N4EuGp98wUxjEIOuApFewF47TyWL33Q
         gqVXZhaUvN86iFRLM635ISw+gIj1n1Y9fVT2/iF+IsaAeK75dyLPLSioDayjbRIyQ3pJ
         wWUof3Qk//D5MXnDXwTaw8FZLbnR8TcD67HrA+AcuGhMJkFsGN/shRzBm1xDzONIVMyF
         MOty+lOQ+GZPfps1snIKA3KZi7uTr2qeXrvWioa0jVxlD1KN7y2iNJok9CLTx5lQQxQ/
         lIzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g8wGZxLx;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id d192si1338866ywb.1.2019.11.05.14.55.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:43 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g8wGZxLx;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x636.google.com with SMTP id p13so10426064pll.4
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Po2HxMGk48IbsFh16rn+HWzv7+38wEWzcuk8mG/pt7s=;
        b=g8wGZxLx1KC42nrgsO7bQISBppeENcQPFGMOwzGrJTBv9eAcVS0nVDp5PfKpw/4L8S
         4WELsv9ZpgtmcgLUV5MoK+0nxfaeuMbH1Q+Kxogi4WwkySKPpTvp8867/0IjfDQzcN+f
         Q0BRUNJsnw55XoHqnWtcuV99a5/N0cQjsv4LnUJt+e+Llnhl4QKSHTArQl2WkUz2yQvH
         bwbtdJN8krO7q8dxC2aKau6PvnPsisdJo0x98Dnk/y0bPEqZdB55/nMjwK4/Rrr/pVyp
         WSMMEbLdebHw59CMI0lIr0t3LQlPfYqpBq4ZOeh9OAbesBsrdFymL7KNupxP3a+F/UqS
         lthA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Po2HxMGk48IbsFh16rn+HWzv7+38wEWzcuk8mG/pt7s=;
        b=Y0ckRI5yelG/DZYJz/Q/EIc/Yxwm1X14kJM7KFoskKISuXTYvKmZxtJ4Jyzhm0tDeR
         AWgT0ly8QwSC2JpdRRfTCf1yX167LJNm7wfyZsjl7uFqoovTsF+OGZxtgwYLTZMrnQcJ
         DF6Uk5MAbhxgs+AJ5QgDld61CHqEVaw+oAPwglVWlKInPEnycht4upFGFdVnCQuurIKp
         jgq4rzFMI7yAswVVEaJ9GHzQK8bGvc90H13ldXLbB7gV3rPCY58IKAokwDVyBpU5P4nV
         aI+vVz5nSqo+BVGvg49nJ3sh5shfJ5+hbB3citT/KIqrvIgnzT6iA2P7f9CYkdv42RkX
         tnEQ==
X-Gm-Message-State: APjAAAVSh6xZw0ucC48wRSYswk3e2dBHMAycJ/vb2/BXevstdH3+Ej2/
	2UEuWcWvksD0+y8mSqm/g90=
X-Received: by 2002:a17:902:ab8b:: with SMTP id f11mr17096818plr.16.1572994542900;
        Tue, 05 Nov 2019 14:55:42 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id c1sm493639pjc.23.2019.11.05.14.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:42 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 00/14] staging: vc04_services: Replace typedefs and
Date: Tue,  5 Nov 2019 14:55:17 -0800
Message-Id: <cover.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset replaces typedefs with native types where feasible and
renames callback functions to match kernel code style.

Changes in v2:
 - Rewrite patch subject lines and body to be more descriptive for all
   patches.

Jamal Shareef (14):
  staging: vc04_services: Replace VCHI_INSTANCE_T with struct
    vhci_instance_handle
  staging: vc04_services: Replace VCHI_SERVICE_HANDLE_T typedef with
    struct vchi_service_handle
  staging: vc04_services: Rename callback VCHI_CALLBACK_T to
    vchi_callback
  staging: vc04_services: Replace VCHIQ_STATUS_T enum typedef with enum
    vchiq_status
  staging: vc04_services: Replace VCHIQ_BULK_MODE_T enum typedef with
    enum vchiq_bulk_mode
  staging: vc04_services: Replace VCHIQ_SERVICE_OPTION_T enum typedef
    with enum vchiq_service_option
  staging: vc04_services: Replace VCHIQ_CONNSTATE_T enum typedef with
    enum vchiq_connstate
  staging: vc04_services: Replace VCHIQ_BULK_DIR_T enum typedef with
    enum vchiq_bulk_dir
  staging: vc04_services: Rename callback VCHIQ_USERDATA_TERM_T to
    vchiq_userdata_term
  staging: vc04_services: Rename VCHIQ_CALLBACK_T to vchiq_callback
  staging: vc04_services: Rename VCHIQ_REMOTE_USE_CALLBACK_T to
    vchiq_remote_callback
  staging: vc04_services: Replace VCHIQ_SERVICE_HANDLE_T typedef with
    unsigned int
  staging: vc04_services: Replace VCHIQ_INSTANCE_T typedef with struct
    vchiq_instance
  staging: vc04_services: Replace VCHIQ_PLATFORM_STATE_T typedef with
    struct opaque_platform_state

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


