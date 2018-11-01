X-GM-THRID: 6618737831817773056
X-Received: by 2002:a17:902:7109:: with SMTP id a9-v6mr148166pll.62.1541044989687;
        Wed, 31 Oct 2018 21:03:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:46e:: with SMTP id 101-v6ls6933627ple.6.gmail; Wed,
 31 Oct 2018 21:03:08 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cJDRiP/AzEJYFlz0eZXoqxz/jk7v88S/dA9YqK3r1S8hVjde4WJrDcoP3UBb6ps7Svvzhi
X-Received: by 2002:a17:902:4d45:: with SMTP id o5-v6mr114564plh.86.1541044988703;
        Wed, 31 Oct 2018 21:03:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541044988; cv=none;
        d=google.com; s=arc-20160816;
        b=UcwZNDPlEp1+su9rBkL+4nMhcfkZxIU3kVUQjGIUFXfkvjn25U7ZPgCFnEFvsq2UGH
         b44Nw5/g1j6MFhx0eizKKqloBhgYKWX9gEUiqVwye0IFkGcMGw3peAS6rwnWAj3eowR/
         9ODRDumqtKDKVasGGJGPnT+9dkjFDsnXB2CqAdvdr1r7ROMIm1Hsdg1s4MTHxsmZGQW+
         G7g6iaiwHpz8lc6HpgPDWaR2gKETMil27SAFyEyQbFadxxviOgo55XLur0npGgjIV+Mo
         lubR9bzh61CgVDmglrsaAXjgVxylQSdD06FRSPsGqiWYhCjMM/3lZCefpL34+TMfIli3
         kyGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=aX4nEjc10IsWrqIImk9XtCY3OrV+Hx09YcoB1Yxb0z4=;
        b=T4bF9b6uSGStrAEZXjt5SgWFNL9k8K4vw79wtL2juKG2c/Gd39RnxzFDOm3aXuUnm3
         WRUATKdaquV0uFfoChm7tbeDz/Npda19KMOsE5lPsumuVArJ0uitwNbAQ18ioW2jlYtN
         2I49qnxmTBszFaupC1nue67Zdsx7yyT8BF46zSIaeHQBobgZ6PqvRyv0WXJofYQE0V/I
         0O8jgLLBxE5Ht+ooQ9/LNNjLicoGVhcGAhSYk5e/hx8Y3vILGk98Y8HvUt6/D4JKIVjH
         S78kXedxdy5WoqVB7KVfBh5WQ+sgcESLoOzZdmfqS5qsncgDSlMhiH5VAwGiEKtIFpxo
         A3ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hgN4M1m0;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-it1-x12d.google.com (mail-it1-x12d.google.com. [2607:f8b0:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id 7-v6si1394654pga.5.2018.10.31.21.03.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 21:03:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) client-ip=2607:f8b0:4864:20::12d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hgN4M1m0;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x12d.google.com with SMTP id p11-v6so1225903itf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 21:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aX4nEjc10IsWrqIImk9XtCY3OrV+Hx09YcoB1Yxb0z4=;
        b=hgN4M1m0QE29MiEFt3DK605GQAuzplW1FH8Nya2o2OWAVJVSRGoVN4M6FVfU30oMcZ
         uGBe51l1M17N5hLGXZIcR4fFT1B05OfxUdhU/TKFddS++TEMxj9Fplb5rcIzx8wVS7bP
         ZDZdPiQVtiUTEhcFrQn/MqcgllUTwC4cPQ/JsOJFG6ofTnolH15c1heG02CixSKJ5eny
         1Vy9TyZ1TseRKvacZ6aqjoqU6Y0IY/Yzi9mLIwVUPletGpgtBlyAaLa0vhzRBdxybzNh
         JAGb4sjvlMXdtGYYYs9AfRlGMKv3B/rxlojuZZvUcJ/0JfEArCstFdLSwGZO7e8njtxz
         vBsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aX4nEjc10IsWrqIImk9XtCY3OrV+Hx09YcoB1Yxb0z4=;
        b=GORaQKQORcUtxrnclWAgAmDPWQLtTRrK53faS6Eu6OCZAi65LPvo0irw79TcfxF3pv
         0cx5V5CgTHFIums2pWp9oT+PDXlhJyZ5vYPO4DumwhsdhosDQ9fmWtBJhdTXGRYy7vYy
         RisIxn2zuR2KJmUVHnxC/PofJaqLUbHM/dCqRcXcfKsOxM4ZkugP1mofq9ssZUXCoJo+
         6jBQHoNyRa8pFTX2MEgHECSHjZiknNG4wdKhKRoIOsxR5Ihi5B0PnKsxMJk89M2XhPA1
         5UQIKdgaerkDCufHX23ZZLIkfZCasLQAKgXj5JyncZixgXQwOqn5SpwLtwk4js68IF+M
         rmbw==
X-Gm-Message-State: AGRZ1gIXR4ZHZWtYR1FGZ+jkhAXY+ZAmm9hWYH6CzIShf7FTcCFNouYl
	PxTvvPpgu35eUHheVSQS4IrwHGhK
X-Received: by 2002:a02:c497:: with SMTP id t23-v6mr4751496jam.143.1541044988060;
        Wed, 31 Oct 2018 21:03:08 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id c71-v6sm10021840itd.18.2018.10.31.21.03.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 21:03:07 -0700 (PDT)
Date: Wed, 31 Oct 2018 21:03:04 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: rtlwifi: Modify bool operations and clean up
 spacing
Message-ID: <cover.1541037077.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patchset modifies bool assignments of 1 and a comparison with 1. It
adds blank lines after if's and spaces before and after comments. It also
changes line endings.

Maya Nakamura (2):
  staging: rtlwifi: Replace 1 with true and remove comparison for bool
  staging: rtlwifi: Change line and comment spacing

 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 12 ++++++------
 drivers/staging/rtlwifi/phydm/phydm_ccx.c          | 12 +++++++-----
 2 files changed, 13 insertions(+), 11 deletions(-)

-- 
2.17.1


