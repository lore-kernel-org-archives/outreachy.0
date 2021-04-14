X-GM-THRID: 6950903323792769024
X-Received: by 2002:a17:90b:1d87:: with SMTP id pf7mr1966971pjb.208.1618383351639;
        Tue, 13 Apr 2021 23:55:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8a57:: with SMTP id n23ls578194pfa.7.gmail; Tue, 13 Apr
 2021 23:55:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkw6wHCsBmhm+CoTp6sE8g8pp+/NdJIYfmZBeTL5U1m7TuldlXZ21PyJX2H5vXHLtARGPA
X-Received: by 2002:aa7:8711:0:b029:24a:3b1e:fb2d with SMTP id b17-20020aa787110000b029024a3b1efb2dmr17333487pfo.14.1618383350617;
        Tue, 13 Apr 2021 23:55:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618383350; cv=none;
        d=google.com; s=arc-20160816;
        b=lzMh95Ss3eLgDdMNEFQghTaujWuTSfj35ljIFFRAV41OG5xNX3rjt9/4CyMEpvlzU9
         4asPTHEfkoTtwieC9Mj0dJuy11xFRK39Wdvd2wzk0u+JPHIARaS1NohMkQqjrd8XATjj
         9F0CztrqO8NBaTTbbixnjtmT25LL9vdPJ4g79F1w1PCwJu4iEurUoqUlBdMJEXHKEn1O
         C6YE4FVkqR31rfg8bkcY9EV8oCRArqs6VEfOEqcoOPwOnYkdsTaA4RTaz5V//4kPkMV8
         zBp9nIgrw1XnTGeSYhmr4APNM5TBq5AbKPryHzC+3RxsRD2vFpQZVNHuEyKS0qPTs5px
         w4Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PcanKz2JI3sv6qcdkfJn/3M37tEs8B/qxfDD8BezmTY=;
        b=zGgpaaGkqVqzVhIjZrPtCQ9ecb++7blB/Cwagf6XFmgHr7OaS6X1ukPrRjGq+aM4xZ
         QnhrA4VYBXhOwtjKT4HF4uehSWdlouXFgxr6wuMGpZcPX0ZXo96cXOGzhJeVmS84TuJG
         fWFesRhP6GABDHerrAK7t9K53WprklWoyHzBMTG7Z8fPo8vaN23VlhZh65q8Q/Ggdson
         pkqe+LDcRn2kKChul+mq75Sy5UeQwMM9Ivlb6moBER0y+I1dV/bHMmTw8kRkBBjPJMB2
         ydXGr3ygy6ypDAGQbeDcwnQFu+eRQjO2IgA3wmsSC4SbRZFMRs4NKHt2mcZFggSvO48Y
         ++Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AUC7XDuw;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id 131si1021541pfa.2.2021.04.13.23.55.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 23:55:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AUC7XDuw;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102a.google.com with SMTP id k23-20020a17090a5917b02901043e35ad4aso11980565pji.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 23:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=PcanKz2JI3sv6qcdkfJn/3M37tEs8B/qxfDD8BezmTY=;
        b=AUC7XDuw1TQ1ZTbpzBOPu7fqFtP5txh9v46VtMvQTctw1GAWRarUdtmQ/5eOBOrHB1
         SBlSTJWkBxyTyT4ZtAM0vKA/ittgWiSZhGSipQo27TnJJ/z5GXvjMqdlkthGfOiW4rpQ
         35oPn775XC9E2IQwvgD29RbCy63ATQUaJ0WsJxfUqKBvffiLXYsIe1wq1gIYgN2uiXuv
         eUYKUVD3ra0NU9iO1fGYieOm1LEFt0O8DR8K8zgrRlIyRdkAU7DWxX9fYZKEzn/zoTpp
         8l00yccjLSGj7IxapSScQNOKPicP3x3wur9Sies+y/vctusQxr9wjHJQ0awMWaxLZBBB
         4K7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PcanKz2JI3sv6qcdkfJn/3M37tEs8B/qxfDD8BezmTY=;
        b=h4ng+oVnVONpX/5jFU+0+12tU9e/n3MnUSTb1eNpCxV5AJdg+tGCoYL6hhrID3X4Xu
         7ImWLAx39eoUwa4Vlfwcofl7qk5F2Ap7YII1eKMFjberNnTnYtf+bdM0t94gjHixLTll
         DIi5t4Tq0r/AgxleYyiTlm7Wuj5L5DkjbmclgGnnQYMADtvM/rm+Vg0wPQTqMgJmZ/o3
         uUwVGIAkCl94Ni6C5Xi1oad34dUzpY0xaUYkJsmsK0knUD8FViWf7U5iWIokWK6YwJhn
         5Z2AxUqPLR1/1CppNli5D6OtDEieZ1lWC+jU0ljnVoKttxVfDpLOLpQ/2aHx1fr6lr2c
         fHag==
X-Gm-Message-State: AOAM530w9RgwO6X1eAJoP3pwNullNQ3JTL7V6Yhfc9sA4uP9gHeGRryH
	diOy8IXPb3/nWF+v6G8/5lk=
X-Received: by 2002:a17:90a:b292:: with SMTP id c18mr2037422pjr.179.1618383350348;
        Tue, 13 Apr 2021 23:55:50 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id c129sm14470541pfb.141.2021.04.13.23.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 23:55:50 -0700 (PDT)
Date: Wed, 14 Apr 2021 12:25:41 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org, davem@davemloft.net, kuba@kernel.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 3/5] staging: rtl8192e: remove unnecessary blank line
 after close brace
Message-ID: <40f72a84750f402c342b4685e0a2f15d27875c9a.1618380932.git.mitaliborkar810@gmail.com>
References: <cover.1618380932.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618380932.git.mitaliborkar810@gmail.com>

Removed an extra blank line after close brace '{' as it was not
necessary.
Reported by checkpatch

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v1:- No changes.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 651441a71646..b6805908bbbd 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -492,7 +492,6 @@ u8 HTGetHighestMCSRate(struct rtllib_device *ieee, u8 *pMCSRateSet,
 static u8 HTFilterMCSRate(struct rtllib_device *ieee, u8 *pSupportMCS,
 			  u8 *pOperateMCS)
 {
-
 	u8 i;
 
 	for (i = 0; i <= 15; i++)
@@ -685,7 +684,6 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 
 void HTInitializeBssDesc(struct bss_ht *pBssHT)
 {
-
 	pBssHT->bd_support_ht = false;
 	memset(pBssHT->bd_ht_cap_buf, 0, sizeof(pBssHT->bd_ht_cap_buf));
 	pBssHT->bd_ht_cap_len = 0;
-- 
2.30.2


