X-GM-THRID: 6473410411176656896
X-Received: by 10.107.168.102 with SMTP id r99mr13014774ioe.11.1508352599228;
        Wed, 18 Oct 2017 11:49:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.181.204 with SMTP id e195ls1284764iof.1.gmail; Wed, 18 Oct
 2017 11:49:58 -0700 (PDT)
X-Received: by 10.107.183.142 with SMTP id h136mr12516412iof.44.1508352598666;
        Wed, 18 Oct 2017 11:49:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352598; cv=none;
        d=google.com; s=arc-20160816;
        b=plfOeQ/l3reejzydJZ33dFBFyUy4nCS+L9hLnvMD7eSHgziMUoiP2uXwzswNk+iACZ
         O07LqghUn5LhtpsCNzw7yLFWUgolCHMswbCvVLytIgP8RjuKP9rTtf/mN+4xfnHPegF2
         LGHzIjBrS5ao6l7QEHFVD6GEsi7VKcyEpjiMveEBm4tommyq/ttpWmu6TuWSVPpLyT+c
         lZkSXmpetFvfpmbVXqF4A49YLjDEwXogh++TZ0RlInUBXUBD0fJNP8UVrWViv8XxVxl4
         Nh+p5qmSA64Ejl1qsiNchsXCsL/QVqRbnQ/ERJ+n/VQmh+HBGv9yR62BeNASVHKwhrWq
         yogg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=K1a7ggqy30lE/WDT00notmf7/vy8ktabX56Oq21nflU=;
        b=0DUfjM/kLdoIjnZL/z+CE02+fMOAmWeVQwFVdWg3avokANwOX5vpLCPnflRq7VEKll
         VDdpRL2iWhePROqpfDIu8Z6WjUjc5ZsXwkEBX4cS6g6l6LeaGX20H147hLxEEJk1nydd
         KleTtuODnN4sT+p4P4zUDnSQpnRx6dp3ult+V69ElnxZrkwEkgUf045sAbI/DxDHj/1x
         /WIhjV8nGpF8YuKA0ZZvnWjOnnGBME226x0bxnRBKm3YWvhYx6pvRPsOgHE2v54rWPAu
         7enk8nRezsh8UndoaJGrff6rM+KGh1RWlniV9VC+c/CB09eIBpHcEFy+N/Lp1EfgF6RZ
         Vvjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hPXq7dlu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x235.google.com (mail-pg0-x235.google.com. [2607:f8b0:400e:c05::235])
        by gmr-mx.google.com with ESMTPS id d192si990108ith.2.2017.10.18.11.49.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:49:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) client-ip=2607:f8b0:400e:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hPXq7dlu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x235.google.com with SMTP id b192so4996100pga.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=K1a7ggqy30lE/WDT00notmf7/vy8ktabX56Oq21nflU=;
        b=hPXq7dlu4kc+xHFN/IoVhAs7rBPhFHuivHHszGI6qC6m+Z07Df4QJX83Fga/AsH4se
         eMOPV+Ed+E8xScyuDxYmkX1ydSqIgIaTDvcRPaqI3CemhxRBF2QgdPdg++QPagQ2Z7wh
         lza3Tvud7UtHOA8ftSj1r3l/rCVRQW0a2UoNOmo9yhU4Dve3PXWYTlddo02Z6eNhyc4a
         F9imtZo5Wd/BWRMmBesMmWeauvKZnmZcqkFt6d7pIZfOXjFK43Qlb/CUdqHtjRl+BzPs
         k2DLj7atcg1Bt3oFerOIa/M17w5pjLm5fHuGkFBYLGbQmzKCBayMRSVRjduuQ/rQsjkd
         dswg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=K1a7ggqy30lE/WDT00notmf7/vy8ktabX56Oq21nflU=;
        b=D4TFjYSFaQs5be9Hmhu6skGKGX5F2/nMLi5CHZZrbgZ8iYeEeXQsO4VhjGF2jWZY/p
         f+rpaRrq4ZjLzxNDLQ2ShM05ydrHC3YBRO7C5xllR2hjxu0sFVWr9W28OCw4mTIwugDR
         pUGxDyF9Zpxitl2BzvYWuiBglwDOAz30YWm+isrDkhiLPbr8mPl750o/B/YOYO3jnb48
         A76pxT1Y0yo7XZr3wPEjSyBa4vMXyzW2SS5PBbUYO3JhSFcRn/8SMI19HTXeWyzu7xrz
         4XPASeGhPk9fk49934dK5Mi5UFU84P1Hl+6VhkkAanm1T7+0e9yxoWKHHsnzQLcR0ut1
         o6tA==
X-Gm-Message-State: AMCzsaXXhZPS1y1QsR7ixSnK/K7XtLL7IFSGOJshhv6/vEgQbGyTqOJX
	WyUUO6rxXpIhfnntNDPHduM=
X-Google-Smtp-Source: ABhQp+QWCnxpiFePwvRrhJDMed+sMwdkxDJg83gFxTOS+QLVxoL4bHoncRgq918gUZlDWXONY87ypg==
X-Received: by 10.84.241.142 with SMTP id b14mr2091407pll.352.1508352598001;
        Wed, 18 Oct 2017 11:49:58 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id n129sm22434467pfn.78.2017.10.18.11.49.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:49:57 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v4 0/7] staging: lustre: fix code styling issues and remove macros without users
Date: Thu, 19 Oct 2017 00:19:39 +0530
Message-Id: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches fix:
- multi line comment styling
- line over 80 characters
- drops macros without any users
- coding style for error messages

Changes in v4:
- resolved build errors

Aastha Gupta (7):
  staging: lustre: drop macro that has no uses
  staging: lustre: fid: fix line over 80 characters
  staging: lustre: fld: fix line over 80 characters
  staging: lustre: ldlm: fix lines over 80 characters in ldlm files
  staging: lustre: llite: fix lines over 80 characters in llite files
  staging: lustre: llite: fix coding style for error messages
  staging: lustre: lllite: fix multi line comments style

 drivers/staging/lustre/lustre/fid/fid_request.c    |  3 +-
 drivers/staging/lustre/lustre/fld/fld_request.c    |  3 +-
 drivers/staging/lustre/lustre/include/lu_object.h  |  2 --
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++++------
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 42 +++++++++++++---------
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
 drivers/staging/lustre/lustre/llite/dcache.c       |  9 +++--
 drivers/staging/lustre/lustre/llite/dir.c          | 20 ++++++-----
 drivers/staging/lustre/lustre/llite/file.c         | 13 ++++---
 .../staging/lustre/lustre/llite/llite_internal.h   | 18 ++++++----
 drivers/staging/lustre/lustre/llite/llite_lib.c    | 29 +++++++++------
 drivers/staging/lustre/lustre/llite/llite_mmap.c   |  3 +-
 drivers/staging/lustre/lustre/llite/llite_nfs.c    |  3 +-
 drivers/staging/lustre/lustre/llite/namei.c        | 15 +++++---
 drivers/staging/lustre/lustre/llite/rw.c           | 17 +++++----
 drivers/staging/lustre/lustre/llite/statahead.c    |  3 +-
 drivers/staging/lustre/lustre/llite/super25.c      |  3 +-
 drivers/staging/lustre/lustre/llite/xattr_cache.c  |  3 +-
 23 files changed, 155 insertions(+), 90 deletions(-)

-- 
2.7.4


