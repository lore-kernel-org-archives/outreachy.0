X-GM-THRID: 6473410411176656896
X-Received: by 10.101.69.194 with SMTP id m2mr2397047pgr.7.1507208312631;
        Thu, 05 Oct 2017 05:58:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.55.65 with SMTP id e62ls5831073pfa.2.gmail; Thu, 05 Oct
 2017 05:58:31 -0700 (PDT)
X-Received: by 10.101.88.140 with SMTP id d12mr2278440pgu.22.1507208311536;
        Thu, 05 Oct 2017 05:58:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208311; cv=none;
        d=google.com; s=arc-20160816;
        b=TOOBTcP/frxSreNVrekjKVi53irDpZUgIciYg/BRUrmFnIqpemY/ifSaQEVee4a2gu
         e9/hWes0kDJ1FU5SX7V2naGRs1bJ2liDZ9g1E0r8dyWTaQoPXMYTL68tJLrSnFKOa803
         xbVgkgHunh9TJ6mtVhnLPc2GWxn2w4eB21s87rkI+CAmKv9d2ZNJGjtXurL81JSBwJsX
         kRBzNEmCmEFcn06bRPPH0z76lAJNq+kw6xWdLDeySMp/g2LEeJbRFR2R+4XphwyEF8O0
         wXCZN3hMP6EQiOSYGxcGHW+yed5Uaj4NkteM1S/BUPhVM6VuQqZC/GwFIe60EPnQc8ex
         d1xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=1XGukL2LXV/DtqPSNy1Mqcy5fGBN2/eBpShg6Paq1Og=;
        b=dOwbjVSpkY/o/CVm1xH/MfqHiZkCJdpAdrKHcCK4YHGx3IvRuL1I4iwxrS/6a0j4g/
         sSckCXjFdZrloxnUty3s3wL4aOJ3i3Odun7FbMGfRy8ONOsOj9+x7RIEgJX6sgAyVxn8
         gVsiA623H+X4l6LnpDHVZxZ0RdZB2Q76He64rHnolrhFyzi7812zmPJUKLQnJf+4lltG
         B1QnqCA62QTsN0xU9yAfC1meVkG2LBYDBfIbT6GlentEsU0ayPuuM+RA2jZfexdOAB9/
         MTsGSaObe99AwuoKS2DYhjn6vzeYLbVmg4lbfJYAHp5ATiTJcwnLDDPhLTiJUwMSJ5E7
         m9MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DxalxAj/;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h3si89505pfk.9.2017.10.05.05.58.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:58:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DxalxAj/;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i23so14591554pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1XGukL2LXV/DtqPSNy1Mqcy5fGBN2/eBpShg6Paq1Og=;
        b=DxalxAj/UXFQ9hubEMwn9IpHkf/gxD8FlBtVzge62yTZlcKHjw/YuI6QS6yPysB1iz
         aJMbXUfCfxAuf4zy99G02YDH9AQxqFxzNuqHH5xXqMLXjc/Cg5smWfJ5qaU/4klC0M+4
         cH94BZVnyo4r36TlF4LvwArVeK194eWmzB8smVv2mvm6bUhOaD67DJ03nbZ/UK3vXNmD
         xfyj6dqojJF9S0HUR5F2NnYA0RU4D1q52wkPNMSexm8aSLmefym/5xxski0AxhNVdQcL
         LGJDflhQeKtC3mVmCAvhzI5ces/ClTAXVxxT8CO9zSI8bGnsiiuWxFN0bX3dnpV4d//p
         7s1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1XGukL2LXV/DtqPSNy1Mqcy5fGBN2/eBpShg6Paq1Og=;
        b=PE9ZYL1KtL5kLzrXAJf4em6OvKdLzmeTHWHoyNpm+Ce2v//KjI/E8DJzR8zwrnS6Lv
         k3LpNCDNAhy9OpV9f48Uv+JSNnp3QJWJK8dPh98kS+qjPEjqn335bfxMw586Xl4G0leV
         HHKamMKdAsVjZbF7uo2i6nMoYEr79Jy7FBnPd8IESbFhABK2x87/cKVRJsd+YMd8lPF4
         M8qGo4oPiF6uWVhtUH2PFTwiuq8dqCNhb4o6KMx9q6mK3EZ+aVP+xvR1kuwUuIdPHEUb
         h+pYIUPdAY/vuobpTvXX4ET3OK1OBnnKxeV/wlvfZv3orEnxZXFyBHzcvc06GCwXm5BE
         pBCA==
X-Gm-Message-State: AMCzsaVmGu1m+46dfyDH6uBXGtDWXZjRWazgDbQTOWVlY7Uq4T9JOs2j
	T6nwJQ6xl3ViQTNa1SG42uTU0yq+
X-Google-Smtp-Source: AOwi7QCUX/YiW63WpgP/gUExSxwR7Zvfp+Jtyx51RWuvO29lvsQAeZpJZHtY4QrKby5CvbAi84HF1g==
X-Received: by 10.98.52.197 with SMTP id b188mr10436416pfa.250.1507208311154;
        Thu, 05 Oct 2017 05:58:31 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id l68sm30990584pfb.126.2017.10.05.05.58.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:58:30 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 00/11] staging: lustre: fix code styling issues and remove macros without users
Date: Thu,  5 Oct 2017 18:28:12 +0530
Message-Id: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches fix:
- multi line comment styling
- line over 80 characters
- macro definitions warnings by checkpatch.pl
- drops macros without any users
- Comparisons should place the constant on the right side

This patch series includes all the patches I sent for this driver to
show the correct order.

Aastha Gupta (11):
  staging: lustre: fix incorrect multi-line comment style
  staging: lustre: fix comparisons should place the constant on the
    right side
  staging: lustre: fix macro definitions warnings
  staging: lustre: drop macro that has no uses
  staging: lustre: put trailing */ on separate line
  staging: lustre: fid: fix line over 80 characters
  staging: lustre: fld: fix line over 80 characters
  staging: lustre: ldlm: fix lines over 80 characters in ldlm files
  staging: lustre: llite: fix lines over 80 characters in llite files
  staging: lustre: lllite: fix multi line comments alignment in file
  staging: lustre: llite: fix multi line comments style

 drivers/staging/lustre/lustre/fid/fid_request.c    |  3 +-
 drivers/staging/lustre/lustre/fld/fld_request.c    |  3 +-
 drivers/staging/lustre/lustre/include/lu_object.h  | 18 ++++----
 .../lustre/lustre/include/lustre_dlm_flags.h       |  6 ++-
 .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++++++++--------
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  4 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++-----
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 41 ++++++++++-------
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
 drivers/staging/lustre/lustre/llite/dcache.c       |  9 ++--
 drivers/staging/lustre/lustre/llite/dir.c          | 24 ++++++----
 drivers/staging/lustre/lustre/llite/file.c         | 16 ++++---
 .../staging/lustre/lustre/llite/llite_internal.h   | 25 +++++++----
 drivers/staging/lustre/lustre/llite/llite_lib.c    | 45 ++++++++++++-------
 drivers/staging/lustre/lustre/llite/llite_mmap.c   |  3 +-
 drivers/staging/lustre/lustre/llite/llite_nfs.c    |  3 +-
 drivers/staging/lustre/lustre/llite/namei.c        | 24 ++++++----
 drivers/staging/lustre/lustre/llite/rw.c           | 15 ++++---
 drivers/staging/lustre/lustre/llite/rw26.c         |  3 +-
 drivers/staging/lustre/lustre/llite/statahead.c    | 18 +++++---
 drivers/staging/lustre/lustre/llite/super25.c      |  3 +-
 drivers/staging/lustre/lustre/llite/xattr_cache.c  |  3 +-
 26 files changed, 242 insertions(+), 132 deletions(-)

-- 
2.7.4


