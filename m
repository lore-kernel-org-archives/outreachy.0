X-GM-THRID: 6663223880955461632
X-Received: by 2002:a17:902:7889:: with SMTP id q9mr811737pll.28.1551402705015;
        Thu, 28 Feb 2019 17:11:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls3413236plb.2.gmail; Thu,
 28 Feb 2019 17:11:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqynu547usJbRpX7kXq+L/xfmMm14JqjikUBSrbXVpqJUsaU0jnnqURKfnne+mthFYzNm5gg
X-Received: by 2002:a17:902:2948:: with SMTP id g66mr814099plb.0.1551402704230;
        Thu, 28 Feb 2019 17:11:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551402704; cv=none;
        d=google.com; s=arc-20160816;
        b=yewzrNdhRdO/t30mYCgA98/c83JG98ZniaXRlyRtrejWxiNT8yJQMiq2UazpgMvU6D
         idsGV3nsGvBGp7dYjf8fSLVMNJn3lca5i7Wa9Lo6qlQqqSPBMyB5QZN4GMuFPSn9oOlM
         gFu4y5PR6Ez3Q5ojUCRlYDSTSF06NYZOC9uIUr00n69yvf2EoKBkLcym/48iJfyivRM6
         TizqbWHFMq58C68ykp6C74fgLMzvlD3yiMwdjQDT+XWjhOULtUEvfWp2ZlhI9EV0bbyE
         l5/p+W9+Aq4C+b4HEy6moBXUhRFsMXEGrrc4ONo+fEDB6QsBgD8PxcRgG/HgEd7Q0xQJ
         AAjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pwORDTpBfabZv3XSlvH+JBPhN2BDO/rGezfZkn5z7Y8=;
        b=fFSCttk55/drGPfS7jD6+84XRhqWxR5lsv1a9L0+tPdpih1VJDq/AUjmTeJqID4/r1
         3B506Q8Iqtz4TqAibCXUZ8ksT8M1F5dllwKABf6b2DUUZ1vApOF30bksdRate0jL9v/p
         r0l1TdTerkdjSSPibDLTiHnIpp3RTulQO0t0Ro9T8Y0O91ok6tNDxbVui4IaBagwPuQS
         qx/onMxUOjuEm1TPDdnfX0SLCHoC1h2MeTjf18IhO+vXubGAJT/xTJDKkugeDsvLAvoD
         KffB/3Lq304OXlFJEy2VCrWa3l2PMfeFZ/rsRi0yBJj3Oo2sJgJhDW2x774YMB1VvsEg
         +9ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lRxTfAqM;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id e71si420830pfc.1.2019.02.28.17.11.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 17:11:44 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lRxTfAqM;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id j135so18198775oib.13
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 17:11:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pwORDTpBfabZv3XSlvH+JBPhN2BDO/rGezfZkn5z7Y8=;
        b=lRxTfAqM1cMAejqU9sXTKx+27ySxM52CNZvBXdFTPepJmK6EPZ4lYIWF3H0fDxwejA
         cTVIiOUH3LaB4hUvAUWW+GJ4EXYl4FXw7mc2biFNSAhRl4CU4D6F51GpGASyvKE5iigK
         oHIvaMx2AQwaqPsdKJAkLnVJMOfdzSOxekMMPM4DNqnzO95ujYHKaze7jj7Kjdi5yLs8
         CUKDxMDEzu4dqiY1pxK6cbnCpg4hsBfpbXzAGW0CUuZgeLbDJMzuI6QaPXkhlvOsFLCi
         mrnEvAS1fVtOjm0u6SHoT2XYl8OPW0R777xhe/gqJsrGzX2cbUWc1co9eB7/LjAcc7GL
         8wyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pwORDTpBfabZv3XSlvH+JBPhN2BDO/rGezfZkn5z7Y8=;
        b=bBGSmWRYjb8VD+Sv0dmQw0A0ii7/mDIccFEwE4a6kN9M4zekAkTUCHmTdNF2JgxK5H
         TrjPVZLT21B6vYpjmLMEEk/b+E1C61iquIg3q6njUtzyq4LuIGf4xzVQ5HbtUdIjcFGh
         X1SQfaaXwamWJ9HiYbxo7GHmVRhj4N35bsS5LKlN/pVpHqr7AqyW2CqMO42IbQacbP65
         SEeQIjudW1w14mfABoGHEFTkFRBzSRZwBzNL35Yanb94H6JNro6mNpTyGAHD6myYpSKk
         lKm8tFO9s6EAmBrIe971yb3nufDJinoUDLRcluEaLb+exVuw63nXMF5D7wk+64Ur2MT4
         xZgg==
X-Gm-Message-State: APjAAAWkrrEgxC4K2w9cno4O7UJSqSxgSeE3CnnYwyJ5RmMdZ/DRVirx
	2f1XbY5Qi8qcfkMDtNPiYI8=
X-Received: by 2002:aca:cd93:: with SMTP id d141mr1685541oig.163.1551402703476;
        Thu, 28 Feb 2019 17:11:43 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id y19sm7854546oih.42.2019.02.28.17.11.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 17:11:42 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 0/2] Staging: vt6655: Fix comment style of SPDX-License
Date: Thu, 28 Feb 2019 19:11:37 -0600
Message-Id: <cover.1551402120.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com

This patchset fixes the comment styles of SPDX-License Identifier based
on License Identifier syntax.

Madhumitha Prabakaran (2):
  Staging: vt6655: Modify comment style of SPDX License Identifier
  Staging: vt6655: Fix comment style of SPDX License Identifier

 drivers/staging/vt6655/channel.h | 2 +-
 drivers/staging/vt6655/desc.h    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.17.1


