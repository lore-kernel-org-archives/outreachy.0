X-GM-THRID: 6330466800696819712
X-Received: by 10.129.165.14 with SMTP id c14mr6247286ywh.48.1473943841028;
        Thu, 15 Sep 2016 05:50:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls3403348otc.12.gmail; Thu, 15 Sep
 2016 05:50:40 -0700 (PDT)
X-Received: by 10.157.48.17 with SMTP id d17mr551574otc.20.1473943840615;
        Thu, 15 Sep 2016 05:50:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si2634487pfe.0.2016.09.15.05.50.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:50:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id vz6so2117732pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=h+V8McJGaTH3g02TsR6ZuuCKE0VVLSKuJHqnX7+AttM=;
        b=jwKHA4tka81zH2TEI9FYg/I4Mbj9bjzX6R1MyLHolxdTwKdY7+zo9Dicg7nBnfwFx6
         M9rHvfk8JEGKkfRsgOZCB1NFKOMmtEV6ly65O3jjv8DzB/sIr12MNtgqZeeRR1rUAt6t
         iDV4EiPSnnUHk0vtWwAAyI3zGy8LvNx9t/FiNThduficd+/FdiX8iEjRsYenNvypx1E1
         ViQjuuqlQo4vkcuvo1V/BVt2ktf1ds3QjVhx4nz7+9IukDc9iSp7mU2+vPCha4XYUDAa
         kKzKEwRYo87ccyj4EQp0GQjncmJnIvSVHU9p2VZpVVrE/fwvWajR29zZcIEU/dI6pcXL
         Hl9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=h+V8McJGaTH3g02TsR6ZuuCKE0VVLSKuJHqnX7+AttM=;
        b=I3b1HcwpiZGMa7x2j0kThJkf6BTYCRKEwgt/ZANxSzQhsBzv4Qg/9Lpl+kNTgjubVq
         4yHSbbR7DifT4+MwTAKgqq7mPcYCRrWbIspNmiBhyLsD49R3AZZ3/VBQjQv2+XwLIIns
         pPqEG7piimPvkzUoHeQ6xB9hQiT++Od8W7Pkn8dHL/aoZntH8pzoowsYHIWE/NWRvXL2
         w9Ybx1iKLJIz7IvSEOD0VkaFXWFOZTGaumJ0zGHH3lGCh3cWAVEgAmANyyOfJPrUH+4n
         Gvmw2WfhXo/DxI1VLEqG51nTSxkDU/guiA+RP/64PnagtQMz8Jhrn4B6DXPUNiBA2Lx1
         LAsA==
X-Gm-Message-State: AE9vXwPKxXE8vVgP7jHVqKrQLrp3KggcrPd0OIhuJkW//7n9ZBUVlmIYWCOMJ5vHv/HKdg==
X-Received: by 10.66.144.227 with SMTP id sp3mr14233587pab.131.1473943840284;
        Thu, 15 Sep 2016 05:50:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id cp11sm5147994pac.28.2016.09.15.05.50.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:50:39 -0700 (PDT)
Date: Thu, 15 Sep 2016 18:20:31 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/6] staging: lustre: Add space b/w concatenated strings
Message-ID: <5f0049b66e2bf80634cf510e090e6b577302cedb.1473942874.git.aquannie@gmail.com>
References: <cover.1473942874.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473942874.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch.pl warning:
CHECK: Concatenated strings should use spaces between elements

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lustre/fid/fid_request.c | 8 ++++----
 drivers/staging/lustre/lustre/fid/lproc_fid.c   | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
index 454744d..edd72b9 100644
--- a/drivers/staging/lustre/lustre/fid/fid_request.c
+++ b/drivers/staging/lustre/lustre/fid/fid_request.c
@@ -125,19 +125,19 @@ static int seq_client_rpc(struct lu_client_seq *seq,
 
 	if (!range_is_sane(output)) {
 		CERROR("%s: Invalid range received from server: "
-		       DRANGE"\n", seq->lcs_name, PRANGE(output));
+		       DRANGE "\n", seq->lcs_name, PRANGE(output));
 		rc = -EINVAL;
 		goto out_req;
 	}
 
 	if (range_is_exhausted(output)) {
 		CERROR("%s: Range received from server is exhausted: "
-		       DRANGE"]\n", seq->lcs_name, PRANGE(output));
+		       DRANGE "]\n", seq->lcs_name, PRANGE(output));
 		rc = -EINVAL;
 		goto out_req;
 	}
 
-	CDEBUG_LIMIT(debug_mask, "%s: Allocated %s-sequence "DRANGE"]\n",
+	CDEBUG_LIMIT(debug_mask, "%s: Allocated %s-sequence " DRANGE "]\n",
 		     seq->lcs_name, opcname, PRANGE(output));
 
 out_req:
@@ -179,7 +179,7 @@ static int seq_client_alloc_seq(const struct lu_env *env,
 			       seq->lcs_name, rc);
 			return rc;
 		}
-		CDEBUG(D_INFO, "%s: New range - "DRANGE"\n",
+		CDEBUG(D_INFO, "%s: New range - " DRANGE "\n",
 		       seq->lcs_name, PRANGE(&seq->lcs_space));
 	} else {
 		rc = 0;
diff --git a/drivers/staging/lustre/lustre/fid/lproc_fid.c b/drivers/staging/lustre/lustre/fid/lproc_fid.c
index 81b7ca9..3ed32d7 100644
--- a/drivers/staging/lustre/lustre/fid/lproc_fid.c
+++ b/drivers/staging/lustre/lustre/fid/lproc_fid.c
@@ -105,7 +105,7 @@ ldebugfs_fid_space_seq_write(struct file *file,
 	rc = ldebugfs_fid_write_common(buffer, count, &seq->lcs_space);
 
 	if (rc == 0) {
-		CDEBUG(D_INFO, "%s: Space: "DRANGE"\n",
+		CDEBUG(D_INFO, "%s: Space: " DRANGE "\n",
 		       seq->lcs_name, PRANGE(&seq->lcs_space));
 	}
 
-- 
2.7.4


