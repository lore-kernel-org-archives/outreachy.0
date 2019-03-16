X-GM-THRID: 6669057124685840384
X-Received: by 2002:a25:3b10:: with SMTP id i16mr4482580yba.70.1552760862805;
        Sat, 16 Mar 2019 11:27:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f56:: with SMTP id d83ls2564234ybb.4.gmail; Sat, 16 Mar
 2019 11:27:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwlwFGcLa08923rxVm/gs8iZRrfHjWlv6x3lt3rMky3z48bwoo2Y4ClyBEHPDrFNeOG+2ps
X-Received: by 2002:a25:e642:: with SMTP id d63mr5422873ybh.53.1552760861892;
        Sat, 16 Mar 2019 11:27:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552760861; cv=none;
        d=google.com; s=arc-20160816;
        b=MLsuaRFT6DOi+rz+iErjkR3UQo9U3452Y2z5HqC+HcQyulXDOoPJ5rHEqoYVOiyH6q
         dS40q1Hi+rbvy+tVn3Lc/HWnoepEfQ6K0LfCOlKwVGdZVOfJwI/G0sXoX4mT90083QmR
         1KsjcRZYNik6WFTXjgHZ+D79wqMxHZ8Kpod4i+Rv7YWTmYvV6X9UZM7tnUqESLNa9Xkn
         uvdAokYoeHcA7Ng8rU/Z5w+q+CVs/WCvmGnB2TJZU1VPygb7XCvptI+5HW/pFG+aykUZ
         u5DFeXc5XzOy1y5d+wffUgUBnxk4SRSf/tY9tNns3wyOZVApi6X9hyKnJTAm7Azp7UfT
         P+PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=b3Jzq9fKiIE4/32/jlKBYeIahRTISMLQiRomGmNWxeo=;
        b=MmoxCfFBsvx0yHyuWoclYDW6WY3GqU/DZt1Iab8zcCkPyaiWfPSE6OT5FbfaHKNL9M
         csgBX2KQC/a9bjFMqUC/c43RvcbeeJs3ejz13bJ5knsxAoLXIn026Bn5gzpjTHxAaO2V
         9ic4GykLKBPzJhZ9z154c7q+W2j5iB6IHpTEFQVhsPhqTMRQtVOERDmPVZR49RQ+uGYe
         XNsSJjsxkCgeHuOS7q97bB3eX+mDUAWYW6Bc2NlhuBiLh1r4u5CTFlrgM1GzzDtiwk5t
         BhileUQ4JGAiguhW5hJwkui43L0ciYroNMGTi/9RnZZzC9HGVkAnqjviiHTRQKZqZPJq
         60mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rmgQJxBc;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id k62si296981ybb.4.2019.03.16.11.27.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rmgQJxBc;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x530.google.com with SMTP id 125so8594462pgc.12
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 11:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=b3Jzq9fKiIE4/32/jlKBYeIahRTISMLQiRomGmNWxeo=;
        b=rmgQJxBc5cZpm6S1lkS7aUZhJz9eSw0/6JaXmTykaTNm4OfxMHZF7QwlmaoysETIlR
         HLpiaYqfSkhi6P6Tv6200W3NTnylBa+gY+D1I6Jnp9o1bmmtSlplwo3rmr3mOYRutydY
         C6dhe+PPVmsQE8+K0Y3f7dbQwvfNG7qb5W3WXl0qI9Oj03V9y3JSiFJVe6+t9I5buAOI
         rdux7VfAeBadbxPCBveMUt2cghrten5a8NppRu0hfV/tweBkHxQqhb9e6r/Z4PK2lAiZ
         o1r+ApsDrwwBleZe1ju1KbFsRqBBeiPnuRb8LoMYAL5cRNQMnuTb2exqIce9rhR0s+ei
         Pfqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=b3Jzq9fKiIE4/32/jlKBYeIahRTISMLQiRomGmNWxeo=;
        b=t+gxXkfwPtqrF74tAd3kePT0lP5DV7ReCTUYW3IsGj7/fXRoeTKjWCjXgyGmAcLqdI
         j/PUhCvFvUhcvPRrxkygo1qj7Ozr730oUE4D1OtordD9F3fnOzpClc5InIbOZQsyLxob
         NUwl29qJbvKNsuXhM7/OJ4z8t0O3ylQn6lZXkce6QV6c55ipCf5IqKvNFozIPeMm9yvY
         Fmqb+njCILrkcLqIb4arpmWSVebEYZGd7ai3lJmiLYPF3teg4z1QJBuMRYXP8MbP3rZD
         Z0HsXkeyLkaWXspuTZdhgyMcPlsarmFEuQbOLp7dcI2oMnjsnz2F01q9r5+kj96gvM7L
         iWLQ==
X-Gm-Message-State: APjAAAX9m4tZKUyLZ41+Fvv5ZBx1y/RgM8+GoW2e7WuvRwjjPwXAr1WU
	AgNx9rwRMjQzHz4VfTcU59I=
X-Received: by 2002:a62:6383:: with SMTP id x125mr10362696pfb.239.1552760860822;
        Sat, 16 Mar 2019 11:27:40 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id z15sm9187221pfn.30.2019.03.16.11.27.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:40 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 0/9] staging: rtl8723bs: hal: Modify comparisons
Date: Sat, 16 Mar 2019 23:15:34 +0530
Message-Id: <20190316174543.36254-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset
- Removes comparison to NULL in various files of drivers/staging/rtl8723bs/hal/
- Modifies comparison to constant in order to follow kernel coding
  style of constant appears on right side

V2:
- Change subject lines of patches
- Include modification to comparison to constants

V3:
- Break changes into changes per file

Himadri Pandya (9):
  staging: rtl8723bs: hal: Remove comparison to NULL in
    rtl8723b_rxdesc.c
  staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723bs_recv.c
  staging: rtl8723bs: hal: Remove comparison to NULL in
    rtl8723b_hal_init.c
  staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_dm.c
  staging: rtl8723bs: hal: Modify comparisons in rtl8723bs_xmit.c
  staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_cmd.c
  staging: rtl8723bs: hal: Remove comparison to NULL in hal_com_phycfg.c
  staging: rtl8723bs: hal: Remove comparison to NULL in hal_com.c
  staging: rtl8723bs: hal: Modify comparisons in hal_btcoex.c

 drivers/staging/rtl8723bs/hal/hal_btcoex.c       | 11 +++++------
 drivers/staging/rtl8723bs/hal/hal_com.c          |  8 ++++----
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c   | 16 ++++++++--------
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c     | 12 ++++++------
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c      |  2 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c    |  8 ++++----
 drivers/staging/rtl8723bs/hal/rtl8723b_rxdesc.c  |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c   |  8 ++++----
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c   |  9 ++++-----
 9 files changed, 37 insertions(+), 39 deletions(-)

-- 
2.17.1


