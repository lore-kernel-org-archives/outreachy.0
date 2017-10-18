X-GM-THRID: 6473410411176656896
X-Received: by 10.101.82.69 with SMTP id q5mr338203pgp.44.1508328902620;
        Wed, 18 Oct 2017 05:15:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.62.137 with SMTP id l131ls1010852pga.32.gmail; Wed, 18 Oct
 2017 05:15:01 -0700 (PDT)
X-Received: by 10.84.244.194 with SMTP id f2mr4121992plt.10.1508328901543;
        Wed, 18 Oct 2017 05:15:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328901; cv=none;
        d=google.com; s=arc-20160816;
        b=nbzLGT6lYahDAkYB6qauWiJ69AszTAqLgsCZVBA8sRauufXh+Mob1BRIUknSWtJHzo
         FYigIPx2FPq88WdWg6GGoCNwzzceg9igffQUwCPs6fn3FkgoV3bGyWgC+UfC4c8vqilt
         74wV1ZNVJW1uxKTeRvCPGcPfbyPGamGI5k1RQuebYKx8AVKD3ExnsVpS/7iawudVrMdE
         32QVu0Z2fVe7Lq7SZeIDF93AqJwNgEoFfSZ+kLw/zUYfPUBFzwjtNBcK+O9zNl0BcE+6
         vJc4gdn0+MlerIUDa6ChdaDGpzlFt3KMc/AuUDcl0GXDHNA3W+2QpM1zXEfy+DkhGHgK
         Qvkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=L/R0apy7rCZKUCXxH0mHfk9tjDuCOs7ePcpuEzrEQMvhncPzjDRaYI3SZKNYAdK4ru
         QUGlUBfPaEb9mZP4kxLudWjpa+86FqeDDekBvc8CnjNCUZuKNb6Z/d+sep2h1JzSyu9T
         lh422iWedWAMNjmuBCL8uwyc8mqVL2OcoqZyFGtDv+EVWTBny2fVW/kr3w889eoqFo+/
         ooahfKRQ73jKlGSp7YH1vTWdVag3LWipy1XgMb8zfmRD0I+vS5QNJtF+YvBSLsXStyHh
         aW/3gspWerpinazsNYflZ1tP7kIJWm+oO4QEgUseU/AaniM95OBzLTqn588wo3lKwwq9
         x2eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sQG9iX15;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z123si541271pgz.5.2017.10.18.05.15.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sQG9iX15;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z11so3833467pfk.4
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=sQG9iX15q9+Yixe9P0V8Za1QqVjUfXFsUkmtqdPzCUD3uJG3kOccdIybOME/EgPr+k
         X+L3CTDL9p7kNHJJ76IMoed3JyU6Vc7Ei/pmBTjXdv6kdqaM4hjdBVbo3dkkvq4Ku5zN
         fYcRq4mVwAmmPp3H5Z0uAfhPhDA+Z+CpbAXWkxWihLoMqncYzY0jH4yLk2qAaQ6WFRnR
         xlaqJVw+Mq+h7gwXNh/pyt5Eps9MPldcszrd9PQgGw+gucRWhqr5hoxwIzu0C4yHY9ip
         LIiiUY+thoFuqZh15cxk7R3z4GNp/GuNt5oedn8PDy2tICH4Gbx0NBl6yJqoIJ44OMye
         dT8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=IMnhvb4pQUwKMXvBdgC2iqdG2+6Ink2gDb59GWVbbDrIAl/pD2j6YA2OF9NFfRjU1Y
         xfrVC6sCi9tNqrRnos5USH+p0afnuIQW0KhBLO/RBFsRkBWLKDJ/trSYaQ+3daZCkWqp
         8foUjOyxwY0J5JgnQfyKUkjdBLq/+a9JXNkuXrL+vmRX9AS2RINUzoDVLMOJbh/TsVvN
         fqY5CHgx+rQbq3jR16TEKJEfnRG4jPzwEgcsZtS2VslDNll0D8CdKpzC8sOMgdauAYSH
         iSJ7qj/eGOCwLCfvUBRyuxk+OtXSf9MfZfEo7+DJCscww99uRZuIUBclXSf1H8fc8Nil
         DQKg==
X-Gm-Message-State: AMCzsaXShpEPoCNJjhnZDWy9OlF7aJNWVOrlDP8i7hfVAwJAe50foD6l
	ZZhJXcyLV+P19ScDfGrQveA=
X-Google-Smtp-Source: AOwi7QBUZxZ+klHJuSHqYheb1EQ4qdnzpDHbUEFdpc8/A4NMcat/CEUNvqd+r5oZYSuY1sveqsDUwg==
X-Received: by 10.98.64.207 with SMTP id f76mr14495133pfd.279.1508328901298;
        Wed, 18 Oct 2017 05:15:01 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id f12sm22868400pga.7.2017.10.18.05.15.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:15:00 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 06/10] staging: lustre: fld: fix line over 80 characters
Date: Wed, 18 Oct 2017 17:44:26 +0530
Message-Id: <1508328870-9416-7-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>

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


