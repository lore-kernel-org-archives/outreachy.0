Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583827A
	for <outreachy@lists.linux.dev>; Fri, 20 May 2022 00:36:28 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id u27so8589051wru.8
        for <outreachy@lists.linux.dev>; Thu, 19 May 2022 17:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=20g10QH4u/3O0tBO6ofFWhrt9ZuFgao8sbSN8hXJynU=;
        b=Xs2tZvkUhGUidDE1n3SJS4u3GAqDBT0pD0YTr8+WjofwhZJ4LAUgEKbSeM9DjnkZyW
         aw6Pxr9T2SQ/qrxMF1Vb/iamHZ2FC8ppfRw9z85una19facSffA3O0KjsNZQFxS9vkJU
         Y4iNUbpxojolrC3BN+9xXZ2bDr1ul1hEKKydP42C/AR7NZsdpl3nauU+Z2tUqWYmLKg0
         SLzR0Xfb7YvfAaTyirgmoCuz4i7arJnv5Gt/bUayLfCpPSd9I5hw5/SHls6cPE5GR1qd
         Y9Rmy1tIzqb8EOlOmhM9LPIPfsBuJSUsqWM3PnwinzYV5jKLm8xy7PKY3LYoOMCFFc7G
         0ROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=20g10QH4u/3O0tBO6ofFWhrt9ZuFgao8sbSN8hXJynU=;
        b=hyzvO6nOTG5ivnQTf9p6qeofEXjaWBoJpjfNwm337Gz9n4muo6V3jfEINd9pTEjsW3
         4t2I6LwnKdbhvxFYZ7taX/VZebcMeliBIOAJL/0lFPTNUF8uWjWgkLu4ZyFJcMh2KDlV
         tAa27pHE4SdQEPOW6E4cf1kh7Io6/iKbMSCs836U9mC6hCqK+/w70j7NvV53moBO+0ep
         sjXki/Lw8u58M9CexDr602nry19VcuvyLmwIxpmzTcxV+vsNE1YJ3/CgJjKM22zoUCSc
         nGHbMYdRYkWeLDmzoNiNy8buAGLOqVCrWj95Tir2e/wP9kHgZh2h4PAQAsrGXjXsUsqr
         LCGQ==
X-Gm-Message-State: AOAM532nccvFH4A2LxTguRUPhLxra8w0x3zKy7ERQRsXOffDaV9XHXE9
	zFwegvGwbQj1FlhvYS+Bens=
X-Google-Smtp-Source: ABdhPJwKTnUkWXcKClggkLAd997j0lZE2h8MSJkc5Y+J0faRwVERo3wUnSrffxMBZ4Al4GCagUN1KQ==
X-Received: by 2002:a05:6000:1acd:b0:20c:7201:9267 with SMTP id i13-20020a0560001acd00b0020c72019267mr6073089wry.41.1653006986589;
        Thu, 19 May 2022 17:36:26 -0700 (PDT)
Received: from localhost.localdomain ([41.232.195.220])
        by smtp.gmail.com with ESMTPSA id bh9-20020a05600c3d0900b0039444973258sm951063wmb.0.2022.05.19.17.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 17:36:26 -0700 (PDT)
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
Date: Fri, 20 May 2022 02:36:14 +0200
Message-Id: <20220520003614.6073-1-eng.alaamohamedsoliman.am@gmail.com>
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

