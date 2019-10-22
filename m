X-GM-THRID: 6750702621918494720
X-Received: by 2002:a1c:6144:: with SMTP id v65mr4427139wmb.53.1571770436223;
        Tue, 22 Oct 2019 11:53:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:690e:: with SMTP id t14ls9700937wru.2.gmail; Tue, 22 Oct
 2019 11:53:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwJoGaOUp6XQxuy0TZQwo/GG5YZNQN9ik7fAtqgBeoRiibM88Byxnk50AaJaZamSv+WcUmu
X-Received: by 2002:adf:e805:: with SMTP id o5mr5119566wrm.223.1571770434935;
        Tue, 22 Oct 2019 11:53:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571770434; cv=none;
        d=google.com; s=arc-20160816;
        b=i8tDNrdoMLzPJVnFeIS1A/sHpI6SrKThWs5abIf1CYmCwxZadqXhrIGVbsn/B/3rHZ
         71L6JXtLs+nB/Em0CtQoBmk7OS0VvHK6U+AYBOYam7yx+CTGvpQ+bTnDCI+lh6LBToDW
         feLE94hK9lmL0002iY8/hpjLFRH3Km64wbOd/cMM60inMpgJLKePVg3ELh2KA4ePXQGv
         LT3zj4aCEuFUFM+whEi830onSNmX8gCSs3bjbVnSjBhTrxK2CyMrrHOI2orlaaqyBDwD
         inGEd+W0fGYNX9MPGx6mrP21wJ9Km/qunKvFVypY5lmeqVfGEs6rz54IKr1LTOj2dIIQ
         jRFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=iiHvYMgwvOdBQGS5MKAJGFuS4/3f+6MnikcB8S+RAv0=;
        b=vqvqI3H8avg/BUwgJiSV17H6F0tiRf6EvI7qwZZyVQ4vz3RLXghhfGCOHKIk+my1T5
         SBaWbLOBpKc7gqH5LPcK9TJPdmVKw+mQya3bZrmNZzL0XKQH6aE0Oig4oMxPC8E3HgJX
         EsBcFqZPTc9yutMivaSgdYFljbxnEw6j5+ObGU5dbZjAYx10l+vFkqsdCdBeo0i6q5zm
         729Azp1hywCBDHqlq4x/eknrSNBhpFrhW/HX/1etsMA+lo0yJLLDDxLpHBhDBSiT7XYM
         A9bNpNd+XX3hicOVcSkuY17FV7EYr4EOUfznywPaYClNIvHnIMftiiHvGR8USsHh4+G8
         WvdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EW4WggKA;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 5si1690216wmf.1.2019.10.22.11.53.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 11:53:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EW4WggKA;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id a11so3172047wra.6
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Oct 2019 11:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iiHvYMgwvOdBQGS5MKAJGFuS4/3f+6MnikcB8S+RAv0=;
        b=EW4WggKATsYMHrlLgRasCa6HyqjeSKaeAe2M9bhQWQDXB8YzXbmoRUIsvqIpyL21hX
         W4ldoXXiosqvPO/jEkrQnjkGKA4HL+hWJAHNX5+e3gdzO17izR7fLKrl+eH1+oQCjR8B
         CHsV2QPZgAS4scYjK65lhSimPaUC/D2Gf2xAhwWBecDxbFX9O9xUfPGmYxyH3ffxFrCc
         dQqG1+8v4LnEJSe+PJzus0AFuprAySJYPjwXv+G6f0VMP+qqDyUilaSVhxWcJRWCJrKG
         W++U2QiQYo+iFEWnGMxsHU0NIYIpK2E7D+Ox9MGuWgw5vfTFZffSnEuLS9hsu2C6dxaT
         VA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iiHvYMgwvOdBQGS5MKAJGFuS4/3f+6MnikcB8S+RAv0=;
        b=AfnlbBBOhmWLqgD72sjA8DmwLOWI5C35zJsvl+NQBQOc/Eyp7/vcgUgYLBGfq5kk2l
         NoOeuk2I/I06JiWJ5qKGCZR5vDyiskkuTQk1pcjzO4LNEDZwQuDusvudbCiZ4gZOfcAv
         gyh0jv5DVWpITD5eNJrhwpCyxTNO2BrbeGZxW0W28KpgYOPifXl0lQiXIPObseugioco
         gDpiobTDYlkAJ5JgMEKnfMt4ilnEt50nt6Z47ChJxrNH4qp8i5gscGRKT+gg8/s2LCTH
         6X3eS+gXG+oZSu6tUaSN5K3Hx4GtH7cI/67LcHZMJ0SBGkg/pIqgetcRFI8fJZUepelR
         TSUw==
X-Gm-Message-State: APjAAAWpGjOpwNjTymf+P36oNsJ6zmGo9kQCLFIaScGh8wRK9zwBxxZP
	kIU6hAaIT06xHpYl+3czToNLO4hYmyAc
X-Received: by 2002:a5d:4589:: with SMTP id p9mr2127415wrq.397.1571770434204;
        Tue, 22 Oct 2019 11:53:54 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id b196sm12644073wmd.24.2019.10.22.11.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 11:53:53 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: uwb: fix coccinelle warnings of comparison to bool
Date: Tue, 22 Oct 2019 19:53:28 +0100
Message-Id: <20191022185328.9387-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warnings of comparision to bool.
Issue detected by coccinelle tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/uwb/rsv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/uwb/rsv.c b/drivers/staging/uwb/rsv.c
index f45a04ff7275..d593a41c3d8d 100644
--- a/drivers/staging/uwb/rsv.c
+++ b/drivers/staging/uwb/rsv.c
@@ -614,7 +614,7 @@ int uwb_rsv_try_move(struct uwb_rsv *rsv, struct uwb_mas_bm *available)
 	struct uwb_rsv_move *mv;
 	int ret = 0;
 
-	if (bow->can_reserve_extra_mases == false)
+	if (!bow->can_reserve_extra_mases)
 		return -EBUSY;
 
 	mv = &rsv->mv;
@@ -643,7 +643,7 @@ void uwb_rsv_handle_drp_avail_change(struct uwb_rc *rc)
 	struct uwb_rsv *rsv;
 	struct uwb_mas_bm mas;
 
-	if (bow->can_reserve_extra_mases == false)
+	if (!bow->can_reserve_extra_mases)
 		return;
 
 	list_for_each_entry(rsv, &rc->reservations, rc_node) {
-- 
2.21.0


