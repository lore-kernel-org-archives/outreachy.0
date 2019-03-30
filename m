X-GM-THRID: 6673442126229929984
X-Received: by 2002:a65:528c:: with SMTP id y12mr525324pgp.40.1553922801300;
        Fri, 29 Mar 2019 22:13:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9f86:: with SMTP id g6ls1147290plq.3.gmail; Fri, 29
 Mar 2019 22:13:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwa5acqPCt98ZpoebFdETK5n6eox57mW97mySEmWxwmDqQz3sZP1mYlfFFp58XebYfCPUUT
X-Received: by 2002:a17:902:d70a:: with SMTP id w10mr1378016ply.65.1553922800501;
        Fri, 29 Mar 2019 22:13:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553922800; cv=none;
        d=google.com; s=arc-20160816;
        b=sgMuaLw4fNUy2xE/3ktRtYHniLZO+4u5JQ8K5aJfj8OoFC4OirGw4lG3pYb/uIttnV
         nfBRRpDj6s1OUNGG2cHGvR50Sg/pe+WUDi+7T5Jag346K4Rs9vyu9J7ULPa/3FKe5ulH
         2Tybrp1ixqwUBZ0iN7BQUauLRdeInT12xlvXlJfrist4IbJDvJM6MMlFXkRM6jITE5By
         wMDR3psnWAD3levFp8CltWoIYMsyHJrH949uKduNo59jkfXhdwHQbJaE5NCiHCSDA8aj
         hzFh55tnXz6zL8OnGHYiGr+88TSpH3rKC79qxAdy3jdkWJM5S2EjjEN2HYYOgPKkNKOS
         BISA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=1Pl9f6hQE5g9qqiucAjOh3CNgFdnfslDaHv13WX17OM=;
        b=lJhm1kanB2BfwGx+Cawz6ZZk7Tro7vRhFGDjwcSdFkpYx0pV6T3FQIVgLpkcP7cnd9
         AV74b+PKw4l0i4tVZ0jRfNYMH29cusTFRsMOhkiVslzoCrFyvJN8uNwKb2t6aDZbHJ5Q
         gY2Kgr3Yfi6T8SPEy9RmsLFHeE5rDjk87xYFUxTmOHR50sLWFSeC1bi0dZDGalO60Efu
         7792+xa24zlF+JG51R7v+9vd0qbm/1Mhw/81vt1rpG7NBw/uRNatQiQsPEEPp/pgzHZJ
         KkFgFmA4mlH/MmhPibpQ14tche9ubiFl5zMmwn5v7HEuUFXZRFgmjHv2mv93kU+doGyY
         mG6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d7kFsEid;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f23si305038pgk.0.2019.03.29.22.13.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:13:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d7kFsEid;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 9so1983670pfj.13
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1Pl9f6hQE5g9qqiucAjOh3CNgFdnfslDaHv13WX17OM=;
        b=d7kFsEidSwdxBBS613kN9akzAgKI7fUrMybwosBU7lkDjv157Srhuhj8SMmba0oeu6
         e8wQ0pDN/sLQQwzOSjOUXBoc9p4lVX8wzYwenzUdhfJzagbTtK5TYuvovX3HxYZMa9YR
         6zFnAwoVxpEptdoSncSGnkdieZ+NtBhtFTArEvBEyplPD06ioaacw33lm0GspC0ouPvK
         MsW1bhGwTkI/w9b4n2KIEuqK3b2ENecWfWITJd0/Lr0BSogafwJf2Ozxh9AHTaIPHPV1
         0sRQr/Qxw0mz1850ScjID7bhsAiYMbYHmcE+b+XuXMU6u1iB6owY2Kelu3NqCQKQYjgs
         bVig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1Pl9f6hQE5g9qqiucAjOh3CNgFdnfslDaHv13WX17OM=;
        b=VTPdLyPLe0a7z/jXsmFJudaVRXLUeumHFP63qMGknYvgHX5LC/lIxiezi+gE3fq14I
         UIMK2fiRehbuCk24Y/8S5dKcuFXyT+eJ6gsM1qO9WO45sZ+BVi75/BydRlPn+DLPqeN9
         0t97i+1jS3T/I1/lLTCNu2V5+rLN8R8b8yADEFAF24Dmt1BlULyQ7dR8G5cMnP67cQzb
         GId59XIP+q5oIYmfhFWa3ogZoYNkxMSnw1U5X+9SnFuDfkse4nPYi8jEOwpHpWHHVpaJ
         9KBfVkgo01MWjL4tfHy905IISSp04UVBBMF98SdtBYjyQU/Obbtweg0tN59BTf9uBbwk
         VJpg==
X-Gm-Message-State: APjAAAWu1By44EMhRR8TaRg1Voa83AVujKgVeKF0uaAly8nVc1dAJUmY
	1Gmw5bxDRLD6f6JijvTmS+yKzio4
X-Received: by 2002:a63:fd07:: with SMTP id d7mr49017556pgh.199.1553922799999;
        Fri, 29 Mar 2019 22:13:19 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id o2sm4864557pgq.29.2019.03.29.22.13.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:13:19 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 3/8] staging: rtl8723bs: hal: hal_com.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 10:42:42 +0530
Message-Id: <67501ecc706a99281695c1532fdaf6431fc97839.1553921776.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around expressions.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 7f8ec55..151e4e9 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -1389,11 +1389,11 @@ bool IsHexDigit(char chTmp)
 u32 MapCharToHexDigit(char chTmp)
 {
 	if (chTmp >= '0' && chTmp <= '9')
-		return (chTmp - '0');
+		return chTmp - '0';
 	else if (chTmp >= 'a' && chTmp <= 'f')
-		return (10 + (chTmp - 'a'));
+		return 10 + (chTmp - 'a');
 	else if (chTmp >= 'A' && chTmp <= 'F')
-		return (10 + (chTmp - 'A'));
+		return 10 + (chTmp - 'A');
 	else
 		return 0;
 }
-- 
2.7.4


