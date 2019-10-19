X-GM-THRID: 6749590938696286208
X-Received: by 2002:a9d:6f8a:: with SMTP id h10mr13083479otq.100.1571511602427;
        Sat, 19 Oct 2019 12:00:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ed43:: with SMTP id l64ls1554839oih.3.gmail; Sat, 19 Oct
 2019 12:00:01 -0700 (PDT)
X-Received: by 2002:a05:6808:113:: with SMTP id b19mr12502878oie.169.1571511601691;
        Sat, 19 Oct 2019 12:00:01 -0700 (PDT)
Received: by 2002:aca:7208:0:0:0:0:0 with SMTP id p8msoic;
        Sat, 19 Oct 2019 00:24:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzFznFBQav547YQaYvrq8+/dkBCzQetluuyfLBJMMUYywYH7r+FJrkcE9W+rIJGer9KIMjf
X-Received: by 2002:a17:90a:b391:: with SMTP id e17mr16178365pjr.132.1571469879821;
        Sat, 19 Oct 2019 00:24:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571469879; cv=none;
        d=google.com; s=arc-20160816;
        b=g4uXxE/UwXb11OaiIeM67OKGfTMMz7m8A5Tn11XHxjU7WlGd7XRcS9dprYjV5T36no
         7eoOA8mGLhqRQYqu6ntaUQ6NbtVQqhi/pawm8qbzXlZv07S2hTEghxQeTxrtlKIwWPpq
         AUfnjDPtwx8NdPekROxAlKg9BIVgIDpCheeD2uT81UqjdvgkGaA57G/fKPw/U2DMaEwh
         z37YuKDI6upQgRYTNuGApGqGg6EVvO3/CeAP0aF5f0V7QzQ5ngtMZzZQGuq3EBj7kew3
         TKCRuaAHYkaulIKleHwQjfOgyQn+q9Z43yZnJW4Hq57QEUnYVlkWm3tpb/pZb9uc7MJh
         yqxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=xjTMPqP+XSDdU0Lhtywbz21NzLyU0qgdA58tUxFEl4o=;
        b=Kgxay/WFASsBInMsScAvQUJLDEcV3pF7KI9tbdPkqdcFEgRAftz7HxY/sXl1t5BqiQ
         gI4VtvmL/4ZVg7hth5SpDCCAgmg66GuYsv4/ZRCdpHlmuNzD5xnIvYX32D65ic8b+lDm
         FrM+A26IOXsumWsXXuItpV90p5ndUixF3vOril/k1r8DTJW+xFD6MvMlBRvqsCRpXD3x
         0j67GM/MqpQ6E0QmHQ8wdcLsLXPwbKQg4u0EVZuZsLOoaE50TQntlneHQw0AXW2FLP6o
         vLBZxVTt3EVgHHTkwmp8rPwIsOF7N3Bu56kyUaZs3ggtD84KTdM77r/YjjnV3stH7uAZ
         nd1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wambui@karuga.xyz designates 198.54.122.62 as permitted sender) smtp.mailfrom=wambui@karuga.xyz
Return-Path: <wambui@karuga.xyz>
Received: from MTA-10-4.privateemail.com (mta-10-4.privateemail.com. [198.54.122.62])
        by gmr-mx.google.com with ESMTPS id d5si438376pls.5.2019.10.19.00.24.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Oct 2019 00:24:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui@karuga.xyz designates 198.54.122.62 as permitted sender) client-ip=198.54.122.62;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of wambui@karuga.xyz designates 198.54.122.62 as permitted sender) smtp.mailfrom=wambui@karuga.xyz
Received: from MTA-10.privateemail.com (localhost [127.0.0.1])
	by MTA-10.privateemail.com (Postfix) with ESMTP id 2144160038;
	Sat, 19 Oct 2019 03:24:39 -0400 (EDT)
Received: from wambui.zuku.co.ke (unknown [10.20.151.221])
	by MTA-10.privateemail.com (Postfix) with ESMTPA id A45FA60033;
	Sat, 19 Oct 2019 07:24:35 +0000 (UTC)
From: Wambui Karuga <wambui@karuga.xyz>
To: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org,
	alexander.deucher@amd.com,
	christian.koenig@amd.com,
	David1.Zhou@amd.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	amd-gfx@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] drm/amd/amdgpu: make undeclared variables static
Date: Sat, 19 Oct 2019 10:24:26 +0300
Message-Id: <20191019072426.20535-1-wambui@karuga.xyz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP

Make the `amdgpu_lockup_timeout` and `amdgpu_exp_hw_support` variables
static to remove the following sparse warnings:
drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:103:19: warning: symbol 'amdgpu_lockup_timeout' was not declared. Should it be static?
drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:117:18: warning: symbol 'amdgpu_exp_hw_support' was not declared. Should it be static?

Signed-off-by: Wambui Karuga <wambui@karuga.xyz>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index 3fae1007143e..c5b3c0c9193b 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -100,7 +100,7 @@ int amdgpu_disp_priority = 0;
 int amdgpu_hw_i2c = 0;
 int amdgpu_pcie_gen2 = -1;
 int amdgpu_msi = -1;
-char amdgpu_lockup_timeout[AMDGPU_MAX_TIMEOUT_PARAM_LENTH];
+static char amdgpu_lockup_timeout[AMDGPU_MAX_TIMEOUT_PARAM_LENTH];
 int amdgpu_dpm = -1;
 int amdgpu_fw_load_type = -1;
 int amdgpu_aspm = -1;
@@ -114,7 +114,7 @@ int amdgpu_vm_block_size = -1;
 int amdgpu_vm_fault_stop = 0;
 int amdgpu_vm_debug = 0;
 int amdgpu_vm_update_mode = -1;
-int amdgpu_exp_hw_support = 0;
+static int amdgpu_exp_hw_support;
 int amdgpu_dc = -1;
 int amdgpu_sched_jobs = 32;
 int amdgpu_sched_hw_submission = 2;
-- 
2.23.0


