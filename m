X-GM-THRID: 6675276130832875520
X-Received: by 2002:a81:9a01:: with SMTP id r1mr7163572ywg.20.1554214671154;
        Tue, 02 Apr 2019 07:17:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3185:: with SMTP id x127ls971894ybx.15.gmail; Tue, 02
 Apr 2019 07:17:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyFvOyRvK27+QBaNBUhM+n92OMgCixZM0CRgnLG5OIWBfi7eGW3Fkb+zpV8k3MKrJnhLfUo
X-Received: by 2002:a25:3b0c:: with SMTP id i12mr3382232yba.68.1554214670409;
        Tue, 02 Apr 2019 07:17:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554214670; cv=none;
        d=google.com; s=arc-20160816;
        b=0mW9X22aSeXdsANI0MV1L5gEtKs2YCfcNT7GBS8LYCu/LZnMgOHH1mnAVdghtAGQuf
         UBoZsL1h0esR9zv1XrQQnfNsLwchtKitl6HtuAOyl+lxNIDiMPOVtMmmI8QQ7XGbC2bk
         foFRJBiYCcnFbLuJysFuvUjm+f8lPjJG9Gv42kDxu++WMw451PsPcnNqu0onTaIXTStz
         +gDKp5tQkBK55j3GaFp/yZKgVR6hvB+eFZV1azeAzX2VCTy9cvcs/2WrOTD07gaXm2rD
         HEeuzoM7EHOkKxxaaqMKytxr5uCO8QKmioEXhXON8u+hVetiKMWRJ+p8drgsrjP4CfYJ
         uO/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=+xV2Ms2+uVmZBCA7EZ2eeiXkjlT1YdMryp1K1l+hVFQ=;
        b=RixloHTt9px8v+rgoGyW3oQW48F0WEExkPJ6Ug7oG2cNEozYlILJcKqIOPa32NAIJO
         T0y1ugyoKwz5L0b6gqRkzYXF8r/N1ufcAMoBnLV51F71i6tqM7++92kR7fZAbkyJ6YOo
         g3rKXmPb6mV24uqMsu2FBaB36Lvlm9C9CkX2cpjrBXIrgdMIvnFXFUhQ9kKpdyDsG2qT
         T+fVGilz5lPZjS86c8aatgaQSc7KrxDj4n/t2h3JlIVM4utd530MLbjMxRs5Hwy0nKu9
         ULvSxdIgA98SpxT3ZXUmD7fzVjsFcqRk1OsmFELIhHAWLQGBv9tPfGBtCqOrd95L/UrT
         w2GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NFuXvY16;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id 127si419105ybe.2.2019.04.02.07.17.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:17:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NFuXvY16;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id 8so6466542pfr.4
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 07:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+xV2Ms2+uVmZBCA7EZ2eeiXkjlT1YdMryp1K1l+hVFQ=;
        b=NFuXvY165rciHThzD6jRm9jn8Tw93loIymOiz6EQnORHimOfxynf3rejbvP76dt1jY
         8Fy4tmYa0Q6HwnXUjEDn0NCjmKIaw6BxDumGEge7Bcep+ihNDULU4fTKc0XMag+iVBAv
         KdBB1nV2ea2/ayMTnWuCfx7huBzNMGRJppH/L5DnBfioJkWUvj7VMal/b5G4eE3sVFEh
         ZBzomsGplyW18KsQhrHKNKlKSaAIxTbR8SlR2ysY3u4RyqqV6B0OFWAvybB6NocLJxfA
         UiJNcOXkDpihrGCKCKh4QlmVNQv96zqRKMt//8GORv86B89v7MV5zqR0geisB7ut8zHJ
         Ok4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+xV2Ms2+uVmZBCA7EZ2eeiXkjlT1YdMryp1K1l+hVFQ=;
        b=Yyg4BWit5lSAVZ1ljSnkOql9XipC6XDpBJbYI4BeMSTIPkr613Z+eOW81p0BxGgq5i
         fi1fQTRpsMXzqeFz6gKmCem+tXLhfCoMXad9zhNuoaEmCkWx8/mZbFRjuTorLDuvK8i5
         gX+Gcf9uYawZNogPgxVej6H7U1gip7y4BPvasNKa9ULCUPh3oqA6EzxYgXMNn8YlQ7R/
         WavbK/FehZjVv45vFmPxJHPeUfOxhbDzYkiglsOwqneeHL33zcmR8ydNzMdmDvMpwPLL
         zSP5F8H3IJoMoHFoim88guzLwFYWC2vHuJd84poBcTIjimOjbM42JL0DLX12iNKE21Ur
         bdfg==
X-Gm-Message-State: APjAAAWHFT+qHJnd3v9DYaHvzo3K8iKrO0LOVT5wO24wy3IXeOcWwAH5
	TS9mAqYk21CHCgTL2/w6LXzI5eZc
X-Received: by 2002:a65:5183:: with SMTP id h3mr34211543pgq.53.1554214669709;
        Tue, 02 Apr 2019 07:17:49 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id h65sm35764281pfd.108.2019.04.02.07.17.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 07:17:48 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 1/2] staging: rtl8723bs: core: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 19:47:28 +0530
Message-Id: <e85c9986cfcf88423d83310b70bb785e47add908.1554214359.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554214359.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554214359.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554214359.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554214359.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index ebb45ac..254dd33 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3958,7 +3958,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 				/*  A-MSDU NOT Supported */
 				BA_para_set = 0;
 				/*  immediate Block Ack */
-				BA_para_set |= (1 << 1) & IEEE80211_ADDBA_PARAM_POLICY_MASK;
+				BA_para_set |= BIT(1) & IEEE80211_ADDBA_PARAM_POLICY_MASK;
 				/*  TID */
 				BA_para_set |= (status << 2) & IEEE80211_ADDBA_PARAM_TID_MASK;
 				/*  max buffer size is 8 MSDU */
-- 
2.7.4


