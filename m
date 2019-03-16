X-GM-THRID: 6668976439860133888
X-Received: by 2002:a6b:7708:: with SMTP id n8mr5527253iom.36.1552742077764;
        Sat, 16 Mar 2019 06:14:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:194d:: with SMTP id b74ls2211510itb.3.canary-gmail; Sat,
 16 Mar 2019 06:14:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw/TbJcfCJ4BgidjquykRhGtZHguzGs4NAamctUqoSrJv4U8NFn35crhWRxt0oeNrnP32eY
X-Received: by 2002:a24:612:: with SMTP id 18mr4925747itv.7.1552742076811;
        Sat, 16 Mar 2019 06:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742076; cv=none;
        d=google.com; s=arc-20160816;
        b=nV9OrnjFaNqNs5f4XTeXAV99MuoGv6Qrd064N4VKI+hrrcKpaE8Fm/18V8ra2v71oq
         BdQDT3jcKN6cNHouFL3OTz9V/ZXiCT4pxD28YF6xwAlMr3E6pVR5mAF4oweNdVNWagr1
         Fs0wXRJlgu0fwl8WCl0N9744smLqLb3p3bL5vYbv1KF6LuEp9nFxNjXuzn81obfKChDP
         WUYsOxoc2zifc9nmr87Is4GEVgnnckkKUEkT1evBuUAA6+Efn8t0WLdV0EGrV2Fm2fRK
         nzNV029G3bo3j2ioWrjLXQGkiy76Cc9bbVBTqtLJ9l4cEe6pYpVlpLoUyZAhRkvugFw2
         VJ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=7oDbagAusA+zygXuhmFBPTSWMatW7VtjZYmNXqGH584=;
        b=ILvFK1jWYRm2fNopx1ZXjA811mYJ4ePcRk5XCGvggDu65s9cZW3+SLKN8WWx/X/R41
         A3038e6BU74QM+F2K6hp0a4YbyXx2ti+WOtcsAqS0XAzHzH1wBCa79m+XnP07E2fGzAC
         jlg3kI1f4plguugzb6t2vPVG/uGxvr+nSUOhUbpQiKARQ+O1SKSO9It8QhuqFKVPBIbf
         iMj47tXouwZz46cEkqFBxLRi8L4CsRcedb7Rj/NKrtUAeNweYCcZMcpsd3Lhj2sSMfJ5
         SgoFb2uD1DoxWyN6AQZdNkX8mdvS6EZr/Dq/kMqVZ0rdGhaFWxpLiBXrCkLPrQueVYRZ
         lsmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J08uiQ5q;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p187si48988itb.1.2019.03.16.06.14.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:14:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J08uiQ5q;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id r15so5469698pfn.9
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7oDbagAusA+zygXuhmFBPTSWMatW7VtjZYmNXqGH584=;
        b=J08uiQ5q0NHnH4MdmS4iRq6PZaR1ww6SaOGVZX9pemw2nYP/tgg2FgLo63RkQC3qKV
         oCAIESekOxPz2/GQ0ChGrfe5bcF/5BRupB+uqc4m+AVAT64+U6eb54cnIygxGdx+JbZb
         SYz/6lpqv3dE6YTjuTFJgpm034pbjcEbE1nG7UnqrRAPtUwicDx/fFco88OGOQzYhgmN
         EHlzOzOH3/4PjF42RLYv/yh4cpcFsdJA0M+oukyaaKJRK/sAAj8JtKx7WJQukWb7qnVH
         ffQwWaq7hHom08cMt1XDQPG/l1ycx0gA1IX8hdj+oiBfo5dnoz6sVLqmzC22AxQFnrjQ
         5kPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7oDbagAusA+zygXuhmFBPTSWMatW7VtjZYmNXqGH584=;
        b=ttYBpmeiTkHWhaZBkbY4YcinAYr3oerXcRScIuxW3JsT/kcKoTP1hPZX+664pP+kRt
         TMFPmlc1RsVOWt/OHFvFPvgTCqKogI482YPPzf6Uy5Zx5g16TfVEJ/V5eTA8G1HuN+Ii
         4hm+JnnGPInID+HHxLDaGECJf6/yDtLAb3YQnNde0jAxumAKBkGmVUutRxlA0qHh3/Cv
         66PSu0KmTmgiDh1hJPNEJjhk1wyomu8uAoQj9eH9qWp5IkPSCMTIblEQULhg8K7VQAcv
         o4iFYvnGYDGEtwByS5drPz7SpVFlaOL4ly6HI6woDf1JkNb+glTd49jNlXTP+VjPjdxF
         y6bw==
X-Gm-Message-State: APjAAAVTm+NCsm53iyhuKkQGrlr2sPYePNaZqGujZyiNcww5baUNNC/7
	viu0MQIPKYrdeXr++pHjOV5Dt/4b
X-Received: by 2002:a63:5b44:: with SMTP id l4mr8495665pgm.238.1552742076045;
        Sat, 16 Mar 2019 06:14:36 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id k3sm17852578pfc.59.2019.03.16.06.14.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:14:35 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 0/4] staging: rtl8723bs: hal: Remove and modify NULL comparisons 
Date: Sat, 16 Mar 2019 18:02:47 +0530
Message-Id: <20190316123251.24875-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

- This patchset removes comparision to NULL in various files of
drivers/staging/rtl8723bs/hal/ .

- The changes are broken into separate patches to keep the length of
each patch below/near 100 lines for convinient reviewing.

v2:
- Change subject lines of patches
- Include a new patch to modify comparision with a constant

Himadri Pandya (4):
  staging: rtl8723bs: hal: Remove comparisions to NULL
  staging: rtl8723bs: hal: Remove NULL comparisions
  staging: rtl8723bs: hal: Replace variable==NULL comparisions with
    !variable
  staging: rtl8723bs: hal: Modify comparision to keep constant at right

 drivers/staging/rtl8723bs/hal/hal_btcoex.c     |  8 ++++----
 drivers/staging/rtl8723bs/hal/hal_com.c        |  8 ++++----
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 18 +++++++++---------
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   |  8 ++++----
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c |  6 +++---
 5 files changed, 24 insertions(+), 24 deletions(-)

-- 
2.17.1


