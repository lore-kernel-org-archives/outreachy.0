X-GM-THRID: 6528628385749401600
X-Received: by 10.28.213.144 with SMTP id m138mr716348wmg.19.1520154608708;
        Sun, 04 Mar 2018 01:10:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.69 with SMTP id r66ls946979wmf.10.gmail; Sun, 04 Mar
 2018 01:10:07 -0800 (PST)
X-Google-Smtp-Source: AG47ELt7uuTjt6/1dbBjW7wLIWQob/unaP+InMXV1gI/p+tbLfzlvSXwCPDyxTT9B/+8AH92wEQl
X-Received: by 10.28.87.5 with SMTP id l5mr707442wmb.23.1520154607831;
        Sun, 04 Mar 2018 01:10:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520154607; cv=none;
        d=google.com; s=arc-20160816;
        b=u9stZT7V0u+b0vZ+Uylr0nG8OAQWKSsxcj4hV/Ep/p4bCT2c4D+SYwhhoY8jWLeLvd
         9s7hA01uLXsSTnHRQhe6WDKo4QgrlXcSZkVT+WV0jiTqeB5gs2r3qrSYT03otXqr0TzA
         BPVDd53b0LP14GdW3qZl4JfZfA/+QiAQezSgaBfbSPA35CfdXW+HSAVhw3IdJ5kxviFl
         V44LrSaLzXCcrL1bAO1nWXJrCHXNnVt/e+tCD3MmTSpEr1P/hXAGR+Ll6UXJrEzIhvAu
         rwAnlBMqiCTSyjFsHN375oFI7tL/2LNJFok2Ei7hUQ79XZEaIC5RvyvB4EF80yFl7OLg
         ukvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=gWrh6ZFQj3mtaYDJpi2nTVMZ5AAdrnlPfBya6/pg6M8=;
        b=B6NHn0JQj8fWCQWq6b4dm0NCjKPJX1fU+Wj4zRNJ5h8JcGDhxklzfCEjm/bscE+9Jm
         1flHmRGE8GnXsglHqWvD14ZJu46g+kcr/1Ah6QJ6FUy2Qc9+0IpacBw6V7Xi4/SULGgF
         GMesDcZ4Y1s3tGkgS+6DPk+y4gr5QjFIPLo7dk6HIrABsbNHC2zoIMdBDttGYglL7Wu2
         I6zZstkMQiKyrc6Fb2wY2KBKNnEAkhCsd5GeSCF+2KjBj87uQ4D1uJ05HiukxToNthU6
         XNx5ILX2QCKm9f0+6JeuM+1qr7Q0b1S6GCbSGKQAkCWH3DlT08FpBOD0Kdqtu3BP91sb
         z91w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CkjUZqEo;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id m29si389928wrb.1.2018.03.04.01.10.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 01:10:07 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CkjUZqEo;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id f14so14179986wre.8
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 01:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=gWrh6ZFQj3mtaYDJpi2nTVMZ5AAdrnlPfBya6/pg6M8=;
        b=CkjUZqEowXDaJLBGUFl4lRkQ7evG6E2mUoS8M8jZITCEx3nFMUBfL5NZPuDC2LQYVL
         ceTgRBJIkYL0Yl/SOjuObKx6BP4HkRFj4gYJT3LzgSaTCyvmQwtSf+68oPSXQLZixqAN
         gbgHzJUg3DHvmV2sX/ZvnSIsGS9bFS4+/HsheFtujqfxdmXLjw26PAtFwmlDl/4oIY5l
         SrKnEpoAUgh7wDa2npZQFRdLyAVtAI/UqrPiWhq+l6wYcwDmdgqVIakc/afhlo4uV3tc
         10c3Y7KWr0jDxSjsJcflVripvwODLJfHZWAgA1t41zAHdr3QnHyGZWcqpgF8xLKn3ZFP
         jw8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=gWrh6ZFQj3mtaYDJpi2nTVMZ5AAdrnlPfBya6/pg6M8=;
        b=qrgaa1Elo7PxlFP5xWEsRzXXbotyOe2xSlCOI8QiDFI0RLL26u62C0TNC0DDeViAAs
         UFt5TUgFQX/RJRjoXNpVoo6YprfkGv0F+IhLl/qSszCtkAMhXqe7W/pRAULGLVFkw58S
         dh0Z3zxmhrPwyviVNU+CQzxcMjIPyjYMGMLqceE3aY3dYUWHVTTrD628MoAHofsHUt2W
         9SonWmJ7pI2cwE4msJirbi85EqJCzcHYuDCge+xS0GN65Vi6g59iJsYRR3YzQBxWEV3a
         8O3sc3/hvRH4JLd3DRbyfvoug/DnLdO6y3IIYe3i+XILGwwxmZsOpLgpw0fuTTa20TLA
         Iqag==
X-Gm-Message-State: APf1xPAeqbXQMYvNa8IgR8NwBy70x+qQUxZJLr+3hxlKY2mydLbfnYwu
	L4BOOEhys8BXgwUCpf3KFOZVhaFT
X-Received: by 10.223.154.49 with SMTP id z46mr9291942wrb.143.1520154607518;
        Sun, 04 Mar 2018 01:10:07 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id y1sm7871635wrh.80.2018.03.04.01.10.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 01:10:06 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: lustre: obdclass: Replace 'unsigned' with 'unsigned int'
Date: Sun,  4 Mar 2018 11:09:05 +0200
Message-Id: <76de6d44a032085f9f62e40ef83ddd44fc301fcf.1520153895.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1520153895.git.dafna3@gmail.com>
References: <cover.1520153895.git.dafna3@gmail.com>
In-Reply-To: <cover.1520153895.git.dafna3@gmail.com>
References: <cover.1520153895.git.dafna3@gmail.com>

Replace 'unsigned' with 'unsigned int' to improve readability.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 2 +-
 drivers/staging/lustre/lustre/obdclass/lu_object.c      | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 64cc746..2ed3505 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -1467,7 +1467,7 @@ int lprocfs_write_frac_u64_helper(const char __user *buffer,
 {
 	char kernbuf[22], *end, *pbuf;
 	__u64 whole, frac = 0, units;
-	unsigned frac_d = 1;
+	unsigned int frac_d = 1;
 	int sign = 1;
 
 	if (count > (sizeof(kernbuf) - 1))
diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
index cca6881..964e854 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
@@ -1797,10 +1797,10 @@ int lu_env_refill(struct lu_env *env)
 EXPORT_SYMBOL(lu_env_refill);
 
 struct lu_site_stats {
-	unsigned	lss_populated;
-	unsigned	lss_max_search;
-	unsigned	lss_total;
-	unsigned	lss_busy;
+	unsigned int	lss_populated;
+	unsigned int	lss_max_search;
+	unsigned int	lss_total;
+	unsigned int	lss_busy;
 };
 
 static void lu_site_stats_get(struct cfs_hash *hs,
-- 
2.7.4


