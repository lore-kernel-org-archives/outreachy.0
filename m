X-GM-THRID: 6664782574497300480
X-Received: by 2002:a25:4042:: with SMTP id n63mr482292yba.101.1551765616780;
        Mon, 04 Mar 2019 22:00:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41d4:: with SMTP id o203ls1797293yba.0.gmail; Mon, 04
 Mar 2019 22:00:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqwp+gUJOqYMQUeuVcM6BQP//8j1j3Qnv79vZWctHk7YhsMMVG45VhBUXvoHmW56wMMl8poD
X-Received: by 2002:a25:86c1:: with SMTP id y1mr463771ybm.34.1551765615783;
        Mon, 04 Mar 2019 22:00:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551765615; cv=none;
        d=google.com; s=arc-20160816;
        b=SWLSDDvgirPyqsJqnbKzIL1Y76lsrc1YXZew9d9tfwJ0lp8ffHAcvp8h1zL0vnwLXw
         QSyu5/pbcoGkz6P38ucSQmlnxTlG0miK5tgndLZ+BNLUu5tbv6dcUq9YpNNAU/Fd77mI
         ON4hKNbZx7J6UsSqN90Wg83Yu8DZQAFaGGK8t1C3ZGxISu4shYPa3u6s1D3358c8MdEQ
         dr0fD78OKRnhQeFEBmreTHHcpdGLrhFBLfYj3kyI7joQzZKkK14qYMsodl4kvjU+xok/
         gy2PirL1396+iaAK40+qDm0bJFIY/EhiEoVPAMsUk7Nw6HW99vQMXC6oZzqvX9ZSLio1
         8ZCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=e713tuXs7QmHV8p7qEejE7mM/xk108P8qn7s7NDMp4E=;
        b=J5STp+dIgXyQJT8qYQGMZl9+ZK3o3qGXB5/LDWGncqNDszWUbBxrkxLG0AV2quEAiV
         XniGpLlGpICLmx2Wk/L873oZoL+7ZPGQfkpU4Rt37GmsqWZ0CMiW64BvoyQs+MJ/xDZ4
         Pn/0ozkq4amycmm/r8ROXdtkCw4QHVAEw+XKj4DV3Ogz+kho7l2Hib+52JX/VSHI8Lnv
         +gjhuQ2NiUf5QtdT2xXpb0LfQRQB4H5JRAvO07FuLtrfwWUdKuX7bBJ9M2JCaKwj3bEb
         a3gaJHRG5uhPil0bguhun7AhrO7q4kzk5QrIAgdTqJCb/ppdVaiHKbcA9AeUXnLGW7eF
         EAtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="p3qS0Xs/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id x187si374870ybc.5.2019.03.04.22.00.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 22:00:15 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="p3qS0Xs/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id q17so4834859pfh.10
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 22:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=e713tuXs7QmHV8p7qEejE7mM/xk108P8qn7s7NDMp4E=;
        b=p3qS0Xs//yGJXfpwiGtgQXQnt8gl6tLETv1kXs44auCMB6wIZUWESqQIRqa21Pz4OU
         lK6zOtMj+9/D5DotO1nBsBW1tS1zVeJ/H9a/HDfB/pG4xeUAskcEs3XxIGrJICLaOc51
         6cTrjH36Ue5GtkiQTr4HOYsXwm6RpZZuZzD7jHsd4vDCCum29GR9YERLefHHPf18p+vB
         sIFTcCEKkStPHcnzXr/w+jESUB/xkGkwcdBgOxB5U6da8STjNnnhJzIWYPdrHi8bA+K8
         ziM7ANdeBAv1ZXi97aFrjJYcgCprUn8Bgh/yPeULAd4suwmzG+FZuOBh5+JD0a39T/JH
         1aKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=e713tuXs7QmHV8p7qEejE7mM/xk108P8qn7s7NDMp4E=;
        b=lh2q3aQgkYtzDhl5WA5sqIiieeL20To7OK532zHPXVOJ0XSDJ4RWvjvN+9XcyDl9Lc
         aGxZwEKD+lszQXptgXWsLF/X3XIFtBoLECbIImXt2xs9mlQaLzXKqFWtE1koD9LrhP0N
         T0WO4XLJbYCWjndykkrgmkrCDF1hfN018lImlvZvmFxtEmU4t4p5A+lDu/tKy5EfUjTY
         eDkVX1wo7I/d/1SKMUq3DJlaul5sW95FyFOsYWu1oKDk8W7X4Aytp2jd07L98awxiYHs
         h9CDcSzTWK+V3I3lgl69A/7XGMwcCFPtrMi2quWdl06qJ3UvXKN7F3iZvwkd3EgKZ9Hn
         5E8g==
X-Gm-Message-State: APjAAAUK95w6pSUA2u1t9B/wfuHcRb+LWnxZRMdmE1+x7ijRM3R7LBQX
	5+jx3OF/6rFyteHFB1X2IcKTwI1WpClstQ==
X-Received: by 2002:a17:902:b609:: with SMTP id b9mr24663763pls.134.1551765614826;
        Mon, 04 Mar 2019 22:00:14 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e90:c39e:6470:dd92:c641:157])
        by smtp.gmail.com with ESMTPSA id o6sm21790327pgo.27.2019.03.04.22.00.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 22:00:13 -0800 (PST)
Date: Tue, 5 Mar 2019 11:30:05 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	Bhagyashri <digholebhagyashri@gmail.com>
Subject: [PATCH] staging: fbtft: Avoid CamelCase.
Message-ID: <20190305060005.GA7726@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues detected by checkpatch.pl `CHECK: Avoid
CamelCase`.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/fbtft/fb_watterott.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 0a5206d..7e9c57b 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -90,13 +90,13 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	return 0;
 }
 
-#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
+#define rgb565torgb323(c) ((((c) & 0xE000) >> 8) |\
 			   (((c) & 000600) >> 6) |\
 			   (((c) & 0x001C) >> 2))
-#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
+#define rgb565torgb332(c) ((((c) & 0xE000) >> 8) |\
 			   (((c) & 000700) >> 6) |\
 			   (((c) & 0x0018) >> 3))
-#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
+#define rgb565torgb233(c) ((((c) & 0xC000) >> 8) |\
 			   (((c) & 000700) >> 5) |\
 			   (((c) & 0x001C) >> 2))
 
@@ -122,7 +122,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 	for (i = start_line; i <= end_line; i++) {
 		pos[1] = cpu_to_be16(i);
 		for (j = 0; j < par->info->var.xres; j++) {
-			buf8[j] = RGB565toRGB332(*vmem16);
+			buf8[j] = rgb565torgb332(*vmem16);
 			vmem16++;
 		}
 		ret = par->fbtftops.write(par,
-- 
2.7.4


