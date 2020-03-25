X-GM-THRID: 6808251877049761792
X-Received: by 2002:a63:ff53:: with SMTP id s19mr4996153pgk.247.1585169666469;
        Wed, 25 Mar 2020 13:54:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9911:: with SMTP id z17ls2123214pff.5.gmail; Wed, 25 Mar
 2020 13:54:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsa4btGsSane4qLIKbjJtKt/QZyutYY3xVblbSv8/1Q24Ss+l8sY61SlUnibupTNx68WjUw
X-Received: by 2002:a62:1a90:: with SMTP id a138mr5554198pfa.320.1585169664936;
        Wed, 25 Mar 2020 13:54:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585169664; cv=none;
        d=google.com; s=arc-20160816;
        b=o2s/HBD6jboSjG2CjOPCIY0igRdxbt7lLUrR/MCxrMcs56vX9HdXsGot7VQ49z08ZH
         b5WV1R0xTdK6aNu9mvNSMxLWB5CQmVLMUhyJD9FGLdHBgj2w8TRl/6XG8WAAMIGcikym
         7zI4OiadkGRxRMHa3uHWMEgrjIkWnznWQFMupV4rLWYW+kd9u+CmkNsLKeQq3mc+1F8L
         RpozBpOxVQ3S64+A/BdVVV/0aJ3qbS2tnIPb1xysMC+ETdMH+eoGq6UlthMo177rEtfB
         4dkWnAiSGBrqJ3sWDwwZS8b4Fxtr76gtEo+Uu5JMvrgswkc4graA5PnnRLWMWEMRH6cS
         JVSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=almAkzaBjE6PHygh3j1m0Jqz/97wbN8tJnv57jeXwQc=;
        b=vCuBFY2+/cnHwJbN0BOCG8TS4D32NmfnHuokkFn4abONQUhp1QNxXfgygS1Yv9CnhJ
         hZydnyAEUpFLbfM+x10QPrShRghPDGeo428P4vM9xE1U6jtLCQdL2IZ+Svn95fCCKAWF
         7tgvpLkbwZb0KDqWI30rq9+upO+B7gHqjgttIZ/2Nt0j8RtQcX1EPvIzpYlJ71fEbfbA
         /VwEMricy8XdqZd0jqynlNasEa5DLuDL9Wm7Bsqyo/BqXp8RQmGo5ecs157ulYiGETY1
         rewuKIfP1qV6qFewZHHWbh8G4ahVvrPKo//M5OLoJfN9jFrUSSjv9khQ+/lsWHNvEPu/
         dALw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KIGFOiRt;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 19si11161pgb.2.2020.03.25.13.54.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 13:54:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KIGFOiRt;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id nu11so1517344pjb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 13:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=almAkzaBjE6PHygh3j1m0Jqz/97wbN8tJnv57jeXwQc=;
        b=KIGFOiRtaenwOUhFx39py2v7EmX7BUwo3SCdsyEJxUPfzD8eoy/NdfyQA8+uwb7bWa
         iAoirmcu5wcto705bhC9zap213StzfO4QMCGHTxXUw70sjm7TJHG+WEP6aPK5l3BLmau
         PoOYOzvUjdNalFo+t6+0gSmvEiIM96S30EE8K9x4G4XqgH+ABVZokGVXXdeSc1+5YhQx
         UUG3lbbnvwH7LhkSVP604+H3uemrI4dXOCay26wLKkq+2wyS8zW0pawyvh+XqUz8IIZ2
         7g7qbG0i1ct3FOxkI4Xu7FyADDd63TxIW+6Ze8U475qNjkBEF1z/xvQUSX4hazxkeQT1
         pMYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=almAkzaBjE6PHygh3j1m0Jqz/97wbN8tJnv57jeXwQc=;
        b=cFjAuYJgeOobHcBdizFyGQ2XBWUJVKhh4mrOuhnIhyCnu9a9IpsAnvOdq8Xb3eNtyW
         RVXRoJdLYG/I+8aKxvM/rOWVbcIFtfY6UrH+GpFLGmYyUcLuCOEA/LaYqwyC8zWJGjcF
         ZiV5JqwGm5810Ld7Civn1S+ukmzt2e4OMwmiDKBq9kmhvqrpLRD9OsViOpC+ApXSFUHh
         DBTAcv8fhclvWiQICvqbsk+vK19uuWo3l3Z3nCuBejq/onnYucUKK+qpAMR7irZ5AJia
         h+yRs17KL8sXZSzw0XEYCGlH5MGseaqU70p8mzNro2QnN7SQBrMr1FRsT+gwb8oW16u7
         1ToA==
X-Gm-Message-State: ANhLgQ0CPlT3KO1tBP/PEG4TTdhKeZNufm7o6MYT4KzmIISmJRo0P54W
	2ABbresj6IXZqtJ+g9IFyI2bBmOVPsA=
X-Received: by 2002:a17:902:ff14:: with SMTP id f20mr4694982plj.51.1585169663924;
        Wed, 25 Mar 2020 13:54:23 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id 132sm26209pfc.183.2020.03.25.13.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 13:54:23 -0700 (PDT)
Date: Thu, 26 Mar 2020 02:24:18 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: rtw_efuse: Compress lines for immediate
 return
Message-ID: <20200325205418.GA29149@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Compress two lines into a single line if immediate return statement is found.

It is done using script Coccinelle. And coccinelle uses following semantic
patch for this compression function:

@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_efuse.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
index de7d15fdc936..8794638468e6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -266,8 +266,7 @@ bool		bPseudoTest)
 	/* DBG_871X("===> EFUSE_OneByteRead() start, 0x34 = 0x%X\n", rtw_read32(padapter, EFUSE_TEST)); */
 
 	if (bPseudoTest) {
-		bResult = Efuse_Read1ByteFromFakeContent(padapter, addr, data);
-		return bResult;
+		return Efuse_Read1ByteFromFakeContent(padapter, addr, data);
 	}
 
 	/*  <20130121, Kordan> For SMIC EFUSE specificatoin. */
@@ -319,8 +318,7 @@ bool		bPseudoTest)
 	/* DBG_871X("===> EFUSE_OneByteWrite() start, 0x34 = 0x%X\n", rtw_read32(padapter, EFUSE_TEST)); */
 
 	if (bPseudoTest) {
-		bResult = Efuse_Write1ByteToFakeContent(padapter, addr, data);
-		return bResult;
+		return Efuse_Write1ByteToFakeContent(padapter, addr, data);
 	}
 
 
-- 
2.17.1


