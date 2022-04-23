Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FE43236
	for <outreachy@lists.linux.dev>; Sat, 23 Apr 2022 22:54:16 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id j15so2598697wrb.2
        for <outreachy@lists.linux.dev>; Sat, 23 Apr 2022 15:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qmAftXD5qiPCz2kwkoPCIF9k7WA+lUT3ZHfv9wYs3R0=;
        b=MWPeOq98JiAX88EYrT+oVDxljDZe8xB+EYBrElDFhr7P96BaHasb78wEpQkXIK7pxa
         JguM0Y7qxl9x80srklsr0mJZ5mc658YK3EDVVoFx9kDbJWxWlSg+qMEV+f3NZzAW7wyJ
         byIwmfShQzt3wjsSIyYv46unwG1FupDX6OE8JDLZaWwFnBF7buuNklwYZwnY3bH+bCTs
         jaN2JI5yuUmnt6DbOwu4TGUuzpcdTdziIq+GuZYJRFcAmP75LgDrcQdGOEJr5Ymkkc/v
         3VBK+CKtHPn9wKXqZacZ1pSqNHCMwHhKJhtsPar5iblx2iF01AVWKEMtNpfdBKpuYYcD
         51Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qmAftXD5qiPCz2kwkoPCIF9k7WA+lUT3ZHfv9wYs3R0=;
        b=H0xfOqIcdYSWCD2EA2Qfy4NM0B3CxbnQ8qu/8hsxqDzi8jzyg1M/3uryE7sV0GiTSv
         vKxALcM4tpIyHtddDlXlkT1wKerULTRBPo58GLNJFtV3Vm+lI5fq2AHTCYSDHtzUS+6p
         Fp1lWLXseBkqS4GmNsIw846FYYPCVrrEEIf6C0SuK6J8a988YTFaRYShwOkyf5VzaVqv
         u6CJ6P/+tnhplgkoBKdOXBevIqP7hlXdG7u/8q531S0t56kBRhXtjCT/oCARCvY2HgDq
         EPB0yhbBN148f8bm8QiFgHnwbv5ttZwS+qO5MdU6Uvh0rmAa99r8AGzjMj7Gw/Ie+oTG
         lsYw==
X-Gm-Message-State: AOAM5319BO4AKcceMWdmuAxgZWWnjJJX3ovp51LK3uf2bc9U+v6zfxjk
	/1y7yLqRcRE4c/PAMQTGoJk=
X-Google-Smtp-Source: ABdhPJxaIFDZAlMUw0q+v45kl7F0Oxy91VZKEdf6PaaE9vQG6kFZpltXrXj7XodpBubi5uQqxmDYSw==
X-Received: by 2002:a5d:64e4:0:b0:20a:91e4:c0f9 with SMTP id g4-20020a5d64e4000000b0020a91e4c0f9mr8276558wri.55.1650754455099;
        Sat, 23 Apr 2022 15:54:15 -0700 (PDT)
Received: from alaa-emad ([197.57.78.84])
        by smtp.gmail.com with ESMTPSA id c9-20020a5d4149000000b00207adbc4982sm4983877wrq.94.2022.04.23.15.54.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 15:54:14 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Cc: outreachy@lists.linux.dev,
	roopa@nvidia.com,
	roopa.prabhu@gmail.com,
	jdenham@redhat.com,
	sbrivio@redhat.com,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH net-next v2 2/2] net: vxlan: vxlan_core.c: Add extack support to vxlan_fdb_delete
Date: Sun, 24 Apr 2022 00:54:08 +0200
Message-Id: <22f5fb1d5e592c0deefb246225f66908947a613b.1650754231.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <cover.1650754228.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650754228.git.eng.alaamohamedsoliman.am@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add extack to vxlan_fdb_delete and vxlan_fdb_parse

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	- fix spelling vxlan_fdb_delete
	- add missing braces
	- edit error message
---
 drivers/net/vxlan/vxlan_core.c | 36 +++++++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index cf2f60037340..4e1886655101 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1129,19 +1129,23 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,
 
 static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
-			   __be32 *vni, u32 *ifindex, u32 *nhid)
+			   __be32 *vni, u32 *ifindex, u32 *nhid, struct netlink_ext_ack *extack)
 {
 	struct net *net = dev_net(vxlan->dev);
 	int err;
 
 	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
-	    tb[NDA_PORT]))
-		return -EINVAL;
+	    tb[NDA_PORT])){
+			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
+			return -EINVAL;
+		}
 
 	if (tb[NDA_DST]) {
 		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
-		if (err)
+		if (err){
+			NL_SET_ERR_MSG(extack, "Unsupported address family");
 			return err;
+		}
 	} else {
 		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;
 
@@ -1157,24 +1161,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 	}
 
 	if (tb[NDA_PORT]) {
-		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
+		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)){
+			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
 			return -EINVAL;
+		}
 		*port = nla_get_be16(tb[NDA_PORT]);
 	} else {
 		*port = vxlan->cfg.dst_port;
 	}
 
 	if (tb[NDA_VNI]) {
-		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
+		if (nla_len(tb[NDA_VNI]) != sizeof(u32)){
+			NL_SET_ERR_MSG(extack, "Invalid vni");
 			return -EINVAL;
+		}	
 		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
 	} else {
 		*vni = vxlan->default_dst.remote_vni;
 	}
 
 	if (tb[NDA_SRC_VNI]) {
-		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
+		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)){
+			NL_SET_ERR_MSG(extack, "Invalid src vni");
 			return -EINVAL;
+		}
 		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
 	} else {
 		*src_vni = vxlan->default_dst.remote_vni;
@@ -1183,12 +1193,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 	if (tb[NDA_IFINDEX]) {
 		struct net_device *tdev;
 
-		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
+		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)){
+			NL_SET_ERR_MSG(extack, "Invalid ifindex");
 			return -EINVAL;
+		}
 		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
 		tdev = __dev_get_by_index(net, *ifindex);
-		if (!tdev)
+		if (!tdev){
+			NL_SET_ERR_MSG(extack,"Device not found");
 			return -EADDRNOTAVAIL;
+		}
 	} else {
 		*ifindex = 0;
 	}
@@ -1226,7 +1240,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		return -EINVAL;
 
 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;
 
@@ -1291,7 +1305,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 	int err;
 
 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;
 
-- 
2.36.0

