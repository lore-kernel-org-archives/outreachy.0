X-GM-THRID: 6473410411176656896
X-Received: by 10.233.220.132 with SMTP id q126mr12985846qkf.41.1508328897661;
        Wed, 18 Oct 2017 05:14:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.189.4 with SMTP id n4ls1861582qkf.5.gmail; Wed, 18 Oct 2017
 05:14:57 -0700 (PDT)
X-Received: by 10.55.157.195 with SMTP id g186mr1339160qke.13.1508328897213;
        Wed, 18 Oct 2017 05:14:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328897; cv=none;
        d=google.com; s=arc-20160816;
        b=kalXONUlwyBtAE1UzqeCbDFkW+Rg+9Bbb7E+uW1HYWuOG6yoKTKtkM0yhn/wyxut7B
         aDTp7sjeE7ru/wczkDilL3ECSs4gw9Xq0K7f8LRdYUYbgzrrNi/p3uPsxs+x+vW2qrcH
         rCxnRJKjtUwTt4W7H7bWmQF7X1dKgQVx9HKgg+YeOLoZ3y4c6y3hBDHCDstw6qkEBM81
         5ge2b2dMY6f26FUKX64/Si388czJ0takggwX4wyXBM6ml9jlMVnxStge49dUP/CwCBEh
         XMGWrn5jAvHo/iW6DUIyj+x4c0DCN8If7jH63gNd13nX74n5K8b1RuJZoiqNvL53+xbp
         Sm/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=V+Tc6LwYg1MqTUPamd6cc9aInv0fQHEwKZSP736Rv3i61GyiP+Tie+TveJopzz21AA
         DChOsPiGKjyeNqVA5ok4VAFHGRV1Z/sMId5ANPsaGV7lZGqzC3H7eJ3E76hxg4pA6Uea
         w9fbmK9uJ19LuVVv5Xo9/YQPiMB9FOxeNzmjc6HMk8T8fEs1aUxe/HLJnHzjrRrUKRWp
         tcrzrC/3on6nMnYlZ5w0imwzXNZHsrnVSIiLcrESufGg/n/E+ZPbcM17lHwFsfSKXEzV
         HN0AORP6j4SSxcPA5WPGmtxQntrsSRoK8SbY76z2C2mXuuIm8SK3vA5n6U1/3jr373wV
         Je8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z4oFXn1I;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id e51si712746qtf.2.2017.10.18.05.14.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:14:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z4oFXn1I;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id j3so4136956pga.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=Z4oFXn1IQw91J/Gw/nQDDqGqXJkuIErVYxzzIbo77xNfSHCOGF/TxqEcKF7eeHLR/O
         dCrLCR32ns5FwZ8DDy8ztvg9Fds3yfTKN3denJDn9oKbJj3o0lv8ZM3kclliOVJ67MCq
         fh5FoKzDJxjtjPGPHhLHYWm8hvt7mCPvOiU8WuyaRNyANzhH6YUBRXOhLL2hWgqIJi7U
         qONyMhXqepJvgVF4G5SFYYTda7+e9gC4kxmdWDvaHHCwO+/2mJjtMvpmRG47bERPVx4L
         v7dBNC3/LZRKaIz0fwiYtGmFht9Q0WhrDnxlsZhJV/WNxeWkjwj3uwxsY6ZqIu6gjn+l
         9Trg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=f1ZohAs2pWHBP7GUHlK+TyW3CkiM4WR1B+T2MdbMnLncxcd5PhPz8Z0Q/OX9UehBnR
         YIS8g8Rk2G6GPOeywJ6kagVm2HmEh6HfPjgtGvLNwC9okZwt9Wqpbc7jyeMqy7gSNEE5
         PtUNZGL1kCgk2tV/2/MMpXD68Rr8ZTurI2Ld7Bc0487JEUPk9kPo2r9JBU7rhZaKFvgr
         G/9swFmjtXLgBckTEmRjeeA7zU0g1RvH0tc3h0fTlJ5h7/UAPEDceF8OXi4VFLZ0GF27
         Ddr9fodoEOPwmPzFi2cHq2Buu4MIxJkVJvfeblzdxJPry8xNqyoHYMO8NIczzkeluf56
         Ca4A==
X-Gm-Message-State: AMCzsaUXQT9XdsSxyjpbfnnlWvzV+5FXio/5km78qecUzNydlvvK2xZH
	h8gj23pVbUFIenuo7KixD5c=
X-Google-Smtp-Source: AOwi7QBMBQ4VCrhWPbR8B79MJoqoOaf++aChYc1u07K74L13dwarFuLrrWH4W/5SzOjNyYQtRvMcNg==
X-Received: by 10.99.2.214 with SMTP id 205mr13378866pgc.375.1508328896898;
        Wed, 18 Oct 2017 05:14:56 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id 74sm26708009pft.184.2017.10.18.05.14.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:14:56 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 05/10] staging: lustre: fid: fix line over 80 characters
Date: Wed, 18 Oct 2017 17:44:25 +0530
Message-Id: <1508328870-9416-6-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>

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


