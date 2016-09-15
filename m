X-GM-THRID: 6330466800696819712
X-Received: by 10.157.48.17 with SMTP id d17mr556349otc.20.1473943939843;
        Thu, 15 Sep 2016 05:52:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.193 with SMTP id b1ls3081331otd.19.gmail; Thu, 15 Sep
 2016 05:52:19 -0700 (PDT)
X-Received: by 10.129.121.70 with SMTP id u67mr6219260ywc.2.1473943939543;
        Thu, 15 Sep 2016 05:52:19 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si1089117pam.0.2016.09.15.05.52.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:52:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z84so2205065pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3jFKnv4UXj9k1/raRJRNB7yWImMRTgzRVY/KjJxBcus=;
        b=Rek3BxmmCPqaLZ4ThXTCo+m6eMn6Chzvx5F0WhRySmWcxlCtdZFtaF5vtEGFlyh4FH
         MtYfbtmAkEFtzSWw507Jdz2lrbGEP5ky3/iDr+RkWnGFDS/D9Fuy41wVq7648TwsEMF0
         7MATTotWZGLVNF0yAyQvlC+qZrS4Iqji3zmcwoYoejxAtwfvO1HMGjM1lyWToVar+9fe
         ZolW+lKGjP/j+NsiDNTZbLeESS0hr0suSa4XbF66kzQiVn9IM1kJFL3pPgfUlEQbXAwR
         kiU0uLI5aecbFMyE02uXR+LQDlevdeQRau6GK67h0kG0Cq7ll8pXKpky4ldhg9u9KqYc
         Rodw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3jFKnv4UXj9k1/raRJRNB7yWImMRTgzRVY/KjJxBcus=;
        b=bdG16j3MfT4hVnZxDZQBURk1xmqzuvnqKXBkjAlPrsETlprHcowOj474TgOswUPmTV
         PCFf/rDAAQogrslJ4XRtstc+e/b+Gaqdup3W2pPGHjzrCdRHIE+d3ipEQj55yv+HO6Cj
         bhbY9nf9ON/Txhz6rmimxAFDg9IZpX7MdZuSYMXkOr2kpKq5HIrg8ecGiA/kYOL0tWnK
         UNOG9vFBO8QiFQ4Lc69cx87PsCZfAcxM3NksgrQpNSjneUOHtngiupKtyLT99AeSbz31
         0h6fLsI0CVX6WPTl9MNs6e2y9+f2ocruN757v+cBy7d0I5Y7kfaqB3z0nY00agapu7I9
         pNOQ==
X-Gm-Message-State: AE9vXwNykYytN/1cKuOgslUftXNdDbAW+Cj2sLUJH/stKyxVvV3QY/6UeHwniO1+EIH3Aw==
X-Received: by 10.98.129.131 with SMTP id t125mr2703365pfd.157.1473943939139;
        Thu, 15 Sep 2016 05:52:19 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id fm6sm2191165pab.37.2016.09.15.05.52.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:52:18 -0700 (PDT)
Date: Thu, 15 Sep 2016 18:22:10 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 4/6] staging: lustre: Change 'seq_printf' to 'seq_puts'
Message-ID: <8977e7aed6db4560b4db7c75234bb3ed6a009e47.1473942874.git.aquannie@gmail.com>
References: <cover.1473942874.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473942874.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch.pl warning: Prefer seq_puts to seq_printf.
This can be done as both have same type of first two arguments in their
function definition.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lustre/llite/lproc_llite.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/lproc_llite.c b/drivers/staging/lustre/lustre/llite/lproc_llite.c
index 4e82db8..af233ea 100644
--- a/drivers/staging/lustre/lustre/llite/lproc_llite.c
+++ b/drivers/staging/lustre/lustre/llite/lproc_llite.c
@@ -774,7 +774,7 @@ static int ll_sbi_flags_seq_show(struct seq_file *m, void *v)
 		flags >>= 1;
 		++i;
 	}
-	seq_printf(m, "\b\n");
+	seq_puts(m, "\b\n");
 	return 0;
 }
 
-- 
2.7.4


