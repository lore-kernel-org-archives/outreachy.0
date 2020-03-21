X-GM-THRID: 6806467742549409792
X-Received: by 2002:a2e:818e:: with SMTP id e14mr7361796ljg.104.1584754265819;
        Fri, 20 Mar 2020 18:31:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:10c2:: with SMTP id k2ls1291548lfg.9.gmail; Fri, 20
 Mar 2020 18:31:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuha+lW8Q6zGovmn7yH1o7+3GYG6n06Oo30X2vPUnazCAGd6SBXtroiMB7mpPp7dsf7bD26
X-Received: by 2002:a19:8292:: with SMTP id e140mr6945512lfd.137.1584754264344;
        Fri, 20 Mar 2020 18:31:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584754264; cv=none;
        d=google.com; s=arc-20160816;
        b=CmFAQnv3b8OrR8M/WgZEw+B37H7Z3EXWltmDrlGqQL2pK5hWBDxXQuYJpH+Z0lBCd4
         xmLfon63zTKM2iucmFYYEqaRi0m43Q/zjwIBuAT63gElhfq3q7jnG9FxA/wh+MgOuRrb
         J5xEHC38Ayc4PJReIxSBZaVmp1ew6xgU63smM3fmPg/+rO70W2+UUvAVFdlYhGTzkZL/
         59lnddiRLqyUbozW8CcMnyp/0AJFsEm9AYTb6scsFPtMs5pGWeqMPvd6lrGwhRp1epwp
         JTqiSbDtLxA+epwUyhSuxgKOVpyOFN0QaUXniMxymeBHLZHzewcw9ERmcRIrYSrfNkli
         ueIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Mae23w+R2wdNgAaWsowZpO49mEcnuWx8RZX8mK1tcvY=;
        b=PdJTtjGVlRo29Zjfyhw9aKRJOuHmKLucfgrWtdvfZZ1qUWJXHZwfITyO906owG66Fk
         3aKCJTVGrkUXxjBoUHdvoJg+S9Fepx+zJiB2e5pkGeWdpjAB9ZCm/0ruTOV5BZWMzqsP
         GS5++lHxGvyth0uz63c7MT1TrRR8yfq9T517OK6vCZ4+Ghm6AcO8Zk3GZBmTGKGgIywr
         0Iz9kSIyISas1aMUSohbBP/cEwy6eT0FUsew/JHw0zAL2H0eq+AG8sUaVlBSe695QZAr
         pKt9KeV5OKj+paVIcXEyUABqj9em0pwOT/agilgSG5nOo1Nzqo080q8zgbcJrD7lQNZd
         2mPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U8kl3SPS;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id s17si557817ljm.5.2020.03.20.18.31.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 18:31:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U8kl3SPS;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x241.google.com with SMTP id 19so8459496ljj.7
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 18:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Mae23w+R2wdNgAaWsowZpO49mEcnuWx8RZX8mK1tcvY=;
        b=U8kl3SPSxGCnnLhmiGNnWLUv9pMaWIq7SLtUcJ/GF/Bp0zm6xj/pDKHkHLiX+2sg6M
         W0b9S9/M/2KHbZ7HgIGyvXPUWqHWn1tJ5Ir3PNpuB79NBSumvM3NUIlb7tUi3v0a9I6w
         3VUgPYRaQ1+Cu8WJXbf6m/9cXv1wjt6qfScUgLGmDoFONlbjTkbUKdZrbvDn9fIVkb4/
         tCxj1JS/RmCTtlGdFXAtY5HtjUIm0Q2Z0owjfTi+aRyyfijcoj6opteW6YtMDPIEOqZv
         oIBU4Qy2fKsA1kyU85PV/fO69c0IO3kxTcL5/4Q74qDQGiDtXWR7P9sjODmOrHCq1Leb
         1c1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Mae23w+R2wdNgAaWsowZpO49mEcnuWx8RZX8mK1tcvY=;
        b=BXhtBU/BTcsbTW9p2drpvY1gXctzzE5JSALekoKrgdiwuu8Pu93krPibQYAhO76xGT
         IIQhQrfwmlvcTOw8PhV7Nu13y6Ggr/d6oTWRkXnE6/0UtQBJDX0ESuxmIqD3yoI2R4bB
         w2SnyZKGGArcbRloKSi5o6fVjTlA9nvLRBNqo/xrp2M/QMIPFq2ClR0vGLlB8v7uW1LN
         h+0sDPZ1h/UIwcjnKdu+/Dz+U7QKPVW5HaeLpo7c1Fa+NEZYwDdnBzGuItIcephF8BjQ
         KYQ6ZQ1LONapofFs61fSxSpc4H4AeB8W0Jkhfp562EgFBhPjuZ2Ug6qHsSrcAVpL3oV9
         SlfQ==
X-Gm-Message-State: ANhLgQ0Ya4Rpq4u6EMo+3GNYJToGBk0YOMJEweoIFXbV0/TMPTLQGY3h
	e+nxmpa89sm9W3Aro//xQmN6iyaXO50=
X-Received: by 2002:a2e:9f0e:: with SMTP id u14mr6712869ljk.142.1584754264135;
        Fri, 20 Mar 2020 18:31:04 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id o16sm4515751ljp.53.2020.03.20.18.31.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 18:31:03 -0700 (PDT)
Date: Sat, 21 Mar 2020 04:31:01 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: hp100: Block comments use a trailing */ on a
 separate line
Message-ID: <20200321013101.GA17131@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved to the bottom line */ for block comments

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.h b/drivers/staging/hp/hp100.h
index 7239b94..a331587 100644
--- a/drivers/staging/hp/hp100.h
+++ b/drivers/staging/hp/hp100.h
@@ -538,7 +538,8 @@
 /* Tx or Rx Ring Entry */
 typedef struct hp100_ring {
 	u_int *pdl;		/* Address of PDLs PDH, dword before
-				 * this address is used for rx hdr */
+				 * this address is used for rx hdr 
+				 */ 
 	u_int pdl_paddr;	/* Physical address of PDL */
 	struct sk_buff *skb;
 	struct hp100_ring *next;
-- 
2.7.4


