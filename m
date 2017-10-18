X-GM-THRID: 6473410411176656896
X-Received: by 10.129.200.14 with SMTP id n14mr1143613ywi.187.1508328877412;
        Wed, 18 Oct 2017 05:14:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.217.195 with SMTP id b186ls306519ywe.9.gmail; Wed, 18 Oct
 2017 05:14:36 -0700 (PDT)
X-Received: by 10.37.131.203 with SMTP id v11mr9526518ybm.58.1508328876695;
        Wed, 18 Oct 2017 05:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328876; cv=none;
        d=google.com; s=arc-20160816;
        b=hVn2vhoJ3npwAuu+vegMgFfAWItg4HKNoUmbwAVrB5zv+xkjotmqL0iztX7gQNNff1
         ScZVjgDrfZxyHrWyaTRU4OSifKMog1ejV/lNSTTDFJNFvJz/47m0YHqmMpvCYkM9O6oF
         PODC6dyLOmV2tZew7dg6p6ayD2EqZ1AXGmS5Gv6ZFZDSeeaPYmO+nGu6Jhm7e4HcoTIo
         bUIdF6NGKQ48DGrnv+ezi0ftvM07G5vhvxNrmuEUs2i3UBDfXJ5RXeOJNixT/OfJaRHD
         kRvWoAiPHtNBWWVnxfFUcBWKeX5EZ3E11DLkm3xyfaF2/TUqQj0sH/HBDAKkKwuo33Aw
         pxfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=1i5FzL0ICnQ7fSdLrRoCIg2JGOyEt1phv8YgJWkKvI8=;
        b=G2dzMXT1Jlv2wdJ/aYpACa+iN5sGUDDBn8K3zBS42y6d1DPtbrc3mUZWlqVmh70UaN
         rd8WuAFt8GydlvdF3LKpFzILbMkELbe33jh6Hb02NL5OMoMFJRuvjDsT9TC1Rvx/1r6y
         ng89Wzb0KBxn+qGme7wXM4VaUZhQBJ8smDM2v+VU8/fuRlEgo4lsEHf+JAI6uos6ijVJ
         aB3zTfH+Em2Uv1akJDNLQUtzpum5urxKeSj0ii9REAn/cMNst7Nqvv2YnbMLMMhw0ySZ
         QSfO3dmvIhpqNBZ9KlEEK+5OJqNlLKmGC0HVcjOmJsN+pB2/9QxEiKhc+JdB0Wy1zSRe
         0lsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QQzq1Vcj;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g2si583216ywa.2.2017.10.18.05.14.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:14:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QQzq1Vcj;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id m18so4117808pgd.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1i5FzL0ICnQ7fSdLrRoCIg2JGOyEt1phv8YgJWkKvI8=;
        b=QQzq1VcjUco3XjBtG9xSvO5ceXpofJhCSLzIjWL4/283mtg1flXXKokNm+G5KOf7x3
         /GqtoETHR0sySQgInFJT8mclApVnFNq3AlZEzHD/nuwQ0WvLluR3oJDXupgRsjZSwo5/
         4iBtlhLR1IOUAweVojH/krcTWfE7nZ0dbl5+0sfp4I2ZMgPrLZ/sAgJwJ6Vc8baQSEhz
         4mK8UZ8uKIftXgDAZJOVLRngaOt9lNaqwP9xGsbup5t6TMSF6JeSVdBuvuVsLdeEBR6v
         ugPspZn2j0QpBtlLmSKwQLPs95z5amHj2NgRksevSMQwIepXNHo43s14UExNmgW24Lvo
         AHTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1i5FzL0ICnQ7fSdLrRoCIg2JGOyEt1phv8YgJWkKvI8=;
        b=CwkOVFgKlOhUJv6Hzj9VTm5WOZYE2aXuNF6KyjCrRO8JiFhqJXTcbfFn1nI3kmNgIJ
         WtbSfK0HRukLOcggKQdb8IujPVvg5AiSN/4LP5s5XZFviACO0fFlTaqYO0rwkUZjgzEg
         Wa9vdzim9wBU3169GJLfQk4yo+/5YC7lSc5u3Og0PCFrBgbIMMf/GJP7aHW7deUW+QQF
         k8Ido7k0I2IG+mMf95rpPz/6X3H8VtAONwOv0OenNwuBAesVfvhNIlii81yfM94HLT3K
         Hy8cjQEO8tSaUHcuET0lWde8GvKgRtQTD6be+ibUqKVz2jJM85uTpSfIIuaF1FmqN94B
         g6gg==
X-Gm-Message-State: AMCzsaVd8Q1pFB8M6Ydo1ojORBn1YvxoqnP3LAo9gTv9RC50KC4exz9B
	7WxxLxlddMSpFFxdJUe0me/JAukt
X-Google-Smtp-Source: AOwi7QAclpU7QKJ+CMEyxpZf6tlNZGDFiyOpd6WnBfwEgVhshTqkcYqzDw68sjm/HRE+ILCcKNJDuw==
X-Received: by 10.98.15.77 with SMTP id x74mr14569938pfi.17.1508328875892;
        Wed, 18 Oct 2017 05:14:35 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id 68sm24537643pfx.105.2017.10.18.05.14.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:14:35 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 00/10] staging: lustre: fix code styling issues and remove macros without users
Date: Wed, 18 Oct 2017 17:44:20 +0530
Message-Id: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches fix:
- multi line comment styling
- line over 80 characters
- macro definitions warnings by checkpatch.pl
- drops macros without any users
- Comparisons should place the constant on the right side

This patch series includes all the patches I sent for this driver to
show the correct order.

Changes in v3:
	(as suggested by Andreas Dilger)
        - fixed error message coding style
        - fixed comment in ldlm_internal

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
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++-----
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 42 +++++++++++-------
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
 25 files changed, 185 insertions(+), 133 deletions(-)

-- 
2.7.4


