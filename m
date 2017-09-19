X-GM-THRID: 6467514574021066752
X-Received: by 10.31.95.22 with SMTP id t22mr896710vkb.85.1505835615266;
        Tue, 19 Sep 2017 08:40:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.82.22 with SMTP id d22ls2637219itb.6.gmail; Tue, 19 Sep
 2017 08:40:14 -0700 (PDT)
X-Received: by 10.13.214.69 with SMTP id y66mr992875ywd.119.1505835614629;
        Tue, 19 Sep 2017 08:40:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835614; cv=none;
        d=google.com; s=arc-20160816;
        b=n7JBYx8TwAw6OlULChnwWnSDH5a7GUDhIyOHbB1MAU/lsW8Q3NakjRVcvYvVmLan1G
         D1SsyFwVGpkt4YJ4opc1/ea9++4O/BJhymfon2v+Lc4ImML3Yuxpqdd2ny23/m3dEoHB
         ao477AekpdRs5+bxgF/F076CimXqMH/H0OMDtwvGT5kC0UzWpiQaDATC0w60i4sI9p1K
         XM2dIdsFMRs3uUQoIqOF409OERBicAYxpfJeHVP6nTAihlWTT6n7nVHaqlfM1WtGJS2X
         WsGBDWfgMdlU49rTEeltVTZsVjRRwxHDG5kZABSQKcyILn33D8iQdHel1NXuEoG43qH+
         LGTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=UkNkbjCjjGjqy6AVYiIYk6WVCo/K/ViZtBiA09j8CfuS6MbvM8fvN4Wmdf0x7y2/5q
         XUeRmQelMK9bHpHxoJCqPqGNZhaX+kUIo2E4T4OIy93JUjPOiLcVejWmX/ZFSYsHITQF
         n8oYH5lfqdq8NXUuRyxi8EQOM1dPq2jZZX8Ptxmd4Jilp0pPNGdA92zCoRsIKw0aX8NH
         HKwfO2IMc7+MaexOmSMc8FOwv3ECUeBgMhFkxmp/8zDFSjaX+ZpEiyB+/uPhw4v6fuF1
         g/0UpXp2tWyGdp4edGQ0nT12RF2vlmANjn1XqJJE3F8kg7wXweb/lMAMep6t8I1kN/HX
         rSiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vY4EE0/m;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 88si253002pfm.20.2017.09.19.08.40.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:40:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vY4EE0/m;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u18so10079pgo.1
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=vY4EE0/moblI++f89xMtaCDsjssPMg5ArKt0pa4EezAHTRu+T7LvbWHrTxqt1u7SJ0
         UIO+u/7tp3bfi2Il3psklRxC5pTVou5ATt3faQuRQMkRHYiZa0VoY0zwujd8/DdL1I5w
         WyztXQ3zX67h8JVfgTrs5JfWV2lx0CgMaXJrotL4hBwJnGe9Ud5Txm95JREa5HObU//2
         OkwlQpmPZhPy8IfbRLkKY2zezP+7ru0RDFU5CMgsAVBIO88uF/j4g/YyCQCastzazXzs
         gCyrFELdbBAroksK0E6R2QmCjGRQsDHCfgqhJsAALt9MOBvuyPOFbSh/K+Ymk0h6XTN5
         tIAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=j8OeFzriRGUbIvWwfSrpvC0255EH6pOUVvrarKrgrXut8qRuJqHExoOglnofDgf7JF
         etgYBsllxcOc+IYfjdPe+XMsxBfszJw207G3+LR25BVJXLr1mX0iKkfBg5rXygIMj2U9
         Re/Vf8NNbLVuRKcONRQ3JvtppLy4908wGgtvZb21kr7e31R6q+CE+fUPbf7AdqZ1ohWh
         JaTJ/k2gJiergokLDkChSkxpoNvytAebhdfZMRBBNTQXG8zIZBESsUI9PSSfWWDhiZll
         bVYrxGuO/TV5vDBgfMt5Bah+MUfeFpGncJS8AUth0AH7KdiRUOrJmRdjiJOvPBSD/Ols
         x3Ag==
X-Gm-Message-State: AHPjjUh/mRK3s0wOyZFwuBNx9z9LCKDzexnP7TzPCmTpYE/CZvLt+z7x
	YJQK+31CyP1H9ObZjb8PAjI=
X-Google-Smtp-Source: AOwi7QBnUGHmCom35DkFR5qvT9mSfkgtsdlOl7RNzLH8PAsnCuz1QP2I6raGrzojDFoPi6gH7160rQ==
X-Received: by 10.98.166.136 with SMTP id r8mr1701517pfl.228.1505835614330;
        Tue, 19 Sep 2017 08:40:14 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([2405:204:300f:5ad2:74dd:e91f:361a:e01e])
        by smtp.gmail.com with ESMTPSA id h10sm5932997pgn.73.2017.09.19.08.40.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 08:40:13 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 06/12] staging: lustre: fid: fix line over 80 characters
Date: Tue, 19 Sep 2017 21:09:18 +0530
Message-Id: <ebdd809d73af985e35116e45745ae25e0ece3108.1505834825.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>

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


