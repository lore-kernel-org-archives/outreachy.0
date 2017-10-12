X-GM-THRID: 6473410411176656896
X-Received: by 10.99.66.2 with SMTP id p2mr285570pga.26.1507782697844;
        Wed, 11 Oct 2017 21:31:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.62.137 with SMTP id l131ls769514pga.32.gmail; Wed, 11 Oct
 2017 21:31:36 -0700 (PDT)
X-Received: by 10.99.105.196 with SMTP id e187mr285801pgc.119.1507782696774;
        Wed, 11 Oct 2017 21:31:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507782696; cv=none;
        d=google.com; s=arc-20160816;
        b=DA3ihfrFNT6NG6Bwv24FwCtOi5vAtrPkuIDgPA5Fv6kI7CwQGN+zLGAmWMKEYpK+i+
         NE31gzgcYpmaisBIphvDEnB7zVBVzjPwg7pLF1DJgmJKxxBHL+sNzE8ejcDVpAA6johF
         gpvnym4j1DBgb9/Jk+Fim9Zamu7n3YsIyHc+JfTA4tRNrW78FbVPs4bjTc6N3PFn62bS
         pIt8FueElj4QuTdwGSb48IO8sV30F89YVbazE8YZrbZ9MxbWTmg1C8L+yd/Y/g4w/90c
         3IXcnz2XDe/J4X9s4XDeQDVw8MheUaA1cpN5iWilGiQH2IOUYKcquSW6tQ/lmG5ZlLwS
         +tqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=pDY9gV12pr7WdvlaDYwrLKY4S/jh+dbzCveG4dF+h50=;
        b=aSIUxSGRrYtWTMEnKhxNGm6qpJBNe8NKs2yBuleWENcoZu1Kz0lzSCCWrdA2+iKjJw
         7KSPvNU5E9QJerLIvCfMhuM/F2eIO4RT1BTa25C5ymsxGEpNYgt9D5AIHGOwbxj9zL84
         sJccwFLA9PiHFVYi6s6TxwgVrH2hmjzk8kQArOkp3fKkItoLB461y6/W2u+45uBjhv/f
         N0ZSRjBjlvUoMeqTuQLicONzcGfY3mTNgwcG/yd2ZmWQgtcOjmcR4+MGiNkZV4nfFXmB
         G7zmyNydhv3zNAMJPojyZ4E0dGm2sm9ZSD0UV/WICRIOKtRodbhXSTwxSKsUnpPHFfQo
         ew1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s/UNOJeF;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id e80si1674602pfb.8.2017.10.11.21.31.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 21:31:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s/UNOJeF;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id l188so3261031pfc.6
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 21:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pDY9gV12pr7WdvlaDYwrLKY4S/jh+dbzCveG4dF+h50=;
        b=s/UNOJeFebWSXMr1Mq3/Ar6DM/GttthfR1FLzk9rvy0Bqjv+KcpigkE5vfkA/re/Xv
         scJ1W6t3oY+3nh7wp1Y5Un5uvVCrpoCjAta+/U701SrxYbR/pQ2zBKaiKsXhvYyPMcNP
         tw0oxpvVh9XTMW7I+dKZ8nIm1eNGRQMhQ+rwzasw2rwgmp9HkOEprlae022XclxEme3b
         yXmDt91VSlIcBK6bZIUbUMKf+ktpy56DXR/acXVw33g+EkUcgnjwkxyRrIflCVjqzDJp
         89McFK2Kd8LjgjqgXQSbsvy7g0dP2WgZoV2A9vg+4PYgmxpCKsbrnKsq+O4Cqy4/YC0K
         /xUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pDY9gV12pr7WdvlaDYwrLKY4S/jh+dbzCveG4dF+h50=;
        b=WykRZDoCPlZSEVEkLr6i93JLLCNd+ahKS5hDrwwy3M1CHFN9SzyIdTRWIjE/xMA83e
         AxCzYwEMOdgH0gkX65khZiodfsK97fDANb1bXH7Kcc8j+yNVKui5Kb8HxNa7oTkmmM1v
         f6vBbsr9M0HZ1OHozhtDm/3IyfRuDS4tCBUqXmwv4Iwa/6BQdUHkY7F4Gh0zlWqiFV3y
         hl/5ALwP8czE0acpZrGibU1u98h+0mh4Hl0TrOSHGYJ8NCdfKTHOwMZOCR50oylYGhne
         siIx+SEKSVfe5emxnvE0KpbNcxI4iyt40wvkVqALvJwBuVfzfoWMiTzu3fIZaIYrVkX6
         XW5Q==
X-Gm-Message-State: AMCzsaUE+W9IvfVXpjry4z7GahKJSZcp6MFKMiI2YIMzNhHfajDcou4Y
	eEADkAxkpC+BAx+HgMfTTQIjMKs/
X-Google-Smtp-Source: AOwi7QAY+iAI3xv0RU2nnLZy1phTE6M8afhB41uPr34bxYVxFYs+Eeg87qNwhnQ2u+fkGtjUauYR/Q==
X-Received: by 10.101.80.76 with SMTP id k12mr889543pgo.432.1507782696342;
        Wed, 11 Oct 2017 21:31:36 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id i3sm8632798pgs.82.2017.10.11.21.31.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Oct 2017 21:31:35 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 00/10] staging: lustre: fix code styling issues and remove macros without users
Date: Thu, 12 Oct 2017 10:01:13 +0530
Message-Id: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches fix:
- multi line comment styling
- line over 80 characters
- macro definitions warnings by checkpatch.pl
- drops macros without any users
- Comparisons should place the constant on the right side

This patch series includes all the patches I sent for this driver to
show the correct order.

Changes in v2:
	- fixed error message coding styles
	- fixed multi line commit messages as suggested by Andreas Dilger

Aastha Gupta (10):
  staging: lustre: fix incorrect multi-line comment style
  staging: lustre: fix comparisons should place the constant on the
    right side
  staging: lustre: fix macro definitions warnings
  staging: lustre: drop macro that has no uses
  staging: lustre: fid: fix line over 80 characters
  staging: lustre: fld: fix line over 80 characters
  staging: lustre: ldlm: fix lines over 80 characters in ldlm files
  staging: lustre: llite: fix lines over 80 characters in llite files
  staging: lustre: llite: fix coding style for error messages
  staging: lustre: lllite: fix multi line comments style

 drivers/staging/lustre/lustre/fid/fid_request.c    |  3 +-
 drivers/staging/lustre/lustre/fld/fld_request.c    |  3 +-
 drivers/staging/lustre/lustre/include/lu_object.h  | 18 ++++----
 .../lustre/lustre/include/lustre_dlm_flags.h       |  6 ++-
 .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++--------------
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  4 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++-----
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 41 ++++++++++-------
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
 drivers/staging/lustre/lustre/llite/dcache.c       |  9 ++--
 drivers/staging/lustre/lustre/llite/dir.c          | 20 +++++----
 drivers/staging/lustre/lustre/llite/file.c         | 13 +++---
 .../staging/lustre/lustre/llite/llite_internal.h   | 18 +++++---
 drivers/staging/lustre/lustre/llite/llite_lib.c    | 29 +++++++-----
 drivers/staging/lustre/lustre/llite/llite_mmap.c   |  3 +-
 drivers/staging/lustre/lustre/llite/llite_nfs.c    |  3 +-
 drivers/staging/lustre/lustre/llite/namei.c        | 15 ++++---
 drivers/staging/lustre/lustre/llite/rw.c           | 17 +++++---
 drivers/staging/lustre/lustre/llite/statahead.c    |  3 +-
 drivers/staging/lustre/lustre/llite/super25.c      |  3 +-
 drivers/staging/lustre/lustre/llite/xattr_cache.c  |  3 +-
 25 files changed, 187 insertions(+), 132 deletions(-)

-- 
2.7.4


