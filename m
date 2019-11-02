X-GM-THRID: 6753896393761357824
X-Received: by 2002:a17:90a:a882:: with SMTP id h2mr18780894pjq.1.1572653067586;
        Fri, 01 Nov 2019 17:04:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:cb07:: with SMTP id z7ls923029pjt.2.gmail; Fri, 01
 Nov 2019 17:04:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwnei5Da5ypUoBqg/GvMR3pl6XbQNN0UK7Ca/T/KHnC2NBJ88C5+dYZE0EeOfVXFWCbtnDd
X-Received: by 2002:a17:90a:f48f:: with SMTP id bx15mr19048475pjb.115.1572653066542;
        Fri, 01 Nov 2019 17:04:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572653066; cv=none;
        d=google.com; s=arc-20160816;
        b=dXQKJcQykOU/nEaYummfZyrhCdjM3xhyjV9HKR2GWVFNAUi4QQMPi+HHwIufj9CFwQ
         nige6HttpyjS2C+1FebtkMmOY6vfiZLxMz52q3+Nh2Kkw8Yvs0BCC8XtYZN6PIXovlD4
         haRPxedzCZpMvKCKfuKM7wADpS7+HbEjUyzx97vH9iPTkTMihgqmWBSKJY1EeNcA/7hl
         mfHbCU1qNq3KBlzlFAPoSkIx1wRRf/DiLk1Asdc29eifxRECX5oPJ9Xqzt7gH9+Us4xi
         6u8mSx6Ox5nQyRrqyQrtT7rHcFps8TOOfbaoV433aaYsNiUFa74QtkYXfFtIpZNCgSvE
         1GNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=YFC1p3fj7VkS10+dg/QbjGOetXzFsrvCXPV+eYhpPZM=;
        b=atB9N4faIsgj29wHigtYGwLjHjQPObP8YwTaaDl2PmiLMDa9y3BBvI1JfwToq2SwqA
         AkQq5YzZfXTmOf1K2UuDmlPIATUC4yeczNz/dujTanaL2u64XMq2eJIucJla9BARodu+
         iC1M2pdMlq997IPFlABt51d1duWLqjhdD7A3kB6MFbp0nCWQmSxERdZhEfvzfD9N0axR
         KVOxFPBjCHFmqhavxqd/ZXPM/uNYj0X1P02iDgC6DNrTO5rVtsHhUyptLENlwK530fl/
         UqeWxcVfrPNA+gKTHktGqdbsX1FTliP0ovC0vgjrp+jBNYR6Zlv8yA1wNFzJ59pNlmuR
         q/tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="r5u/fuFe";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id f17si558409pgk.3.2019.11.01.17.04.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:04:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="r5u/fuFe";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id 15so7427451pgt.7
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YFC1p3fj7VkS10+dg/QbjGOetXzFsrvCXPV+eYhpPZM=;
        b=r5u/fuFea3Nf2pJMzU8ZNawbsdddsLhNPW4GOjQ9KC5p2T1KGaqTgIEMAgU2hZ6DHI
         R7YG91LTqU/1A9DWh4zDky/QCjMATiulB94EXjScztaeYJ7Vh2Dvfrs/cMoC7KUiVyP0
         0sOuZ3ak0BSWODRFws6pYdzrfVq/y1aGkVQP/BEoLVjmjGlT/gDjJgTMlGcwnuIU8UIU
         KFSTfnLoF5qgXvkd4w+x+BP0XiOVdSv6/AlXsGqmBqz+d4mFSMmZlnYpMs3k4ieCNuKG
         yfnViOFKda9kC6hPiLVWNvWhTlDUvDUJhVRIlVW662Gc0saYAOtbCu+qU2UDUyGY3M8B
         Iwkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YFC1p3fj7VkS10+dg/QbjGOetXzFsrvCXPV+eYhpPZM=;
        b=f16CyeuuXj+h8vjUfmX6biQIFKVPkquA6/nXyfN/3supATYyqbaE7C702DlYZCeVU5
         qaTrd18ZKJvZzl186KBeG47vSO5EHrukr+SydadZwEBDCdlOeXwRbz+v2KkU4f+Q+k1J
         MYV3uL2QO045ILw9XzYInIx3+KqLhucCoQwgpY+HgA8GUU6ZxIU+I6kVczu++bNI6eSf
         myAQuMryiDofj30FgyJbM7TIT8R2qXe8Q4CRDCTKM8myKt9K9/HU295FInEvqGljMGBq
         Sro6zSqfNJVqXEBpNivX0xNRq1Ok+XykqPje/x4OsrVpw/BlalN4NWKSUC4xk9WyMjAL
         DoPA==
X-Gm-Message-State: APjAAAUoiAirtEgJe/DpV5xAcDioGVcOjqJ2iDUtuafMdsa3Yri+f9DE
	wl8r8t3/Fbvt/2db4gCbqtyVrjy1qWc=
X-Received: by 2002:a63:6fce:: with SMTP id k197mr15277639pgc.202.1572653066042;
        Fri, 01 Nov 2019 17:04:26 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id y12sm9523256pfp.176.2019.11.01.17.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:04:24 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v4 0/8] staging: vc04_services: Remove typedefs
Date: Fri,  1 Nov 2019 17:04:12 -0700
Message-Id: <cover.1572652827.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch removes typedefs from vc04_services files.

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

Jamal Shareef (8):
  staging: vc04_services: Remove unused structs
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
 .../interface/vchi/vchi_common.h              |  27 +--
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  10 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 170 ++++++++---------
 .../interface/vchiq_arm/vchiq_arm.h           |  32 ++--
 .../interface/vchiq_arm/vchiq_core.c          | 116 ++++++------
 .../interface/vchiq_arm/vchiq_core.h          |  90 +++++----
 .../interface/vchiq_arm/vchiq_debugfs.c       |  14 +-
 .../interface/vchiq_arm/vchiq_debugfs.h       |   4 +-
 .../interface/vchiq_arm/vchiq_if.h            |  92 +++++----
 .../interface/vchiq_arm/vchiq_ioctl.h         |   4 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 177 +++++++++---------
 15 files changed, 405 insertions(+), 423 deletions(-)

-- 
2.17.1


