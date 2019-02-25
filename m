X-GM-THRID: 6660473635314073600
X-Received: by 2002:a62:168d:: with SMTP id 135mr3431987pfw.83.1551103350280;
        Mon, 25 Feb 2019 06:02:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4554:: with SMTP id s81ls6107338pfa.3.gmail; Mon, 25 Feb
 2019 06:02:29 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZYVumX+Wepg98fYoNGKO77ksG9CUiUj+UvEDtos33oRoOcw2Yt6bgEMKqbzqeCG4jBCZPh
X-Received: by 2002:a62:ae16:: with SMTP id q22mr6558912pff.147.1551103349471;
        Mon, 25 Feb 2019 06:02:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551103349; cv=none;
        d=google.com; s=arc-20160816;
        b=oPHvrpuHal1Ypu6/zHICto3UAtIQPB5+G+GFiEpJywkBkS1zo6t8pQd7jhsToOPSv3
         I8hd6Gv/1eMO8kK8+VpSgWQMTslhfzvfRXbrfVGdMDxSR3vqDUIzMm0i1W8HRuiZmxc1
         tls7nOuyKvvH2whQX086TYlBAb6kbgQfYXSeD4HCTRDlikvxZhX3+JyEQoI38Z/cZbGx
         6A9/M8zghiCAuEOC1EdNKIzFrFMrRKR+6VsHZPpt+BmsO6HuyxU1X7rICwJFvwzF7Mmj
         eJGMiyYs43OjOrl+6vZAgt6KO+lw6LtZrNvPEnbkf17A+Dun4Ahh7JCB247yucW940hD
         3kPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=CJMXd/39QbDSLPp37dm3NeORGLbECcFSm1+gmqxF0cs=;
        b=wjG4jvtCDH18rRHbtCGxhlFP0VbUt4J79X8KxhGMZ+lEN0lxMv9Fn/FKtWUTUjjtIg
         Amf1swuChALwNGeKLKjgHWa3p6Gwu3HgzVfokoBUov8oDr5bbXsp/mazx4P20mUm1/ob
         diLjVuLOCMU4NjLFi0T2KERmHQF34G1B5yqW5TI81Db5DGYWKH6Nf4wunS7I1nQePLgl
         eZ2XS9fFrXAVHdXW+JK5Hb8KlmGp3TXVOLdTULpT37C0HglnHO9DaIJYxXQ2MhzJUynZ
         D1u/5O6bk5jWlkjrH841t0A+dry84oOEU9Jg3DK8kuZXD3KIVHNKFscAA3LoU8uhYmog
         ldpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cABxTXZw;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q17si487411pgb.1.2019.02.25.06.02.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:02:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cABxTXZw;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id u9so4561037pfn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CJMXd/39QbDSLPp37dm3NeORGLbECcFSm1+gmqxF0cs=;
        b=cABxTXZwh20FYW2EeYU8ZEfPMaJzpiLDr5YF8UM2gKL+DVUybrVrM2MygB6AHGsOD/
         EslolR0OS1tJxHudi/jWzovJVl2QEydnujYhnE3qWImLrjSON0UVeHakZzKnFSv33rWk
         zAvcsRrfD+n9pfXEejyUUJJj3BRw00Tkr2ez2wR1gHQZkGhcQ2qrZ5IRXV6kE15uO3gh
         mWdgrgMqbQ03vMiEPlHvvGXhIbEsTQH77H9chIDjfDyK4VJuJUB5lYJdMk+q2WZjFa/L
         EpXOY5fwGdLRxVfrqrclhVxosCINk5oRO60RMCjRKpIOVf/RJ6hdp5CcplYn22z8eaiy
         rRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CJMXd/39QbDSLPp37dm3NeORGLbECcFSm1+gmqxF0cs=;
        b=occif2SzL/be42v8Vss5g2J6UIxnhHw+D4ui+EKKlVvH4oXts6ttVcEK8Ve2Kw/+At
         e+92NUYEreaUIVCVj6uv4NcmNAO0TEzjpfTq4jLYRGxE0Rv3uJp15rhj9mnqpMlvTata
         9MHAC9RTUcNhvTMcq5THJdZllRyWvnIuprZfaTNx3YUZ1aMfzNE8MlIjCsSw2nOFKjtz
         YrvO+lZxn0C7Hlp/1cQG4Uc/0LekHmEcsYizRPPEKhbHlC2TvdAup+VKIgkSulsybL0W
         Veb7F5oJaobE/Tu0LQiBqxOMOxoHImy5DPGQPFwr3qjUZLhUbQbhNfuMoBD+3BhJ5mjX
         DTtQ==
X-Gm-Message-State: AHQUAubM3c74S/Jfn64jlDylN7fJmyZd+zPrOyvtuY9Nzitiq2Oynklg
	6+9nkFqotnoV7HjWjbXqyV6n8uCZAxM=
X-Received: by 2002:a63:83:: with SMTP id 125mr19384438pga.403.1551103348934;
        Mon, 25 Feb 2019 06:02:28 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id t23sm6681139pfa.111.2019.02.25.06.02.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:02:28 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/2] Staging: fbtft: Fix line over 80 characters
Date: Mon, 25 Feb 2019 19:32:09 +0530
Message-Id: <20190225140209.5955-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225140209.5955-1-bhanusreemahesh@gmail.com>
References: <20190225140209.5955-1-bhanusreemahesh@gmail.com>

Fix the checkpatch.pl warning:
WARNING:line over 80 characters
Parameters moved to the next lines with proper alignment

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 9d78ce6e819f..9b07badf4c6c 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -436,9 +436,9 @@ static unsigned int chan_to_field(unsigned int chan, struct fb_bitfield *bf)
 	return chan << bf->offset;
 }
 
-static int fbtft_fb_setcolreg(unsigned int regno, unsigned int red, unsigned int green,
-			      unsigned int blue, unsigned int transp,
-			      struct fb_info *info)
+static int fbtft_fb_setcolreg(unsigned int regno, unsigned int red,
+			      unsigned int green, unsigned int blue,
+			      unsigned int transp, struct fb_info *info)
 {
 	unsigned int val;
 	int ret = 1;
-- 
2.17.1


