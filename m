Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5289D7B
	for <outreachy@lists.linux.dev>; Fri, 29 Apr 2022 12:49:12 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id v12so10634372wrv.10
        for <outreachy@lists.linux.dev>; Fri, 29 Apr 2022 05:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6gx1I2LEKWcJc0uFAMan792S2TeZ8Y9b5WwgAcqsFho=;
        b=eqsr3iRoOLraeHQfAN1F8lxbHhTSxdIjUQr8ExFzQAGCUmElefmB7guzyjC0kxl5je
         HT0OIrgMVP7TYB+jH1by1xcLHdxR/iPH0RxBMg5q8hDehljaEk52mNtAkz7VAAAfq6uQ
         U598+3czQfs9pI2uIeUeVm6xVsHA+ogUhmyhCFfyVDEr1zdRF7yHyA3ybZoPFqixxaT/
         X/6mA+22S80hqy84zvJQgTv/OkAWwpJyHz4aD/4jYED4VSKNHVEP2I/N4UZ4TPedAj0+
         bMQcG1Int7xYiYvMjssXccYPNgZwB9G02qDFer0iaKKzUSx93WZuxt9XIQVsQf2k38am
         8hHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6gx1I2LEKWcJc0uFAMan792S2TeZ8Y9b5WwgAcqsFho=;
        b=ROfqLZU+LfBj6tFmXQ8omFkR61n4t69y6rQrJ/cmZYySGQUChn7eFu3BZbXP10yDYg
         cfqWmzbkhTc+JClKd/Qz+omaJbQMWuBjAZoT7ctv8JLmu9LtujXBe5YT5Kuc3FB+TUjV
         1X74w1hiYpkZbhTjPuBv6+KJ8E43wCtg6KY/1LEk0rPRY5YJvmNafoBh4is8Bk35H5fS
         OKBv/fEYtrmoDPq5KARnejauQB7H2FDwgQIWbrIp/jfrBdo1QkNcjxH6PENqN0uJNg/s
         EJhq3DCweZkVcLxyiGYFEqikCVR+Nh04vkHnarVMIP1gCQI029Rk6FHSqqzFfpligybQ
         xsEw==
X-Gm-Message-State: AOAM532q0Yxi5la3jcR8phr9DX/J61I7hXOYnkdpAqyq3EeBLAViU4F4
	WRHC4ojrz3Qnw73e2h5blK8=
X-Google-Smtp-Source: ABdhPJxuNgz+00AZk2K+3MHKXW1rmmSUinMRc2h419aF6uzywdkwSk8Wwqe7afiMqRAzA0LmEjtA6A==
X-Received: by 2002:a5d:498d:0:b0:20a:dc6b:35c9 with SMTP id r13-20020a5d498d000000b0020adc6b35c9mr19910335wrq.176.1651236550512;
        Fri, 29 Apr 2022 05:49:10 -0700 (PDT)
Received: from alaa-emad ([197.57.200.226])
        by smtp.gmail.com with ESMTPSA id g18-20020a05600c4ed200b00393e810038esm2899835wmq.34.2022.04.29.05.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 05:49:10 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Cc: outreachy@lists.linux.dev,
	roopa@nvidia.com,
	jdenham@redhat.com,
	sbrivio@redhat.com,
	jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com,
	davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com,
	vladimir.oltean@nxp.com,
	claudiu.manoil@nxp.com,
	alexandre.belloni@bootlin.com,
	shshaikh@marvell.com,
	manishc@marvell.com,
	razor@blackwall.org,
	intel-wired-lan@lists.osuosl.org,
	linux-kernel@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	GR-Linux-NIC-Dev@marvell.com,
	bridge@lists.linux-foundation.org,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH net-next v5 0/2] propagate extack to vxlan_fdb_delete
Date: Fri, 29 Apr 2022 14:49:05 +0200
Message-Id: <cover.1651236081.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In order to propagate extack to vxlan_fdb_delete and vxlan_fdb_parse,
add extack to .ndo_fdb_del and edit all fdb del handelers.

Alaa Mohamed (2):
  rtnetlink: add extack support in fdb del handlers
  net: vxlan: Add extack support to vxlan_fdb_delete

 drivers/net/ethernet/intel/ice/ice_main.c     |  2 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  3 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  3 +-
 drivers/net/macvlan.c                         |  3 +-
 drivers/net/vxlan/vxlan_core.c                | 41 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  3 +-
 net/bridge/br_private.h                       |  3 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 43 insertions(+), 21 deletions(-)

-- 
2.36.0

