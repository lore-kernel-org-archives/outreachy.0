X-GM-THRID: 6886283537092182016
X-Received: by 2002:ac8:7247:: with SMTP id l7mr299993qtp.244.1603337828562;
        Wed, 21 Oct 2020 20:37:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:919:: with SMTP id v25ls163284qkv.6.gmail; Wed, 21
 Oct 2020 20:37:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyGKozkeh1gUhT7pnwycNKtjApnewfgT5EQRnTCPbTmDIu72YUfzsZaRGbi9GswCtU452+a
X-Received: by 2002:a05:620a:851:: with SMTP id u17mr567840qku.344.1603337827182;
        Wed, 21 Oct 2020 20:37:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603337827; cv=none;
        d=google.com; s=arc-20160816;
        b=tmQZn2RM8Lpbv1GchwIc2myhWOcH6+PGw0VSSoZSC9J26gat9MwGxd/l2FHk7Ff+0g
         3k9HydgcVLS1eRE8083RORd4ZVXOZ9bGMYNbFcmNlYun9QXkjNMiBdCOqd8UD46WVWCc
         f9FEvTWh5iu3AxSFn9BU8ysDiby8Uw+0uZL+IG9Q1vqgmWlwJg7i/lReAQ8HvFDuE7E2
         IR2ci+vaMhJLN28xptwLJOmBDvRAq9kEWE81JV/EPOINHJ1F+b7bvIaSWopdVPaeefmB
         idZqUrYaOGs2PpSzKIaBi0NPyYJL5a09rU2A0L7A4L07wBVd6fis2Ex4wCMUfRikIWfx
         xBmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=Jj+/ATEWrpejA1zhADYsUbC64uFN2/AM9ewgujRTYJA=;
        b=AZCb78Gx8MFNWZbtEFz2L48u7j1xGl+R18A4Zuiim+ZPZnzC0SE6tSRhw28lq1fRQm
         QBejvqY1/TvNqVYHWDDytJFAW1/C91ngJurRWhYKfTklh+yJbySoKG+nVhgAgUX7F8Un
         DXo2nGCc0j7IP8vS3np6IP9Q6ZAbeTTDMwsDmEjWLApuEd/1k/7jEdcshRh9W04mH379
         U6tqHsxgIXiF5qGBJhNwzuqX6kGjzlpeCsVvHapPsKV2YGwRv180OeHeHnMzmAiRZ/UR
         yy3lT0+kbknvYZ8/nQM6L0a+DU275Qm7RC8o79itnAsmX0pjVnA1sf4IJtYopxvQDHkA
         ROFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dgNuxyUu;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id v35si26591qtv.1.2020.10.21.20.37.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 20:37:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dgNuxyUu;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id r10so235770plx.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2020 20:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=Jj+/ATEWrpejA1zhADYsUbC64uFN2/AM9ewgujRTYJA=;
        b=dgNuxyUuGgLzgnzAKxYhI0g0JDl0QFk3rMA2Aaz5gQ1Cq19biNDFjAGspkwP4NYrUi
         y7ZpBeoomUgOanwjBwPpI1K/IbTKARcvZwZSE1xhjswjTWrC51Z6zeoeMtP4bDKK9laB
         EK6Cs3iM7ciyP3kvixm25xah2okJMG27FehiSPhgaKLR0Pb4uTFV4oZhIVKNRJHfhl6R
         +AFPF5z07yjHgBTRcQP1F4jP5DgPiKZ+HafULS6V/Fx6rv2i7YWiXG9VdrAiCQCUPMUN
         Q3ErGKFALPMP9bHS7lPqyyziMPB5CVNvPIUBO3Ins/8OvA8UAg3piPZOVZ36t7+8LHpS
         /k6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=Jj+/ATEWrpejA1zhADYsUbC64uFN2/AM9ewgujRTYJA=;
        b=n5Whydm6vz2A4SFvhI+WWZMikXNvwvtFC4vZv4l2WDZguzdrPXuFl/TC4Ol4mzVr2B
         EqVXrA2K3tGcSD1cAQQYZx6od0bD/fzUxsCeTzQv5oEK9TMWAZI5IuVu/oRXxwLi3A5D
         NhrKKmJl739ALRmxzougU1SkrKp6ZVrR63Qv9vLoLwqBv0VFOIclFqNQbOu5khOFrsJe
         tFArZC/Kh4LHwwnz62rAv0cBiZQ1oY5UgL3eeFAET+I3x7hnaVnMPSmkULcFATUGtVuF
         HdMTqcbyTrYRkspexSVODCfcqWn6Vsu9Izq5mh3YRYcj0h5c8dOtbW2cvD1ni+xq0I0o
         IPEw==
X-Gm-Message-State: AOAM532zg5WxawQ7za5mqxkXu+NZ5IY+nQkO9uO/Al9BOIko80Z0OHe7
	23pjEavxXqDIh5lLLXzYFBgZ55N6+bk=
X-Received: by 2002:a17:902:7291:b029:d5:cca8:aa55 with SMTP id d17-20020a1709027291b02900d5cca8aa55mr558775pll.20.1603337826267;
        Wed, 21 Oct 2020 20:37:06 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id p19sm176893pfn.204.2020.10.21.20.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 20:37:05 -0700 (PDT)
Date: Thu, 22 Oct 2020 09:07:01 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, vaibhav.sr@gmail.com,
	mgreer@animalcreek.com, devel@driverdev.osuosl.org
Subject: Clean up query: greybus/audio_manager_module.c
Message-ID: <20201022033701.GA329478@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
I am reviewing the file: drivers/staging/greybus/audio_manager_module.c
and have found that there are several gb_audio_module_*_show functions
that accept "struct gb_audio_manager_module_attribute * " as a function
parameter. However, this parameter is not used and should not be
necessary. Would you suggest cleaning up such functions.

Thank you.
Deepak.

