X-GM-THRID: 6525083396428791808
X-Received: by 10.31.142.139 with SMTP id q133mr2221876vkd.67.1519246736380;
        Wed, 21 Feb 2018 12:58:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.178.134 with SMTP id b128ls1245911vkf.7.gmail; Wed, 21 Feb
 2018 12:58:55 -0800 (PST)
X-Google-Smtp-Source: AH8x227DGUQyeJS6H2sOnwldiHnjphSiUASaGmHn/wzwFX+uf3ZEIb7mplSMFOAA3dMM7jtL7U9t
X-Received: by 10.31.162.135 with SMTP id l129mr2279413vke.68.1519246735766;
        Wed, 21 Feb 2018 12:58:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519246735; cv=none;
        d=google.com; s=arc-20160816;
        b=qxKK9qKv9XfWV+YooJGBsBUyoiaLH5OHCijH6LNsMVZUZKin7baqCUE9nPmwPBNAab
         0CACMzVfSMhYpbCvNEbr0g2VhxSaISnIagI7E3Hehs6le3M9bN60zQyoPAsVIVfNUT8l
         gpRYqBGYak3xsA2+s1ii/XDj7hJFAN4dJaoqblruX7J8OCcqltRfvSH9b2720Sdsr2Fl
         oWPh9SdV7qOzjwCCRUqmxbxDp54erLu+O88tZxMwnpLlH80nn3JStTjr+7JTLjhqf+zB
         3+gJ9Ua0WCuoQgGlxbbpkXeTmgxmhOkkJWUqXptfC86hX4c0/AqM38dU54tcSUUAdjSi
         tSHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=qSMa8qPqe7NqHPA1rG+trB5UKowpqzS2jVdp4rn9M5M=;
        b=oDLI46X32VN+dLyQJH/D9nbnzN4mOcSSZK0RwvWeB7ncYAhRE16T3fqY1LIdjTvTdS
         gYQTwxBW0t7ROrFGvDf8gn2kjEd+nP7q9d3edVZFYG/0JBouMcWX/OLcTD/u1rZhtv0l
         pqY9mPZK/bSgWfUPu8TRDxg5HqxhnAFP4xRC9ugOTZkp9kL5Q2MLy/zuqaLcD114+9X/
         r9C/qD0assdWuSLPV4knSm7H9/CTv/qQofL+SfbNgWnnEBYaFKB3FvtudzoHhI1m38x8
         qsA8txsMCnmDNjalTPAm3WIT10oJUjoLgU12Grb5hPDrk1I7UzuITs3wrV4SagIKgRZc
         FeLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mg06iOE1;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id r9si1115322uad.5.2018.02.21.12.58.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 12:58:55 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mg06iOE1;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x243.google.com with SMTP id w21so1606619plp.11
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 12:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qSMa8qPqe7NqHPA1rG+trB5UKowpqzS2jVdp4rn9M5M=;
        b=mg06iOE1Jl/kj9XkMPXSVGMpHB3u7WA/3V1tOGgBb+NCh0o/jeDtzuVjnHPG11sAHH
         eTHWYMTx+hakMlIC+ZdU77x+XMIgg6jDlcfTLYWR0aECveHfTLAFoVwB7fgMjNsrD9LA
         U2aCmntSNdA5JWBsbbpaxqCUMpGB3IvUElNTwSDbY9XHzJSavnfVPXEvoKthlNqUj1G/
         Fd6ZHD29uX50SgbpZJMRjkLEgfKoRueUGfbuGHNq08yapC6wJHtmYAMS2JYGGtnf9zKl
         47Xzm1omMi7My2MI0ZnVqHFyg8LS1kyk6qxEPHT10YrAW8W0YG3/RSjWJGHz+hza2jyP
         nrKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qSMa8qPqe7NqHPA1rG+trB5UKowpqzS2jVdp4rn9M5M=;
        b=X9hD/PhV05TCEeN92cMPrHSbDOy5Pa35b/Mlyc0KI9YztrYvFSodDZVDhI/X+POdy3
         eUZU3G561nW/1dDI3l5M2hCdop2buUYV9HJK+Z0/BlPGQRYPCxCGIjoTcD5T9T2SYIdS
         hurJ+zTVLCkR7kDNE/vi+OTKpVYE5rXATyll/wMF5mqPS+oW/OXw1cwwo9ogTJt4RhkT
         oQxp15V30umbfN9l3SrEORy2gzvyWUUlR/feg04fJgshCfz7j/fI3bjVxDhB82T2+Pam
         gXs9wbiS51kQ3ADObQGBMu/16eWU087t3/JkCCcW5XNOVzRDrIxcKCRgrHwjMImUnsV3
         Pm0g==
X-Gm-Message-State: APf1xPDK4OPQdRZ1mVZGmZP/gxZ8+6tw3MtpKfiYZQ+cSR66nGIBrq1H
	uie/BZVTGqgmKtsu1dU0tUI=
X-Received: by 2002:a17:902:4545:: with SMTP id m63-v6mr4193535pld.15.1519246734901;
        Wed, 21 Feb 2018 12:58:54 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id e127sm25582510pfe.157.2018.02.21.12.58.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 12:58:54 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v2 3/3] staging: speakup: remove space after a cast
Date: Wed, 21 Feb 2018 12:58:43 -0800
Message-Id: <1519246723-2977-4-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>
References: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>

Remove blank space after a cast to conform to Linux kernel coding style.
Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/speakup/speakup_dtlk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index f109b51..dbebed0 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -266,7 +266,7 @@ static char synth_read_tts(void)
 	outb_p(ch, speakup_info.port_tts);
 	while (synth_readable())
 		cpu_relax();
-	return (char) ch;
+	return (char)ch;
 }
 
 /* interrogate the DoubleTalk PC and return its settings */
-- 
2.7.4


