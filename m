X-GM-THRID: 6466329510613614592
X-Received: by 10.99.60.17 with SMTP id j17mr16883650pga.27.1505559714157;
        Sat, 16 Sep 2017 04:01:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.97.15 with SMTP id v15ls829366iob.5.gmail; Sat, 16 Sep
 2017 04:01:53 -0700 (PDT)
X-Received: by 10.36.163.4 with SMTP id p4mr3760576ite.40.1505559713682;
        Sat, 16 Sep 2017 04:01:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559713; cv=none;
        d=google.com; s=arc-20160816;
        b=YMDpha6EL8F74fTadSXt8OlNiFjoEvU5GfnSFLxbFMp4il8EfWuIUI/kdxdeUZuQ6m
         nIG5B3jaLTAdysH1z+bxRivhi/sVbbv/kZp1c7mb7w85zQ70tNVWv5ZU80nmptauWk/d
         MG2c2JJjgTgr/JqyEHvv2fjdAG2LVi98rhnF9rPAZJ+SupDicP9DjRVKpns+pS4Tb/4x
         IvnB1Fw6Wh2BRhG0KqgOMYTDXTHp2FxCCsh+2biTYdc9O5XU9CESapddoOGD3iVkq2Au
         8R0U1rEX6EbrcKSUHEJQCpOVqrF00hik2HwI5eBB2f0pQ1ODGe+dz4UeNcIrlSE7Dwil
         a3xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=xyAqgotG5UqRsUMww9wSVuLAKbGIH8577p4ieaU/KZI=;
        b=qYEz1uYXZgqCwPTVM2E3lUUBEVuKnW7I0OiuYHBx3N4xIQLgDXxfDnGiU87Vnicrhe
         9OGJQXCbIvArjThkSuBxj/iG40MSaumRkH/VanFsExx7katMOykZlJkqPAY5eFHmJnMf
         Qb1b7M85qPHppqnD/nYbMJj+mOVjSEuF7B6R4Nix30rHysHtFifO1+cVvnileKYyIYU8
         8/i2kJwkFWH8Iylt2HQJzW7P2rvvjnpXEL5tGrIyXxcBHutK8NkKcjRgf/rSebIHlLng
         8T1zaUskrEoZmVSPhLpTz9ypRuG9/a5WAb85YrOupJDY4ZsnV1Lq1hJAUFV/YYTBDnJZ
         oPzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YOfriKLp;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id e63si270785pfm.12.2017.09.16.04.01.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YOfriKLp;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id m30so2620076pgn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xyAqgotG5UqRsUMww9wSVuLAKbGIH8577p4ieaU/KZI=;
        b=YOfriKLp37Aq3EfgC+b/BYIjxX8aljysNjpOBngWd+QOp14CXVCtYVBj7EEDULET7d
         IYICcASD6AJ0ENnmFRMBWWJ8p6hlRPxDmBJzqRl5LPVLVkOOiCb4pEAFvpSEbQyHujd9
         1NEq6aufwpB5Va4bpZZ+iTS4MdwBvgovLyPr6lgRiI0xBymbI+HlXxETacWfh2WVuJuh
         lvF+X/6n4fUVbiWagkCGsay92z9TfzGJ8KGg/fCCdNKx+U6CxgYVSCHCCEznVWekjRd2
         h0SYTTmy95zsGd0IW6BKNkSZzifr3yGvZBetvgUX9Kn0OEvPnBOzecinS4qExUVkXLAQ
         deQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xyAqgotG5UqRsUMww9wSVuLAKbGIH8577p4ieaU/KZI=;
        b=WI1jJ/pWgkldFkfKejqksWi22NmfpJzfy9wuKNMShTryTRVe8plXzbu62/OYJa1+tV
         K6a3Nd5D1smD6X3A8Dtlx9tyfXiyzL/DwRhlyA6g99lPVSw0aXZDj+jq1EuphPpHVzGA
         qww30sEhGkBLrJjW8M7kDj3AMVgb0rHeaOq68DPFuViB7MiodzplABaxPepf4nFVk61H
         IQnU78fQNpz173F/nqPzkoBNt5ZCBBQpDp8m2tLjaGsXCiQ6B1dzE600OjB98JGOFXCX
         CuOBZC1DNdSCHISzwnAh/6izK8xSy5tzKT1P60dMECHNtG9aqBy95aDRykbFsUcuHcye
         b+Qg==
X-Gm-Message-State: AHPjjUghGRz4iLfqjyk5aOhiGpWmjzJHOP2AWdDfVi4ipi9T1CDWCXf0
	gpLuZhfq5HG1eQ==
X-Google-Smtp-Source: ADKCNb5DvOH8HQVfCt8RPwJyoVV4mEOItCbi+xKuZuqQHdHrLRyItl8SstFDv+HYjpDd44P6mi1S2A==
X-Received: by 10.99.114.19 with SMTP id n19mr26203176pgc.174.1505559713411;
        Sat, 16 Sep 2017 04:01:53 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id c30sm5951510pgn.33.2017.09.16.04.01.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:53 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 11/11] staging: rtl819u: move '{' to next line
Date: Sat, 16 Sep 2017 16:30:54 +0530
Message-Id: <55f91d336be5a01e84c2d4d9fedb205d4768448b.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

Fixes checkpatch.pl error:
ERROR: open brace '{' following function declarations go on the next line

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 816c496..3f43441 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -2423,7 +2423,8 @@ static inline int ieee80211_get_scans(struct ieee80211_device *ieee)
 	return ieee->scans;
 }
 
-static inline const char *escape_essid(const char *essid, u8 essid_len) {
+static inline const char *escape_essid(const char *essid, u8 essid_len)
+{
 	static char escaped[IW_ESSID_MAX_SIZE * 2 + 1];
 
 	if (ieee80211_is_empty_essid(essid, essid_len)) {
-- 
2.7.4


