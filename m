Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2732571
	for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 14:25:21 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id e2so14840107wrh.7
        for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 07:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OhzJ18rUdY++br4oj9YWYkBT8GEB1PEcZ+V/iXVMZrg=;
        b=Yp2ksl18LS/4Zs/ovpsVTlQwPq8RKkSp5QpY5tBP2+j05ULF7qPRftNv6iD6RV/IlN
         wBgjKe+jfS8pkoAlzDTWhfuCNXo8tuvgYq8GdjluJNdsL0Egy2XuECnoZ1b2EPAjXUe+
         jMVbqPb4/rU9tF+FQiWisfBHk5ZPwSSW1FGaE1as3zRZF/Bl8U0iJvqlG30E5ae4IJ3/
         fULg5bRvkciOv3RjeFApqNa7WkOnypR+SOycWijAO17Hx98IiaXeUtULZ3nSGJ+2vbiX
         wDgY8NgfbOWevz+rMK4KPWxSboDV2TSMJmbRhXZAbyf/q0RpPAAY7AoTalW7Zk59XBqQ
         a2EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OhzJ18rUdY++br4oj9YWYkBT8GEB1PEcZ+V/iXVMZrg=;
        b=eozm1mSVd87zy5r2zkI/tc1BXTEaTgRXpITkQvQgpxAIco5JydkaXzr2SOzVEuYmjz
         EH2LIPRnaP6yoUsJkL3P8hz0BQhc40iIlwYQ1fBKc77JdOHX6HXkA5J+xVbqDUzvzZ/s
         3ecH3P0xTnV5leZcQvE6+UdIigp7wiZmkg0L3V0EubQUuht8vgyOi3X55v64zCwpy2+A
         wGsgmbl5BZy9GV39pdDHXyEHG+QJSr/Qvnrkr5OC3SVsd+CuLz2I+rDVTG/1Dib2vdnh
         FaYzI/hvYyg/Z9KFqHY8oHtb92cZ8ZJfqnzTsCTbmdajbUx2sIo9z+sc3AnLri9/PjTa
         4Lzw==
X-Gm-Message-State: AOAM530jeeJESWTnnR/PZ/bLz92ngqLZyzYOTThg8e0Xyhh7hafmDFQL
	4M4MocPPRIZ0XG6v4HWcZZQ=
X-Google-Smtp-Source: ABdhPJzUAnIDjq4TtxReYzY4dzLCr4HXcpG6aANRg5FZdis9Nq2Rs17U9H23mO/9FxTROOaYVJ/RSA==
X-Received: by 2002:a05:6000:1f09:b0:20a:c427:c7c with SMTP id bv9-20020a0560001f0900b0020ac4270c7cmr14209914wrb.337.1650896720308;
        Mon, 25 Apr 2022 07:25:20 -0700 (PDT)
Received: from alaa-emad ([197.57.226.213])
        by smtp.gmail.com with ESMTPSA id d4-20020a05600c3ac400b0039082eeff53sm8615670wms.22.2022.04.25.07.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 07:25:19 -0700 (PDT)
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
Subject: [PATCH net-next v4 0/2] propagate extack to vxlan_fdb_delete
Date: Mon, 25 Apr 2022 16:25:05 +0200
Message-Id: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In order to propagate extack to vxlan_fdb_delete and vxlan_fdb_parse,
add extack to .ndo_fdb_del and edit all fdb del handelers

Alaa Mohamed (2):
  rtnetlink: add extack support in fdb del handlers
  net: vxlan: vxlan_core.c: Add extack support to vxlan_fdb_delete

 drivers/net/ethernet/intel/ice/ice_main.c     |  2 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  4 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  2 +-
 drivers/net/macvlan.c                         |  2 +-
 drivers/net/vxlan/vxlan_core.c                | 39 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  2 +-
 net/bridge/br_private.h                       |  3 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 38 insertions(+), 22 deletions(-)

-- 
2.36.0

