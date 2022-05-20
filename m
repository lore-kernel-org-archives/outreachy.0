Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D1615A2
	for <outreachy@lists.linux.dev>; Fri, 20 May 2022 00:24:46 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id p189so3750994wmp.3
        for <outreachy@lists.linux.dev>; Thu, 19 May 2022 17:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=20g10QH4u/3O0tBO6ofFWhrt9ZuFgao8sbSN8hXJynU=;
        b=Ix8txj7HZlP4pkKpnQkD6w/Ta1NjrUF+EUPO63qCu66VvykKqidQ+QN11qF859RgYL
         fNqTkU9R7jfPlESSITpDg0smh8qtd3SQ2h/SheuaK6C70G/7GdZKnTPmD+I2mOas8DJ+
         MVd7P4obQ46T8ScO3wq/EkjkFUnNdACtdv8HTzmMf6aYuWJ4/t0DVcEduC2xxcmiV57Z
         rMpIUYeNw+G2azEYBdpdZc0oCFUGIeHLR2C8eJvxWr4mW95z0dL0SATB8bKBl+oBo9DP
         j87MUBR0bEXQhXeejUOjrkdLHAa4IzAwXkKs+S/zhx/DOhz+g22YfVXbNbTyIThUDhmk
         dNpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=20g10QH4u/3O0tBO6ofFWhrt9ZuFgao8sbSN8hXJynU=;
        b=NcuIhuZ02fdhSM2Vkyc46iLLR6M7JWzXFrYGGgtGfqRL1xZT+MmTd8d8Eo8P2EOPX0
         mU9/O+jLfh8IjbjcJGrCS6aftp6qnJf6VuIS9HLw320hpK/WDrvDaCTNFuhrdcIMoSC1
         lO3G8eyoCy7Z8TSHyheKLY/BmNAkn33qlkp1vAlwzVztnBbAzjHmtSE+766V5nCrW9d1
         2cGCbj202WbaioaRsdRBOdLd2Ff3pOCYOP9sb8jTQAjVyzhBEIY3MAkOBsHXRpjmzI0G
         rBBlu1GJ5XU1q+m5rDlufrsNgDaJvv1Kx3oKj+EKTFFjnHsB49Pt3P7ywwvAzeNIS3U7
         2Jtg==
X-Gm-Message-State: AOAM532QoVW0KGOhcjAJHbLf73ngR3hExZcXR4u4ieQG6znkezB66Pq4
	riyGReprI/Z/jtic9xVZ89KnT60KtnA=
X-Google-Smtp-Source: ABdhPJzkvNd/2XdRASC6d9kdRATZKM9PWZpd59l/dbVxfTOEt/PIabimum+RKJ1jFLlhKcqF16LNJg==
X-Received: by 2002:a05:600c:190b:b0:394:880f:ae2c with SMTP id j11-20020a05600c190b00b00394880fae2cmr5766016wmq.79.1653006284951;
        Thu, 19 May 2022 17:24:44 -0700 (PDT)
Received: from localhost.localdomain ([41.232.195.220])
        by smtp.gmail.com with ESMTPSA id z6-20020a7bc146000000b003942a244ebesm778951wmi.3.2022.05.19.17.24.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 17:24:44 -0700 (PDT)
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
Date: Fri, 20 May 2022 02:24:32 +0200
Message-Id: <20220520002432.4740-1-eng.alaamohamedsoliman.am@gmail.com>
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

