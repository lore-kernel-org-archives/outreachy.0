X-GM-THRID: 6473410411176656896
X-Received: by 10.31.52.22 with SMTP id b22mr9095648vka.119.1508352607049;
        Wed, 18 Oct 2017 11:50:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.168.147 with SMTP id r141ls1103419vke.8.gmail; Wed, 18 Oct
 2017 11:50:06 -0700 (PDT)
X-Received: by 10.176.5.35 with SMTP id 32mr9269651uax.14.1508352606201;
        Wed, 18 Oct 2017 11:50:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352606; cv=none;
        d=google.com; s=arc-20160816;
        b=K6g3xmD47LkHoVlUtGCwSvo1OlEKjRQZypnBklCQFlXdcjBtreIeALsELQQYdsezGK
         drn8Ykz8a6S8PIoWihZGJEqkqHQKzWa8yPh3u+aUrbrFAxjBJgzT6p98nnVKlUsHFH3Q
         hRwBx/O2y4HepLk2xV380EGLPCVYrw5+P3TyCk48TOtJmdcMtDg27mPxQwIqxlzaO5ez
         vP2hOK9VWoS9xMmmO3CpUeK1nD5ywCDLuzq2/4M9bBo3oCZYeF3kV5FI9h+oVFCQluHi
         hGm+zKWP03UNJEkmmgHcWI7aGM4hXwvddV/Pgmklp0qCQ05O9vpz5u6XAW0EcVyW9pnf
         /ong==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=H4b6ieo4L/9RrMK/M1hSBDxGTk9OrLdhLK6j9Eq7K219Kc/LaMxDZ4D8idTXJyD885
         lGGrASxIDqNE3+JqJa0Vf5/4myDW3EZk74KCwcpHQgdASCX9lTaVI659YTtSccLCa854
         2etSvpvVVzZk84j8mloHGrcDdc0UfDONwWbGa5bP3jKDY8MZcw0KbZm6XxBGPF+Agk4l
         m7c/CcgMmXUfOejKNTTUMMJAiy6ni00egfXdYDP6YdZZmLbdvvABDfILPHV5FMDvLY0j
         m4vB/uxzsvP9g3NVfYmSpYbAZTlYwzqo7jZrjE8v5R2mg6pxZXzHrJs+nmeizH3Hb+5n
         n+YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i87h+npy;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id q7si739002vkh.5.2017.10.18.11.50.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i87h+npy;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e64so4596758pfk.9
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=i87h+npyM0BbxK0w8tezDeB0q0zIuDarEC2KzPXTiX0AUPP16A3KZfoecAX2u2FG8E
         f1hmqzVlTML8Ycgt6ErtX3TV38lnMwdyvu2a1GySK8WANBUXOUCNLka586eVf+xCNCGR
         BDPVigSHxl9I9iKfDOEsYVMJTe888jI3IUB6U+t/Bov5BhCn+C8yen2SZ3BmQldrrxJi
         FE948ZuDEZldgI53MuzWFAW0+Lh9NQGo9CumjhdhZDgTwwqcicCx7pHE69llaqepgD0z
         9NrX9LG3eS8BwLsjsQHBjhsW/O1Nj8w1FG8JU77VbFlbAuZXUDQKetC2kpTenBn8PZgq
         WFUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=mtIkBI/gZUAVtAMSDcwdynPm67VdDdwo0dk0Fxg9NR9Uh3/7eZCj37/AM7SfZ4mX/1
         KKZMbvErQBJsPnTHXHutHebhjAmblHF4JGJgsUC6dkdUBS3cjaacYpnJIYqGI/ADJvct
         8yckiBvhKeMtpgoeTfy7vCnwQJGjoYd6w/TSIbiOXnMl7Dd+wt+Z+GdmldL/8QsxcKsG
         z4pKlzTOZLJaDe12QH3x1d6vssSShbgg+h8SJ2av/tf483/OM2ixOTrR6erBQTSo693H
         uLaw5hJ9eXMA3rojYW7rflzYwCuzPvksMldphCSivBWIGQd3dTzfcDyAw1KqQzv5gRUT
         nbJg==
X-Gm-Message-State: AMCzsaVbXRZyKbxY2BqK/Lvyzzwxpd8HswHNwRn9RltoD6dExZDWQUJ7
	vKBvN2FVQ/ilVbcAFKsNO98=
X-Google-Smtp-Source: ABhQp+SHoc7i1oG9X9VkCqkHEuuloNacy2ihdXY7D7xSPTn+9bz/ZwNG+RtmEI4OOQu9bJ+Rs/ihnQ==
X-Received: by 10.84.128.72 with SMTP id 66mr6436207pla.119.1508352605180;
        Wed, 18 Oct 2017 11:50:05 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id h1sm20196580pgp.37.2017.10.18.11.50.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:50:04 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v4 2/7] staging: lustre: fid: fix line over 80 characters
Date: Thu, 19 Oct 2017 00:19:41 +0530
Message-Id: <1508352586-25475-3-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/fid/fid_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
index ba73623..6a98225 100644
--- a/drivers/staging/lustre/lustre/fid/fid_request.c
+++ b/drivers/staging/lustre/lustre/fid/fid_request.c
@@ -279,7 +279,8 @@ int seq_client_alloc_fid(const struct lu_env *env,
 	*fid = seq->lcs_fid;
 	mutex_unlock(&seq->lcs_mutex);
 
-	CDEBUG(D_INFO, "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
+	CDEBUG(D_INFO,
+	       "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
 	return rc;
 }
 EXPORT_SYMBOL(seq_client_alloc_fid);
-- 
2.7.4


