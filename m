X-GM-THRID: 6947781120452722688
X-Received: by 2002:a05:6102:41:: with SMTP id k1mr15074884vsp.54.1617656350138;
        Mon, 05 Apr 2021 13:59:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:fb06:: with SMTP id d6ls1580437vsr.7.gmail; Mon, 05 Apr
 2021 13:59:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyw9sNNv1PmQdUn1fxBehVyF+36SKhhPoN//b+5ryP4Gun9LTMqDn6eh8R5WQzvuaHJSDmp
X-Received: by 2002:a67:b849:: with SMTP id o9mr15471024vsh.1.1617656349318;
        Mon, 05 Apr 2021 13:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617656349; cv=none;
        d=google.com; s=arc-20160816;
        b=rWVXpxssLJR0ItXivEVZ+yms1bGq+mVLez8Rj+8XsDBrsLKCyp/w4gGcg4Ai76bZ1v
         A+W2HSkPLKmroRsVYuZMhg8pQ0YPCFUvCMjC0tEwotZ4L9cD+9Fv06EyT8cHs1xWLV7A
         Uj/W6nTdsQrGbELnVSqQ181Lo/pOtTO1PD4r3oCU53m0dcMDwsxRPqRDZ+IsCiEGuHqL
         3jilUoG1lERoofaQpuYwZ6SCvA6PebTZ0KEL4a28zuWuuCWYH6JgjX74gw5f/nKSvTXE
         8ocviC2rKHS+JqcmjHoyZbAV952uGeV1BC0EP6d9uHoYK+tbfj0SU5pU9iT95bX496WA
         L1LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rnZ/+SCFR6smzC4OOQsVNnFSMdYRMfjOaDE11Bdi33k=;
        b=Ow5BezntCYwxHUEMRmt007fp3DC3fvTBuXFtR8m1ae28fA0rBfEPeT6lMJJ4THB7LL
         ZkxbelNuNBV4hSYxQy3mZBee+b3Z+PlJu6gPMLnz7de7xyjNxKsQXAZqBVMSpUF9QBQu
         ozDImqpVIzdngmFJhr3fU+JlnTgI2HcgO+ydZYA/hBoW6VTsOr12nBixo6G8ksh/XFCS
         8kbWZSFDl0QsSmKuGRXsVcbw+8ONPqVzJASifWJFRtGiFn/gJmWHvgJ0QU+uGEFbbcS3
         +FMTvmEeE/V0Cxz3Fhg4B2HCOQUo28eg8NMUGHZcTu/w9gYjQ/AjEtFAQtMXSkQJ6z8r
         wNOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f1Y8RbPF;
       spf=pass (google.com: domain of davidvillasana14@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=davidvillasana14@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <davidvillasana14@gmail.com>
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com. [2607:f8b0:4864:20::233])
        by gmr-mx.google.com with ESMTPS id u142si60711vkb.3.2021.04.05.13.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 13:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of davidvillasana14@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) client-ip=2607:f8b0:4864:20::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f1Y8RbPF;
       spf=pass (google.com: domain of davidvillasana14@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=davidvillasana14@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x233.google.com with SMTP id n140so12864431oig.9
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 13:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding;
        bh=rnZ/+SCFR6smzC4OOQsVNnFSMdYRMfjOaDE11Bdi33k=;
        b=f1Y8RbPFc+agJhL3l2y37ACRHnZwWB8QD6d9sWjlu50E0ckwkK85rN181aWfrPNZKC
         rU8wy2bhuXT01eVE/8IH9u1sKtNfHATWr87gFiJVQuLPE4iaYpF2xTkky4+wTlkOxOHz
         POuYW4MRPX41JnoppCydFlM8SzadagpVXX1Z1Qc9COuYKz/l5D5kqhRcIwSHSUdO+pIZ
         5+ddBKGLiZX4qvGiA4kAdDXAw990M0bY9BWQBgyRkSiSTGI4PfAgKrzkvyXYOvUwDI7C
         o7D+tmKuNGbU4SqrudwQJK00S/uAZvAtxY5xzPpXwXNJgnGM9elmNbl33ZJgwZ1UhOUz
         AKgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding;
        bh=rnZ/+SCFR6smzC4OOQsVNnFSMdYRMfjOaDE11Bdi33k=;
        b=N717mKfzI3PiH44KygEdFkisK31ssh2BKpC73axw1EvL0YUnA1SPDBtSCRiDH0poml
         Am2JqSsY3nH9FDdjClHTrOVI4Z0eMS9PQIrAlriNLFAdS55sWB3xjjXrELJwjWghKnkf
         bY6NSM83mDUb1toR1kVofsVzPbXvn66K0ISJHburnSI43RIDIhVYTk3k9adula1oBaXc
         36azqpJWzaZAaBrpDP4XR0l+0NZ7XglRQbeC8RrQ8qDgAljocRVPT2NglEqW2aOOP8pN
         0F4t91sQCQq0sjgFPc4jDJ3ltZ5L1E0sI43ZWI6+EZEBNye8KPxS0tQuxefrWLWD1vHs
         cF6A==
X-Gm-Message-State: AOAM5332AcaLNAN8CO80L22utEYeQdHCHNOiTqtt71O3kwU018pWDOvV
	aX/DY0s4SvHLa4117E2lQ08=
X-Received: by 2002:aca:af43:: with SMTP id y64mr763978oie.46.1617656348908;
        Mon, 05 Apr 2021 13:59:08 -0700 (PDT)
Return-Path: <davidvillasana14@gmail.com>
Received: from fedora ([2806:2f0:7000:86b1:c1bc:6875:f962:d652])
        by smtp.gmail.com with ESMTPSA id l26sm4225235otd.21.2021.04.05.13.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 13:59:08 -0700 (PDT)
Date: Mon, 5 Apr 2021 15:59:06 -0500
From: David Villasana =?iso-8859-1?Q?Jim=E9nez?= <davidvillasana14@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: kpc2000: pcie.h: Remove extra blank line
Message-ID: <YGt6GhZHqB62Y038@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Issue found by checkpatch.pl

Signed-off-by: David Villasana Jim�nez <davidvillasana14@gmail.com>
---
 drivers/staging/kpc2000/kpc2000/pcie.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index cb815c30faa4..f1fc91b4c704 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -6,7 +6,6 @@
 #include "../kpc.h"
 #include "dma_common_defs.h"
 
-
 /*      System Register Map (BAR 1, Start Addr 0)
  *
  *  BAR Size:
-- 
2.30.2


