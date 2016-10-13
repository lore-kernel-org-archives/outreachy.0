X-GM-THRID: 6340772217806127104
X-Received: by 10.129.101.215 with SMTP id z206mr2049267ywb.86.1476397653517;
        Thu, 13 Oct 2016 15:27:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.105.201 with SMTP id e192ls19872itc.11.canary; Thu, 13 Oct
 2016 15:27:32 -0700 (PDT)
X-Received: by 10.66.7.131 with SMTP id j3mr1874791paa.113.1476397651981;
        Thu, 13 Oct 2016 15:27:31 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id x14si2120670vkd.3.2016.10.13.15.27.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 15:27:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id 2so4248128vkb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 15:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JtKTLdfFqUurpCzIQy9BBmt15asiS4AEKYLZHTJlzQ4=;
        b=L2A+P/dwXXSKIBVojHN2pomGxsJBeoR748b+wEoOewrBDXah5VDdM3zyjL9a19Aak2
         N9LqI4le6i0wpAay7E1O3b26eN8YhSCVFV69E0mzyxy/FhpSEFbP9NFY7wTmZhPmian0
         9FjgpWflDAL+95RqrL94hNqLpdtm6I0d4dW8jJS3zGOAKsr6dOiBTAs+C9nynOsE7UGW
         Z8I83cQW6uSL/oaSNR5AfCkiyK2Nli2YsCJUbf5KOd9abj7J/60XvUXuIwYG/NTpg9JV
         0oNAME9BUPGQRkJ8goLK8IKRSc6/yrkIW2jMC+B1ol3jrX1CQi7JHn79w0Wy/ZfTEgFv
         mTFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JtKTLdfFqUurpCzIQy9BBmt15asiS4AEKYLZHTJlzQ4=;
        b=IARPjN66ERqMNXZm6jaS5llIkcNmsrTpOJIWeyqTcihDbLpFXCqyY2U8UYlR9R4tTL
         ek6ugAtsV9HcX8pEmf8gx7pMJcgVP7PZTj6tznf/13IoRxSBZsM4S4rp9fg+emu/xMef
         ftaPYuhQH5ki2jOiB7QeyVvHW+5z/GZ9pYmhCH7DMBfRz8Msw5+GHXPJoPt+V7SOae+U
         cHG/c/4uEWbys2thh/bjccpsf1j+QDaZsnN0Tqu+b2XLUas1WoIxdldcbAMDz/kgwcSr
         4A/lo7iER75t6zV3BfiMLMbDN1GKXydHa6D9QcfsBq245hFcwuR+jjhQdSpx6Ngt9x5f
         wYfQ==
X-Gm-Message-State: AA6/9RlLuvhaPPk5AatJ1/gSPIo0f7eiLgLkBUV9hBmxjmJcwKCrjBj/oKZtF2zFVkjAMA==
X-Received: by 10.31.132.129 with SMTP id g123mr6478260vkd.26.1476397651787;
        Thu, 13 Oct 2016 15:27:31 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id g65sm6154107vkd.2.2016.10.13.15.27.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 15:27:31 -0700 (PDT)
Date: Thu, 13 Oct 2016 19:27:17 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: sm750fb: Remove unnecessary comments.
Message-ID: <20161013222717.GA11369@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove function comments that only restate the function name.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: Rewrite git log message.
 As suggested by Julia Lawall <julia.lawall@lip6.fr>.

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


