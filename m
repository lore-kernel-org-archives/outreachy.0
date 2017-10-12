X-GM-THRID: 6473410411176656896
X-Received: by 10.101.75.199 with SMTP id p7mr326155pgr.112.1507782718367;
        Wed, 11 Oct 2017 21:31:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.236.65 with SMTP id h1ls872644pln.13.gmail; Wed, 11 Oct
 2017 21:31:57 -0700 (PDT)
X-Received: by 10.159.194.23 with SMTP id x23mr279071pln.41.1507782717788;
        Wed, 11 Oct 2017 21:31:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507782717; cv=none;
        d=google.com; s=arc-20160816;
        b=lHzNqC+H9rq5si2A1r4OiF6z54R+deI1yIYgsEk9d0xsyjToGydRMAv0uCCGZpJ7eA
         CZBDzUn9L5x4lURymRS9v+f8pxd0UU2r+FJm9gT8oE+7WQz3tEdNXcklo1v0rEFxuG0G
         FPf+xoA6m00Ej44CaIzJ5Mqo5n6dpLIuV36XdGBLLHedRtCYU/l3hIyICs1Dxy/HGd+E
         oVQRkRAwOuWuJyeG2MUMJZaU70S0tDJpqFVx92jE02AgmSqW6xQgHa2iTsDMUTI7TK7p
         WOPewE44Pe5xm3HkhmtlerD/pB0cyfjEil7i2uFzQvVGAmFDIbpvuPwyH4E/aWuQ//MW
         hI7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=c3WaQ+GU5XQTMlYcTyTaX5zl+8uM0455LyWzUxwZts/3TrE+MFD35FftT1ZhBfYgKz
         gnQulgMHAwXS1fNoitNQp8s/JX5BeQp5gzclAwi5LLv7cel6ZDNEXCegytplkqMySwGU
         qwXT5AaMohZYM/xxSAtSy5V/oy9lcN1/a1YfyfrLRGmI8WBOapt5ilcfF+Odzswyn0e6
         p3Jsaw9Vne9fnTasCd4lA/n7PnhiWma93e9our+2b4etz+o6t25z3CxfC0ZroLThSbQx
         IgM5HJL6+JwA9Y8UcVhLUm0HasKiUNKsZ3USwb/zs97VG2U19DyT6qVG9lEBP3u0za4b
         CRdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P5fCn9pu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id w11si1605851pfk.4.2017.10.11.21.31.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 21:31:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P5fCn9pu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id m28so3249755pfi.11
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 21:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=P5fCn9pu8Q+8Jqu9mBrN+1gBbtXIbWFQSuU4iwaUFaNWdUzVYdTghMhepJfHBurd91
         hJhYnN4TJ3K1SO6z0FbMyYBB4LnJ9BZcsKE06V8LH06jn34YDdlcOeMdD2LzRmtG6kYD
         UfUObgYPBdnfFQFI9iTGZPmUhL42W/ILawWqVFj6JMVSdMr9w2igT7EZG98BYo9+8IDK
         r+1MWHv20YfxN/d1C4gGMhO604z3SfPHH5U9kiTplNgSKdOD2S1uTO/tEhlhdfbdZo52
         qw+8IacckFsevfOYo3k744zlt0VyxQq7nS7vW8zhK1nLb6DJG3VXC5hs+3D5EMJnZU2j
         zYNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=hROMJxK4cVTgoRNNxgLx2i4BUa82kJFBxpA6kVuSLPIL3d0y/5erRh/kzUluRLwgbn
         xQAr5eFib5+KnlHzFfx6zioRIHpl5dPfrpyrpCI6TA81q3wm2pupXAl76zjWFTcNkqVz
         3/ayhK9LFPt7lGyR4eX+ENMauvAp5ah0vb6ra+JWTzTyOO+eZitlauKQPIynkIgI7oSj
         /22VcprrT/JmoSrvHCIJ+jieo+dhw3ybDS/VGqpaHpytKqstA8Xkv9NrUUjas3hEuS+g
         u+UfM9o2j9LFHaQFO0nCPPhVf8eoB/CsE0w+6uwLw+5pFn8PV+WI3fCJJHlIL5XYPxXC
         iBKA==
X-Gm-Message-State: AMCzsaUnGPgr4W1e6+RM2NZ1tGCM0SQVH3M7vNbgrnZvtp+KQNFYuwXx
	uy1Dfl4Sb6NEViYd3mv8HuA=
X-Google-Smtp-Source: AOwi7QAgIzSfYsKGv4A13Z9Fn+GoAk3Dww23zm6e0tJWRGUjrvpJ6FVsZcD4op6aNp5+nkPPY14UpA==
X-Received: by 10.98.219.195 with SMTP id f186mr1123413pfg.69.1507782717551;
        Wed, 11 Oct 2017 21:31:57 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id m78sm1729424pfj.164.2017.10.11.21.31.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Oct 2017 21:31:57 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 05/10] staging: lustre: fid: fix line over 80 characters
Date: Thu, 12 Oct 2017 10:01:18 +0530
Message-Id: <1507782683-12754-6-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>

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


