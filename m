X-GM-THRID: 6473412482924806144
X-Received: by 10.99.98.134 with SMTP id w128mr1327340pgb.142.1507208806456;
        Thu, 05 Oct 2017 06:06:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.56.12 with SMTP id f12ls494873pga.11.gmail; Thu, 05 Oct
 2017 06:06:45 -0700 (PDT)
X-Received: by 10.99.96.65 with SMTP id u62mr1490757pgb.24.1507208805737;
        Thu, 05 Oct 2017 06:06:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208805; cv=none;
        d=google.com; s=arc-20160816;
        b=P+CYJ87UVQhFYpEY6ZHJJF/CQvstmRsbL27BU6PCm0Dx0LPjryOX/OU2EnCJo71h9w
         2ZxPNwDs3J7wTNooq0xEap4fiTwkujbsbYqJCuwiz1vknJbbEReS5H6TFIrEhtzdL3ky
         9PEMxsMPLhrzSyhBAVSUyzqJDwzC2cYWRg+W6fg+k+LzNErDrIn+ttWHbJ53Po/gV8mR
         pL2wqYceADgRkTSgHxq1iUZiFzNvAc2QRZgV55ikX91fhDuSfDhrufo9T97LaPHOhlEH
         2g/vNbZNevHaXugREMmt5dpJ4uyMvwG6zNgdahM20qBwExjOdbTKzT740v2IOk3+5zor
         AYbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=OIkYqpHTA5aB/6VJ6m/s/AJAN6B19J6Jlm3hPpQWNx4=;
        b=vwbFlcH15PzYrU5WNR0CC9oyFf41itsMPa9qIECceWCLMHljatOhPZWByQ7pkRotYg
         pflAYl0oObRYAWAn1ZTMXAdtpspsYuwgk2+/l6wJmUqKofav0EmztjHCaJ9FWyAEIzL3
         MnjJt1Gt40qCWYaRGSfoMpHo3BbOLCJOeoVyYseFN43DxKtkJkKrDpK+CibWvv9cWGTI
         GRjUJ98SFCI/pYOIX/pUpldYg/AdPmNvXQmi6GkY58AGEWLxos0ut+QTvifax4PbxIQV
         3gxrJL5ahxni15201o2UJp5BSVvPBvTnCN9iTAYalajsSCejxnqIjduXd9TdeAuYpNjV
         k8hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JP8POidu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h3si91625pfk.9.2017.10.05.06.06.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 06:06:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JP8POidu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id o1so14428046pga.4
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 06:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OIkYqpHTA5aB/6VJ6m/s/AJAN6B19J6Jlm3hPpQWNx4=;
        b=JP8POiduFx4GCTAwjiSa1f37Dzb8BTJoRQXTwDUfRf8g8GQTfoHblCVK/m4VdIRxFh
         8hcespOwCBGOXD2SAFi5WWK+BkiYx8ZKQg04ekRcrfyljktg61SPRdbn/bk0OxC7MeNd
         SfSLLTEvphZSDP8wftil4V8kdR2lREw5UBH/hJgOPIT/56GZwCb3GJqhe5H9qc3yEay9
         2T796DKST7tybAC5eEgzXoagN+jSPF3sJh3nM8frNO0Bl7k06ckagz81kjgPhahA6W1V
         LmSbjuIuMxWAcGGvHHdjXdE3Nw4QccrlyUlTUiuC6LCiAchife5LIp9SNX6hUR/swFNT
         hVLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OIkYqpHTA5aB/6VJ6m/s/AJAN6B19J6Jlm3hPpQWNx4=;
        b=ALFkhHZUB0fTh1iTTywTIALkrlwos89qnhFnn14dJgDDLpcEVA1HnqZ3WJfuhFkHYx
         NKK9rvF5HSNBTNajVDDuoj6RsLEbJmR42ONJUPuSdr7UUJp3Io5HLtUNfJ6m04SzgjMB
         UTqGTF0RZQ9kDhvhFF5x0/vESjwtZWkQXC8ElEBGRQuleVDy9GAQ8PQwMYQl3BFJLgZu
         tGyBvSO2j4WmVtaDuctRfc11pDBLW2ahRDnqWl6CRJdGlha1PBF4TFm/S95aXuz2dxyV
         X9lU8jy7SaJCDMtjr8NQBLxdc01KqOKGJwboSr16BCvbGcsQVjRhY0iXg/8k/4DL0btg
         MmtQ==
X-Gm-Message-State: AHPjjUgyYrVYbqbpI2nN9h/Up7ky2gmU+fad2nupguVb+8ow+wQbgePp
	pKWRhZn3sTyp+U0fFQuEy3M=
X-Google-Smtp-Source: AOwi7QDcEDmIe8GSq26RiObgBxild2VKMSChtxL9TfKG9dSSWLjyWLkrfdMf+GlZQBQLVSaeDb+4Kw==
X-Received: by 10.159.255.10 with SMTP id bi10mr23129752plb.433.1507208805486;
        Thu, 05 Oct 2017 06:06:45 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id u3sm12368370pfu.5.2017.10.05.06.06.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 06:06:45 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 3/7] staging: rtl8188eu: use pr_info() instead of printk()
Date: Thu,  5 Oct 2017 18:36:23 +0530
Message-Id: <1507208787-18008-4-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>

Fixes checkpatch.pl warning:
WARNING: printk() should include KERN_ facility level

Replaced printk() without any KERN_facility level with pr_info().
The statements before use pr_info and the new line character is to be
appended to them.
Could have used printk() with KERN_INFO level, but used pr_info() just to use the same function as that had been used before in the code.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtw_debug.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_debug.h b/drivers/staging/rtl8188eu/include/rtw_debug.h
index 9cc4b8c..33bc7f5 100644
--- a/drivers/staging/rtl8188eu/include/rtw_debug.h
+++ b/drivers/staging/rtl8188eu/include/rtw_debug.h
@@ -106,9 +106,9 @@ extern u32 GlobalDebugLevel;
 					 (((__i + 1) % 4) == 0) ?	\
 					 "  " : " ");	\
 				if (((__i + 1) % 16) == 0)		\
-					printk("\n");			\
+					pr_info("\n");			\
 			}						\
-			printk("\n");					\
+			pr_info("\n");					\
 		}							\
 	} while (0)
 
-- 
2.7.4


