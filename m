X-GM-THRID: 6660473635314073600
X-Received: by 2002:a65:6152:: with SMTP id o18mr7090521pgv.113.1551110731605;
        Mon, 25 Feb 2019 08:05:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4393:: with SMTP id l19ls6229266pfi.6.gmail; Mon, 25 Feb
 2019 08:05:31 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbrbDo/aOz5twdN6d7mCCgwj66gvwEQn6oR3sNR/BzE/xyxpVymfIIsKpPZNPaEIPDMmlOs
X-Received: by 2002:a65:5c07:: with SMTP id u7mr7047009pgr.36.1551110731062;
        Mon, 25 Feb 2019 08:05:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551110731; cv=none;
        d=google.com; s=arc-20160816;
        b=Zk5yOdmVRePxzIFBeQ85m9IbkpDXySlwkHUNT/tzYs0vXc3d+lzmocz0LbvgJJRv1P
         jdgaNgyJlCcLAJ9X6wXChnyUGMbQ7P6nRTJspjTKE8tIBhuFFAc55hZbIsIM9EcfCokd
         Kd711jb0uRZn9pWGaP2PT104XTzo1wUsvTAPp+qtToDTRiETkc/bpcn01lcRdXI8cYo4
         hehe6/YWlMzY9bwEYpPOhoVojz/V67eeXpsYp+P73YLo2NLlALArgZTMC4PTt01I3An4
         iKj9rZ0GeCyYjjOMk2P95GQVe3kCdTGdxi96VgXZucZHWr94H38ATJAsu7Rp1mA+ov3T
         61VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=xowmF19E05/ZH0XOSTjNeLlwc2loj+cX5uXpvvCa1Yg=;
        b=CLghvAJxnHn7+gipNPeZHSoE6b9Y49sQZqEil8pyWy0Ydu284XHtCUvJn+zMxBfmb9
         IdPA/WHVB/CgrG0KmylKxSCim9TyuZwelSLNjBcMfdFEqH7q3xlvOqsfO948H+aUOYxN
         f/udBTTDUJbRwwKq60q/xlse0KzVDDc/P3YdSWHlblDnlE1nAq2+Y4Wweo3d0NQ3G+/q
         skqfut1p3FmxUE52sPhxWq46ZRhHjHaumaLcnmT0HgZB8+c/Goe2CytdCeMNvXTtr+/n
         GlwchzIW37YIfiZmg5WXtFWEvlu2LYwLOlPk6KhLD/oyGHyM7JfJObqEuWXW8WNnY36x
         6mvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HbPPDZv4;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id t24si341480plo.2.2019.02.25.08.05.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 08:05:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HbPPDZv4;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62d.google.com with SMTP id r14so4683334pls.12
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 08:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xowmF19E05/ZH0XOSTjNeLlwc2loj+cX5uXpvvCa1Yg=;
        b=HbPPDZv4TPuEcVq3/rYgAfaS9n8QjX97WU6sEv20PV6ASKzl3XQ/ZPs4bIOaF3vjYa
         WHJM+34f9IOITlE2X+Kp5juB9yQdpQ291MmuaBa3K3UNIFNVlxA4DgzPWCU/b1453Vog
         ew55n+Uma0Jtu+l8sPWuXwDCtYNd/wsm6dI2rMRH0Ds6iLlrDtvsI1x9r6QL/CU8nuni
         VjtNiqCkYmuY6pHRaiyEz44ZHvcNVGUyh/1mMd7nif1us6Ixh1JXMq5sRbkllqzbBdVi
         k+oIufzrw0GmLA7I+j8y1grfUORHaHTvCHrZIS3AyJVJNOjcB0Ddl5HSkuLYOyJTWeej
         hkyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xowmF19E05/ZH0XOSTjNeLlwc2loj+cX5uXpvvCa1Yg=;
        b=gFKsJ0WSWf8BOD3PFA4gUtPoW7ibefyWFeLzNFV3bnk7nr2rZv/0PtcOwD+PMYUaD6
         dg7CmEL88eNiVQZkd0V5glmC3rH2G3eI/iiHBrUs+P3HRpH0Om+nmW4RrfOV5tVpH/Qj
         suhbmISEvxBSG937/kjfkXcn05LV3HlQm4REjLl8aWMaiX0CsXSTzEB4HcP95ww8s++n
         WNSl+32jheV+jnGmk9sYVsPQNfTDbZLHheseBdbUh3haefnBvn4a7acvlrLHf0bwRUMK
         AFV0ETTdSsuWvW+Rx4/fw6vPvC9e/RZmGlH9RkRuZLofnPSbRhf1e3ds6mhg9RSpCiZk
         UPHQ==
X-Gm-Message-State: AHQUAuZBgVejuuV9SkygIHddzCt3S2z04Qhnsx8hAaKIg079DH1KI1sW
	hnzTU+jNqo5G2VAZfZUsscbuRC9j+Sk=
X-Received: by 2002:a17:902:7b8c:: with SMTP id w12mr19551747pll.207.1551110730557;
        Mon, 25 Feb 2019 08:05:30 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f15sm2509274pfa.11.2019.02.25.08.05.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 08:05:29 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/2] Staging: fbtft: Fix line over 80 characters
Date: Mon, 25 Feb 2019 21:35:11 +0530
Message-Id: <20190225160511.10837-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225160511.10837-1-bhanusreemahesh@gmail.com>
References: <20190225160511.10837-1-bhanusreemahesh@gmail.com>

Fix the checkpatch.pl warning:
WARNING:line over 80 characters
Move Parameters to the next lines with proper alignment

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


