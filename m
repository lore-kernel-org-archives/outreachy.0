Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236BA1367
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 14:37:33 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id w4so22707127wrg.12
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 07:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N48TJvmdh/Y4TlGVjzLHWIp+ix5BlHPty8FNkZ2jyGU=;
        b=QGX8RsYoWV2lbS0+dRPRUPeX3F7/sp0475iEfethV67+LXSi5rs60Ri8P67Kkgaq34
         GC1C6Jbcp983sPCebc4469qfx19oVcqwCdWvVHZUR/WbCPV2c/FzMXHe7YRd+LJPhcWE
         sWKi9m0p3CLfyz7vXbVj4/BzAF6T4Xa/S7+2iAF8i+vyHAvTWbOSg0e8KHp+0DvWsCXW
         7Unp9qSYlyEBcG4fpGaiMJCRdVe4k+OF47YUI9eksvGx59g1rVLYP7Dz89+kzwGypcL6
         9keQSnLkM6RWe/tFYD0RplPK44Rf49CBcgDWTrYyVhD+vlAIlmsEmUwHpcwTuBhk9Dii
         F0PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N48TJvmdh/Y4TlGVjzLHWIp+ix5BlHPty8FNkZ2jyGU=;
        b=AGIrDnU00wS1qOThUQiwpX39GRFs7ELTEnfxoHGboBwT9b5jxVk5HkXpKZL/leCs09
         eG4f5jw/vIt27s6GTXLBfCzG2PQsb8S1OSY6YyCZomfiKd++KAWDDGIEFWOmLZp4oWmJ
         uvo7RfYtREBy4wxrZ1YiUy2Fr24b0NhAy2/ls/Gx+sVUxRdufeOzzHCYAoSbu8R9oJGd
         X/v06Un77b12OZXK7QAMbI4tjrdnxR75NoeFqEOxyGdZ2uz0h7Svo42SrBFBDFTNZ0o9
         5mVI7e8+70rZ+ngmQVnWvkuqm1H4sTVwmm11EIlDRr5UdDQeK8JSH88/VupBTsJOTwgI
         Jqfw==
X-Gm-Message-State: AOAM533nePveiBcLCUXf5rxIucNQNR8zN9nfzNlyyX7+3zQY9OWVxnSP
	RSMpYAtQY4LskqHjdjMZkJU=
X-Google-Smtp-Source: ABdhPJwFmZEGVV6kftf1hPg1ct4cFd5013y2olZXUSuPpHy8RVQoOM/dIVuQpAX3tOxY7SIvZXDXbA==
X-Received: by 2002:a5d:4ec1:0:b0:207:b1c0:a417 with SMTP id s1-20020a5d4ec1000000b00207b1c0a417mr11620959wrv.561.1650379051339;
        Tue, 19 Apr 2022 07:37:31 -0700 (PDT)
Received: from alaa-emad ([102.41.109.205])
        by smtp.gmail.com with ESMTPSA id r21-20020a05600c35d500b0039295759a55sm6773905wmq.12.2022.04.19.07.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 07:37:30 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Cc: outreachy@lists.linux.dev,
	roopa@nvidia.com,
	roopa.prabhu@gmail.com,
	jdenham@redhat.com,
	sbrivio@redhat.com,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH net-next 2/2] net: vxlan: vxlan_core.c: Add extack support to vxlan_fdb_delet
Date: Tue, 19 Apr 2022 16:37:18 +0200
Message-Id: <c6765ff1f66cf74ba6f25ba9b1c91dfe410abcfd.1650377624.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.2
In-Reply-To: <cover.1650377624.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650377624.git.eng.alaamohamedsoliman.am@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add extack to vxlan_fdb_delet and vxlan_fdb_parse

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
 drivers/net/vxlan/vxlan_core.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index cf2f60037340..4ecbb5878fe2 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1129,18 +1129,20 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,

 static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
-			   __be32 *vni, u32 *ifindex, u32 *nhid)
+			   __be32 *vni, u32 *ifindex, u32 *nhid, struct netlink_ext_ack *extack)
 {
 	struct net *net = dev_net(vxlan->dev);
 	int err;

 	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
 	    tb[NDA_PORT]))
+		NL_SET_ERR_MSG(extack, "Missing required arguments");
 		return -EINVAL;

 	if (tb[NDA_DST]) {
 		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
 		if (err)
+			NL_SET_ERR_MSG(extack, "Unsupported address family");
 			return err;
 	} else {
 		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;
@@ -1158,6 +1160,7 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,

 	if (tb[NDA_PORT]) {
 		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
+			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
 			return -EINVAL;
 		*port = nla_get_be16(tb[NDA_PORT]);
 	} else {
@@ -1166,6 +1169,7 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,

 	if (tb[NDA_VNI]) {
 		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
+			NL_SET_ERR_MSG(extack, "Invalid vni");
 			return -EINVAL;
 		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
 	} else {
@@ -1174,6 +1178,7 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,

 	if (tb[NDA_SRC_VNI]) {
 		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
+			NL_SET_ERR_MSG(extack, "Invalid src vni");
 			return -EINVAL;
 		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
 	} else {
@@ -1184,10 +1189,12 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 		struct net_device *tdev;

 		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
+			NL_SET_ERR_MSG(extack, "Invalid ifindex");
 			return -EINVAL;
 		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
 		tdev = __dev_get_by_index(net, *ifindex);
 		if (!tdev)
+			NL_SET_ERR_MSG(extack,"Device not found");
 			return -EADDRNOTAVAIL;
 	} else {
 		*ifindex = 0;
@@ -1226,7 +1233,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		return -EINVAL;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

@@ -1291,7 +1298,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 	int err;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

--
2.35.2

