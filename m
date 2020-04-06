X-GM-THRID: 6812648549642141696
X-Received: by 2002:a2e:a365:: with SMTP id i5mr174731ljn.246.1586193346118;
        Mon, 06 Apr 2020 10:15:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5a0e:: with SMTP id q14ls2095417lfn.3.gmail; Mon, 06 Apr
 2020 10:15:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypKO5MZT3+9QA0Pw0Dt0UB/c0kv8jPkfdo8qeYSK8GWxxd/zAHED7HS1EQA6eydSUD0Tv1W7
X-Received: by 2002:ac2:58ec:: with SMTP id v12mr3437807lfo.215.1586193344503;
        Mon, 06 Apr 2020 10:15:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586193344; cv=none;
        d=google.com; s=arc-20160816;
        b=oFHk9nzamnXfGlCbcBlAky9ikYHOm8GqHsSvgENSmTKR4OFtEpcQI8DqSmUeUP522F
         YSFccR3HKGOzDs9LtgtyRqH6LaQsPGwKT1xTUVMZGJ6HbOfxeKSVFkk6HNOAD4bklhZI
         +RbWbzAXXIZm7Fntopxo1zSLITLSVZhoWMorn+1Wi7rEputnr0oBmHtg9rgP72s506J3
         a8zgvSSXZW8shWA5LVuWKh8ILkD7wF6dnRrctoHLKEzoyGipUYByS/39qsfR+SNRT8Cv
         3hVi48t6hTVo4svnQz0KsL+ruttyU4df8X2iF74jwh+pVH7hadDfmC5yfZOjXElZ/R0X
         Kxuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZFrz63gZ8FLTcuRyUYp8JL3TWxcUUk2ur63GKiylecg=;
        b=yAlDli+qqDeJfDCJl8737jl8+0qXpD7d+55dG1TP6AHYysZ4BNFA+rpWma0kGiDq8g
         1qPwXOjP5rljrqScWyHq77zjNns5sFNITYdwUyMttracN97ltF432vOn/7syrph46qed
         +1OCwqfKQWfPxkbCMRhuQlap9hoAR/GfuSxvZxNrV9I3zGq6MPh37VnGYYwVzVTewIdL
         hnr5ESbqLyo3fX7Bs1zuipwAajkqMYx3l46eAZ/9+RzFC9y9yekzcjYzIA2pwaUDdseE
         BhuwyPzelviS0Qmu3iM+ZxAT1SJ5/2d9q9v/19XyoIs4yWAaigdcTmOFqsmsl/JoahdI
         vBDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fWssLsap;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id f17si18596lfp.0.2020.04.06.10.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 10:15:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fWssLsap;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id s8so361186wrt.7
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 10:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZFrz63gZ8FLTcuRyUYp8JL3TWxcUUk2ur63GKiylecg=;
        b=fWssLsapGMbOg1C33/FKiFm8x1t2nqW+/KltippY3rLfN6fG53St1b42QTm3Uvwycy
         w94eV8ZIrxor6VdWeMFDIHde7lbOoAttrFEJGWT6LxNgmOkYgu6ZL92v7dQl8aeDMfEf
         w48barWplRYggxjj+JOZEs7uSmVKtNqcHSQe2k1zQWU2OUcCuMXztC6bEjxmOXBc30FA
         Soxsot5U42bnfyFcYnzteORXCVgX4IBUZbSWtoz+Q2Wj3kne9N1NMGQKf5GrrCE5bImM
         uPKG+khrdCbv8lLRYgRp7rRfmimCa2nWqkAdIhUK1E/oxW7iOloybVgQE0uy9uBDh4OZ
         VELg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZFrz63gZ8FLTcuRyUYp8JL3TWxcUUk2ur63GKiylecg=;
        b=GPm4+zaPSFFjAUBVlWx5LryTIT8rEMgJ6SxJR1BVHZaZENF8fdmWyjUPQAqbwygWMx
         VbmH45az6loAKEPNdk32OAT5RHt+vULIcPVQ9h4WDCx6NblmmGMPx4tuLZKIEL7u5ghZ
         S6fsTi4f9z1U1DpqMhq+G3EKURhi3kBRATmq/jR2EYir4tGbvj8ALbQTaiAL/pbTA5Fq
         xBraskIn3j9ujs/gsVVPI2ZMgB8MWWZMoeV0Tfix0YGiOB5estdwtUswD+3huHtPECd9
         2iY9cQte2NMJ53uT0GieZwj/ip5rkYrytH3wsc8IBw+foIn1R21EII5sUtHesJJzOyGV
         mVXA==
X-Gm-Message-State: AGi0PuaWr2MoOD3ocBGRnxIznxVLHXE3kbNpr0rlhIPtYVQycemw8XVD
	RrsKLhNRiESdJyF1NhTyZbM=
X-Received: by 2002:adf:e691:: with SMTP id r17mr183071wrm.421.1586193344280;
        Mon, 06 Apr 2020 10:15:44 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.214.63])
        by smtp.gmail.com with ESMTPSA id p10sm26921845wrm.6.2020.04.06.10.15.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 10:15:43 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 0/3] staging: media: Misc driver Cleanup
Date: Mon,  6 Apr 2020 13:15:32 -0400
Message-Id: <20200406171535.7275-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Modifications:
	- Clean kernel messages with dev_err()
	- Remove Comparison with NULL
	- Use dev_*() family for printing kernel
	  messages

Basically changes are made to silence some
Checkpatch.pl WARNINGs, and modify the code
to be more readable.

Sam Muhammed (3):
  staging: media: Clean dev_err() message
  staging: media: Avoid comparison to NULL
  staging: media: Use dev_*() family

 drivers/staging/media/imx/imx-media-utils.c   |  2 +-
 drivers/staging/media/meson/vdec/esparser.c   |  2 +-
 drivers/staging/media/soc_camera/soc_ov5642.c |  9 +--
 .../staging/media/usbvision/usbvision-core.c  | 71 ++++++++++---------
 .../staging/media/usbvision/usbvision-i2c.c   |  7 +-
 .../staging/media/usbvision/usbvision-video.c | 41 ++++++-----
 6 files changed, 66 insertions(+), 66 deletions(-)

---
2.20.1


