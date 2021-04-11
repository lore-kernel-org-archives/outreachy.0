X-GM-THRID: 6949753709721026560
X-Received: by 2002:a67:ed4e:: with SMTP id m14mr16656143vsp.40.1618115658064;
        Sat, 10 Apr 2021 21:34:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:5046:: with SMTP id e67ls927343vkb.2.gmail; Sat, 10 Apr
 2021 21:34:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyaBaFRQ/KWlBY/MJDZC028ervEDlv5wL3pK0CnxtFqxQJV3rJZ3X/3k94sQ2L7eB0b6uWL
X-Received: by 2002:a1f:2cd:: with SMTP id 196mr16518161vkc.19.1618115657112;
        Sat, 10 Apr 2021 21:34:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618115657; cv=none;
        d=google.com; s=arc-20160816;
        b=VFzsGh8g35QagcGinhKeQWtquGJtkI6ntmk9MgBnzxj1PxLYONu3TsBK2vRx3C4miG
         BIblvtPDYr/GS3i5E/Rq3ZBJH0QrPr9imBDb07nAgxahVBu2dYj20ES/cwZCm0pehA8n
         rmKd77mKWRbLla+JUzuMx+aJw4oz5iJ2h+KZY51WNXpdGDKkk7RBKq3NtIf9u4IJA/0j
         rnlb+a5NUhI+MojKXvsEqezyCmuo+NdARlP+vN3DZX6/+kfK46CJg3E8bcuzR+IiM0yy
         OW/gRbRkUO70Bh6IB2kGCSCNG1yH7yXCOIAKPb30Etj0IyFkfVbrUEeJkr3uO/H1MCuu
         wX1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tpbh3OLJP7GzXz834H5t3FrywBGf6oRqD5Ae5cfpG3s=;
        b=Ow31yL4yi59gek+vhOL/ITWm5CZD4jfFYuX3XpTnni6Un/8pDqB5bAdXV9Kb5KDaT5
         J27jy4p6JXwnTIIjkxy/XmQL0A3MysL2Az2UJ9MIbF0jvlDwkpXRjKN4NHQ2EJjEac/v
         0doFCQtdx4kAllXVxXChRoVhDPzezTIJKPuPNRL7QqdWKcHpVwhBLOdxUj7yyshnSRwJ
         RmHZYOIzfrxNZP/VOfJONqhxw8HpezTmqI2Fmkutu/n/ikZY3D78heQWH2C8ZGNx50hL
         Ga6saKfnh98DDIasP0oFniwQiT7bb6TPrVtjCrr8EhkEAQZfzP6fg2MpyHZtu/83WRcj
         BnmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I0QQ/fbJ";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id u13si524670vkl.5.2021.04.10.21.34.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 21:34:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I0QQ/fbJ";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62d.google.com with SMTP id d8so4616900plh.11
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 21:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=tpbh3OLJP7GzXz834H5t3FrywBGf6oRqD5Ae5cfpG3s=;
        b=I0QQ/fbJ7F8M6Mkn+NLUKLPFkaxNvIhFjfvZWWoSNptyA3PORW1ZisjL6b51O9HYJQ
         1/tMdZD3x5rNaf4t5uGDL+Dk4b+tnA9fvdTjJPepk9zmY/yWn7LSFjWeEyg2pz021xoB
         EkRK2Xt0nfJd5JZmbiuiRf0I2VGG6w+t8Lga4aqE6wD0sGFk0NkIfSK2bDceCwKUmlDF
         65scfnUNTk+iYK6ZFIejgtGlwPt3gw4n+kplIXjpZMjSK8IF9BSJMSz4SnDvCnaZ5/zK
         jWoInYNKY7pTqQvibGoVIxoGm+fUZKSUpcD+BGB7JxSZ0sR07duy0Bi7pIxKXBafnwB4
         kGMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tpbh3OLJP7GzXz834H5t3FrywBGf6oRqD5Ae5cfpG3s=;
        b=dp+jzu60NKherzDJzgOdRvAff1I9XNoqhRn8zOBFe7g2wAPBVmFKoG8wk5QfvrVEmR
         BtfCquEKbSJfHhk2DjrA4nTCAkUICiTaIS7rQ9iGTiV52OxhkHFJktUbWbp01OcTamoL
         DPX3FRKl1MlPuQp2iPeHTXeS1LuIgCboSRoLIaLhVWpFhST1BX1E1vPe+nXEkmO98pwK
         Cf/9S/dCWnHlKtboGgK+G1yf5T7rola00QL+R4xaF+SPoQicp6h5sn1bggbbgOyNO505
         Z9Is1Q8SWwg7R0swS+iUd1YHj0mOjF9QONYCscjfii4On/G/VCxIaYhW6KSNcRdRh9w+
         RyzA==
X-Gm-Message-State: AOAM531bL7L+sJNn2Xc0cjpWSUmkJwiWrWDC70byYxVlFTSxN13KhTuN
	5lhR1Ews/9MuvyTGfMHc/Ks=
X-Received: by 2002:a17:90a:5898:: with SMTP id j24mr21766301pji.103.1618115656222;
        Sat, 10 Apr 2021 21:34:16 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id a65sm6297511pfb.116.2021.04.10.21.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 21:34:15 -0700 (PDT)
Date: Sun, 11 Apr 2021 10:04:07 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 1/3] staging: rtl8192e: remove unnecessary parentheses
Message-ID: <e6302e0a8dd47c903dc82fd28e73f5ccf786a0b6.1618110617.git.mitaliborkar810@gmail.com>
References: <cover.1618110617.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618110617.git.mitaliborkar810@gmail.com>

Removed unnecessary parentheses around '!xyz' as '!' has higher
precedance than '||'

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1:- removed unnecessary parentheses around boolean
expression

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index b1fa8e9a4f28..431202927036 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -276,7 +276,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
 	struct rt_hi_throughput *pHT = ieee->pHTInfo;
 	struct ht_capab_ele *pCapELE = NULL;
 
-	if ((!posHTCap) || (!pHT)) {
+	if (!posHTCap || !pHT) {
 		netdev_warn(ieee->dev,
 			    "%s(): posHTCap and pHTInfo are null\n", __func__);
 		return;
-- 
2.30.2


