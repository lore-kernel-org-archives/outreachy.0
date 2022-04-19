Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC4A1364
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 14:37:29 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id w4so22706875wrg.12
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 07:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RAoCs5pjIvVq0WUVbkPFNkpe/cBJpZ+m8wLESWjQmHM=;
        b=Fw/TC1aAKoiFBFqe9HfnKnvddvU5kKXLOLwA0ePOD7fNxZ9+gYhAOphknG38vrxGgw
         IxLTjWgSTfv34tgvywZ7Q89+LqcGOjutmrqAPcQOvOrVxkxeSwk7GqTtjJPiFN8ZYA1a
         b3X+AIdGZARg+/ggcR3d21ddTopl4CVBLfU9aYTSBbOipxGYW8fvOdrMi920X6JfXcRF
         JEr0Um+ALTBEdpAB0C0gQs01zBAJ7yETVZMnhFKr0qvSol5yYMWfs4OC9COl7xqh7JH/
         Xl7G1rFt0o6qljvZEJWm2GdBQK2P9XkTF67izdvnAA6t6LYPDTD4l6G/9ThIURIiETBm
         0OCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RAoCs5pjIvVq0WUVbkPFNkpe/cBJpZ+m8wLESWjQmHM=;
        b=mhjlsm0Z2R3Ezox/BlY3lRcOGXzKauwUZPQHuOwGkaiyWmGGCHrJidcaM7sbuT6X0C
         oGTyorPTukjKQZCcaHIZUdZTnPAiAepv+NURcnld7lGijCfbHJs77G1fVzSXhBmpwQbK
         dgva71kbMQ8vUPcgulR/Gj0iqvWHG4t2U/oU3WI//VH9Mc0wXH0ZCLhmUDrUd0f76kmA
         bPs0LrGugZCMkoP8OlEAe+7Es+POKZLpefYDULpilhU6Q/PRyWvYG2fR378AKLRnEwF5
         RTDCVYvSFIFTJfuz05i585tvodtB2rTB28gnI4SWTJ0QHphCh1lfP9KTsnfuq/WH0eBf
         ssZg==
X-Gm-Message-State: AOAM530ub8AP8apKz2I793O4oHoV4Qrw/ybbpEZnNdZqkWdK78PBInBM
	V58Tjf18QvM/4SRb5Pm4yAE=
X-Google-Smtp-Source: ABdhPJzt3C+DhPNcElXoPQEFk8KB8lS5/Zk0RibUrk6gs+yw34wRbDlgwnGxoMfnTPFSZ2lB6N9MDA==
X-Received: by 2002:a5d:5544:0:b0:20a:819d:5249 with SMTP id g4-20020a5d5544000000b0020a819d5249mr11878383wrw.461.1650379048185;
        Tue, 19 Apr 2022 07:37:28 -0700 (PDT)
Received: from alaa-emad ([102.41.109.205])
        by smtp.gmail.com with ESMTPSA id m20-20020a05600c3b1400b0038ebbbb2ad2sm19165526wms.44.2022.04.19.07.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 07:37:27 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Cc: outreachy@lists.linux.dev,
	roopa@nvidia.com,
	roopa.prabhu@gmail.com,
	jdenham@redhat.com,
	sbrivio@redhat.com,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH net-next 0/2]  Propagate extack to vxlan_fdb_delet
Date: Tue, 19 Apr 2022 16:37:16 +0200
Message-Id: <cover.1650377624.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.2
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In order to propagate extack to vxlan_fdb_delet and vxlan_fdb_parse,
add extack to .ndo_fdb_del and edit all fdb del handelers


Alaa Mohamed (2):
  rtnetlink: add extack support in fdb del handlers
  net: vxlan: vxlan_core.c: Add extack support to vxlan_fdb_delet

 drivers/net/ethernet/intel/ice/ice_main.c        |  2 +-
 drivers/net/ethernet/mscc/ocelot_net.c           |  4 ++--
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c |  2 +-
 drivers/net/macvlan.c                            |  2 +-
 drivers/net/vxlan/vxlan_core.c                   | 15 +++++++++++----
 include/linux/netdevice.h                        |  2 +-
 net/bridge/br_fdb.c                              |  2 +-
 net/bridge/br_private.h                          |  2 +-
 net/core/rtnetlink.c                             |  4 ++--
 9 files changed, 21 insertions(+), 14 deletions(-)

--
2.35.2

