Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06ADB7C
	for <outreachy@lists.linux.dev>; Sun, 24 Apr 2022 12:10:02 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id d5so1964543wrb.6
        for <outreachy@lists.linux.dev>; Sun, 24 Apr 2022 05:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2JuRhXyb4Ip8swSB1obPedgsH1Io7sAcBXX0fUCg2UY=;
        b=jbX6/SXWTvvMbmrClbsX++gd1w+2OD/ikoRsd8tpj0m1wta4k5jOn0afedb92k1P2z
         +XQINnTMiG5QDJtcBkVePlDctVDMI27MIwacGSG55x9yPASrF13hi0M8Ja2lghZD/7WR
         aXO5aN1Gh/AUJTaW9VNqPFqczdDVzbeF0OA9JE5wqmxFMuDXeYDBVGjpfbtf1O14672Z
         k0J9PvfQNxqWYo8gRQJTFJr8FYgMYDVYXuhFOpuiATTnF+DkdwHMZJ1VGOAITW3S62Dn
         t5P7EgxV/cY6odv9qhQkvAoMe9QfLSeQSgAVGmprh1KoqLCMDIvg45x0UWdIfoYGDHwT
         lWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2JuRhXyb4Ip8swSB1obPedgsH1Io7sAcBXX0fUCg2UY=;
        b=pHo2jAlwAzrSiHIdwjVLonh3w1BWXUVpgQJFJz8TI712ulF7E+zQppUfex+AaPQ1G6
         AuzD9LFjRCFIdgbbqApFps1OWsgP9CYkUr7giVXECNRo1IVyBTxSH4p3OIoQodLWoup+
         Qo/zKL4s6UHmsCY9MLfbhDg1v20getbzZLg8EQ/FAqqLV3vurQct32j2sQ9zNGnqCuMb
         a7tRXlJZB/ap8TNNtB93YO/mAUgyQohkv13MCjz6xKMkL5Cu2oYAi5CfiM7ke1wnRW0i
         5rruQtv7DkJE+ansjg4WFxpYt1dc9ukG6lEDLGUkbRPFNRLK7RETRSe4uKNSo8dgQ+l1
         VDTg==
X-Gm-Message-State: AOAM532Hp1j7XgFCxYnpjlSoGMxZlinvURWDn9tjlykSi5ATjlcOx9Nz
	pfCgZWl6xNuJb3yfbY1XgNE=
X-Google-Smtp-Source: ABdhPJw0KYa7fhoRDswIm3fxHdgxTAvbu2xgjiARxGl5eH6CMPiXt8aK1ddLkk2hzdMh9Cw0a6r7JQ==
X-Received: by 2002:a05:6000:100c:b0:20a:c68a:e9a with SMTP id a12-20020a056000100c00b0020ac68a0e9amr10622884wrx.314.1650802201258;
        Sun, 24 Apr 2022 05:10:01 -0700 (PDT)
Received: from alaa-emad ([197.57.78.84])
        by smtp.gmail.com with ESMTPSA id a4-20020a056000188400b0020a9ec6e8e3sm7124788wri.55.2022.04.24.05.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Apr 2022 05:10:00 -0700 (PDT)
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
Subject: [PATCH net-next v3 0/2] propagate extack to vxlan_fdb_delete
Date: Sun, 24 Apr 2022 14:09:43 +0200
Message-Id: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
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

 drivers/net/ethernet/intel/ice/ice_main.c     |  4 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  4 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  2 +-
 drivers/net/macvlan.c                         |  2 +-
 drivers/net/vxlan/vxlan_core.c                | 38 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  2 +-
 net/bridge/br_private.h                       |  2 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 37 insertions(+), 23 deletions(-)

-- 
2.36.0

