X-GM-THRID: 6263750571303370752
X-Received: by 10.140.95.38 with SMTP id h35mr15471972qge.3.1458393384173;
        Sat, 19 Mar 2016 06:16:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.196 with SMTP id l187ls1396798iol.30.gmail; Sat, 19 Mar
 2016 06:16:23 -0700 (PDT)
X-Received: by 10.98.12.66 with SMTP id u63mr15591363pfi.12.1458393383840;
        Sat, 19 Mar 2016 06:16:23 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id tu5si2315480pab.2.2016.03.19.06.16.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 06:16:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id u190so21519782pfb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 06:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pSOBSUNUjmxjjwBg4QLLdwKlQdodZbrRqx8dDZi0jSU=;
        b=Zh8TwEqG2JZPzJkRz2syGTkbf4ukbH3FTzCEk8SSDhwF4tjQrRAEU+JYmD+m6DAC2I
         F8FYUF0b7eEsUV6bK1ZvX/QF3m16p0haCapyDymCTxQa7aqfnBvYi+KV3kXDk/xUgdn7
         c0aKoR2oLlGCvqU/qD1CrKYaXmyHrUZjjkRVfa8E9i3R+0HQINhnTKuhY33oIcUE+boP
         6CgyFeIc1nTZV6w6lq/N066RziHUm+x7g6Lnre0PgTARZf5SstBE2iZn4Ej+wpAh7ywu
         60bWnU2sIiT+vsZacEFWp3S4+c/PPGBm0VzKl+gyHVzfLP+ym28Gt3vv3ntAUYVacuDP
         DhAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pSOBSUNUjmxjjwBg4QLLdwKlQdodZbrRqx8dDZi0jSU=;
        b=bNa8/l/iMvEF1XXK0T1Y9Pw6iIh/9x3ryLT5jXzcidYH5tNFRcZtrQZR7ks6B7JBgi
         g1qptx1v6QbiuO38zbtOFAwWQmiq3S5pu+x7w4VkDnYo8ZjwfclCbAgEg7KGOxz6rm0q
         /oxA0mQpez4LnPysg0Qm8sNn3dDVTpyBKuYKXjNwlSz/5OtkC04uJHpYwHIHi0kI8FUt
         gmTgC65x4WlIVtSKgNRi0zUwR/f83rbw9o7DWhVl3v5Di1j0uwrc1qq0INo0kf2RHh5O
         zE/DSYRAxIuzcKkHYUW22M+5aF4UsuCUM2ivTSZOh3vqhZJxpWMEBV6aHhkORaH4y0/C
         fmEw==
X-Gm-Message-State: AD7BkJIlsr3VXEzkwY2sNhMDKvOzULiyHV2FfgrvAirhbhwQRUG4QCQBJ3K5Fb3pFrmA6Q==
X-Received: by 10.98.8.74 with SMTP id c71mr31652155pfd.155.1458393383698;
        Sat, 19 Mar 2016 06:16:23 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id t87sm28180691pfa.54.2016.03.19.06.16.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 06:16:23 -0700 (PDT)
Date: Sat, 19 Mar 2016 11:47:24 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rdma: Remove & from function name.
Message-ID: <6a66bd13896f6f5e6ff2873e697fbc72af8c8185.1458367377.git.bankarsandhya512@gmail.com>
References: <cover.1458367377.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458367377.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove & from function name.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rdma/hfi1/verbs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/verbs.c b/drivers/staging/rdma/hfi1/verbs.c
index 1761686..ece62b7 100644
--- a/drivers/staging/rdma/hfi1/verbs.c
+++ b/drivers/staging/rdma/hfi1/verbs.c
@@ -261,7 +261,7 @@ static const opcode_handler opcode_handler_tbl[256] = {
 	[IB_OPCODE_UD_SEND_ONLY]                      = &hfi1_ud_rcv,
 	[IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE]       = &hfi1_ud_rcv,
 	/* CNP */
-	[IB_OPCODE_CNP]				      = &hfi1_cnp_rcv
+	[IB_OPCODE_CNP]				      = hfi1_cnp_rcv
 };
 
 /*
-- 
1.8.3.4


