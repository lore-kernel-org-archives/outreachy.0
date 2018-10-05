X-GM-THRID: 6608456604457107456
X-Received: by 2002:a62:12ca:: with SMTP id 71-v6mr4381535pfs.55.1538724108526;
        Fri, 05 Oct 2018 00:21:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6152:: with SMTP id v79-v6ls1859157pgb.18.gmail; Fri, 05
 Oct 2018 00:21:47 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61N6PQ+twktlgir23vx+oWIDHb1++89JU5R6XzLi1V88cJxTAewp6XhCj1rgTw2QdzlD+r6
X-Received: by 2002:a62:a45:: with SMTP id s66-v6mr4445363pfi.68.1538724107831;
        Fri, 05 Oct 2018 00:21:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538724107; cv=none;
        d=google.com; s=arc-20160816;
        b=zzFtXnhnGom1x0GNzstgXxTfXXG2CXXw3FEoz+ff8nd8yk430KRUsZMa1WHb7BcP4c
         mOH2SFpa373op1u3O+dCUYuxca4OwXggkA1SpJdUPCPIM/lvSxf+Hv3t5m0Gmik2UiPY
         8F34lFii8tCQwtcHphdgEn2WKXwJcvohmXiZsCAYhrwiIlwnyVBRqC6cEsQRBNNBQ7wc
         1yI6hWDGRyiykzqbvu4YNTmOGZUX9TuGqr2Sk8sqXjvNOl6tqVkFK9O128lBsRd1AJ6Q
         JsxXVY0/asHrjFXeQDPROOf+Hqi+Rv5g7myT6U3xt84S+rzP2SiNPYTxaNGM68rkqFxQ
         kuNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IG2W/Wkl9ufV9y3Xm/WDseZ0PkwRFx2V2Pr/BKASj6U=;
        b=xgqYu9voMze6kerA4mKB8N8YIpc/LDvvez+Se6hzrHTPF2iFFHNA4r5Nz7FoliUoX8
         hjBknEPOuGKLuaYZr5lYD59B4t+mC9ToseIrzCX4hDwVHbeb+/JfMZrS+fGCMAadntMd
         91jcbgcRoGWvT8NEj7ECeynirKjxPKrJQHEnhk8Le4vfYHnnd/kekaY3QjwHJBaEQdRk
         RDhK7ACJUNJERhML2OHvNSrLKTek5EwoXg6zoLzmYtRust+DYwN1hT3FRAQ37tyLNqYS
         7bmFh7749PgR1osw9HaEtSZUoJJdbOEjjRdv0SP+FGbO9WjemoanfM536LuC1BZEMmfY
         PHgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B4qvyRxz;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q199-v6si366805pgq.0.2018.10.05.00.21.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 00:21:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B4qvyRxz;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id r64-v6so4629132pfb.13
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 00:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IG2W/Wkl9ufV9y3Xm/WDseZ0PkwRFx2V2Pr/BKASj6U=;
        b=B4qvyRxzb4N4XOWA3JCbbuIhmDW/IZdwZXvZB9Z/oWm2TlKjyaKFDsrm3mldKnbmP5
         qTDWoscRrK/07LIE3MHSN6MglxW2Nvc20eTZGT3V7kRJ/50xlsLL08elILsG524c1DDr
         hyLwXyg1f6LFBDvIiRKHuF3hwNIAQktIVwh65EbprJS/uf9JlGMDGMXSHBvHDR0f9TVr
         eNIS8fnac360Mw2E2QyfO/c5yepPXwqvj8Q0/seHkLXgSVlRh9AgFGvfaXz6OnfUvou7
         7+tRzlobTvWcFYveLyxtvRbalg/UFfnPO/e29qO0ub9a4Zc5PMh0/CVCZi+dMKFYP+ap
         nW8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IG2W/Wkl9ufV9y3Xm/WDseZ0PkwRFx2V2Pr/BKASj6U=;
        b=nxPvqzC9H38xioiUsW+iULuiKt75ZjwAvorh4HonuYMZO43mWmuELImce6pdLqOvDT
         vGvJ9HZNwG+FlHKfUzaQVo+8/VMi2Dca3C8CF1zrjfajtSAsD3vVkyhybGtNu55XSsJa
         n4h9iXx89sKsdSnb61ex7ooDJxqcdNww4p1/7TpUSalYCoVdu+mdsuyc7bpH6XXgonwR
         V/pGOR60P7xqURdzb4+WzoAvRPIryTYa6HGvLaS7xKDLQHSyGhpZsRuTc3AuNF4Z4j3V
         ENyQ1ae5NqH5z39+MI41cvmUniRYbYfXXWiCQpQ47nq15oKt0swjk8vEBx/DyC6lNfic
         tUxw==
X-Gm-Message-State: ABuFfoj2b08ne+9bJxwNykCr4S8gV6zBwC+p2EiZqULRPdXO1MoLb4WI
	eugMfuVCoHLzLNXwuIpYjRA=
X-Received: by 2002:a62:d40d:: with SMTP id a13-v6mr10728824pfh.23.1538724107461;
        Fri, 05 Oct 2018 00:21:47 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.94.221.57])
        by smtp.gmail.com with ESMTPSA id r22-v6sm26444946pfd.174.2018.10.05.00.21.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 00:21:47 -0700 (PDT)
Date: Fri, 5 Oct 2018 12:51:41 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 2/5] staging: mt7621-pci: Add spaces around '&'
Message-ID: <d7bb602db2a748330dad96a84f6e51687faf3279.1538722582.git.mamtashukla555@gmail.com>
References: <cover.1538722582.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538722582.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around '&' to fix checkpatch issue.
CHECK: spaces preferred around that '&' (ctx:VxV)

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
change in v2:
-Cleanup for subjectline of patch.

 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 3182d8a..14aac08 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -489,7 +489,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 
 	DEASSERT_SYSRST_PCIE(val);
 
-	if ((*(unsigned int *)(0xbe00000c)&0xFFFF) == 0x0101) // MT7621 E2
+	if ((*(unsigned int *)(0xbe00000c) & 0xFFFF) == 0x0101) // MT7621 E2
 		bypass_pipe_rst(pcie);
 	set_phy_for_ssc(pcie);
 
-- 
1.9.1


