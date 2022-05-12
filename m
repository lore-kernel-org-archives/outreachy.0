Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A60528F9
	for <outreachy@lists.linux.dev>; Thu, 12 May 2022 09:56:17 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id a5so2682940wrp.7
        for <outreachy@lists.linux.dev>; Thu, 12 May 2022 02:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YBtPuBqDP3daPNAlvcT1zBqVo4fpSgXbgBta3hDhOBQ=;
        b=F4WhnDem6d1RsMdSD8hOf2PQoTgOwN1i/3uuW0U4ksqByqNBW1wZ5PvFKVofytUkqz
         s3hY60LWSjJnltuYW/ODjAqPyXq7QhpJxhsbF3Fh10t9Unh1gqHB9KBbLeUcPfn3xkqB
         KkQU5eZrMNWPmNx0nYhi0275CFXzuP7qm/uxB8nDjNda54MsweGsgFJFJRwwxl98+FJJ
         wFJQbOXiSsfub6REPzOGE/UaP2TDAPGMEkvz2OvuOlQpW12b5XnjnPfabHAyk71mvxbb
         XR1nIszZKQXKaAlhCRlPxbX1MFblhs307Pn7qepv2DwMAl37dWYfkIOOtJyvBw2Cr0Jd
         LUdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YBtPuBqDP3daPNAlvcT1zBqVo4fpSgXbgBta3hDhOBQ=;
        b=zTKzs2LRraxn2vw+RHtXP0iEP2MXf5eJ6WL5gHH4eaoWrZGX7afrF6/MV/OHqXzVia
         N58at12Ns8vTKJnl3Uwozgjhh/dMlnFjxOAjz7MbJsjO95PGLV3FMkd0jv7xBTXDrhED
         0+RPhbOz/1+IegPUqji2jM3iTjyK1LkIfHiScHfhXy3ZgGMVmgSY2C7fkQ3yH2NAaKyP
         SY3cQkYMr/CLs9eDXJMNGOh4TZhH9jy5T/7MPEdkjUB3Y3F1tsO8TDfTuJ0drhoDLtd1
         zwgE8Nnx2lJNT715YyKylzYpkvkE7cceWVnPOi9kJbdC79724BBcig41eQ9vWqtgAw5c
         rTrA==
X-Gm-Message-State: AOAM533t5Gnd3LwKOeP6M7tlF8bRVgyHPERyRLLLAiQO/AN8DwQ+LX5r
	IkMCO9D824YpRN31a4UzjPk=
X-Google-Smtp-Source: ABdhPJxhKb5EstwZosgNL/R8XDmbinm081QfDMNdN0k7i1WWihDYWeu1Zt3D3fwvImYSpDzVZuoUdQ==
X-Received: by 2002:a5d:4b0d:0:b0:20a:f3d9:336e with SMTP id v13-20020a5d4b0d000000b0020af3d9336emr28096436wrq.467.1652349375926;
        Thu, 12 May 2022 02:56:15 -0700 (PDT)
Received: from alaa-emad ([197.57.250.210])
        by smtp.gmail.com with ESMTPSA id i10-20020a5d630a000000b0020c5253d8d4sm3751915wru.32.2022.05.12.02.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 02:56:15 -0700 (PDT)
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
Subject: [PATCH net-next v7 2/2] net: vxlan: Add extack support to vxlan_fdb_delete
Date: Thu, 12 May 2022 11:55:54 +0200
Message-Id: <c6069fb695b25dc2f33e8017023ddd47c58caa8d.1652348962.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds extack msg support to vxlan_fdb_delete and vxlan_fdb_parse.
extack is used to propagate meaningful error msgs to the user of vxlan
fdb netlink api

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
        - fix spelling vxlan_fdb_delete
        - add missing braces
        - edit error message
---
changes in V3:
        fix errors reported by checkpatch.pl
---
changes in V4:
        - fix errors reported by checkpatch.pl
        - edit commit message.
---
changes in V5:
	- edit commit message
---
changes in V7:
        fix checkpatch issue:
		CHECK:Alignment should match open parenthesis
---
 drivers/net/vxlan/vxlan_core.c | 38 ++++++++++++++++++++++++----------
 1 file changed, 27 insertions(+), 11 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index c58c48de4cf4..cb955bd79cb1 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1129,19 +1129,25 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,

 static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
-			   __be32 *vni, u32 *ifindex, u32 *nhid)
+			   __be32 *vni, u32 *ifindex, u32 *nhid,
+			   struct netlink_ext_ack *extack)
 {
 	struct net *net = dev_net(vxlan->dev);
 	int err;

 	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
-	    tb[NDA_PORT]))
-		return -EINVAL;
+	    tb[NDA_PORT])) {
+			NL_SET_ERR_MSG(extack,
+				       "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
+			return -EINVAL;
+		}

 	if (tb[NDA_DST]) {
 		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
-		if (err)
+		if (err) {
+			NL_SET_ERR_MSG(extack, "Unsupported address family");
 			return err;
+		}
 	} else {
 		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;

@@ -1157,24 +1163,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 	}

 	if (tb[NDA_PORT]) {
-		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
+		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)) {
+			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
 			return -EINVAL;
+		}
 		*port = nla_get_be16(tb[NDA_PORT]);
 	} else {
 		*port = vxlan->cfg.dst_port;
 	}

 	if (tb[NDA_VNI]) {
-		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
+		if (nla_len(tb[NDA_VNI]) != sizeof(u32)) {
+			NL_SET_ERR_MSG(extack, "Invalid vni");
 			return -EINVAL;
+		}
 		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
 	} else {
 		*vni = vxlan->default_dst.remote_vni;
 	}

 	if (tb[NDA_SRC_VNI]) {
-		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
+		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)) {
+			NL_SET_ERR_MSG(extack, "Invalid src vni");
 			return -EINVAL;
+		}
 		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
 	} else {
 		*src_vni = vxlan->default_dst.remote_vni;
@@ -1183,12 +1195,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 	if (tb[NDA_IFINDEX]) {
 		struct net_device *tdev;

-		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
+		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)) {
+			NL_SET_ERR_MSG(extack, "Invalid ifindex");
 			return -EINVAL;
+		}
 		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
 		tdev = __dev_get_by_index(net, *ifindex);
-		if (!tdev)
+		if (!tdev) {
+			NL_SET_ERR_MSG(extack, "Device not found");
 			return -EADDRNOTAVAIL;
+		}
 	} else {
 		*ifindex = 0;
 	}
@@ -1226,7 +1242,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		return -EINVAL;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

@@ -1292,7 +1308,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 	int err;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

--
2.36.1

