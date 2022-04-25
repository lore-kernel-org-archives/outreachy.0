Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87EF2571
	for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 14:25:24 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id r187-20020a1c44c4000000b0038ccb70e239so12606205wma.3
        for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 07:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KYRLxtWUoxgDscOvKvmLE9kQsS+KE+dJRTrR6t8FDR8=;
        b=WuafkhyX7Fx9at098OuChlVigGPd1iHClFHiuDAVRJeQ03c9Wb1wDEJtnTecQaNYwB
         F+QTzW9dj1bLKpzzJDlAMEkVoL+aYZSouz/zeFXitzzpfSP0A0r2KqAafjhCcWJD16/E
         IDL6RkMQpbHT6su/QOBuVk3eZ5VH29ni7Oj2YvFU5EaL4j1m+HsjhaOlSSjlEuOicVSp
         6PB631/7lQQCjFIb75ceY96erzQOorqmsQt66/YOalU1GA24rjSVy/s82GmmDFFt74Yo
         +rL7V7Y9ozJ45ksMVVoM7loCEPmK0kOSyoWzM5u6C5U3Bpq9dWtdiKIsqJKJ/V0Ai2kM
         cOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KYRLxtWUoxgDscOvKvmLE9kQsS+KE+dJRTrR6t8FDR8=;
        b=s5b0koFICTu0EuK/ccXxX+thrqnqwxpRDcDom4XinLpE0VPsxGwNie4UKToKJw7J9A
         gIMcEVpGzCAwN0nF6kNE66mT7CenqUKSboUrPC0t/w2ZIOTfshdiAztykKyEMXkHmIO9
         Tu5ECfppki5c/fcrrr6xOZ+gModqC6c999MJA0jJmrmRCXdk3UkYC/ALxkggIZlSpdQf
         M7eBAHJ0SGRmuNYs1qGn1X/P3+rvAZ7wYSsbO1L9iyduHPW47H97kD1NL4I5pwL+GzPr
         t0IwJ1+yLeNBvVVZ1WaE4ZoWMTl+M2Gsyk2NKy7CehmD67tOrxBq7jodNuJr4IW9nZqS
         Jipg==
X-Gm-Message-State: AOAM531wn32cA5NpKGaKIOjLi3nsU5U8z5AXbHdSk4Z1f/YUb5DxmYoF
	jwWFusHlXAGOhBl2+Q03xF0=
X-Google-Smtp-Source: ABdhPJyGKMUuEPLqmssTF7rRhMHFCQgerExqOcCfS0wOFKXnNsPt8f23J/FpZzUNhz93QJfhCBq+zA==
X-Received: by 2002:a05:600c:c9:b0:392:af6f:734a with SMTP id u9-20020a05600c00c900b00392af6f734amr22986997wmm.61.1650896723300;
        Mon, 25 Apr 2022 07:25:23 -0700 (PDT)
Received: from alaa-emad ([197.57.226.213])
        by smtp.gmail.com with ESMTPSA id l6-20020a1c2506000000b0038e6fe8e8d8sm10996601wml.5.2022.04.25.07.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 07:25:23 -0700 (PDT)
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
Subject: [PATCH net-next v4 2/2] net: vxlan: vxlan_core.c: Add extack support to vxlan_fdb_delete
Date: Mon, 25 Apr 2022 16:25:07 +0200
Message-Id: <a99bfeb371857968a3fa734c00bd9b0e122719c1.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
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
 drivers/net/vxlan/vxlan_core.c | 37 ++++++++++++++++++++++++----------
 1 file changed, 26 insertions(+), 11 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index cf2f60037340..ef69aeb058b8 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1129,19 +1129,24 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,

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
+	    tb[NDA_PORT])) {
+			NL_SET_ERR_MSG(extack,
+						   "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
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

@@ -1157,24 +1162,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
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
@@ -1183,12 +1194,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
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
@@ -1226,7 +1241,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		return -EINVAL;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

@@ -1291,7 +1306,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 	int err;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

--
2.36.0

