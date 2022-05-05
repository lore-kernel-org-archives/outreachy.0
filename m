Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E042568
	for <outreachy@lists.linux.dev>; Thu,  5 May 2022 15:10:13 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id k2so6515904wrd.5
        for <outreachy@lists.linux.dev>; Thu, 05 May 2022 08:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m2VDhVRQPjsV1IPycPT/Y4TlTx8jaZtNzcIfdQQLUOE=;
        b=FFAziO4TJTHw3bMRuvzzhIrejv1YFi9kr+TvLjW7GH03D/Ms9GHVRb1qHk7xSkSRbh
         GvMrgZMhsdYjPOhZYy4728AKW1+YecbVpH26/5sPMvodoh8znUPVwIaI2wutBIoVS3id
         V3Q41qlgLA7wJ/1dKXp2jStShtULGJGPdIsH9P84DHXPzRSdX5kmeTdmbO9WPqM1ffop
         IyAnwBJwiXbCsYAGoORTH9/WeQHWkQqXtUWP0kWHWP9csb2E1yLcNsTDW2jlYDYEpICg
         qOYRXPsYrWAAkXYhyDF85cizqBuwsLLGTf+I/NervEbk5N0KYG0lmK2Ud1qeJE8t81t6
         5HxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m2VDhVRQPjsV1IPycPT/Y4TlTx8jaZtNzcIfdQQLUOE=;
        b=vtJa0chPJOfUkwVLWHhDj5lrIE9PVei2Yu8S1v0Bp9v3h/3Wz13HeXqlxGFKrYtg/6
         1Gs4dAwQPtHmTpNa7iDB0crLjcylmwq/dagx6HXnuG8CydPcTySCENs0BtmI6qrpR7md
         4sSUS5uYBo+Hv4/l8ZAMLIh3oauk9LbS4rE/hAooCT8EjTddxaCi6xtU3tvF/Emh/liy
         USuUTz3LruBZ94E8CmJtCbQYeXYsCKcIJMq/Ca30o8bGhgTAFJQvQYzuHG2o0z/4RAqu
         5004K2uZhfLKyRCaykIEIvchOhb/V3FQdoKS0b8Odr1cGvXfHeDgd4SJrthpPocSyKTY
         ykJA==
X-Gm-Message-State: AOAM530bfHUTlGUdY3GGV8tC24jKFACmC79uBjtZCx/6FMnFzM6WVCai
	VGRO1kSFXg6dksWzYj6Ot5A=
X-Google-Smtp-Source: ABdhPJwqfM73K8adtgjCuTsQ1ipScmTZxb+Itq8+sQiiM3H9l56+FpM2fMwHfTDdKGvr4/YnWoJOlA==
X-Received: by 2002:a5d:5547:0:b0:20c:7a44:d8e7 with SMTP id g7-20020a5d5547000000b0020c7a44d8e7mr9963872wrw.349.1651763411909;
        Thu, 05 May 2022 08:10:11 -0700 (PDT)
Received: from alaa-emad ([197.57.200.226])
        by smtp.gmail.com with ESMTPSA id m65-20020a1c2644000000b003942a244ecesm1624120wmm.19.2022.05.05.08.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 08:10:11 -0700 (PDT)
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
Subject: [PATCH net-next v6 2/2] net: vxlan: Add extack support to vxlan_fdb_delete
Date: Thu,  5 May 2022 17:09:58 +0200
Message-Id: <ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
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
 drivers/net/vxlan/vxlan_core.c | 38 ++++++++++++++++++++++++----------
 1 file changed, 27 insertions(+), 11 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index ad0f2150cfdb..429ce2168971 100644
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
+						  "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
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
2.36.0

