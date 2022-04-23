Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3D72F2A
	for <outreachy@lists.linux.dev>; Sat, 23 Apr 2022 22:54:13 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id q7so8213894wrm.5
        for <outreachy@lists.linux.dev>; Sat, 23 Apr 2022 15:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lsxcLOYzKVKTYOHKhWTEV/L0JYslhWQXECLP3cG1LVM=;
        b=SlOPtPTZdHl4BunIO6N+vKlt4psK7SQUs30aoA8izNAd/WIyRFdwwSjx88inK1FPkb
         QkOJWJaLqeSZiJtaqjLT5pUc16Z1OgW1IovxnUF5iY3eOl61NCoT+LhkoNUY6sAqUU5L
         hmeIB98V3bYxz4q2R7eM28+1L79W4XoqHNvHW0rP1Fw56KM/LPdwgPu99KisYTRGMVva
         suLoAwQe/f5gLZv2gijbXciBq0JXobX8RhPFO/WOWB6p452CMlVc17GyiNbMJcwRnQx+
         LTVbg+Ci/bFut/GNTvRNgupLG2og+aG0W4VTqJVcZNGgHgG5HHIQI3pIoavrpkac8XM6
         g9nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lsxcLOYzKVKTYOHKhWTEV/L0JYslhWQXECLP3cG1LVM=;
        b=fpORbgsS7GB7ub692jGPhJLYxfAqx+cjjxw08XMqJ680Hi1gPPH6405J6E3kRnSsie
         FnuLsRm3E+sxuTkZPRtmAhYGlzj0rLrnbnCkcqkfsQnIhPFNAhFwjrguhzuH4JnTqqL3
         YohxotEwu/PKiP6rRifxwri1dW39r8zhmAY/eUXcAAS8h+TxvNvxJKxDxzn6wugQ7QKy
         P8Duohd6D7PJAyJ6rtbVebROGYcQ9Hdbi5L80mxWBKW5lOnS0RjZe+bOR8Pd2wY9EaQ3
         rfAX0w5RoZqveuL5W5qly2czQav15xnizOFv8iV1XWrrDMGAY1HAOO+4s4/4wdbD/2k6
         pwwg==
X-Gm-Message-State: AOAM532zQUgH46pwRDenv84M1SO/o1akn/vOs9ENKfK/qKZcmEnMQnkW
	w8hacfdfZrmDB7DbbreCqrs=
X-Google-Smtp-Source: ABdhPJwX4bgnEogNLscDILHqfouZnPr8K/HK/CFgY4gLGfh22G3JDbJz2rGKLJzGvrJz9lxz88/7Kw==
X-Received: by 2002:a5d:5847:0:b0:20a:ae08:8d42 with SMTP id i7-20020a5d5847000000b0020aae088d42mr8452742wrf.650.1650754452180;
        Sat, 23 Apr 2022 15:54:12 -0700 (PDT)
Received: from alaa-emad ([197.57.78.84])
        by smtp.gmail.com with ESMTPSA id l16-20020a05600c1d1000b00393e7e6ad58sm927270wms.26.2022.04.23.15.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 15:54:11 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Cc: outreachy@lists.linux.dev,
	roopa@nvidia.com,
	roopa.prabhu@gmail.com,
	jdenham@redhat.com,
	sbrivio@redhat.com,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH net-next v2 0/2] propagate extack to vxlan_fdb_delete
Date: Sun, 24 Apr 2022 00:54:06 +0200
Message-Id: <cover.1650754228.git.eng.alaamohamedsoliman.am@gmail.com>
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

 drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  4 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  2 +-
 drivers/net/macvlan.c                         |  2 +-
 drivers/net/vxlan/vxlan_core.c                | 38 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  2 +-
 net/bridge/br_private.h                       |  2 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 36 insertions(+), 23 deletions(-)

-- 
2.36.0

