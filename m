X-GM-THRID: 6803941009110597632
X-Received: by 2002:adf:9c8d:: with SMTP id d13mr22356212wre.6.1584165964763;
        Fri, 13 Mar 2020 23:06:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls6027643wrr.4.gmail; Fri, 13 Mar
 2020 23:06:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtMaxEv4G9NDrbOjS18emlOrqw9CQzLOxjzkugkv53t2+xQY7rBjJ+4qHt3zHaXUq/U7ccD
X-Received: by 2002:adf:f289:: with SMTP id k9mr16023969wro.220.1584165963415;
        Fri, 13 Mar 2020 23:06:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584165963; cv=none;
        d=google.com; s=arc-20160816;
        b=Z6LvEnGcg8a1gat28cM+2EU5yJ9/AC07E5jOfF9VhXbMd7VZ8LPaMtQDDSNy3i2Gk1
         1b+1rK62RiayHoVHk+KBYVm0YA6ed3/Uu1YgBphc9KpUj6hkGwTBUNbwKuc84xMJoiRw
         i/kZLiOkvR7qsV3bJt7ck3gfHaB5O+lET8HxbwEzdB7U1LzcivLtTa/uP5uTxt0GcGkW
         Txc1BWpZREHXQyC17qtMMAvgRWIdMMnTeNSkefWNSY1hAcaELO/Wk8xQ+YEJL4ViXg7N
         0J0Bij7cO9VzSw4AagPTcqKPCHEP+VuP43F13iKXdwx95BglqmTBA+wNKw6EfF0gQfwq
         2kZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=IrMXk9lh/oX+AYJC+NJj++Fb4ItXN40wTV8BImUfs0I=;
        b=Cteu0F2xmAtpC3BDqnHJnGjsLZIYfAJlMm4UUONZXnNkD2IiuR+/Qkjk32/GGebBXw
         olQZAd4oLvZRj1Vv6TdO2TNc5WVEPGmtcNJ8B8iidTdGC9yB5TOMmaXwa6aPeg0yQsGj
         n6jEKo5l1Mrlh0AjbM6E9+wE3GRGiNcihqw6FMy6PrFTkFjUuXVKzeolBbcQhfU8YGoi
         sYlm/zIQeAEtt/4a2WXO8IqCYeIPIY1VVwoNx/YvBJh/Z78pieZZQYpF26vcZWvhvEyS
         VEP6UU1xvrikGRklEWW8ZbTQq5ilKs0HEX3QIUcZqLE68zZqvSPVxfCYJlFoGE/sZHuf
         +0nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id o194si682213wme.2.2020.03.13.23.06.03
        for <outreachy-kernel@googlegroups.com>;
        Fri, 13 Mar 2020 23:06:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 1651 invoked from network); 14 Mar 2020 06:06:02 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.242.88.46)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 14 Mar 2020 06:06:02 -0000
Date: Sat, 14 Mar 2020 11:35:56 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rts5208: Fix long line in C func call argument
Message-ID: <20200314060539.GA2709@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

A simple fix of long line in C function call argument.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rts5208/rtsx_chip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index 17c4131f5f62..c6f9375468eb 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -940,7 +940,8 @@ static void rtsx_monitor_aspm_config(struct rtsx_chip *chip)
 		if (maybe_support_aspm)
 			chip->aspm_l0s_l1_en = 0x03;
 
-		dev_dbg(rtsx_dev(chip), "aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
+		dev_dbg(rtsx_dev(chip),
+			"aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
 			chip->aspm_level[0], chip->aspm_level[1]);
 
 		if (chip->aspm_l0s_l1_en) {
-- 
2.20.1


