X-GM-THRID: 6669000631583244288
X-Received: by 2002:a9d:5c0a:: with SMTP id o10mr5165838otk.15.1552757064720;
        Sat, 16 Mar 2019 10:24:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:ee6:: with SMTP id 93ls1246732otj.5.gmail; Sat, 16 Mar
 2019 10:24:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxsZDQtZbeE/N6WSYCzeLPg57IpYa6C1Vg0y9HizLWatHJvii80Q/dC40kVSI/+wTPy8b4D
X-Received: by 2002:a05:6830:1109:: with SMTP id w9mr4987352otq.56.1552757064244;
        Sat, 16 Mar 2019 10:24:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552757064; cv=none;
        d=google.com; s=arc-20160816;
        b=kW0Qd1MfrC3slqPyozG6/LTvatztBJ5sTY/upUrEiwa23wgSD+0U8HC1CcrhLqJnzJ
         53zUrJRdq2ApqMAjDabjc6M88zWfUedG8G9xWfaqgqatvVMYzJ1QjG5KbzFNEyH3vpYT
         Jjhbg2oqW4UvO3fH88VwnCID9wYilpfKwYemd8iGgQRudPTzMxd41dEEJTwnH2k78a4T
         IZv1Xwt19VqEU27Uelnnp2CV09RVLQC3qZAB2elluDA4wbmv7BwiAbwgdTsfLteU3v0T
         AfRNglmC3f/Wqe7tpCXpYCy2cwjpqjIYDdfPqgDNiX1oSGYBwM3/VKCg+XMVhZ3yqScu
         agmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=CL9iuAFdHvdgtxdaP/HOyUMAHh0DlHqSTeztjJ23iyY=;
        b=PYfpOU1Pm5R78MOa7GebUmCqmHecsdg68jG/GNQck61tx/PHb//ECfrTc/2fV3B1YP
         9slxY3v9D9LSCIqfSNuQ6UrAi333L6O00oSqjO4b8b/Kxb67HIUnBFtq9aBWoj2iCtlx
         A+ydkkj+HKc3H5aWJFIuJmFcB5hTpzVd81syfgme9t3WBrZYc6BzZjTB3aE7x68q4rps
         Izbd8LhTZSEhAgHX4KaZv5/lP37dwKr3WyiVGc4thMo5pympPlx/MSOqz10KxNU7QO1a
         R0/hh1o6Gpg5QbE4mqjey86DHjqQYrYfn8iOaswSNQmwCVKvejHaGXBXcgsR0l5kgHQ1
         DOzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="d/jF8+Bp";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id d128si196303oia.3.2019.03.16.10.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 10:24:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="d/jF8+Bp";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id j5so8485632pfa.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 10:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CL9iuAFdHvdgtxdaP/HOyUMAHh0DlHqSTeztjJ23iyY=;
        b=d/jF8+BpiXGq6dsOpDDsEIKPVL2Ff9ebe/s2huDMGk4sXMEeLLGrj4JY60MCOQ2JzN
         6RaNWI92XEVzqpeAWX0fBAGDXFd9zii+HyBBaPeekQUAZnRxg3s4aFHVdzcTd1NHSjPG
         kmE3qJJ/bEdb61LAUmYP3z1GGZTw54QoanNfuOzb7c7fCig4jpW0fHY4aChuqPAeixaC
         iIOGyusaVYiHiusyKihBi8m5Qw3a1w12z8VeawkakY1zm6QHxQV8n3z1wMZ1V8AEh7Bm
         UHAtKBBW5CVc68TZjhjk3sLE6RIUXMmOuj9d7ZJMrsJZeaAg2mwLC1dWhIKvLRDjPugy
         Wxhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CL9iuAFdHvdgtxdaP/HOyUMAHh0DlHqSTeztjJ23iyY=;
        b=nWF08yLNLOvvroV1VNJ0hUhvrI6wOlJsiLWQKPx68ocQyEOFm3e511DJNxulBJOkpS
         DX6ssOJwKmPSU04V4OionnaQXR6k01DRC7GfKp7YTke+gjtG0b7k692svUQuAriEIkzC
         qUY6ekcxu+UBuPcF3LWenHP01E2Bddva8Aw/On9k7/63VtOodeeLSATzvfq6dnhdHk7k
         zdg7p/mlly8+bUjcdRZa3Ne10oJiAk3kGIefHnZYxZ1OxJkgiVJl9Hq/yKVgzz3aIXqy
         THDs2akNGFI1IbvaRrPaT5HAHW4gWa4KI8+ZwSpMAu22RahI/xxqF98GEAiBEOb/AXFw
         uegw==
X-Gm-Message-State: APjAAAUsjwZawAe67k4pRDDRj9AUQ5EvnkVarg0Ysdhqw6c/s3EZn2gp
	hQ8ImHFRw3qC+szBp0sw45dHF1Clx2w=
X-Received: by 2002:a17:902:20eb:: with SMTP id v40mr10849244plg.20.1552757063757;
        Sat, 16 Mar 2019 10:24:23 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id k27sm14387712pgb.70.2019.03.16.10.24.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 10:24:23 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 2/2] Staging: mt7621-mmc: Modify the return type for all possible values
Date: Sat, 16 Mar 2019 22:54:04 +0530
Message-Id: <20190316172404.10694-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316172404.10694-1-bhanusreemahesh@gmail.com>
References: <20190316172404.10694-1-bhanusreemahesh@gmail.com>

-Change the return type in function prototype and function definition
of the function msdc_do_command
-Change to static int from static unsigned int  as the member error
of the structure struct mmc_command is of type int.
-Align the arguments to match the open parenthesis.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-mmc/sd.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index 8857cdb9dafd..049b312131a9 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -168,10 +168,10 @@ static u32 hclks[] = {50000000}; /* +/- by chhung */
 #define PHYSADDR(a)             ((a) & 0x1fffffff)
 #endif
 /* end of +++ */
-static unsigned int msdc_do_command(struct msdc_host   *host,
-				    struct mmc_command *cmd,
-				    int                 tune,
-				    unsigned long       timeout);
+static int msdc_do_command(struct msdc_host   *host,
+		           struct mmc_command *cmd,
+			   int                 tune,
+		           unsigned long       timeout);
 
 static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd);
 
@@ -535,10 +535,10 @@ static unsigned int msdc_command_resp(struct msdc_host   *host,
 	return cmd->error;
 }
 
-static unsigned int msdc_do_command(struct msdc_host   *host,
-				    struct mmc_command *cmd,
-				    int                 tune,
-				    unsigned long       timeout)
+static int msdc_do_command(struct msdc_host   *host,
+			   struct mmc_command *cmd,
+			   int                 tune,
+		           unsigned long       timeout)
 {
 	if (msdc_command_start(host, cmd, timeout))
 		goto end;
-- 
2.17.1


