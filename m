Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92BD22568
	for <outreachy@lists.linux.dev>; Thu,  5 May 2022 15:10:10 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id x18so6556169wrc.0
        for <outreachy@lists.linux.dev>; Thu, 05 May 2022 08:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+/sF+rK/sk8Mcq8ZDKrTQ+5QhRG26LQDZuCE59tq5gg=;
        b=WyanZJ4pfugP4UBrAHAI3jE+0AMPPz0h7gFUM9vNG+p5YrdeWWhgzma2gPVbbEw7nQ
         zqyXYKcg6ZlClU+WsCyXFa9pOTdvmphmLTQBVM970g+nAyt6eS078/B7r+Yd2D4Muq6n
         tAQ/j/L/oDKTLJ2BpBFlbUakTEiPv6kzIRg2ny56L8R9Zq1zQM0TXBtzngd0ygArbjI2
         hkOt6i+dsXb84AMFlA6JORanoOhW8jKTQJmasSfefZ/stu/MnlyiD+jTUcuWdV+cgtuH
         DUyIzIrpkgZJdZNH7TxCKR41L621Fs4c3vS28PpKOYcmjt5RTsDegQQyR3I10AjN2LwM
         20oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+/sF+rK/sk8Mcq8ZDKrTQ+5QhRG26LQDZuCE59tq5gg=;
        b=AvyOwS/G6ldcpDzZsBWAvTxt0c1nVnKlsP3xdTbwyJkWKeU0gwXNsiwVnr5ufWE4Xu
         ks/z/7smocYgyJ94uGmIUZvqGvh86iejf02jnBkzMfVcbwqz1IR7wqWd5h3vLtiaOayB
         AZx/t0PX7QNCfecya/4JpDIbcO/2Lu5Jc0FS99n6+0qHCSUJnHdvTt5YCutOEbXBAI9d
         Jr+jAPPvQamONQDf819iSqUmuhL4vPL1LbpfFI0cSDJzKb+VvsaHNlIdJyHlkcEWafD0
         lJpERidJPTb7ccRHw29Agh/K9dopUYtD7va9nebIBh9Cguc6noV2wzaVFu/+KiC6iTnv
         Nl5A==
X-Gm-Message-State: AOAM5312VWnFvlWNCdRHY7TcDrAbhfG/CemqBBvhP0z3Y2DQSjBbXdKx
	gh38NfccJDmgIqZxpbxRWOw=
X-Google-Smtp-Source: ABdhPJyH3FeC0GOlGDlLA3jmninPUid5beNQGRlfuR6gYFWw5/iHWVU9gj8FHEZ8LDE1fOqtvSu2cQ==
X-Received: by 2002:adf:e491:0:b0:20a:cf97:58df with SMTP id i17-20020adfe491000000b0020acf9758dfmr21162391wrm.213.1651763408733;
        Thu, 05 May 2022 08:10:08 -0700 (PDT)
Received: from alaa-emad ([197.57.200.226])
        by smtp.gmail.com with ESMTPSA id s6-20020adfea86000000b0020c5253d907sm1419204wrm.83.2022.05.05.08.10.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 08:10:08 -0700 (PDT)
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
Subject: [PATCH net-next v6 0/2] propagate extack to vxlan_fdb_delete
Date: Thu,  5 May 2022 17:09:56 +0200
Message-Id: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
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

 drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  3 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  3 +-
 drivers/net/macvlan.c                         |  3 +-
 drivers/net/vxlan/vxlan_core.c                | 41 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  3 +-
 net/bridge/br_private.h                       |  3 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 44 insertions(+), 21 deletions(-)

-- 
2.36.0

