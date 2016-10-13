X-GM-THRID: 6340772217806127104
X-Received: by 10.66.246.71 with SMTP id xu7mr869087pac.168.1476326076327;
        Wed, 12 Oct 2016 19:34:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.8 with SMTP id j8ls2106061ita.11.gmail; Wed, 12 Oct 2016
 19:34:32 -0700 (PDT)
X-Received: by 10.66.250.137 with SMTP id zc9mr935328pac.151.1476326072725;
        Wed, 12 Oct 2016 19:34:32 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p70si1377638vkd.0.2016.10.12.19.34.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 19:34:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 83so1829358vkd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 19:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+QVXWGcVq/+tzUVOa69j6jWeOsQKN745GYAb+E0uUKI=;
        b=E88RLWsQ5hviCDuvmce6vkkx18WrnvjCj2Weils6gDDJixc1/kFs1KeuS73YhpHKcX
         nU6C6CLjODSfqlb55x9jcseGGpVV1tx8TLnefVxVBxvIgPT5eoNecspbs6+KmFX06kRN
         bP6PahH//IqxmphaVMV6LV2wMSZFCwGs7oA5HYTwXSy6FO33O0N2az4i9hiesvWfooyk
         HT2yYEZSIKSPFdbLMuBU1ZjH/hRJkP8/bEf5L/kILxmvYRGfFv3IFPsHoqL7kSYAbvBQ
         tDbnMuTLlZE5vArNa7NhsJgshQfnx54iloEv4jAYI7bs2ZNCabi19LX9+EWCPsqc4Vgz
         G1lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+QVXWGcVq/+tzUVOa69j6jWeOsQKN745GYAb+E0uUKI=;
        b=g9fgnlRUfqQStxQ2DGWKRFGrRqURmJxRvzGHWRx6Ho1ndKW5iJaUJXiv7OTjndEs5J
         55Yvt0G1MN5KL8V8n16QG4RD1MzWOgG9xwxxIYvanuyZXzFMcR9+PO80E2PvxGOQ2wH/
         so2WdLk/LbPTLwh0o45NZ/prLs3PoXqJjTFhgoS2dZzvQ7lM0taxAq76IfJi9zjMP2bW
         1/geZ205XuM8NCDafeh6h0y2PLRaf1VrnF3hREhPxzKaWTyjmio4tvmCVP5pKhQgo0yF
         E4VUp1E0OPVImJ6dPOj7wgw3aKhyav9E4O+7v7p9UfsC9MCP+0AuDCQkuwq4JVVVz657
         PX0w==
X-Gm-Message-State: AA6/9RmvoSO3ZVqm4xZxJ6wStvhf+0TTgYTw7Lwx/I1fl0xu/r3eaH2I23rgs/bojsMvAg==
X-Received: by 10.31.229.133 with SMTP id c127mr2941354vkh.153.1476326072427;
        Wed, 12 Oct 2016 19:34:32 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id o187sm4378975vkf.10.2016.10.12.19.34.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 19:34:32 -0700 (PDT)
Date: Wed, 12 Oct 2016 23:34:27 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: sm750fb: Remove unnecessary comments.
Message-ID: <20161013023427.GA23337@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Comments are needed to help the reader to understand the code better.

Functions shouldn't have comments to restate their names.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/sm750fb/ddk750_power.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index ba0b3f5..7b24f11 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -15,15 +15,7 @@ DPMS_t;
 }
 
 void ddk750_setDPMS(DPMS_t);
-
-/*
- * This function sets the current power mode
- */
 void set_power_mode(unsigned int powerMode);
-
-/*
- * This function sets current gate
- */
 void set_current_gate(unsigned int gate);
 
 /*
-- 
2.7.4


