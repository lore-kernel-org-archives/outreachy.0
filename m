X-GM-THRID: 6474617042668355584
X-Received: by 10.84.192.131 with SMTP id c3mr367620pld.58.1507489253508;
        Sun, 08 Oct 2017 12:00:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.88.193 with SMTP id m184ls913386pfb.4.gmail; Sun, 08 Oct
 2017 12:00:52 -0700 (PDT)
X-Received: by 10.84.247.16 with SMTP id n16mr259832pll.3.1507489252573;
        Sun, 08 Oct 2017 12:00:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507489252; cv=none;
        d=google.com; s=arc-20160816;
        b=Eg2EKC8JgJZGSXpb0WB7cG84HfRDYU0idKDvesQVwMQg+1UZO2IqGX5hDZvUrn+Y5+
         A5XK6KRehL70/vtOpaBMh/B/w8N8357pWuQ86No0YiHiu8sTOM6slnCgw5VNs69pAuj5
         UlrtWU6UuOlIjYl4Brs8YkozcOyWAIcatTo9LMVyh6+CBF5MmVUHYat4T5JeIJk1OB4S
         4FOu4dI/yOLaqUiV0B+STVEZCkiY9mkwBd/HRwVGf4MrCkbZjZyiwldQTaXkNm8CHg8n
         bi8b1bWG1IZP+13/smmkN+uLmUwnDcTOBPRaznJWryF/2+daMQ2JVEA0QVxHdCUe6Tgy
         ldPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=7u3TXNGa6XogSXyJVeq/ZVtstZD8q+GI1Z1RFA6H5Xk=;
        b=pccByqGsiv5+BmoW3ndJx4SkSmGq3w2yUx05zRCwnJ1+9LcsEJdu63/1Sp71/BBWKz
         vn9sqmmz9txoXEGNiLaCtmI/pjHmpIKiOpUW5ZzKlTKwmnp16O0y8IsmFyjUA1/m+U72
         Y4NC7NDB4I8uVcAQCWpsYQXVNx78vDmnr9y7/mu/6BUoeLq+Wu3M1SFajhml9c8oc5zr
         blt7JkASH60G3ObNYssUbudlppB3KCMZeMWx17srr3fsA7e31Gn5J9za8c2YLVgQ2bvH
         zJe3KOWDKzto3szX9ZaPBBEN+3ovl0Rh+gC71dMmIN4BIZuvG5+O8igj657F9bsRtIf5
         s1wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yk8xUjIU;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f189si703837pfa.1.2017.10.08.12.00.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 12:00:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yk8xUjIU;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id z80so4002586pff.4
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 12:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7u3TXNGa6XogSXyJVeq/ZVtstZD8q+GI1Z1RFA6H5Xk=;
        b=Yk8xUjIUGlw8advhVx/nzItu5goqr9Ou2Jvj4SwrdNe5uYMuukZlxaCuUcI1ir63+V
         yrLF3tmEch6M6U9hA2ZjKxhJ4gNPAOrZ1riAQfme1jR+7U++aeomO7EUEhutSr2+oMzS
         fgSZpzkoXw2t7LqZLLfe1Hi8fFd+ovyzSHalgurNK2UBMOM5SSHuJF0HBU8O3bG4nYcs
         6F/9CzUhHaOeB1yWkX9n+hjGh2VL/hN5wtfJ0BbrTHJXgn4v8uuFo9y63fbw1y9MEaYO
         ySuJgYXWV0brdV8AfIVTFAJ0lQbh6Ks3g0XVSHsCNmkqcPD2HciIqXowrJ4UWkb+Kiqg
         ia0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7u3TXNGa6XogSXyJVeq/ZVtstZD8q+GI1Z1RFA6H5Xk=;
        b=BbdbzW9dLnvAgfvxVtNLXJtDfwX+RajJdxxlIGjcergbPG55nKpNxWmV8CeHeBNz1E
         vjruWa0f8uEjMbHMb3YKwDc3KOaCwO5E9UfPkhFjx9TvYQz6uHt+4i1P2QB7csiywNm8
         qd5xQMaGtG+lUpwBkhjfDg0EzTmVcLGxwbocSe3WW/HEYYkWf22587VpwErHwUosqXVL
         hq+SG3wQv3+DCtTndlTOe9z3cJufVQKZUbB4RUscnYGodRSoOAreF1XBQp1J7zgeotGX
         K2XI5vnKP4R0mJY0xiWxW9QcAepgyp69Iol01W6ls0Sjxbtk6MY1dJq2/krk9JMDtOBo
         KLlA==
X-Gm-Message-State: AMCzsaWXEnTuAdwSWEaPKSH5SL3DnmdcGrqZvyrehdRUg6QSJtXTWgTG
	Z8MKGh9ZmQmK2CMP7ID0G8Q=
X-Google-Smtp-Source: AOwi7QDnnFiIng0OCX2frNu9Gl/Pxw4lgC1IhAWM/d+BbpKHDH4/xhG8iybxPFDsjnF/ZOsE21uaaA==
X-Received: by 10.84.232.76 with SMTP id f12mr7232183pln.269.1507489252311;
        Sun, 08 Oct 2017 12:00:52 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id p128sm12794442pfb.144.2017.10.08.12.00.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 12:00:51 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] src: buffer is not null terminated
Date: Mon,  9 Oct 2017 00:28:25 +0530
Message-Id: <20171008185825.21202-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Use snprintf() over strncpy() functions as the buffer is not null
terminated in strncpy().

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
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


