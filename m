X-GM-THRID: 6749590937101402112
X-Received: by 2002:a05:6808:8da:: with SMTP id k26mr3350254oij.81.1571511602379;
        Sat, 19 Oct 2019 12:00:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls1602804otf.14.gmail; Sat, 19
 Oct 2019 12:00:01 -0700 (PDT)
X-Received: by 2002:a05:6830:4c1:: with SMTP id s1mr13196443otd.280.1571511601690;
        Sat, 19 Oct 2019 12:00:01 -0700 (PDT)
Received: by 2002:aca:5007:0:0:0:0:0 with SMTP id e7msoib;
        Sat, 19 Oct 2019 00:18:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSGNABcGXuYVYDl3AgtFVxIP6D7yD+grWVPPiDi6J6WbZWLumilyxSlb7w7gj7Lp3tJmsR
X-Received: by 2002:a17:90a:1a0d:: with SMTP id 13mr16043869pjk.100.1571469527996;
        Sat, 19 Oct 2019 00:18:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571469527; cv=none;
        d=google.com; s=arc-20160816;
        b=lh92kEVW5F5Q8T93BkndOTbnQYR7FWfyWgyXZ7RUeUlNGf9ZQQPPjYpUTpJVgUScKe
         UfF43FYqHsNSs4ytxJU0R2uSIAR9Mez1EenyCD/2r6RX9QwbKNgOUF/9w7dAN1HoyPjG
         knBY2xJVPjwccqACUUJtsL3XI5ornwvgPKY/+8KhYGr1xNEAXUyqQ2GnjCvTaUaqIJwx
         ukUEOdWkyxgew2OMv/vfnPhsnn/FRMhFI0tLQrd1uGDfFUuAHxvYbLU9+SHiqkc5g0iQ
         ieKiG1/F9H3WQ3BKCxihplIlw+VrvHNtp2NzizcTTOUQhOK0AWDFWX9uPHqYqzROBj84
         PQ7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=eL5rqVUras4Vwh4LhNYnD2Kdt75jAMEYEHh9+JFFZMw=;
        b=zLH9gXgkD4FnJjpoSb0q4s1BRhvA0zy/0dhhRkvUb293DE+fokbwBkqZMC4aHZ/tsd
         A3keXDx2FPEfFjOw1DAJy7giyOYsPJ7O80zFygWHbKA8zYI8OwQJ015o7oVKqSm2vg/B
         iUM097sdwJm4NYqou1r4UXd9bbMy4+0oiy2UpRdxODnyj9plfJRfRGcUK2KuaXr4k4kx
         FkyYeh9IM52cuFSXqqJNLOQmYgMwn4e5pDP/yMiV4wXu87ZnxHwqm6+EcBHfBQJ1evgj
         dWZLpYpXTFCCff2U0CXVsKbXpn/8rFntlATgiUR63ntfcNJv2RT7CSfhaE+iCrXC5yjf
         sLQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wambui@karuga.xyz designates 68.65.122.15 as permitted sender) smtp.mailfrom=wambui@karuga.xyz
Return-Path: <wambui@karuga.xyz>
Received: from MTA-05-3.privateemail.com (mta-05-3.privateemail.com. [68.65.122.15])
        by gmr-mx.google.com with ESMTPS id o23si431794pjt.2.2019.10.19.00.18.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Oct 2019 00:18:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui@karuga.xyz designates 68.65.122.15 as permitted sender) client-ip=68.65.122.15;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of wambui@karuga.xyz designates 68.65.122.15 as permitted sender) smtp.mailfrom=wambui@karuga.xyz
Received: from MTA-05.privateemail.com (localhost [127.0.0.1])
	by MTA-05.privateemail.com (Postfix) with ESMTP id 1FE4E60049;
	Sat, 19 Oct 2019 03:18:47 -0400 (EDT)
Received: from wambui.zuku.co.ke (unknown [10.20.151.220])
	by MTA-05.privateemail.com (Postfix) with ESMTPA id 8E05560040;
	Sat, 19 Oct 2019 07:18:43 +0000 (UTC)
From: Wambui Karuga <wambui@karuga.xyz>
To: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org,
	airlied@linux.ie,
	daniel@ffwll.ch,
	sean@poorly.run,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	outreachy-kernel@googlegroups.com,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH] drm: remove unnecessary return variable
Date: Sat, 19 Oct 2019 10:18:40 +0300
Message-Id: <20191019071840.16877-1-wambui@karuga.xyz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP

From: Wambui Karuga <wambui.karugax@gmail.com>

Remove unnecessary variable `ret` in drm_dp_atomic_find_vcpi_slots()
only used to hold the function return value and have the function
return the value directly.
Issue found by coccinelle:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/drm_dp_mst_topology.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
index 9cccc5e63309..b854a422a523 100644
--- a/drivers/gpu/drm/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/drm_dp_mst_topology.c
@@ -3540,7 +3540,7 @@ int drm_dp_atomic_find_vcpi_slots(struct drm_atomic_state *state,
 {
 	struct drm_dp_mst_topology_state *topology_state;
 	struct drm_dp_vcpi_allocation *pos, *vcpi = NULL;
-	int prev_slots, req_slots, ret;
+	int prev_slots, req_slots;
 
 	topology_state = drm_atomic_get_mst_topology_state(state, mgr);
 	if (IS_ERR(topology_state))
@@ -3587,8 +3587,7 @@ int drm_dp_atomic_find_vcpi_slots(struct drm_atomic_state *state,
 	}
 	vcpi->vcpi = req_slots;
 
-	ret = req_slots;
-	return ret;
+	return req_slots;
 }
 EXPORT_SYMBOL(drm_dp_atomic_find_vcpi_slots);
 
-- 
2.23.0


