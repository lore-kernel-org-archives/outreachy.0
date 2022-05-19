Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7490C23BE
	for <outreachy@lists.linux.dev>; Thu, 19 May 2022 16:40:01 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id t6so8000317wra.4
        for <outreachy@lists.linux.dev>; Thu, 19 May 2022 09:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g94V+007bcGCjAyasUfYbZusStl21uCfYeR0vKeXVf0=;
        b=Hin01e1la6QOK00QfgmMbrXlXFaf2VdjroqEbWbljSiLZ/qJBOP17F6LoXPDizcJpZ
         nZpsxfXUSsogmY/6Ko4uMdE2PF1dv2OWvx/JdVqO18PV05vmaIOyhRBVBwoiUZQMCt7Z
         /iV+4wUIHNG65yq12SFY9yV6L0woB2stMcLfq+i85QHWqE8ImMOKw6ewUac//hleytOW
         +Whp4OemtZ8s6UIYz9CdMx9O7tueLWyHLuqJCXxSjRQAzHbcsUFXhou0IZfcr8LXXOyO
         rWW1aDrgjreerko2wsBokIIVKoQkO4qa9mai19ya98tQuoSke+bekMxZKdcOhLIEX0fZ
         0ReA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g94V+007bcGCjAyasUfYbZusStl21uCfYeR0vKeXVf0=;
        b=c4R0iZiXVSkPmFbTvzItbGDUI2J3I7bxPmksESnGb//R/+YdWKFSCK/IqEsHtYrPvn
         v4LZxji9SSxFCCFQgtKDiZNXWFplbKohRsKLlsVOc8maXxpHViO5rFQitVgM/VdoxcOF
         G1XigjgWuUoauJOYCFDyejxObZWlRduDavuMZUNgIfrC3sh0VIVtI+Hk4OiMn5EMWdKy
         Be7sU38Vl+gaSYNoO1hxmV4aA5RNZXzchD5MTsnlSMSg0Id5/fkgG9/vGTdn6LJkjTRr
         rMSpnEjktwqMOom2D0xPto5jAlA/S13hTG1EUN/yJCyYCqJytBbLGXg5ywFPfObYz3V8
         NuKw==
X-Gm-Message-State: AOAM532HPCkBwlrIBidt2qKHCtP7OXSE95xT7R1hh5IFROqAdTAeUfcx
	ujUzPzTxOpJfHRDtGBddA9A=
X-Google-Smtp-Source: ABdhPJzQB6LAwzzqPBlOe+HRAwwCoxmApZLwaN/+L8lDFNt/Clf6eLSVXo62V8B8ieF3j345piND/Q==
X-Received: by 2002:a5d:6701:0:b0:20c:dc44:f7e7 with SMTP id o1-20020a5d6701000000b0020cdc44f7e7mr4795391wru.484.1652978399576;
        Thu, 19 May 2022 09:39:59 -0700 (PDT)
Received: from localhost.localdomain ([41.232.195.220])
        by smtp.gmail.com with ESMTPSA id u6-20020adfc646000000b0020d0c48d135sm104873wrg.15.2022.05.19.09.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 09:39:59 -0700 (PDT)
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
Subject: [PATCH net-next] net: vxlan: Fix kernel coding style
Date: Thu, 19 May 2022 18:39:39 +0200
Message-Id: <20220519163939.10347-1-eng.alaamohamedsoliman.am@gmail.com>
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
 drivers/net/vxlan/vxlan_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 293082c32a78..fb7a09baeeb5 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1138,7 +1138,7 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
 	    tb[NDA_PORT])) {
 			NL_SET_ERR_MSG(extack,
-						  "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
+				       "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
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

