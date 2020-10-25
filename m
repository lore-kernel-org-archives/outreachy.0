X-GM-THRID: 6887485179824177152
X-Received: by 2002:a05:620a:22c9:: with SMTP id o9mr4295868qki.286.1603763465148;
        Mon, 26 Oct 2020 18:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:68d8:: with SMTP id d207ls5479084qkc.7.gmail; Mon, 26
 Oct 2020 18:51:04 -0700 (PDT)
X-Received: by 2002:a37:4c13:: with SMTP id z19mr17668385qka.23.1603763463960;
        Mon, 26 Oct 2020 18:51:03 -0700 (PDT)
Received: by 2002:ae9:c006:0:b029:102:b6b:b400 with SMTP id u6-20020ae9c0060000b02901020b6bb400msqkk;
        Sat, 24 Oct 2020 20:23:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXHXc3V2QIyxqyPv6yJ9U/2sr+8YcvdljBK2gvPS9SdP5yaOZ33HIi1jlougsOPoDgfua7
X-Received: by 2002:a25:e710:: with SMTP id e16mr14318760ybh.429.1603596214614;
        Sat, 24 Oct 2020 20:23:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603596214; cv=none;
        d=google.com; s=arc-20160816;
        b=za8q3LeMqJdOIGPz1AwPbicU8mVnOV/wtpy8lIynuGTogKOdpBZEAnQXmKxSxXmoUJ
         uvmrJzeIiYSYrd/yBz8t66Hln1hC6IPl1tBNCYV0fgskkmTW+ptwcb7AF7MNDEI2szGW
         WRJaGarTJ+kiZjBIpyHyF9N+b81BsmnxqO5CjxxZpo3V0u2Sl13ZLTXMwxkDgmiWhTKh
         ZWQjSb5DhMmzX/6xS8tFjwoqzqDWxAvRBvGvrPuowmkK/cO9Wri2LpKW+BLIqQPJtBbg
         jza670w9dQNaTsy6E/Ps4HHmqiiOKUqgNfhP80IZq0Yk0cAOtumBqXnKa4glWxzoyZWw
         n+9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=NxWdiYhpqirlzaecasBm03ut7b9qF+Viawacdy1irig=;
        b=Q8xPYEYxx1u53G3y93tKi52+qXwv5G62BAWNuDB4M9bpQMSAUfwoBFXApfa4016La7
         po8i1M0HY+x7sePtL3MGtQFplB259x01G9pnQM4dof0Bo1URoFJ+zxnqPCjYUwVPAENT
         fz445wAV64vkLbcxd/6S40lu2Nl03G0xLx7lcRYJGFsZ5kALgWIJSuWVhLBBjrUz/RkZ
         HgHhwq0I4zxmQPcLb1YHh4D2I7YNREEWHhIXS6pWdESUhtnsBroBIO9lix3WB6llUcIn
         YxWXLe/dtABHufrKrAcTR+ALacHcdNN9FfU5Xyo32ca8xUlKpE5A5E7P2PkUNgrjmALy
         21zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lVR4OSHx;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id i188si310887yba.4.2020.10.24.20.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Oct 2020 20:23:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lVR4OSHx;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id h2so2986881pll.11
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2020 20:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=NxWdiYhpqirlzaecasBm03ut7b9qF+Viawacdy1irig=;
        b=lVR4OSHxRatv56xYRzROBOZoRhLFvcN9KWehZKrWtFpDrxgAhYSEqTVCo3+nzbFsOQ
         myUhT7TxiIZaTA2GLuH3NxFqgqkTReLbmEisJr1FrWRkq3v7yZLwdyz3HN110a492K7J
         NvH5WA5fhK4KiWZ3p1sGlDNGa3TOFsEh8tyNceIP2hrLlYjrTCdyZ7dai/kjKMMM8/gi
         jd/2EZewM/tZFnUHLr8DpjXUSuXyZhmE+TO7O22FAkRjR2IHOX15bOrywjr8oadzKJn1
         9+6bN/njjF8ZkAwXp9ulM1kb/O8wXukIUu6IoWdWEbXLKJE7uvxPijiVERmYjFbUzsyE
         Aq3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=NxWdiYhpqirlzaecasBm03ut7b9qF+Viawacdy1irig=;
        b=Pb0u5wWxf67OPR5qLViEGj8QYsh/FqwlvLE07cZJdd8yi1IOxi1QQsxkxcdt+6jFeA
         nuos5oy6yEK5HiEW2ABMkOp9/bSIsWavRoipw0CPNkUMFHrH4auXWr19JqjP2E3W4FCu
         zwEi69OhFwbN6hpsifmUVedqQJZ+97zIn/o76ksRETJr/uWNHKC9aiNE3AybWP2cuq9C
         GsOgDK5J5zHDNK6IKaBbTaGxBGfvt84r1AIxG1tyR5I0nq/HE4Rkhip/AaNZYVTLdI0X
         BTQ0fEIossI8TJy6tRQxXXZLd2hd0vMNHIDn4UaFrdv3MgaO3RtcYaZXAaMFgS7x5LCP
         cLUQ==
X-Gm-Message-State: AOAM533l/+tdC3vMsXqrfO8WDK2HPL6M1gtkG8z9dov9Du9z9WHuGdLI
	trsVArryqUZPrPQU2Hs5qtAWsdkO7lFzI060
X-Received: by 2002:a17:90b:118a:: with SMTP id gk10mr9665519pjb.218.1603596213998;
        Sat, 24 Oct 2020 20:23:33 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id x10sm7515198pfc.88.2020.10.24.20.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 20:23:32 -0700 (PDT)
Date: Sat, 24 Oct 2020 20:23:31 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Break multiple assignments in one line
Message-ID: <20201025032331.GA9095@Zangetsu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The kernel coding style disencourage multiple assignments in one
line. Split this multiple assignments in one line into single assignments
in multiple lines following this recommendation. Issue found by
checkpatch.

Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 09ab6d6f2429..ec73b4ac82e6 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -670,7 +670,8 @@ static int device_init_td0_ring(struct vnt_private *priv)
 
 	if (i > 0)
 		priv->apTD0Rings[i - 1].next_desc = cpu_to_le32(priv->td0_pool_dma);
-	priv->apTailTD[0] = priv->apCurrTD[0] = &priv->apTD0Rings[0];
+	priv->apCurrTD[0] = &priv->apTD0Rings[0];
+	priv->apTailTD[0] = priv->apCurrTD[0];
 
 	return 0;
 
-- 
2.28.0


