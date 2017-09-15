X-GM-THRID: 6465879632669310976
X-Received: by 10.200.16.12 with SMTP id z12mr1861966qti.22.1505457536878;
        Thu, 14 Sep 2017 23:38:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.16 with SMTP id g16ls561574ita.20.gmail; Thu, 14 Sep
 2017 23:38:56 -0700 (PDT)
X-Received: by 10.202.226.211 with SMTP id z202mr13307490oig.66.1505457536222;
        Thu, 14 Sep 2017 23:38:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457536; cv=none;
        d=google.com; s=arc-20160816;
        b=QYXqvUCoySKT3lIeEG+CfqSNdC+LP7XutDUlOYzTBzChB6FYdT3RYeNboUDljM2dCa
         jpWKFjl/fTPBJsO/v5SJ6usNCanRMjSaMqnCC/zqoZe94Dw0fJFAodqBKROe09uY0Tye
         O3vHdbT4oMQ0lv1VWWH7oqpapQRwroSYqkiox5hrqcSwxSGq3djYGWkOEPnsR/RPz6Xz
         4lKhIAOaxlqOuC81UtxshmxwYnqC1ad03yYy+83vcSc8iOyNInTYRdZTVaQy4y7me5pD
         4tiypmxrrcPZ2+9ZDwX9G0rZBQcI4TNrkukBefSpnhuPue+CDdv9InctIdkrApD6Mss7
         spSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=4FxHWP+Z4cKEJiXmDeAvquGJutAXT2JmghCo81VJ3cI=;
        b=mp/lGUYqGPns99JgDRbVOTq5Q+SX8KyEqZfS6UOExCtLYEpI6NitXmVERezPMaUQZy
         GO8OkDDYOfxOCEy15pnhFj5ggWtFppAwICf6OIRTA6PslJQiHDY7G1QKzDw9UEYmD8Nb
         0g41/X3Zfg+tEbtbdXZ78Ip0T0ar7lwzf9j2Ch+TMVOSbsCje8BBgNq6qlJffDwyW5NS
         C9WVYI1/25e0Pss7vdP7BgpLMWp/A1VbpxGeXNOzXxrkBxS2CbZZ18fe7XARr3c0vLmB
         TTnlJsGzMtWOpBMP8BbMJ6WpP9MYqQfjvVR7FcRd1C6zv0Wcf4QPI5gmTIeg1C4ZmUhj
         uKdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h1YAmG81;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id q15si22102pfi.7.2017.09.14.23.38.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:38:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h1YAmG81;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i23so821502pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=4FxHWP+Z4cKEJiXmDeAvquGJutAXT2JmghCo81VJ3cI=;
        b=h1YAmG811tDugwVmKQw57e2Uri/tAT5gDSDNhXRL/tTQm17/ZHA+3JyBTYgGbe7+9w
         rEgI7ENGOWWJn1LPWq+Gc7E0nwbAYKUTHsck06f2FplVsEAdIQer9fD1+TWwKmLwEJnQ
         5EzkGCaomj/sxkMhr7RaNNwG+oiAsjq/9SG7YLSkbzj0zmUZv8M6z2Ip6VTEoGCIohRL
         XaQKjookvZcRsj7i/7+A/m94ejSkVaTiOGsm7vcydU+zPQUywUPST/FHt9O/g9SN+qoh
         c07Mk/fFUA/tITDJTfH0r20R19JQRaEFlRT7KcqeKyDGDHdyg8wVrnsw1NpBzhWOx00R
         JZgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=4FxHWP+Z4cKEJiXmDeAvquGJutAXT2JmghCo81VJ3cI=;
        b=VWvTSDttTPnvZabrFK4rSt52BS6Fj6LUkKLllNkIFIi4zenj0tucBshvhaXeYZJlQ5
         HSHsgCAq8LG32Xg43+PWwU0w+hd7dyCflVPXD46ckvHJQtTIAJOs9FjrkyjzBW/3Thqy
         g7jUVHudsmqiquq5kWAIaMsmieJZH4PPXnhB9N1XMtaSShcDtR+tzo1hXa8DkVh03256
         zsplu+Qr39BiaiOXtbzjWuFpYhs4qoeRufDamJ5Uo72RZ+CkndBiyJ9118EhC+r3k7F0
         GuCoVjPTSgtx3l193cnW7qJjZOeBQAa8DgFVFdwk7+Vd+We613IIcKOCI5gEok7LgaEd
         SQKg==
X-Gm-Message-State: AHPjjUhFKR58rnxBYOgb+vEic1+6au3X4VN0JQBlBSVOHDZFpIfDwDne
	TveqFIADIrhAtg==
X-Google-Smtp-Source: ADKCNb7IvY2ErDbYOO5jCaEVqk/sesBLm7hf4UTg+uNBFzZJJIQtoCi1RN42ErRC6+7DMzpgd09cZQ==
X-Received: by 10.84.175.195 with SMTP id t61mr26580238plb.424.1505457535959;
        Thu, 14 Sep 2017 23:38:55 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id 2sm620601pfv.128.2017.09.14.23.38.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:38:55 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 6/8] staging: lustre: ldlm: fix lines over 80 characters in ldlm_pool
Date: Fri, 15 Sep 2017 12:08:21 +0530
Message-Id: <b0daea0d3ce22b0fc08b28fe517ef0722168cd08.1505456961.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <alpine.DEB.2.20.1709150814460.2287@hadrien>
 <cover.1505456960.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <cover.1505456960.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index d77bf0b..24b0b7d 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -386,7 +386,8 @@ static int ldlm_pool_recalc(struct ldlm_pool *pl)
 			      pl->pl_recalc_period;
 	if (recalc_interval_sec <= 0) {
 		/* DEBUG: should be re-removed after LU-4536 is fixed */
-		CDEBUG(D_DLMTRACE, "%s: Negative interval(%ld), too short period(%ld)\n",
+		CDEBUG(D_DLMTRACE,
+		       "%s: Negative interval(%ld), too short period(%ld)\n",
 		       pl->pl_name, (long)recalc_interval_sec,
 		       (long)pl->pl_recalc_period);
 
@@ -415,7 +416,8 @@ static int ldlm_pool_shrink(struct ldlm_pool *pl, int nr, gfp_t gfp_mask)
 			lprocfs_counter_add(pl->pl_stats,
 					    LDLM_POOL_SHRINK_FREED_STAT,
 					    cancel);
-			CDEBUG(D_DLMTRACE, "%s: request to shrink %d locks, shrunk %d\n",
+			CDEBUG(D_DLMTRACE,
+			       "%s: request to shrink %d locks, shrunk %d\n",
 			       pl->pl_name, nr, cancel);
 		}
 	}
-- 
2.7.4


