X-GM-THRID: 6536488278592323584
X-Received: by 2002:a25:8248:: with SMTP id d8-v6mr11983254ybn.46.1521894781712;
        Sat, 24 Mar 2018 05:33:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.204.84 with SMTP id o81ls447665ywd.3.gmail; Sat, 24 Mar
 2018 05:33:00 -0700 (PDT)
X-Google-Smtp-Source: AG47ELv1Ymyubnds6N5xzNmnC95mM0Iy4CpYq0JFYVeUb0x6TpkUyDCGYgi7K9Zy12AI8Etyedbp
X-Received: by 10.129.228.76 with SMTP id t12mr12757637ywl.158.1521894780649;
        Sat, 24 Mar 2018 05:33:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521894780; cv=none;
        d=google.com; s=arc-20160816;
        b=WxITzKHbqvLCnKNk6MdKbPgZ5GJoBEyzOTHrmFKR78G2s8IxWXv+dSiyFkEe6dubZV
         ZnwVb/yKS34C6Hb6nv+bCz8WuCKujPQroHmGRMhxlPtCxi0f6w371HqQps65gE5rY6au
         9QYu8HfLbKcRSAH8XDi+1OUsg7vOrBWuh9D+yRCdEkEwMFk96PIaT4Ay3tB5KOkdbpdQ
         OXKyQ2uQMAxJtJO2bFZmF430Lxo2wvZZBntxmKG2KCRoEdGxRfhVwIXlcKWv8Va2Edn7
         POwFC6wODQt70d3F5zSrKBbHZdHSyHMYBgIkFxUDkBHYkSwfC/+KB8dfL03Je/IjYRYs
         UPWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=T1L3BBsmjSjsjBiLUIxY0raIlCflT1/m0iJHwcHjE0Q=;
        b=PxuIqtAx0qOWfGdhHwfbE53VTHSoJo6qeUkjXTDrrwlfL52lzcaneKJM91MumSb2YU
         5XnW4H0oO1R0Yyi1huofnUv1aHlT84BDfHqb4pyhHaekXdaJh3ujP/5xeimN9K2WLemD
         Meyiq6gmDeMRn6UvA9zT35f0i1P8OP7a5GS9SqqeYRLF/PVDwCHMTZvmql8DF2PqsmJx
         6vSbuVKgDjb5y/rhI2zO1juJwRAxOM+OS4xDpNJGC3LXLLFWiBsi/O4W5an58suwLr2z
         ZSAbHB1RF6UOgR+TRVuRF9SVEAbGS58njcdOYH3/O1FhXunQ2hRz0KiPM2QfREiARBnO
         frjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=fJgI6ztP;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id g80si858292ywb.2.2018.03.24.05.32.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 05:32:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=fJgI6ztP;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x242.google.com with SMTP id n15-v6so9062090plp.12
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 05:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=T1L3BBsmjSjsjBiLUIxY0raIlCflT1/m0iJHwcHjE0Q=;
        b=fJgI6ztP3djMhKQkBf960A72sRE8+8+OM49mex2/HEa+kO8wU5O+VBsmhK9Yy8lD3y
         J6s07TlJIhG3p08yZ+MhLWvUHk5Y4TTIKs9N36yLBnm1Qce7a7r/zvKX6lIYnSeEBR0S
         bDWzFnl4FuiOMTHV0HhO9I3o4I/hTQKl/PkFQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=T1L3BBsmjSjsjBiLUIxY0raIlCflT1/m0iJHwcHjE0Q=;
        b=cELxG36n1JKKqLguK3VE8GNoL5Mw9taMwoCspsk4F0AGW682myBYFfYVOn88UzUnkZ
         39ZK2lprMDlrje9/5H4mgh0dqw3on4BkQG/0fP+lptBhCTY27gQlqC6TeQv/g8ErvZBp
         wxvEzlY08g//7HWd0dDR4SYz7fqOO0unvMAluPoauMEpc6yg6YyXyxU99yeBqEV625ne
         btaSLZ3VLhzKdL9GG8RI7Jsk8j3VMTEdU2Px+umDgZwnPptqRnXqpPRhRWYlkt2A3iZm
         OOV11GzBK+1CFkK2LqMRaa7OuEvd4ousUudNc7AJyFwWejJWO4MVGinONWHvDvmDMZwZ
         21qQ==
X-Gm-Message-State: AElRT7EqREedjvS+mbLKxOsNe2l/IKMLao2iBjskKCs7592M9zpMFGmB
	psPHDSPcCVrEgtOb/1aUhP+UmlFY
X-Received: by 2002:a17:902:b408:: with SMTP id x8-v6mr27294667plr.7.1521894779512;
        Sat, 24 Mar 2018 05:32:59 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id n13sm26128092pfg.45.2018.03.24.05.32.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 05:32:59 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 5/5] staging: media: davinci_vpfe: Replace explicit use of function name
Date: Sat, 24 Mar 2018 12:32:39 +0000
Message-Id: <1521894759-28450-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Replace use of function name in string with %s..., __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 857b0e8..a5ab161 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -945,7 +945,7 @@ resizer_get_configuration(struct vpfe_resizer_device *resizer,
 	if (copy_to_user((void *)chan_config->config,
 	   (void *)&resizer->config.user_config,
 	   sizeof(struct vpfe_rsz_config_params))) {
-		dev_err(dev, "resizer_get_configuration: Error in copy to user\n");
+		dev_err(dev, "%s: Error in copy to user\n", __func__);
 		return -EFAULT;
 	}
 
-- 
2.7.4


