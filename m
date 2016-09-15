X-GM-THRID: 6330624598541860864
X-Received: by 10.200.37.20 with SMTP id 20mr7718167qtm.17.1473967381132;
        Thu, 15 Sep 2016 12:23:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.201 with SMTP id p70ls1315124ioi.2.gmail; Thu, 15 Sep
 2016 12:23:00 -0700 (PDT)
X-Received: by 10.66.226.10 with SMTP id ro10mr7569994pac.29.1473967380510;
        Thu, 15 Sep 2016 12:23:00 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h124si3059794pfe.0.2016.09.15.12.23.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:23:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z84so2576573pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iEylyypa1oKXWDgRSmyrc+EIoCKEFVKSIohmA6E95YY=;
        b=bWmYyDMiNmZ7TSu6GOazVxhQRFF8nhmsXADbU8wkQ814SVBgEhRvhl7hF3ers5xssa
         LqBUrw50fMchncoKZJb+JLVvrmnqllgerGICpOjIai0bdq496uUnySSfR7RUeyK+gW30
         HXtN0DjRxbrbI229K8czvB+lUz19fttdlpDv7Fb7uMbmUwXdpCx5DizU5HdcB19uDRs5
         3M7crxUXufUqprpFHAWdxbZ4nurZnm+KKPlmv9XmCI3B6Ps7MOCPhfanOSlqxyTFrbcf
         hvaev8yC6WkQOpPoztaziqdkfuTK4sT/I3XBSGk3evW69i554ez+jda8CUx/5JL1MZqT
         v0lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iEylyypa1oKXWDgRSmyrc+EIoCKEFVKSIohmA6E95YY=;
        b=IQ0FqOlJZjhiho1IQgco2H36beK7/9ZDFeZlq7axZh6IJygcj0BppNeTLHYDaK+o5o
         9mSTBz+OcvD4VG6A57Mhxnk+u3mBY8TCca0fHU7rZvNk4q4f3vZBV/x4fvRiRFjuk7ku
         CUp+jO2a8Epvh9lUqya5qpIVP/typ1VzSVeW6Vi12CMdXi/LBdwFSjZcJzX/cbs82N1M
         pdw7IGx51l1PbPHL49JxNTxpKjeIz+6lWSS/LQJ2HyMZoPVmUhLALKhfU7eUq9I4GlFs
         4TtDCfXfnzfOj+3VPfvqZBMWUp7S1yU9lm8DqIs6UfzBaVILu4dHzNJzDuYnr2q2uK0A
         lLVA==
X-Gm-Message-State: AE9vXwNk1LVTwJLKBTRWn0HPMkXRNvdGb4M3vq8yM+mz9cESb7od+qOwBzau9onjnMolGw==
X-Received: by 10.98.59.146 with SMTP id w18mr10904290pfj.153.1473967380347;
        Thu, 15 Sep 2016 12:23:00 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 9sm46877857pfo.74.2016.09.15.12.22.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:22:59 -0700 (PDT)
Date: Fri, 16 Sep 2016 00:52:50 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: lustre: Remove unnecessary return capture
Message-ID: <20160915192249.GA4550@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Instead of storing the return value of a function call into a variable and
then returning it, we can club the two into a single return statement. This
change was made using the following semantic patch by Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lustre/mdc/mdc_request.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_request.c b/drivers/staging/lustre/lustre/mdc/mdc_request.c
index 5bf95f9..cf94926 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_request.c
+++ b/drivers/staging/lustre/lustre/mdc/mdc_request.c
@@ -2488,9 +2488,8 @@ static int mdc_set_info_async(const struct lu_env *env,
 		}
 		spin_unlock(&imp->imp_lock);
 
-		rc = do_set_info_async(imp, MDS_SET_INFO, LUSTRE_MDS_VERSION,
-				       keylen, key, vallen, val, set);
-		return rc;
+		return do_set_info_async(imp, MDS_SET_INFO, LUSTRE_MDS_VERSION,
+					 keylen, key, vallen, val, set);
 	}
 	if (KEY_IS(KEY_SPTLRPC_CONF)) {
 		sptlrpc_conf_client_adapt(exp->exp_obd);
-- 
2.7.4


