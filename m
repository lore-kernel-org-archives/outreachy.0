X-GM-THRID: 6665164528202809344
X-Received: by 2002:a81:6c48:: with SMTP id h69mr2445917ywc.17.1551854547583;
        Tue, 05 Mar 2019 22:42:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:1f57:: with SMTP id f84ls402385ywf.1.gmail; Tue, 05 Mar
 2019 22:42:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqyQKKV53H49MnLjcA1Ef/3APcJr+On3kbo6mse6asz8xkXNvhiDAo4GFJtA+/WqfPXjKFvO
X-Received: by 2002:a81:3102:: with SMTP id x2mr2448409ywx.0.1551854546650;
        Tue, 05 Mar 2019 22:42:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551854546; cv=none;
        d=google.com; s=arc-20160816;
        b=ZkJLHKdJEcrfmy0qJ3I6+vFn2TljOsc0wEZ7QpZnOZqHqzMHtRY1yZRywxeUlT5bg9
         7HIthA2YBntXh+LWNg/9srX4yihBNuNazcCR2L3XU+jh0DEHVTgjuJ+xxP9y0Zp692Ct
         shYSIp7IW2yPEs48IrQV26mbXgjL66iVeDZHzzfBXuEN/l955Lfe8tgpyy8bkrIizHui
         X9KepHOueKLacC/iHiuEZPi4hhile9bzZybhclaHiJy46O2iSxi9UXLzomL1J89UyxH4
         DhXbffkfK4OkJjkwMMOkpehPM+hSBPr7gFTBZRpgodRekQbzyqhecbcVROp9POj/l9tt
         /Khg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=o9sl1Ee6fEHQBDDB2SoLN+4QmKxgvkW+clIKOCgHWSs=;
        b=tMRD0N5RHF4FECtGYldZ8qG3/3TWbcKQcOs5GS7Z4Q0gXWk9sSuGCcsJCikjImx5pz
         yZvXgC3KXtGCb+dMTCPW7TB77PLjMOPs/XsNW9OH5DPzPmyl3BfOjkgMM02T4/H/U/+P
         WMTuju+u0IuMHKYYieX9Qt80A+g+tLDKtVdYzkYUvnNYm1mGyG24n2c4NsuPBERZ/NQt
         gcQ8GKuzU8kHlqZlHRgixLL6qeXM0wDMUpLnF95rYfpB1RhOVP0CTceb4J1nLCksSODF
         iQVWPqqdmQTs+gbv80ZMGsyi+kzlaoWOERx876HmhI0kzQF/HxbwnffCfBpwPWf7YOOW
         lwAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cjVzgZ6P;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id s11si13680ywg.3.2019.03.05.22.42.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 22:42:26 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cjVzgZ6P;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id j36so11678401qta.7
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 22:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=o9sl1Ee6fEHQBDDB2SoLN+4QmKxgvkW+clIKOCgHWSs=;
        b=cjVzgZ6PKN/9ks4KvC1TPYmwDiP8ny99UsyDMZVFFMUxCPO8zhM162bXxSK+WxNMQ5
         G/Ux9e8EyeOrU75t7kdcj8dcSfLdhv0s7ETEzCZz8NZvvjF8e6uyR+C3bbTlELqJRkQ0
         AcipV9Lj0J39da8vN2hA0rfZFS3CAnJ49smfTaoeN5HEVtP2nIRpIO3eDW5JjqgqtN6/
         dBQulduG6iQ9YCoGAvTEEkSLuRFg5l7oNjlRmWv4Ya2z1CYCQVDtEOw33kAG5puusqeo
         q+vdQXKQWKL3qopmojFs96rLV6fpP16UV2LY1ZJq7f36qrQSRQux04r+R5q8EjcEDrOj
         nylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=o9sl1Ee6fEHQBDDB2SoLN+4QmKxgvkW+clIKOCgHWSs=;
        b=gw0aFwY8NBB8yMW1DsX5GwOW6YBdrewm1ZdW/JoyTrOsLAY9kzmSBP2VKDyRPwqqPh
         FHJQjkFwgmRyIcYeYyKuIm7AlQq3kriuqSxgCfogIg1o5LrsOvxVLi+UfrZPz1pRqDbA
         ahT+E4BSMGUaV1D5KgH5TEw0AoBW/9p+3poQEwcrSUStWzy1BunfJ9PxiAMSoFW3Y+MB
         dDY1u0SpLpMPGmMh8z7v1XwkecIzd44q2JjMZ2hbjlCeTd861MsjwiabjY33/BFUFtlL
         +Cgv/uXJHyjyQP4UvRNH9sDmUbMgP4+U+niyQaKQiFqV15fOAca1WjSC6lkR9tBvX8fe
         4f+g==
X-Gm-Message-State: APjAAAXrWXPDNvPOUNdptwU/QINkizmJGk2XyNGVpNoqv2lsdUzamLuk
	kovKwQmQdRyiQ3X0ugyfyZxGsBLEGGPHq9rV9l9+/ksAXGE=
X-Received: by 2002:ac8:1adb:: with SMTP id h27mr4475056qtk.266.1551854546176;
 Tue, 05 Mar 2019 22:42:26 -0800 (PST)
MIME-Version: 1.0
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Wed, 6 Mar 2019 12:11:49 +0530
Message-ID: <CAOMPgjiqYU4Hwb26RjnN=JevCEgtc1wCMHq_EM5fDDq9mOYjmQ@mail.gmail.com>
Subject: Regarding unused macro.
To: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

Hi,
I am contributing on fbtft driver, As i see `+#define
define_fbtft_write_reg(func, buffer_type, data_type, modifier)` macro
is not in use. can i remove this macro to resolve `CHECK: Macro
argument reuse  possible side-effects issue?

Thanks

