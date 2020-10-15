X-GM-THRID: 6883926801253400576
X-Received: by 2002:a17:90a:e698:: with SMTP id s24mr194020pjy.72.1602789108259;
        Thu, 15 Oct 2020 12:11:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:786:: with SMTP id g6ls1380540pfu.9.gmail; Thu, 15
 Oct 2020 12:11:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwCQCyYdQ8Mk+pUvchbJSI7JoiBBWZsIAFUDcyXeFyLm+MgnQQlVgzAoJlm0k5Y38GKIHE8
X-Received: by 2002:a62:78d5:0:b029:154:ebc0:c92c with SMTP id t204-20020a6278d50000b0290154ebc0c92cmr145054pfc.24.1602789106511;
        Thu, 15 Oct 2020 12:11:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602789106; cv=none;
        d=google.com; s=arc-20160816;
        b=bHK3xHk+PMQtVr0IACu8sjvUMXOqMKq2b7pXH6Kf5nqhhQS/eNy3rCMkcQLnEWogmV
         ENJSArgEMajkJ42A8zcOsQsaJCOHomLTnjEnfMOMg7TADQyWJ8eK+QRrg8cJUxeenHAO
         DG/6SG9fTuCTnyfcs84Nk4t75QZG6aDWOT4+9gTydydJaqLx0AC6H/8gTnu9mgDIrerE
         gKifK4M7t1sq4+peye/fpLdPF5iBxj7Z56xTocVwS7xOvmXODsXE/+nNjjPAiugj/Tq+
         DDq259UDL3vJCVzU3NpCLN+yU+p3c9FAKbb7hA5mina0z7yuzbRdGK3WeYRtvWcudB+e
         pJrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=hjecmrO3Dl78XfFGCnmA6aC9KlARhGj8G7C/xu2v6zA=;
        b=cI/xHcpUdurypCgEu298bAzWsUSLR6Ym2s6ZJ3tewtjUvFECEOb57ZMXwc7Z4O60z/
         H8pBbt7IBkNO8ywgV4aKiNfa/0zW+yLMKiWAzVtU+uhy0WUOsWY/wAf+yPiLJRXQx1K9
         heBQKVcDuqsBBww+3cP3yIHiwvnx9EIxotuQ+rMVxsPl/Bn+uTQaNcH0k5QgATwvAZVB
         /99L6JUAS+5zPKqprSeAP0xrmzqDSLEFu+Lh7USBr/R4vYn3D+t6UPLazpWhjjzyUezH
         ALex1bau1lYb6Follup2qVUnE3oy2r0A8DgRjpoMIKBOh4E+GEU9KnwAyRu+mJQmcvXV
         MmZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mwlzEZe+;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t15si13757pjq.1.2020.10.15.12.11.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 12:11:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mwlzEZe+;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c20so2600655pfr.8
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2020 12:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=hjecmrO3Dl78XfFGCnmA6aC9KlARhGj8G7C/xu2v6zA=;
        b=mwlzEZe+fJ3WsTRVkdnCNjf5Gpad5BFIk9ttxbd7RAw+uZRdJS7y4CnH0xrvrdVrK7
         2VuP3Oc0Ly9/8W5Bm0jZ19/6/WGgaW2/rqPo0NSQ6mzIVxNrzXkWZMECWr8gANxffE42
         dBYikNqnrFGKfAVIQfWyQFvADJSGFbZwQsqaJc+GjxNiWU75HLrVrD6tL/pnILQc/EYU
         Aos+mRRc1EsnhGx4VtCNuJ/TucRKNCtnoRld7/nfyokv+NDAebiGev753jCeLoLSWP9t
         BCnj368/nLD1McJxihxLwx7hs5/ooWtzRBoeMG148PUBhlqgap5kOn0gnhhjXq1v4XOI
         QpxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=hjecmrO3Dl78XfFGCnmA6aC9KlARhGj8G7C/xu2v6zA=;
        b=kxctIaGe+oB6LTr/K19gDFKastpwQevqDaDf4ZRUKVO7PJroyjSE9boIGOnCL/YZRu
         JMLBI43jv6LNGxFufAlH3m3QNCI6VqPI8lyWKijCyvyLLOB+y90/ol6kxiBPfuaRn2oD
         Ppz17fvMHwbG/S3EpCdh/kcZN4Sc2v3sX0fO2hVcMSDKjBHipufwQTPQ1VfvJJHe1/cN
         fAXA/8t0BPveuuKYCyIRHSu55sYNWAoLzrcJmjYHXUcpXUuX5GjiesM0G+tVB6TkczJG
         ITVFM6hYm9YL1NxJGFHrMy6ATPkSG0lcN6vl1yBeOGHqDP1IgO/AupBylqlI2hlfkklo
         HGlw==
X-Gm-Message-State: AOAM531LN6EpcpmseQlYYvL0TdOuoxD0Iqxm5/UlZ6nxONyjnPpIeZhD
	ayZXr/YknkdjRLBA+AJL2/GfVzamq0Q=
X-Received: by 2002:a65:5c86:: with SMTP id a6mr34942pgt.227.1602789106000;
        Thu, 15 Oct 2020 12:11:46 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.198.246])
        by smtp.gmail.com with ESMTPSA id w68sm17223pfb.108.2020.10.15.12.11.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 12:11:45 -0700 (PDT)
Date: Fri, 16 Oct 2020 00:41:42 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [Outreachy][PATCH 0/3] staging: Replace snprintf() with scnprintf()
Message-ID: <cover.1602767114.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The show() methods in device attributes should return the number of
bytes printed into the buffer which is the return value of scnprintf(). 
snprintf() returns the potential number of bytes that could be written
which may be greater than the actual length to be written.

This patchset is a series of trivial changes across the staging
directory to replace snprintf with scnprintf in the relevant files.
    
Sumera Priyadarsini (3):
  staging: fbtft: Replace snprintf() with scnprintf()
  staging: fieldbus: Replace snprintf() with scnprintf()
  staging: comedi: Replace snprintf() with scnprintf()

 drivers/staging/comedi/comedi_fops.c | 8 ++++----
 drivers/staging/fbtft/fbtft-sysfs.c  | 2 +-
 drivers/staging/fieldbus/dev_core.c  | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.25.1


