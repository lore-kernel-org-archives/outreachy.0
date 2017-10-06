X-GM-THRID: 6473800732941221888
X-Received: by 10.176.13.147 with SMTP id i19mr330863uak.57.1507299191998;
        Fri, 06 Oct 2017 07:13:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.60.206 with SMTP id j197ls6344895vka.8.gmail; Fri, 06 Oct
 2017 07:13:11 -0700 (PDT)
X-Received: by 10.31.110.207 with SMTP id j198mr260021vkc.14.1507299191057;
        Fri, 06 Oct 2017 07:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507299191; cv=none;
        d=google.com; s=arc-20160816;
        b=mw6Evbc2SZ41YLnpsLpTAq+vE8hxKdHMRKIAt17KgHe4eomYwUBH8vZhpWAAVkpN/7
         tB0xvICQYLgqkcZkdU/3OhE8fAs7jBdqDJ8wC4qBt7WDjxW7BF/xlBsg157iZN0rWah5
         i28X6LoWWWe5vIEXzS4mpuixI3u08e1Lmw4ylgSokusYaYRPCEajqt9q2NDRaHMmtKmY
         NrfVHjpUGQGFhD7GLJOQ+BtBMkTyC821fmWjO2QILnRiEnn/qzfGtHbeLzU/uTmi2teI
         hK9okCymdWASfg/7x4jsQqlssaNC0PooQ6PvjCvKHxvJrpt1r0JCDXZ/FG6tOnIG4L1B
         3Ipw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :arc-authentication-results;
        bh=OPPLn6LxikrbcdYv8YcKjSZwyTjzz66vnK+ZWDHZIKo=;
        b=mTN0AD2kb323bNmSHZhaiVMRR7Q7TEVqtbztpH1UiD+O4+rHi22ezbBNXu8yzBn3K6
         GHC9Rqh+WZkdX1U2qb2rIfPaKkvUQsxfobaig46ijURGgQ3xAp4uhM6JzzeZBwKfk9xv
         oPO0HWokLwmzPQDpGPZ2IxI8DvWTxSh0fx5utncwt7cAoueoFPxxBjWFP5L2Ouh1vWTp
         +Eyy0MLVgvoNZUhQhsnIOqUi86Il5hOrIG7lLJncE8IJ2ZJmOGPs0JDWkR0qJ+28NhtF
         6BoHx8dxw7UFqt3WaeGF7ZUl78MnSFfUK70FS6R4k+XyzJr+ereel1ZlX9E9gidM/fl7
         lUMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VAOHrRsF;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id e5si73060vkb.2.2017.10.06.07.13.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 07:13:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VAOHrRsF;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x241.google.com with SMTP id l40so5814194uah.5
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Oct 2017 07:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=OPPLn6LxikrbcdYv8YcKjSZwyTjzz66vnK+ZWDHZIKo=;
        b=VAOHrRsFeDIpJ7DaT+D1KgSKvYu6eITaAm4VfPN/iuqYb8bpA+mC/shJ5bMpJGTlAH
         NPRHzzZAe0XvV77a9GAxpeAw4K1kpHo03NIA2eGrCkXAcY+4s2M7TAmyU6ycNIAJYK5G
         VuaY+sX5O5rfclh7xWpb1Iw6l8xJ4OiRaDZ6gRRDIFLRLP62ugPTQP1uLBgbS2gXXp95
         P6Ecexgq+VnVmkYpz54HsKTHOyd83zg5dmf71yeSy7DPtXJ9qLgoGO/KBwc+oBo/RWMt
         xCvaPnu1Qtd43/d6i6APbS3FgQERDXcPnMeeqN5Ku/v4ApUEBZtYy5lSS+YbK7fxLfj8
         TtPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OPPLn6LxikrbcdYv8YcKjSZwyTjzz66vnK+ZWDHZIKo=;
        b=T17cAWH3dN9mEEIPHe9jOdbkSU9WXolcVu4/KeYUZztcQOiVp/C76gFMr+cdhEUXxw
         ALTEenqa1AQLRV3C7jNfV672inrRe7Es+ViLxKtoMp8L/0/+I7Zrb3o7NJ9+69uyvFoe
         zLHKoX49eq0RPdTJW+/ZubjwBLVfvw1j6ZxUgfHKDfRRHGGY3hcdudogTViKDXXSvJpj
         IKMsQMKHWq870O7rpTda4ib16+ARRRjPJNyQ3PJfPaU+TqSnT2FTvMx0EmeOhI0Je1+I
         qDA5CxeSlXTPZcmdSYE1iSys7EHmBp2CIWFYR+sFzdHuEQflta81Ss47ZRyDIch8qhG4
         cAeQ==
X-Gm-Message-State: AMCzsaUoWBEhpvNmocdvu+NUZjgMaKusHyj/glS/YC00hK8aTkuCS4we
	XIkrvuGGpEsxk2hununRuwSLfypte8q5ch90ZtEV6w==
X-Google-Smtp-Source: AOwi7QA2WOduuYdL6XEIezeWlWPgP/lmWd5JQJfl987Bfu4714n5Du44CWqKCEu9wnR0lxKHd8sGeHDYqdGVat5GyaQ=
X-Received: by 10.159.49.15 with SMTP id m15mr1223449uab.3.1507299190613; Fri,
 06 Oct 2017 07:13:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.26 with HTTP; Fri, 6 Oct 2017 07:13:10 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Fri, 6 Oct 2017 19:43:10 +0530
Message-ID: <CANMOCy0k-k7ZdjEAJHDeRR=A=O5BZUFVStZMtyvnWuuzqcDZmg@mail.gmail.com>
Subject: nftables: 0040set_0 test in tests/shell/testcases/transactions fails
To: netfilter-devel@vger.kernel.org, Pablo Neira Ayuso <pablo@netfilter.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

Hello all,
0040set_0 test in tests/shell/testcases/transactions fails when trying
to delete an empty chain with error "Could not process rule: Device or
resource busy".
The element referring to the chain is already deleted and the same
error occurs even after explicitly adding rule to flush the chain
before deleting it. On the other hand, everything seems to work fine
if all the rules are inputted from command line one by one whereas
same error occurs with a nft executable script .
Is this a known issue ?
What can be the reason for this if this is known ?
I hope I'm clear.
Thanks for your time.

Regards,
Harsha Sharma

