X-GM-THRID: 6753896393761357824
X-Received: by 2002:a9d:1291:: with SMTP id g17mr9826119otg.76.1572643314260;
        Fri, 01 Nov 2019 14:21:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls1683446otf.14.gmail; Fri, 01
 Nov 2019 14:21:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwWVzMMyzJHczD8yz9CWQK1eQBFYc9u30c/poIb1JJdgOPMaoNWMrrb4eY8u5DRCl0cYud
X-Received: by 2002:a05:6830:1197:: with SMTP id u23mr10360137otq.37.1572643313121;
        Fri, 01 Nov 2019 14:21:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572643313; cv=none;
        d=google.com; s=arc-20160816;
        b=TfC3fAYwg/O+x4dTDPOWrsbW1R0lpIbKH0SURlJgcYXnrAgbDjPPlWS/thDSa2Zf6T
         pqpD5OLnPfFO5Bw7H4AJ6EODZfyBCAugWB746w3s66EUy2N79LQQvuS+ZI4LSTqeeYWY
         mCqmKNYmC0y1Atfyv2tQEM69TcXuNk3dmvEMD1dtwupIVy/+gWTtZzyn2/9cCHSUvI6/
         YRHsX7uj78Qd6k7UxRrzY8aocBACIBhoBCX0dScFdo0n2KDOTVIHbHXJZSRMxZ77cTrR
         omke/78J8kIc9pkkmyQSp49ft25GVm7xrDAtYXCC/SS1zFCjz6biQ7N4m8Le0eYT8BdS
         3HvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZeZzffiPtixwA2MWbSOBtgt/y9/sKhtVDR1LlW5WeLo=;
        b=wJVHnRSz2SFBFJcyJN6iAUzsquXSKbh3kg3w9leulSw6MoTdgkA8wIHbjuDzAryw19
         x1x4td8kdG3UfcHOtIhxtP1q/MyJzeI5KrLNG1ZGbrZV2zSAtc17Tq7HoF5sewca1kd5
         Wj1YZwruI+NQuELMu9JZHkZpNG3rWuHH6QhC7vTKAvdDbxYdGlw3v398pdxy1W3buXHa
         KhiA/p8TsOD7MG8PyOsx34cCG1Gfrvw7bjKf7yqh08j8pDPbmHZwDsC/LyiDRY7BBuUj
         NRv7l1LG4peddAuDXQJIRu7LqTzM38YrMii7b/R+PkbvSh5TQ1Lahv14eKYHFNfDGxBw
         byQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gpSffhCn;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j19si631655oij.5.2019.11.01.14.21.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:21:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gpSffhCn;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id j22so7243416pgh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ZeZzffiPtixwA2MWbSOBtgt/y9/sKhtVDR1LlW5WeLo=;
        b=gpSffhCny1gVJbz4c40a652ra1lRLVorWLrKK9QlKbn7pRp88DgXk7BpI/5sA8CwSs
         DOaG1PwQDVVoQNBqGmEaVsgzl1ewpH0PQiMyaIWs+cD0HleR9MrkxBDQKF6U41bFrfnu
         F95jBPst++ef1B6zgg05iZxDmBHtEUpZdM8Z5xwWcqRigzM4z9FuF0xgToYpt8D64shW
         hROCE66NAFHup9112+j+W2b1691zSc46nDknKfwZfGouQiEZlCdENuvNNRqsmpRYTLhr
         kJ7vFb7TXktgeYZijejqHCqvN+SPsPY/XlAJMaSxlyrnwEqx8hhZl65FkSL2yewKaqCY
         wDSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ZeZzffiPtixwA2MWbSOBtgt/y9/sKhtVDR1LlW5WeLo=;
        b=lYi6QfSB2lIojOhgISfpv2QIf5IS1CkB/QA8ivxPWfufsT69SZ/ymx0/Xz9ng7dRcN
         FQro9vYZY5dtIXszX7Z1WjHbfYTvH8zMNTsNmajSKDrOdUQasqA/IkOWjoic2FKe5pAG
         dQbHzrFc6TEXyqhWNhmr6oHHwn1NqAOSI9+rq9VLzrD2e1Bx/957v7MUwYC41adqjNcF
         YGD8XSuzPibJdt0LG6EquXA1QAuIvlhnqlTYYYYrsAsrcBoN8sMkWnfW0Nv7VU06iCkL
         lWg8tUdbpfqGClc+g5EmFIYdBlqaBe+g0rnGFB//wcpX5lcL1ZYShhvbShguYikTUFQQ
         J3Kw==
X-Gm-Message-State: APjAAAXvq1SLphCICMjDm/j+sjSmoGTJQdO3nygplbNnjYTPegFaJw6O
	mGb6ONzjDGpZiLcdS0O9qIM=
X-Received: by 2002:a62:76c6:: with SMTP id r189mr16207272pfc.48.1572643312296;
        Fri, 01 Nov 2019 14:21:52 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id d16sm9443027pfo.75.2019.11.01.14.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:21:51 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v3 0/8] staging: vc04_services: Remove typedefs
Date: Fri,  1 Nov 2019 14:21:38 -0700
Message-Id: <cover.1572642845.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch removes typedefs from vc04_services files.

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


