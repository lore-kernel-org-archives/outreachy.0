X-GM-THRID: 6803761138305597440
X-Received: by 2002:a25:c244:: with SMTP id s65mr156325ybf.284.1584124085331;
        Fri, 13 Mar 2020 11:28:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:aae8:: with SMTP id t95ls3152096ybi.8.gmail; Fri, 13 Mar
 2020 11:28:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuX6DSxMqXFmAmCHqxSLnckDI6HSONrz23jfPGXpok3d52K/lK2p6TPOH5XhBxqOH2inf7w
X-Received: by 2002:a25:5049:: with SMTP id e70mr8324605ybb.37.1584124083893;
        Fri, 13 Mar 2020 11:28:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584124083; cv=none;
        d=google.com; s=arc-20160816;
        b=Zm4KGfPR0UY0lbJrORqiAfN2KxpT61BxFJE6HK62gUGBI8mHqTpQVDnDFZJ96xbJ4c
         P0sZd2/O6D9A2ufopOtIox8x6RA9GlmecqPNVjuXdKMe6mypf2/sfDYC661A/3F2D38k
         pGYl8IkFQBW68jtBEmHLos8PZLAgbHnvj3h7qHUqCtecgJSdhBOdweuCrC9WwFElz3eK
         FwZd6kxT6afIVntVj9c4lkB5IWH7Mrcbf8KWU1HI0gsfYm/NExGlj3skgVd3B+w1dqZp
         KaHLz1aAJCv0UI5xIdiVDY6T8BFGYl43LpaHXo0yL3KcMnTHRc242FIchaj4VGza5GI9
         4cAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=xZh4g4KRo/8sripCbN3XSZ4PjfrtAeQV5vaQtTQ0BpY=;
        b=HeDRN2UKbeN5YaqB7xe/f3W4n4wfdlRro4VlmWtHcBMRd3CRGJpT88D5gNyTiz3A4A
         HbEPYHu3IuKpvN2+jgCbLG81PGahUSgPvzzer7ZiecUHIqFfZyTT8QzlTmx9+9qCKje6
         eGs69Bo0JhRIkWEm5qFVbweGxySeTzyPV5aWa52W39/nJ63eJKSFVuK2rrKXCCdmPTZa
         SYVcr2dqcfXLSV7d8eOG70TB90nhMAMRyTAWRMSn0W8SsUhFzqFlRuR8h0CbqczlWF3q
         Wfgsml1ArrQiHPk1ZPryIcfM7pTkFr6SqBzVnWfgnHkCkMbiGQojZUnitHYJtuOmAYnP
         Bjrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YCMXVOic;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id e14si168482ybp.0.2020.03.13.11.28.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 11:28:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YCMXVOic;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id f16so4654532plj.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 11:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xZh4g4KRo/8sripCbN3XSZ4PjfrtAeQV5vaQtTQ0BpY=;
        b=YCMXVOiclWVuwsTHB97tYLkPTJEydadqn6KDcVbGzI+y+FetyI9gW6RpslcPPDF83I
         Hl0oZaszQ4KYBethSTWNtLM/crbijSmdNdS60BeR/hCWbL0omi06+b3hc+ckRp2vipCI
         GcB7nHOKxDCcidmTsvZyEUo4q/kRQDLmeYkWgBPkjVCxXVQwnwL/gK7kx/IriDhczGX9
         MPmbIkR4jb7YY1ANQdeKHDOQLriZ7wNGjie+IkLnyu2cS7NymYC8dOekBMRsKNqv2sI+
         zZCg8y/+ZxTaeDNcAlBOwfZ3hWEuwUTb15dEWOGk7k6VVeZ+p5xUjsNGzEeJOH4CnPBn
         69ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xZh4g4KRo/8sripCbN3XSZ4PjfrtAeQV5vaQtTQ0BpY=;
        b=BEEaU9tUY89FGQXWWcxKzFmIjoBIus4fNw8jhMPB4Jm3a1CSre66OcKWxkXPNqCMro
         jJbR4vF6cmAJUYEds/ZwMX1N3nLkVKiuviXBEy6PBFBrbs618vz4UcHm271so7heCZKT
         1FBk6tMA1VwpeMkKzRMYVbZLL0aABwlsxFYwZYAEhXIxQByeJtaoAqyS0V+IyCga1bqZ
         Fse2/Sh2JDB0SxKAIdrP6ejVaax3ziPhZEAKdvrmMUkmGJdgSL6ZbYCPVAefP2NhwkLp
         YoAUSIB9LQTtRGsrCFC9YYoXKb50M1ssbo3AmxVojW16XSP/LXVBWCxjEBE9oPsJkU58
         B01Q==
X-Gm-Message-State: ANhLgQ21GXDoU+zj5ZFK+AvkV2TwFeVILW6fpqMu+EoqLQR213zpJqVm
	CZgI5K4CLjrzvqhvZ1lPqoXDe6JW
X-Received: by 2002:a17:90a:2663:: with SMTP id l90mr10211270pje.188.1584124082952;
        Fri, 13 Mar 2020 11:28:02 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id 17sm27336320pfu.166.2020.03.13.11.28.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 11:28:02 -0700 (PDT)
Date: Fri, 13 Mar 2020 23:57:58 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com, mchehab@kernel.org,
	sakari.ailus@linux.intel.com
Subject: [PATCH] media: staging: imgu: Remove extra type detail
Message-ID: <20200313182754.GA20501@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove unwanted variable type detail as detected by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/media/ipu3/ipu3-mmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-mmu.c b/drivers/staging/media/ipu3/ipu3-mmu.c
index 3d969b0522ab..5f3ff964f3e7 100644
--- a/drivers/staging/media/ipu3/ipu3-mmu.c
+++ b/drivers/staging/media/ipu3/ipu3-mmu.c
@@ -130,7 +130,7 @@ static u32 *imgu_mmu_alloc_page_table(u32 pteval)
 	for (pte = 0; pte < IPU3_PT_PTES; pte++)
 		pt[pte] = pteval;
 
-	set_memory_uc((unsigned long int)pt, IPU3_PT_ORDER);
+	set_memory_uc((unsigned long)pt, IPU3_PT_ORDER);
 
 	return pt;
 }
@@ -141,7 +141,7 @@ static u32 *imgu_mmu_alloc_page_table(u32 pteval)
  */
 static void imgu_mmu_free_page_table(u32 *pt)
 {
-	set_memory_wb((unsigned long int)pt, IPU3_PT_ORDER);
+	set_memory_wb((unsigned long)pt, IPU3_PT_ORDER);
 	free_page((unsigned long)pt);
 }
 
-- 
2.17.1


