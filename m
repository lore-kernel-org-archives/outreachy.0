Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF8315A2
	for <outreachy@lists.linux.dev>; Fri, 20 May 2022 00:20:45 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id r6-20020a1c2b06000000b00396fee5ebc9so3550025wmr.1
        for <outreachy@lists.linux.dev>; Thu, 19 May 2022 17:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Idwq0MoqTy7Tv0jiF7ayAwzgmYGx9OERGs+EAcpebPw=;
        b=Ov9xVfVWGpqZt51a/l83grmNWtbjtyjGBR2yWEHBITKw0KKc+/hUNALLMnDDgJltCB
         e/+9DXoS430+8FVnoixT4+XTXCWANAvmad9LY8GFrNZ38mmRbtDxJQIBtq5SyB9geEWA
         cJM0pAezAhrwwNm3I7HkBSJGoXrJ6nTA1uBvb8FxUw1al4skiUgVw43t340Ht3BXI0Xk
         dhgEsJ+REiigGjSTh2z984MdBHNzUDHuUVktmZEbfiw4NKZBf2NizEqf6+i5MxzQlvLt
         ePQghLAOsXoKyexRSmJlcU1/VlwrpI0c3rRKwmTcFEQLB0wmScVlcIDCN5FMqBq/udjb
         eCjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Idwq0MoqTy7Tv0jiF7ayAwzgmYGx9OERGs+EAcpebPw=;
        b=UmBb+4/AqHl06inZqjq1748ca99uRRcywq0p2H3cP9CiyRg6Crv1o+NkUMbopfaYnT
         Knl3VfcdqGH893t4Ixd3gsawm7SGckNKpLO/ZlWoVOxwlOLJ7IUE5vydttXdoilwP7uF
         XrNooStQVQCH1mWfR7Q0Hv0eM8FODPb38UDFfL4VfIOPfFK8hFSHw/sKNeVi2f6iRve6
         FkEVsBlJyrctrIuaVvkLXfkTV1E09GSrtvBt8i/cG0VUBqXR9TE5BeC64U5bOMUcEZip
         XU71QKSGC9X3/YDuP3diQWj3CrhT9Z6LgkI1y9GopiczXrQTzeH+FhQkaoR1gi2l+u/p
         eoJw==
X-Gm-Message-State: AOAM530kLRjV9V+x8gbHAzwBSzr4Rzittwn8Z2SVjy06zA3lfktTGZCM
	jDhhFieV6ZiW1h4q9SXfsgM=
X-Google-Smtp-Source: ABdhPJyFeMsMJNuOGD1dfHQxmPFPDV/myYtzKSlWsWI6oxrQdl0j+X16zMNNeJe2D2n7WrodKT1jqA==
X-Received: by 2002:a05:600c:378f:b0:397:3819:8230 with SMTP id o15-20020a05600c378f00b0039738198230mr806883wmr.10.1653006043871;
        Thu, 19 May 2022 17:20:43 -0700 (PDT)
Received: from localhost.localdomain ([41.232.195.220])
        by smtp.gmail.com with ESMTPSA id i24-20020adfa518000000b0020e5d8dbbb8sm832736wrb.56.2022.05.19.17.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 17:20:43 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Cc: outreachy@lists.linux.dev,
	roopa@nvidia.com,
	vladimir.oltean@nxp.com,
	claudiu.manoil@nxp.com,
	alexandre.belloni@bootlin.com,
	UNGLinuxDriver@microchip.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linux-kernel@vger.kernel.org,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH net-next] net: mscc: fix the alignment in ocelot_port_fdb_del()
Date: Fri, 20 May 2022 02:20:40 +0200
Message-Id: <20220520002040.4442-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

align the extack argument of the ocelot_port_fdb_del()
function.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
 drivers/net/ethernet/mscc/ocelot_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index be168a372498..5e6136e80282 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -775,7 +775,7 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			       struct net_device *dev,
 			       const unsigned char *addr, u16 vid,
-				   struct netlink_ext_ack *extack)
+			       struct netlink_ext_ack *extack)
 {
 	struct ocelot_port_private *priv = netdev_priv(dev);
 	struct ocelot_port *ocelot_port = &priv->port;
-- 
2.25.1

