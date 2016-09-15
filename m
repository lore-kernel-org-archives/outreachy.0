X-GM-THRID: 6330466800696819712
X-Received: by 10.66.120.143 with SMTP id lc15mr5393013pab.2.1473926698091;
        Thu, 15 Sep 2016 01:04:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.72 with SMTP id p8ls2674625otd.48.gmail; Thu, 15 Sep
 2016 01:04:57 -0700 (PDT)
X-Received: by 10.129.73.139 with SMTP id w133mr5219684ywa.28.1473926697759;
        Thu, 15 Sep 2016 01:04:57 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z4si718519pam.0.2016.09.15.01.04.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:04:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so1913538pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 01:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=h+V8McJGaTH3g02TsR6ZuuCKE0VVLSKuJHqnX7+AttM=;
        b=EhQPeyMJQCzJ5yGdWtAPzxyjKIeJgAq8zh91/8j2CTBJgrt6Y+vKSRoRwiX8OXS9Yd
         /a35q/kLevPPL/KUPRTxImyfTzLRx+TJbKXQQORGr3B9tAQHUnwnJm1aIqQL5Qz1NgJx
         Pks/ITQKFlRn3rKznZNIGkX5hGlNQFoB4pSVCSOZokcuS8CCdOwTbqTYyZaPWIWw7824
         mg1UkUTJNAOQ57T0vEYfkN7DdTSwkaDW6+ECkBwxzn+qRV0BDYE069mClE81mNt/61th
         uUbSrSS8R/0sg06s1fj3EiywtN5r8JUHyk6zx0KSOM5if6GnXmlDDELnDB2VlYjNNV4V
         /BHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=h+V8McJGaTH3g02TsR6ZuuCKE0VVLSKuJHqnX7+AttM=;
        b=NipClD9ceY9CYHjxI0ptYOsS8cLNr5baxqpu3XreVA8gd9JNhUixLZnDUTsJlRdPze
         k/FxzYTcukDEGImIqeyg0M8hV6FN3l+yyx86gWAVaoCivY1oWFHDnxD5eDJIT5+G+1rD
         /ugHdKBctqajFDmRuRFGID3H6wOK7UxB5Q1XAfIja/FnWXR6py4QM9pyM5tt7q2zNZFw
         cAFuxZOCxAImdgFg//HsXza7rglGCIsMXWgbB6PmM9/7mk46Wf4SI0teYpPh0t7vpOs8
         IUv4BZe1Gkc8shh2WRy9eD5GNCu2ZQ6eWbecF94GkZtfKRF9286ikaLfZE4dZT613WTU
         695Q==
X-Gm-Message-State: AE9vXwNViRL4u7KzD4aQeWKs/3fGYW1duA1U5FNuRyar8ZNmPAoM9xhXJmEOsVUJxxGqWA==
X-Received: by 10.98.134.201 with SMTP id x192mr2883810pfd.21.1473926697441;
        Thu, 15 Sep 2016 01:04:57 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tw2sm2925253pac.41.2016.09.15.01.04.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:04:57 -0700 (PDT)
Date: Thu, 15 Sep 2016 13:34:48 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/6] staging: lustre: Add space b/w concatenated strings
Message-ID: <5f0049b66e2bf80634cf510e090e6b577302cedb.1473923837.git.aquannie@gmail.com>
References: <cover.1473923837.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473923837.git.aquannie@gmail.com>
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


