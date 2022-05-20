Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A6915A2
	for <outreachy@lists.linux.dev>; Fri, 20 May 2022 00:14:39 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id bd25-20020a05600c1f1900b0039485220e16so4394879wmb.0
        for <outreachy@lists.linux.dev>; Thu, 19 May 2022 17:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=20g10QH4u/3O0tBO6ofFWhrt9ZuFgao8sbSN8hXJynU=;
        b=fSzaKDSuxGbJn3oZ4Dcgv0dfPaVgY9xf5z/dOJ3Q5t6vVm2jdVoYG+t+44lASq8NV0
         tuVkPZx0nnnGMLuq2A5YprVvmQRNqBsjlkSZ3G+CnpRMZiDxaYGPxRUmXXrJeZdn7PsA
         ESF+Emm21o38av3mUTFVEB4ExGGmEq5rbmG1UfFjfzmgHpGkWc8Bd7ehdhXQ1THt/uF4
         yQkuQjx/R2jFPehno5Dn4osbKk2mF/9ZHAVaxhDpuVu2mymrc0shN4WsSq6pNKINXPC3
         lVwZL2Rt9mpQwT8Ui9aldv1thEwsCkEzL8b6W/pHBbrmVl7vSuTN1y/uLv+8xlnAidE5
         iThw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=20g10QH4u/3O0tBO6ofFWhrt9ZuFgao8sbSN8hXJynU=;
        b=fsG0JPf/QgdvSvmoltlrbxkrZtkxt5XBgHdlFW+qZE3ZiIhJYlNVSAaKvE9Q9Vv56/
         NyUhk3RVA0Nnswr/tDEU4J3dbDbPWti8W71DpFCBpBO4lACbXZFJ8mHkzRoGb3i0l2nx
         BqA7RMwjtjdtLdSSTI+5tEQ4SalMRMNsh4lRl/2k8ZPx+OfG9OXX2u/NsU2BNLZgXEIa
         cp73ivIaN3PbliCjh+uC73s8VrtBgJv3ZIL5q3Sc26yc9T5W8m8URoUd+75b4lWMXQ1Q
         zuD3kUWv8BRDbKi9ompxG32fD3+CXKmIO29OmY87NchQhJbzQDtiumuuJJUMbD/e+l2O
         9ITQ==
X-Gm-Message-State: AOAM5301luJD1eR7d8qvJXzsWzktSxHTb9N1mAQySijFc0dib2t4IDL1
	bsbd4tPmF6CtYk0BLBvwvJk=
X-Google-Smtp-Source: ABdhPJzUXnkFWi9Di8i8FqYL8i+jJ3zn/03w+hUEibCPfQt4uKi6wYhIhvw4K8d4+QYrU19Dgw2IQQ==
X-Received: by 2002:a05:600c:5105:b0:394:7d22:aa93 with SMTP id o5-20020a05600c510500b003947d22aa93mr5877560wms.107.1653005678095;
        Thu, 19 May 2022 17:14:38 -0700 (PDT)
Received: from localhost.localdomain ([41.232.195.220])
        by smtp.gmail.com with ESMTPSA id b9-20020a05600c150900b003942a244ed2sm818111wmg.23.2022.05.19.17.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 17:14:37 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Cc: outreachy@lists.linux.dev,
	roopa@nvidia.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linux-kernel@vger.kernel.org,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH net-next v2] net: vxlan: Fix kernel coding style
Date: Fri, 20 May 2022 02:14:33 +0200
Message-Id: <20220520001433.4140-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The continuation line does not align with the opening bracket
and this patch fix it.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in v2:
	fix the alignment of the "DST, VNI, ifindex and port are mutually exclusive with NH_ID"
  string to the open parenthesis of the NL_SET_ERR_MSG macro in vxlan_fdb_parse().
---
 drivers/net/vxlan/vxlan_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 293082c32a78..29db08f15e38 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1138,7 +1138,7 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
 	    tb[NDA_PORT])) {
 			NL_SET_ERR_MSG(extack,
-						  "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
+					"DST, VNI, ifindex and port are mutually exclusive with NH_ID");
 			return -EINVAL;
 		}
 
@@ -1297,7 +1297,7 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
 static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 			    struct net_device *dev,
 			    const unsigned char *addr, u16 vid,
-				struct netlink_ext_ack *extack)
+			    struct netlink_ext_ack *extack)
 {
 	struct vxlan_dev *vxlan = netdev_priv(dev);
 	union vxlan_addr ip;
-- 
2.25.1

