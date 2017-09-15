X-GM-THRID: 6465881960509079552
X-Received: by 10.129.172.99 with SMTP id z35mr13124113ywj.171.1505455458727;
        Thu, 14 Sep 2017 23:04:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.201 with SMTP id n70ls6636058ioo.53.gmail; Thu, 14 Sep
 2017 23:04:17 -0700 (PDT)
X-Received: by 10.101.82.9 with SMTP id o9mr14994231pgp.14.1505455457882;
        Thu, 14 Sep 2017 23:04:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505455457; cv=none;
        d=google.com; s=arc-20160816;
        b=zStOwFDFEXPTB53f/9y2au1EyTVhLAAXkJQPqwAjIMHZhdzsq0j3tOjDuw0LANfYbN
         +gTzfxUgTqLeZGpe08N6VcChFALp08r3UmhfDMhbLvYaM8UrVrOO+PKqeQbIuG8AkrmV
         u3Nbeffj7UzevptJuwHNhPyovfU5eb1iIe2lIeE9VoKnp46ljRe7XaE4jGAJNRu2pcXq
         CQAadwAWXbfhpLjqNoCC453jzh2bfrvXH2I/pSOqpzaXoz6xsK2h1QfFdKEGM11yR2Ah
         tNeF5IW8s3QJhYL6yfEoeZAad29fXvFFNR5Y60Vgvnp8nM8G8VEuOjZQ0WmtXF8c3+Sl
         zL/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=Ot2banuAQ2ILYf6flml2aeyCEOJJmWwgUPnWML3gLCi4Z4sh3LmgsbusfZ4Vj5CL94
         bxMXdXUwX1rWNjQnfIxNqCPVEnJWS5xTheACwB7qunh9mz4AOLhIs/dMKnn5tFxOLGPl
         zrJ2dK729fRk//YVIkFOha3OLrURMQUaKLl4PvQ01nJ2nnjH6vLuc6XqxRDLTTN5QRAo
         +BOfBPZ3LTOT/0J+8XfRkBSYt6U+Dc4HDixEZr9b4ljCEzA63G2NAZHQYJEJuwZ6dtgi
         SE6bx9PBWkFP5zKcsMKcnA+1UmrRUGJ0W0ByRrJDmUQYl/yOLf1U5z34FzJnvw+wolrJ
         FaTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QKnwEwYG;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id q65si17284pfj.8.2017.09.14.23.04.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:04:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QKnwEwYG;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v82so853653pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=QKnwEwYGjZ9R52Jtv5aOSPixoJ5ID6t9zzLUbD+K5k/SQncjV4CS+qCSMGfk1S2hY+
         DRF/DyrtAtwnkomgklhXBMQzQWMNDo8h3Liqqj/ztrHz/9+Tgy8tBAxocSTiFQh7mXbM
         coGcLZAEWW+Ljymg4Pka5DXLlSuyLGk2ZMH6VksAu2CC6PuyWFZnVgctnTN/rBnsynMc
         n3f3Yih6CawQWVL8IYWm90wuB8k9+0TiKRiSIuf+8QNcj2hbfW3QMTjEqbxEo2kkdSqh
         TwOh4Qkubapqv44V8WgVEXMEih1tF3h6dbt2XZ6SU4W/dVdEltfbLTGJI3hWpaM8kQOf
         JUVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=SIyxXNk1vuFhfM3/4ePDPp2dQPBtQpQKLDjmERLpW0ihdMLDizdzaO/BbG4yvai92Q
         Ru7TQh5z8s7nVLOeHl+ZRtbEK1wJI/kjz6pnFOiaKfFdR9LJHahYyobwtZ0okGMIzOhz
         taAtyfsAoyzS78I6Z5p1NQhVJitu38EJhzX7af2dQbFopo5Xzjzv8F+sKhricVa+2fyF
         EkaS/kGNMs7M5KNkan56Ijl/NCce6YeBvhvlEfUz76fkU2FPsuYSk42H8wJJBW6LaHl4
         hiLr9SdB555hOn3B7miBB+1zS4tXmuTef+3/i8p1O9IErrZpD6yqgcHlaPwhI3ALC06G
         7fbg==
X-Gm-Message-State: AHPjjUiZxxoC3I87XIUWRozBRA6JhXojLDcVSY6oipcbOLpfAsOau2SW
	jojj+RBg5NOugA==
X-Google-Smtp-Source: ADKCNb55kEUHLdovpzWmrJbUqi0f+mU0JLOFqe1+x5gccQbgkdPjdlN/vRko73wyXJGcUnzi1MJXgg==
X-Received: by 10.98.32.86 with SMTP id g83mr23358458pfg.313.1505455457628;
        Thu, 14 Sep 2017 23:04:17 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id r22sm559632pfe.78.2017.09.14.23.04.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:04:17 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: lustre: fld: fix line over 80 characters
Date: Fri, 15 Sep 2017 11:34:07 +0530
Message-Id: <1505455447-14539-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/fld/fld_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/fld/fld_request.c b/drivers/staging/lustre/lustre/fld/fld_request.c
index 5b18083..081e137 100644
--- a/drivers/staging/lustre/lustre/fld/fld_request.c
+++ b/drivers/staging/lustre/lustre/fld/fld_request.c
@@ -425,7 +425,8 @@ int fld_client_lookup(struct lu_client_fld *fld, u64 seq, u32 *mds,
 	target = fld_client_get_target(fld, seq);
 	LASSERT(target);
 
-	CDEBUG(D_INFO, "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
+	CDEBUG(D_INFO,
+	       "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
 	       fld->lcf_name, seq, fld_target_name(target), target->ft_idx);
 
 	res.lsr_start = seq;
-- 
2.7.4


