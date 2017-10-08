X-GM-THRID: 6474623523829579776
X-Received: by 10.101.75.17 with SMTP id r17mr713538pgq.83.1507490762986;
        Sun, 08 Oct 2017 12:26:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.26.83 with SMTP id a80ls922094pfa.8.gmail; Sun, 08 Oct 2017
 12:26:01 -0700 (PDT)
X-Received: by 10.99.174.77 with SMTP id e13mr827296pgp.62.1507490761920;
        Sun, 08 Oct 2017 12:26:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507490761; cv=none;
        d=google.com; s=arc-20160816;
        b=fwTj3V8ckbws7I3hrD8iaFFKqBWcnrJn2WT4wIfm9TCPx2YVmwWZYh3u0MgfbwZudY
         gOhYMOpoQIKSXwqSaB7UNvXupoOu8YCcPGaI4qIcn7YVOyHzKxaviqm+LFbeg/um1930
         f6pFxB8lIZm2khQstDX6pxJL7rFUkLlhXAcWSSNB0IaKk+EytQJsgaIXF4kOePa9YPq/
         qCxhe8Y4+QMmfZiLWVk2AVCopeKVeUiUH1veuR/+HowSU5GdH3JzMAzPuKrKM7oyzjSQ
         g1ChKFm9I5cfEyujWUDW4arkms9gvGiahzsCYQh9KM/9hQw36BqHiBd87OLZLBaoAHX8
         2utg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=zCKzmHiyn7Tn2Ls1gzEVH6hY8atB+ZaDaqJGOTgNJU0=;
        b=D7omy4N8xv1RDhVyG9upEL7tWS8CX7el8p5DvqaUGiZtCOch3PKyltjrd5evm+YFKt
         3LakEfJyVNQd/W4/+n/b8W7mqZzA0ZUVKzNg8YJcT7QG0Ht8lo1D6N/C9oRqBV6KziKv
         hLpIr5up0ie9f232Xef92kOSvBNZ4v4zuaduzDzLsK01bdgpmkFoW+V/1+KX70ILs6HS
         FiA6jIVzJjBGURaYH4coL47Cy+OsJDrXOU3sceEGw/rX+nJYPkCXveE+XoIvlIonlMiJ
         8jMezWX+cDG9VVd6sD+jK/yUePQi81fKcL8kzblr+uyxnUGb/ldl5eKzOrk8BkaEnoVN
         FsCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CkrxjG0g;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id e80si738631pfb.8.2017.10.08.12.26.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 12:26:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CkrxjG0g;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so22653790pfi.2
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 12:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=zCKzmHiyn7Tn2Ls1gzEVH6hY8atB+ZaDaqJGOTgNJU0=;
        b=CkrxjG0gcsjIvZuOzj5HutP7fg6SGqq0jk2vGxVz4N7p1NgYJB2f0wiHDOqkwQD5Nj
         cCalaazAG/NdciM00Xsg0Bt3m/+eu47yQ6ELjYbxRejUvckirdVO1oNNvY2P9PQBWxHf
         Cfr2M5QPkaLAFH94PvAhAjTKq3CZPZ8Ff0YvusoyJkNSDgPwy1ShRekRxufSURl2by+r
         9fPWHZFzWdB4+4Fe1TKAsEF4QUEEChY0SQKDt1dh9jFdWNsS/Y4D7rf0OVLrnRC6aWBF
         ScLSJj2WgGyZHWBQ55i7E4G2asu1iN05/ZDOOFCunWQEWEfbraq6swEZIy5jyLPVPgOY
         FayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=zCKzmHiyn7Tn2Ls1gzEVH6hY8atB+ZaDaqJGOTgNJU0=;
        b=Xe0v7sM/REfksTBsH7bm6Ri2y23ktB8tXTF3nBrvXqYluoActwECjkJu90d1DX77ya
         g8Hl1RhTmVJNKXix+1ZS/1nLJd4pVkFlMrRL/d8FFxqCPHvrtOpCi9V0RDoK+U3h2fZN
         3iVanDSURze0CS5bXrEmoxyP8if7uXeVXHnKQDE8XJhBNepLH4JiLqv/QKNH1hAI5kvu
         RJGlyJ/1/uDC7LTuHom54LAFC+e2uJPIu1I9JpYnUrQC/etWNzYdvs8dPw0HCqnMdJZR
         HtuBYPMWtDpy4DUw4EU4co+jajePYqpnRuI0ktrShcZ/kQOKuYT9ooVQLam8U16FuCtA
         nsOQ==
X-Gm-Message-State: AMCzsaUlYAXEMhBRv7canVoFY877B2WxymL2X0k0PdTgd3dWt2WNilnM
	70s4vrz3l9PpC3j2TFv9iSK8NyMx
X-Google-Smtp-Source: AOwi7QBdZgKkzYNf1gV0Q0uQqxFFaZYCCxTqralVdSjsnrnh2Kna12ZqyKrUXT81Dt0SLrVPGBnveA==
X-Received: by 10.84.139.129 with SMTP id 1mr7215796plr.120.1507490761699;
        Sun, 08 Oct 2017 12:26:01 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id y84sm13908641pff.158.2017.10.08.12.25.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 12:26:01 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] src: Use snprintf() over strncpy()
Date: Mon,  9 Oct 2017 00:53:43 +0530
Message-Id: <20171008192343.22050-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Use snprintf() over strncpy() functions as the buffer is not null
terminated in strncpy().

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v2:
 -Change subject

 src/datatype.c | 2 +-
 src/iface.c    | 4 ++--
 src/netlink.c  | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/src/datatype.c b/src/datatype.c
index 94b1224..9439ea3 100644
--- a/src/datatype.c
+++ b/src/datatype.c
@@ -858,7 +858,7 @@ static uint32_t str2int(char *tmp, const char *c, int k)
 	if (k == 0)
 		return 0;
 
-	strncpy(tmp, c-k, k+1);
+	snprintf(tmp, k+1, "%s", c-k);
 	return atoi(tmp);
 }
 
diff --git a/src/iface.c b/src/iface.c
index 9936388..d0e1834 100644
--- a/src/iface.c
+++ b/src/iface.c
@@ -53,7 +53,7 @@ static int data_cb(const struct nlmsghdr *nlh, void *data)
 	iface = xmalloc(sizeof(struct iface));
 	iface->ifindex = ifm->ifi_index;
 	mnl_attr_parse(nlh, sizeof(*ifm), data_attr_cb, tb);
-	strncpy(iface->name, mnl_attr_get_str(tb[IFLA_IFNAME]), IFNAMSIZ);
+	snprintf(iface->name, IFNAMSIZ, "%s", mnl_attr_get_str(tb[IFLA_IFNAME]));
 	list_add(&iface->list, &iface_list);
 
 	return MNL_CB_OK;
@@ -139,7 +139,7 @@ char *nft_if_indextoname(unsigned int ifindex, char *name)
 
 	list_for_each_entry(iface, &iface_list, list) {
 		if (iface->ifindex == ifindex) {
-			strncpy(name, iface->name, IFNAMSIZ);
+			snprintf(name, IFNAMSIZ, "%s", iface->name);
 			return name;
 		}
 	}
diff --git a/src/netlink.c b/src/netlink.c
index d5d410a..f69a5b9 100644
--- a/src/netlink.c
+++ b/src/netlink.c
@@ -386,7 +386,7 @@ static void netlink_gen_verdict(const struct expr *expr,
 	switch (expr->verdict) {
 	case NFT_JUMP:
 	case NFT_GOTO:
-		strncpy(data->chain, expr->chain, NFT_CHAIN_MAXNAMELEN);
+		snprintf(data->chain, NFT_CHAIN_MAXNAMELEN, "%s", expr->chain);
 		data->chain[NFT_CHAIN_MAXNAMELEN-1] = '\0';
 		break;
 	}
@@ -2915,7 +2915,7 @@ static int netlink_events_newgen_cb(const struct nlmsghdr *nlh, int type,
 		case NFTA_GEN_PROC_NAME:
 			if (mnl_attr_validate(attr, MNL_TYPE_NUL_STRING) < 0)
 				break;
-			strncpy(name, mnl_attr_get_str(attr), sizeof(name));
+			snprintf(name, sizeof(name), "%s", mnl_attr_get_str(attr));
 			break;
 		case NFTA_GEN_PROC_ID:
 			if (mnl_attr_validate(attr, MNL_TYPE_U32) < 0)
-- 
2.11.0


