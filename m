X-GM-THRID: 6613557552943726592
X-Received: by 2002:a81:7015:: with SMTP id l21-v6mr17394646ywc.23.1539838861329;
        Wed, 17 Oct 2018 22:01:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:9908:: with SMTP id z8-v6ls8312971ybn.13.gmail; Wed, 17
 Oct 2018 22:01:00 -0700 (PDT)
X-Received: by 2002:a25:9305:: with SMTP id f5-v6mr16482376ybo.75.1539838860446;
        Wed, 17 Oct 2018 22:01:00 -0700 (PDT)
Received: by 2002:a81:e4c:0:0:0:0:0 with SMTP id 73-v6msywo;
        Wed, 17 Oct 2018 18:14:31 -0700 (PDT)
X-Google-Smtp-Source: ACcGV605Xy+8KWReSfhQkudnkqgo18H68tpW53nWmbNoF3JbUFQfx8RROuEe8k4K4W94Cl36qwzf
X-Received: by 2002:a25:5d6:: with SMTP id 205-v6mr17874260ybf.52.1539825271652;
        Wed, 17 Oct 2018 18:14:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539825271; cv=none;
        d=google.com; s=arc-20160816;
        b=m4Hv8jeLkhE5j7333Yv/w2ZQE/RtG3DCSMJCIxcImFj8s/qiiuibBmoxJ9jeFgLxn+
         /ZWbvbfzT56wyt66rkymLUO6vP/scbv2XDlRqE27gOBAjS3HyTD1URxFRU7hF/8lNKSS
         6lT/0fpKyTFLnrTrQ5j/WmWX8tRqLrORZZWTUT/ai5uBoi+EyUovfxXgCKPUUW4NIzXr
         EMQlQ8bbXzrpeoY+CpxxcXJsR01mm8Lr2UZaHdVMdrphhyw21ZfXiaJPXegXfNF/kyxl
         aJ/ec1+FaAFM+1RHJrDwTyOrfKFLn+/08xj0pfBcwbw8W4O4UBzFVnGO+aWttwQVB5Ie
         NAcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+MWXjUgTajU+vyQlNz7N0dPW5n/mtYyWDmLzGD9dTLs=;
        b=rVFFoTuA6b2dq88fwZP1PqDlgj88puy5STGKq+p/kWX3F40rbaLPZZRLBSCqrsEYdh
         D840HpVnHuxN010SW5xmNrGx+PS7GdRcd3etQmu8kCCMwI2/FYh/Z9f0sVzD0zLjPPVd
         bnvAi24wPil3Fnfh5RanMquBGOF3bPDewX+DZ/N9WW0tJ3NcZrg5C0Zv91QCUv2GNqbT
         kKqhSuTRU9cAbBnsq/r2pEpdsOXW51bEE9yaonPoacArSDAvjfx89m9GdUYqOAIxWx0o
         A/08W2VBuRxftDybGddNH5eRlAMeoWiHVcRZXLZQ9DgSIIu9gjsHtyGKYZeO5XDd+Hc+
         wOqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H4xPnt+3;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id g10-v6si799113ywc.0.2018.10.17.18.14.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 18:14:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H4xPnt+3;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id u197-v6so22671965oif.5
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Oct 2018 18:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+MWXjUgTajU+vyQlNz7N0dPW5n/mtYyWDmLzGD9dTLs=;
        b=H4xPnt+3NiZwO3EPLvgnUkoDm00QW3Wf2v5osO6sNLRVioT15MZC2FjCElnEuSpjC7
         TXfrQY3xAPrdugnQ+DOQwUqXNEKzZK1RcJawqRkSIYT8IkmhdLT6sqX84mtsbQpbR1jC
         PB7/Xv5a97AeucQD+Qj/7wTAvG6b6lkfOS9FXKiJ+Gtt9NpvhguVUp0cePhNrdVqUwA9
         WaAXcf1Y7erCWQ88UTIOg3+/l7sXEJzF6UPlW02zgJ9FkLy8IlcuLgnZgFDw+sdNmMlG
         5Tx+9KC+9Flu/9kE4uwMgDLdHd/6nqbIs2TTwv5Jseus2b7AvAcKueYdj7h3gSROcddy
         tEIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+MWXjUgTajU+vyQlNz7N0dPW5n/mtYyWDmLzGD9dTLs=;
        b=SRy4lsbOPFexgtdUImkCbvftNy9ZS7eAMGQ4BF9WjInm/4wtKL6cKzhJw05o0nsAXw
         FsR/GgwuBJeMtc5lErY3MD1vJm+1l99t5pGADcYmBR6nMR9Q6YSKULKZjqj28jsPpyZD
         /vOOufCbTz4yyw7/tPBvqOouQkWHBU1zUf5m1P2JMdnxiBF+Urev8XeDDwTQtDwsZZeW
         Lq7QH0EqKTMlfh92m8xuVJmC/d5kzQia20L+PUXgdnxUsijbeiv7/tF0YEf9PV9bHIzM
         bNdBfb/Sz1oZXBXNspqIO/170F6d82Sb0lbku83vjpmAhHsAh7WDnemDF0errM5xoCFM
         GrWQ==
X-Gm-Message-State: ABuFfoiAhXSqbk/5LVybMK+8MA6gbUrzVC13PWNQR57QYvOFXlUtqayT
	bOJFA843On6wooKwWF5ncNfo5Oc1R7Q=
X-Received: by 2002:aca:5f43:: with SMTP id t64-v6mr14231540oib.115.1539825270989;
        Wed, 17 Oct 2018 18:14:30 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id q5-v6sm5520946oia.54.2018.10.17.18.14.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 17 Oct 2018 18:14:30 -0700 (PDT)
Date: Wed, 17 Oct 2018 21:14:27 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: media: davinci_vpfe: Fix spelling mistake in enum
Message-ID: <20181018011427.GA3096@v>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix the spelling mistake in enumerator identifier
RESIZER_MODE_CONTINIOUS. 'CONTINIOUS' should be 'CONTINUOUS'. Issue
found by checkpatch.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 2 +-
 drivers/staging/media/davinci_vpfe/dm365_resizer.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 2b797474a344..6c5fcd6c691a 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -499,7 +499,7 @@ resizer_configure_in_continuous_mode(struct vpfe_resizer_device *resizer)
 	configure_resizer_out_params(resizer, RSZ_A,
 				     &cont_config->output1, 1, 0);
 	param->rsz_en[RSZ_B] = DISABLE;
-	param->oper_mode = RESIZER_MODE_CONTINIOUS;
+	param->oper_mode = RESIZER_MODE_CONTINUOUS;
 
 	if (resizer->resizer_b.output == RESIZER_OUTPUT_MEMORY) {
 		struct v4l2_mbus_framefmt *outformat2;
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.h b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
index 00e64b0d0295..cf560a33d862 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
@@ -23,7 +23,7 @@
 #define _DAVINCI_VPFE_DM365_RESIZER_H
 
 enum resizer_oper_mode {
-	RESIZER_MODE_CONTINIOUS = 0,
+	RESIZER_MODE_CONTINUOUS = 0,
 	RESIZER_MODE_ONE_SHOT = 1,
 };
 
-- 
2.17.1


