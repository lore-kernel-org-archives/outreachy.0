X-GM-THRID: 6251940862989697024
X-Received: by 10.13.216.150 with SMTP id a144mr21979039ywe.52.1455643535613;
        Tue, 16 Feb 2016 09:25:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.74 with SMTP id z68ls3322592qge.36.gmail; Tue, 16 Feb
 2016 09:25:34 -0800 (PST)
X-Received: by 10.13.234.77 with SMTP id t74mr22803959ywe.12.1455643534939;
        Tue, 16 Feb 2016 09:25:34 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x232.google.com (mail-io0-x232.google.com. [2607:f8b0:4001:c06::232])
        by gmr-mx.google.com with ESMTPS id p10si1703897igg.1.2016.02.16.09.25.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 09:25:34 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) client-ip=2607:f8b0:4001:c06::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x232.google.com with SMTP id z135so130580700iof.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 09:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=M0fS8sBxe2Y2ancgT9rzQzACgdGzmVoBd+W4LnPQTnY=;
        b=hFGlfoEA2TI4otUZPqulJbi8OBSQGwDK6S9mr0sDEMyOTz34u5WHmToCpdFw0w0/+M
         dajxhaFbtiXEMDN0oWKVw3+wEEp30GDerhdNC0RmG1zFEAxBsbwbQGLc3eU5LKG2J1sT
         vp3KfJAlz1Is2PultsmVaYGpPrAnXKMW7ZWcDBtoX3i1J2t4JtVEchP+Md0NGvaBkESS
         4s/mrAjQgzxbHdT02/bMLzHTm/9i/xvQ+b0JYURcNEbOd6taGq65sEQ23yVq9+oubXXO
         /eaVJWORbepRF5XvmnAGFRxBzY4ihDoODVXFXAUCIXCmPoLC0aKKgbbLqkS7xfHUad6i
         4Gfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=M0fS8sBxe2Y2ancgT9rzQzACgdGzmVoBd+W4LnPQTnY=;
        b=F77TcYOSmt8PpEDvuoU/Mjh7jjhYkBFvJDVKFDee89DNgjSySWmwxsiVBHKXwwcP0o
         5X7aqauc4HQCP1sMpTYwevWKBgduZvHOb2g7jI/QFjFWcPqY8dwMr6yq2lE+YH1r21y9
         ZO1DW859+r2L1RI1PqQmHLUgRppFsuA+VIOBlLzONzRTj/qXgD3NPZv6cL8z+uwqBbyV
         GikGb1zIOiUUDKYd2okcPXUmyaHqvpNfV6ZdyFWv/J3SfRNB6ax6HtmDerz1+mymYJEK
         DrDeSLVcbugospMT4XZ8M6ADQgo3XRYBxYn7RD+11PNA497zECZPkbbkbG7CnOcrPhGA
         RhfQ==
X-Gm-Message-State: AG10YOSQKz6CUtk/uDTeyT0Mr9Xg2WQOfIub5Mntu9q6X2aMPdJLbv9/2N+0JHoITUUL0g==
X-Received: by 10.107.131.155 with SMTP id n27mr24235250ioi.132.1455643534781;
        Tue, 16 Feb 2016 09:25:34 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id q196sm14331821ioe.31.2016.02.16.09.25.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 09:25:34 -0800 (PST)
Date: Tue, 16 Feb 2016 17:24:52 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: wilc1000: Use kmalloc_array instead of kmalloc
Message-ID: <351c2cb45bd6c3f0ac54246c66b693e204c172a8.1455661012.git.janani.rvchndrn@gmail.com>
References: <cover.1455661012.git.janani.rvchndrn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455661012.git.janani.rvchndrn@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays to prevent integer
overflows.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 81a2ee9..7554cd4 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -664,7 +664,7 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
 		PRINT_D(CFG80211_DBG, "Number of SSIDs %d\n", request->n_ssids);
 
 		if (request->n_ssids >= 1) {
-			strHiddenNetwork.net_info = kmalloc(request->n_ssids * sizeof(struct hidden_network), GFP_KERNEL);
+			strHiddenNetwork.net_info = kmalloc_array(request->n_ssids, sizeof(struct hidden_network), GFP_KERNEL);
 			strHiddenNetwork.n_ssids = request->n_ssids;
 
 
-- 
2.5.0


