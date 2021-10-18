X-GM-THRID: 7020448359173324800
X-Received: by 2002:a0c:ab17:: with SMTP id h23mr26252290qvb.25.1634575510581;
        Mon, 18 Oct 2021 09:45:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:df12:: with SMTP id g18ls4971741qvl.10.gmail; Mon, 18
 Oct 2021 09:45:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwM/YCHrPM2Up9Jdz3RwC4JIBTmIfMaF279bDx0fveP+UErfVdOUswzXwSFfEAWg2hzDkHh
X-Received: by 2002:a0c:8cc5:: with SMTP id q5mr26618247qvb.52.1634575509686;
        Mon, 18 Oct 2021 09:45:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634575509; cv=none;
        d=google.com; s=arc-20160816;
        b=gYjKxPf9gM1ZwYQb2uOHIqEvaX4u4fNUx6pnZgdeXjx/SckZUgdKgT4lVoE7dw3EVJ
         OSj/j2Pvv5UdtfCnzCuzVMSpcflZuesrmDDYOl4PqreXJAb/df5zlx1sUUiznhg4/1QI
         eZ61au1Tl54AGU7N3LwxTrJ0wPPmu8ERB4CcTfi73i2v+B5ZYP7ZrcDpCgBSVXuKkLGz
         72lwLdzKtK9PTgHjQqy0AaXJ6IcI18FdvBhKoDUchZlD/CbRg8I3O6m6RjfOt3goAOqi
         PwgXFEFSuZW3q4Tdnx+d2hJ46HEX7z7aqKRxA39KFVVNAaa+R7EldtVlm4hndRegs/l7
         byPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Kll8XyBSHio094ZvOzwpkeAySufgB6wSEuINYTlKh2o=;
        b=o2Glx3NfnWXRDVm0Jd6pXKP5QqdWnfd4jChXW7GIIKq3C9FqKAedk9PwKOoCQ4m2Qf
         K+d/79Mz6unh5y9OWv6idtyBDzB+Eue2pSVTRtFU1YJJxPN3wmvVEc+j3IG8rP+JXhgi
         z2TAJlM7C22jWWp3camEvdPgct2iay2y3wgLQ/yu6PvZ4f9CcPuQYk1BE2Vzp9algs37
         53eMBScMT0iKLniIRbAcpchBQMpYF23dpjiL3JseJmjM1Q68grWfA/QEmVeznqvLB+zG
         ByL25zH3eHyD+7wEYe18Xj7IxfXCu9Fm+k3w4nkbvyvuIV8cgUU3s2z1mygv3PfGthvd
         BKYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q6rhYdU8;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id i13si114324qkp.1.2021.10.18.09.45.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 09:45:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q6rhYdU8;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x532.google.com with SMTP id s136so13578223pgs.4
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 09:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Kll8XyBSHio094ZvOzwpkeAySufgB6wSEuINYTlKh2o=;
        b=Q6rhYdU8gcvtVhyteGfhrKZGUEx+9Jhr2XoR/V1jWy0g5K0F4iluMimCULz6fsiG60
         5o7u9JfMP6sQB3/DtegmEtEej5LfAs7uTVqc/U7Wf8jYQGngHK1tbKNT9L0TjHdT4yoq
         0iSbLbKjD0A9IHkC0RkapKjZZCczLZ5mila5JjfpUcatKtxLJmmT5GqPYTrr6HZpkmxQ
         Fw+udEzHAFhIkd6csk+HCTdpCVoimVC7q82qQ7O4v9/lDk5KdnLBVWSk+stj6GbHKs65
         G4Bz0OWEAC8c34u3BnABWfV4VpGc/9fr/3Msu8YclgnNP57tBXM4Xf8zaYddiX8ex11I
         Avhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Kll8XyBSHio094ZvOzwpkeAySufgB6wSEuINYTlKh2o=;
        b=liSdHh61XsUbsLpKBnlwr141py1vBaSvSSSSUKLmSLce5Gk7cNea2xOjHm4Cx2rTTn
         lAA6TQVeLgWQZIJWEVnZOG5t2NOx3pPJS9teqso6qUP0x6UxQ8D7SfFVSmHLic30d4om
         oIUo4iUTMwJmq9vNr60viWyik1DOKSsyEfGRqkiftRKAPik2CStiHYPQAhwhNyVBkFW2
         lbVz6Rms5Gi/2frpAldVgqJLQxxFW6286NqS4OrfbAlpKyePRXLbPStu/W+IIWdI6+c9
         tpF0o5NjhA3nipOik/nXl2VxAyZoraBnRSz3AgL9q0dIiPP7AZGxKAHpAA68OyWnUUsS
         oRlw==
X-Gm-Message-State: AOAM53060o9FEHEHJ/AhFpA1wXuf8Cd4fiFygQnMiGtC4JAQBJXXCFRG
	g+oKh49d/SsgQlJxCRuAC+871bVpn9Maew==
X-Received: by 2002:a62:7506:0:b0:44c:5cd7:cbb5 with SMTP id q6-20020a627506000000b0044c5cd7cbb5mr29547248pfc.52.1634575509169;
        Mon, 18 Oct 2021 09:45:09 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id d12sm13185657pgf.19.2021.10.18.09.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 09:45:08 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	mike.rapoport@gmail.com,
	kushalkothari2850@gmail.com
Cc: Kushal Kothari <kushalkothari285@gmail.com>
Subject: [PATCH] staging: sm750fb: make pointers in array const
Date: Mon, 18 Oct 2021 22:14:31 +0530
Message-Id: <20211018164431.26462-1-kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the parameters of functions from const char *g_fbmode[] to
const char * const g_fbmode[]. This additional const is needed to
allow us to fix  checkpatch warning, as well as being good
programming practice.

For the checkpatch warnings, if we have a set of command line
args that we want to check defined as:
	static const char * g_fbmode[] = {NULL, NULL};

checkpatch will complain:
	WARNING: static const char * array should probably be static const char * const

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index dbd1159a2ef0..3d9b4b0efcb1 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -33,7 +33,7 @@
 static int g_hwcursor = 1;
 static int g_noaccel;
 static int g_nomtrr;
-static const char *g_fbmode[] = {NULL, NULL};
+static const char * const g_fbmode[] = {NULL, NULL};
 static const char *g_def_fbmode = "1024x768-32@60";
 static char *g_settings;
 static int g_dualview;
-- 
2.25.1


