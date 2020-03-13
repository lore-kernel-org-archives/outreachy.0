X-GM-THRID: 6803797198848917504
X-Received: by 2002:a5d:9509:: with SMTP id d9mr14429167iom.127.1584132513486;
        Fri, 13 Mar 2020 13:48:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:c534:: with SMTP id m20ls3071414ili.9.gmail; Fri, 13 Mar
 2020 13:48:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtKGdfvI2YlsVxPFeGSmP0HPUd1zUa8R2ariB/Zcp/RTmClBPlqnWyyQIRahEAPrDBespjW
X-Received: by 2002:a92:280f:: with SMTP id l15mr14119088ilf.188.1584132512227;
        Fri, 13 Mar 2020 13:48:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584132512; cv=none;
        d=google.com; s=arc-20160816;
        b=thzPCgIc+0DeAE28AIzw1jQUzLlp58pOvhupxaUfZZACUYfCYypLI9jmPhNxqIUqQN
         UG8eB/Li5fS49YLVym7F+d9HIsU8xOuTcVhCAHZmCNBZLevCI0N4gtDcth8Fp3nnwESN
         TmFdLskLxwXRvmHXzvo9ho/kucP0vGwNqGgO/Mrf9CJnOcnEH6mdXl1kqJVN33t5T3PQ
         xQiuh1firHGLNZoqzuVwUd4zKV4cHFyQd9WfSOpawY+hrsQc7lA4F55DmyOGpMH39qXD
         5q8p7M31b8d899JUuOYPYUqVfsyDn3fUWO5msg09i4HSuVQApkwFSvGQT/uIn8+31FOQ
         3akg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=tl2VgBPOjhJXRlWQIvQeCL0Assl6ZS2hPWUgBhRHOAI=;
        b=fqrSG0BSTbfombrYjJVtgqsp1YQ17DCK/h66DR7+fNMyyQaQVX2Z5mQ1Xt/UKvZ6EK
         uZn49yOOz8Wqg+kF5j/YeMEkjW5ePsLiJsZo+7txjz/B+xi0PY1ma3QaivKPDEJrDAcm
         GMMuxl/9WSk4vl2WD2tgcVQzntgv5Ssi6vuU30NcU8PtBZG0LvZLwZ2FGVunjAycvwN1
         Vey373ittk2t2xITFgR8ONrS+ucekz/W0n6s08dFWvF4Q98C9do9qK6iadjg7JvsqRun
         LMrGDBjf4bVE8oMxBePHiFICjiRj6jFV6GzaLQfRqe2ulIEljSQvu/7Nn1kneCrEToVj
         1uVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=sbw7dLom;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e7si429156iof.4.2020.03.13.13.48.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 13:48:31 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=sbw7dLom;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x443.google.com with SMTP id w65so5958859pfb.6
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 13:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tl2VgBPOjhJXRlWQIvQeCL0Assl6ZS2hPWUgBhRHOAI=;
        b=sbw7dLomPQ4IT7x0zcu7IgxE6BfXp9o9b6E4+4w+7b8Al2rwuXEXOJEx1kxt3+dLrS
         NbthmW1nxryTzWFAz7cM7s4JUSs8UoiFNp0J7hqNXrddw64NlVGs0bZ4/Em+tPPIxeFR
         yFx47NO01TsUutmbuHfhrgWTL63maN9jJoCSHT3fxgKvnJDolly1MefRBbSZLZqcEWLF
         u6OSoG8qOTKeZ6iy7nEaz34Yy55pc3sfUe15BCEFm+kkIOT7SzDm0jwL2r3LGAYtKLJX
         fk289UJrLBU19FNfQ1mNs2Z17V9GHIapM6bQPXm5OgOWcZ83fuDWOIdiVM+0cVu5kZNC
         zRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tl2VgBPOjhJXRlWQIvQeCL0Assl6ZS2hPWUgBhRHOAI=;
        b=Fzr7ufIcB1ugzprGQ7/6TjSqE8zxjoRzyw4C02voAeKvD2mnJgnmaWlxW/spINQMno
         Dn3fnANhVfy1UvIrpZQL0pRsV/O4/e0T1dVPlpuz2usiEL7Jjz3aHJcvLWafZlBu62RU
         aukQicezD1j0LPX+K8KI+P1jifQ9oIIe3w/7XVKuHHLbetHspbJOoInlcjUuW1EdQ+3n
         RvjLARvZ3uat6OlhOhL0SxJ0aB4FzxQviEYAIC6lQIVRbRzUsG68MQVepeXzryXupXDX
         /O/3kMJQobMEZTJevqWXY48mcejD1km+D7MkRNLafzLs6HcL2LuLffk3eLFa6KNVMG0+
         fXuQ==
X-Gm-Message-State: ANhLgQ2VHYLZGe/DbIo7xymVWaYB9Qd9Xi9TXL12Dm0WWjci3G0cQrkZ
	36Vf6EJADg2e7QAF3zxvE8Zhmg==
X-Received: by 2002:a63:140f:: with SMTP id u15mr14154052pgl.277.1584132505259;
        Fri, 13 Mar 2020 13:48:25 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id x9sm34026075pfa.60.2020.03.13.13.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 13:48:24 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 5/5] staging: media: hantro: add parentheses
Date: Sat, 14 Mar 2020 02:17:39 +0530
Message-Id: <20200313204739.32676-6-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313204739.32676-1-kgupta@es.iitr.ac.in>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in>

Add parentheses around `reg_name` to be safe of precedence issues in
a Macro in file hantro_postproc.c. Warning reported by checkpatch.pl

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/media/hantro/hantro_postproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index d99238f4753c..c731cda822c2 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -22,7 +22,7 @@
 #define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
 { \
 	hantro_reg_write_s((vpu), \
-			   &(vpu)->variant->postproc_regs->reg_name, \
+			   &(vpu)->variant->postproc_regs->(reg_name), \
 			   (val)); \
 }
 
-- 
2.17.1


