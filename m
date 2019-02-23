X-GM-THRID: 6661032131712516096
X-Received: by 2002:a24:1fc2:: with SMTP id d185mr1027218itd.6.1550892398183;
        Fri, 22 Feb 2019 19:26:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls1990456ita.0.canary-gmail; Fri,
 22 Feb 2019 19:26:37 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbSJUJENzQdG1SLXl2YfpdhU2KCH3QJ2lsBYDtrWxEKqFYxK1u4MZ+01K9KcVaX0JEKwGp/
X-Received: by 2002:a24:7f4d:: with SMTP id r74mr1015146itc.13.1550892397366;
        Fri, 22 Feb 2019 19:26:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550892397; cv=none;
        d=google.com; s=arc-20160816;
        b=Zc4sh+dSe1AAXGph//XA5A79Ot270J21dTaGuISNpPq7fP9yABegb+GBHgsKqwgU8a
         lNCHAvlmOfa1C1lYy9SDH82m88vhw84HIRFwd6VW93c8pZepCW3KD0lNbBnTA1APmeS0
         H7YACiHO1t0vsWNtdZYWIrS+FwWdh8lwepbHda7hBi9TQGvpWD3cZfTKgGeNgA1wVXDK
         qrCSVnO07nJWF8JhPWdps+aJdyKVHJfoRynRPS5oP0n/P/wpTiPjlsVSHJ+MwlM9hq86
         lwlBv9K/LCzmWOOqNcpP//fbiJlFoWcM4qJ/tSEQNg61jIMe6ek+cP79y2vjBo4/C1fp
         wHCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=B2vQdOpnwi6hS+n3aPMyvGJZHM9ymQ6nezjnPVKTEDI=;
        b=fr+stqkKJUeLaHP6t5pg+bL5glxbK4Vd+WPjhFuQQyW/5GSbWeIU1HxW1kvNtsDpKA
         uIV1Dj8WpUHTDP20eeJkZ5bc9sWzz2qyvtA9tLrynm1/bd25dFIOqpHjlEDcPZEssP+J
         P9tKo5b92HMAezsvgj7aZAQm7GT4x/842mXceohnbfzlrSJBtWu8XOyQedIPC3EHiwqm
         zlWE/ZcutgaftLr23RM5t34WnME7cMeuGOBtSgnIQWwIzMdcdKPaV+y+UZqC9FXxeWKF
         i3s4Tst1GDxZSxL7HAQYpDvMo1Rz9oa9KIDL92RWLGdo+f1FT05S84qhgj8vbgvLw67t
         rYjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SD19/a4e";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id u1si156630itb.2.2019.02.22.19.26.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 19:26:37 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SD19/a4e";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id x187so3331080oia.7
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 19:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=B2vQdOpnwi6hS+n3aPMyvGJZHM9ymQ6nezjnPVKTEDI=;
        b=SD19/a4eAV+m4M5qUGOoV4PiZj4LSC+TTwQNc+6h0pqoa4DDWKBawc9oBE5tRhIU+s
         kfgHEV9z6PjwYmbDMn0tL3G7T70VF5oINVieyvujfeNRw0uSjCLhWU3uoUULYRQm5iOT
         I5AH7J7QzWUnf46Zgn9XMkcTFmNqy7lP8vDA9mHBozRcNjDcDXfT35tEKEaJUt3VNs16
         tKBeO9dH3zUbAE+HNPDq8Qug0O4Eqmgx3OeNx2J8k0qijo4jKfcKGCAaJ5qW2gllkevr
         9yWUwVo+fF3PFOC+Yfek9j9+Xn+H/XAOXSPDTiiNJnc3JxI0bvWDin4M8GW+ZNgsOm5b
         ybDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=B2vQdOpnwi6hS+n3aPMyvGJZHM9ymQ6nezjnPVKTEDI=;
        b=VUWbsRgckra8Ua8X/rFISWr8JRHFVnMukfhJlgpHs35Fyhqh1GMyOlecG0wvZlmgtJ
         RWAFAPx1cDUrA78MK/q0DGu29h+08HFZ5nCerp3s10M58ShGyn3SzByztElKC4cjemX7
         FF94MzxiRoVnHBzZoiL+vvVdjKpTgp56C/up3Fl8AQCXOQ1lNG8EXVJ22qM/u9Sw08Ay
         fn7oV9ujUFaT75FC/7no5sV/2wkMiPoq2UjzZMRjKFR5bKg7q8Ox4q5/1+6caaE+TU4q
         uSskq4JbPbNEEwOI6Vy0ndiwLI040urNtbc5wdGuI/M3ABsYyVWY/jzaMGqPqY5oDn6t
         1G9Q==
X-Gm-Message-State: AHQUAuaSZBXcehZPOSiYMK4+oDrrCWAmcRaM83EVt5Jphbd6Hs6gp+RD
	9Lbx2ZsG9LQ5vLGP0VrHBV8=
X-Received: by 2002:aca:d746:: with SMTP id o67mr4624740oig.100.1550892396852;
        Fri, 22 Feb 2019 19:26:36 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id g128sm33495oif.56.2019.02.22.19.26.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Feb 2019 19:26:36 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: sm750fb: Fix missing a blank line after declarations
Date: Fri, 22 Feb 2019 21:26:32 -0600
Message-Id: <20190223032632.18892-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch fix a warning
WARNING: Missing a blank line after declarations

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
index c4f42002a50f..018adf3d82a1 100644
--- a/drivers/staging/sm750fb/sm750_accel.h
+++ b/drivers/staging/sm750fb/sm750_accel.h
@@ -223,4 +223,5 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
 		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
 		 u32 rop2);
+
 #endif
-- 
2.17.1


