X-GM-THRID: 6745592460667256832
X-Received: by 2002:a17:902:9a84:: with SMTP id w4mr377581plp.186.1570580711221;
        Tue, 08 Oct 2019 17:25:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:4f0c:: with SMTP id d12ls100287pgb.1.gmail; Tue, 08 Oct
 2019 17:25:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyPYjeYT/1LVK+dFhIdaNX1N4LjwPzEwnBdLZGUmVzF/b8MKy/EpJDCUJbYoXBjo/BFgSJp
X-Received: by 2002:a63:dd11:: with SMTP id t17mr1288659pgg.242.1570580709402;
        Tue, 08 Oct 2019 17:25:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570580709; cv=none;
        d=google.com; s=arc-20160816;
        b=Z31G07w7pU+dNy68k0LCVMOGF6YVSqn0Pb18tMroNsnCJwrxQMZpepbCK4bdudgilJ
         RTy0QlJPgqJFgP0sO7gXLIzehHxpOghnl+jO0Yma5Bgl3vUSZN7SKbzS6fUdOPBTO07o
         vArIZ+6x9EsEzCqN3b93U20A2z0USatsbza+B/L3xVc7s0+s6kR0mwgrUeh8SnRSqcZq
         WhUiMv37lemCBhH2ef1V2DcHoSiBBzMSfFq7xjVnBlDGpJgLCZK5BMTfeeWX0vtIUfy5
         H80J+p3L7QY+4wJZd7wKrR0JzhE4pSyPLS3tsbuR7ugLKG8NFxDv1aM6ziFRbX0B2iJM
         VBMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=0u1ny4mRovnSxnGzqS9AP6TdsZokBh49LFd8upvUP5U=;
        b=GZDiRk0QTjHm4gb/uDkZKGWwQcZGopDrt1XsdcmkXlH8ijC9kXOtc7EiJkrGX68BvS
         mBXIfUnKdhu1ohjwifOc+I8HrGHZOhJR+QA1oaM1SevpTzlhcf3b15oJ8UmVseDXWDFn
         15vmr+i5R5SWRk5bAIZ8tO5Uw04ZkUDCdpFJrEbyIDnQ/0ewgHrwGh+0LGqNIgbrChvk
         OlnXfQZhRs7tLldq2XRNJKRN+TTXcH/hBemTcpeKcq8Pp0PJOlB37CNQ/2vRLLWt+KaK
         gMlxzoqa5cqe5SSYf3fhJEI3Ces3Ltsb86pO6shsq9mHbJsu0UF/WvvRtjJsd4BuGeM6
         Gr0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nrxM7rpt;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id 124si34576pgd.4.2019.10.08.17.25.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 17:25:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nrxM7rpt;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x944.google.com with SMTP id 107so228118uau.5
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 17:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0u1ny4mRovnSxnGzqS9AP6TdsZokBh49LFd8upvUP5U=;
        b=nrxM7rptY59vhgaK8QYZtk/kzZYnUPEjs1R/3I5doRFc1VCqiwnoXc2u//L0F/OkZ0
         YD/RTM/ISNTasjoSBkmnh/gvGH4FDKgbLY5nMK0c9UCVj7GJ7aDGWlUWJWIUlX2XsME9
         BszSkofr3cUod7OmqOZeJj8yApzMAQMywwzmfWnOS3pVcW1svrlt0nGF7FHNlYHThQet
         4eFmS5XNVWsO3Vhz+ABrEYHSWrn/g6q+q5AuBhYGBX1fwDhFFFBmkFZ63vRhiNs7NKrM
         BwMVd5RcY5clB/Ybb7o+4K1EXTIjl/6jbTLTwD0W+96BiW7czsP4IiVNTdmGFGT863HW
         fk4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=0u1ny4mRovnSxnGzqS9AP6TdsZokBh49LFd8upvUP5U=;
        b=tPS2SfqTh8+bacC3+Oea5upjEdsVdyLypd43IjQN1TUz3rsYldGM9Njq+LLE5G/woW
         M1XPcA3PD8ofgvt/NU3PwvJnMiNuRGP10sGsH75Ox38bMR677Mc1gs7VoEx9JjiR7ypR
         haTD8lJJs6Z5AslQ7IQo0VTSWd/YRtmgd3AnAiiJCOdl+fpYxVUXtySidzgN5EPuZBsI
         IA8GSFIH4/QD68eBmVRKbywWoFmpw84FO3E7UIRKXmoa+NMRuLG1mIE8ai8KQc83mVzb
         MIEx/H+5cMjERfGgszszcqlS/8BgwvqHBr5TVp3IKz6FqDBcwnqc+vTUhUlNisRkvv9T
         WVdg==
X-Gm-Message-State: APjAAAU4hn921hio3OQxoNYXVe7Z/aXPUaS11zF7/qqcpfpT3VWjxYP2
	cberZrtvb9Hl9ruYsEGCPfc=
X-Received: by 2002:ab0:7607:: with SMTP id o7mr261763uap.66.1570580708335;
        Tue, 08 Oct 2019 17:25:08 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id l130sm164995vki.33.2019.10.08.17.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 17:25:08 -0700 (PDT)
Date: Tue, 8 Oct 2019 19:25:05 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8723bs: Fix function call wrapping style
Message-ID: <f43f9295d7412d610e278be608fba6f2cc14cac9.1570577926.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570577926.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570577926.git.jarias.linux@gmail.com>
User-Agent: NeoMutt/20180716

Fix the wrapping style used for the function call.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 43af76b9fa49..ca84e4b00310 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -216,9 +216,9 @@ void expire_timeout_chk(struct adapter *padapter)
 	/* check auth_queue */
 	#ifdef DBG_EXPIRATION_CHK
 	if (phead != plist) {
-		DBG_871X(FUNC_NDEV_FMT" auth_list, cnt:%u\n"
-			, FUNC_NDEV_ARG(padapter->pnetdev)
-			, pstapriv->auth_list_cnt);
+		DBG_871X(FUNC_NDEV_FMT" auth_list, cnt:%u\n",
+			 FUNC_NDEV_ARG(padapter->pnetdev),
+			 pstapriv->auth_list_cnt);
 	}
 	#endif
 	while (phead != plist) {
-- 
2.20.1


