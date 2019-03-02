X-GM-THRID: 6663442013681090560
X-Received: by 2002:a17:906:c9d2:: with SMTP id hk18mr879634ejb.5.1551485608607;
        Fri, 01 Mar 2019 16:13:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:358c:: with SMTP id o12ls269867ejb.0.gmail; Fri, 01
 Mar 2019 16:13:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqxwUBgkfW9A9rrTXSMnUw4hkE+K7aqY02MoWTJvkD1TXKVp9i5GGgvVQc3zitwybgYxYCSa
X-Received: by 2002:a17:906:16c6:: with SMTP id t6mr287747ejd.6.1551485607900;
        Fri, 01 Mar 2019 16:13:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551485607; cv=none;
        d=google.com; s=arc-20160816;
        b=XXIGDl+l2IN5CSjUvnE6RxudfAopYatmx9T6bN+I3ZrJSxBzvGoiCqkVsZPca5tJ6N
         LBVo2/ESNBH02nTQKwZu9JGpv33Tf3wr3Am2BfaBQ6Y/AhTJN8VXzlHBPssSuLKVeqa4
         gIBpNUD0IcLtMlnU9AD4kZ4xWN+R6jwrdFFq8ruBpqjD1/PEN/9dv/QzNDbb2pzdef/6
         XwpM2v0lL9aQFl9a/+ZdU7tGpAiYFCB5I/dy+jD1h0yKfd8TGeYtPrArN1sgTEt5iGpK
         MS5FrJg8V0Zbyrk3/fvzSxM4f3X3SNsg40vDzUqRf0rIqmzSqXnuUcjIVfJDVQDYbpdT
         IbMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vqnqEOJoJmV3gnIHnome28Kr7ZmjJ9O01lENwgp71tc=;
        b=WBIP4G/nmyYheV5REGIE/AlMCeYMg0kb3ELmzISRKP/a2QeO+YHDBImlZyVIfYI3dH
         VWPCsbPWAqKTBOyjRztR8QbbpvkfCNyGe0rhw4A1W4Vx2/W4ys2GNiqR07X26BuAZhQ4
         T0K58VRLBP08oXN0h0FO9ABAXaBHm8yOWQMxJETXey2Dy5RgrJdrHimX+AJvvuiN9FFo
         IpjlvUj4mAm0Wi18ra6ImFqMR72CNQgeSKS1Z/Kx3bgV3Y0QwOgYDMkQGTkzfbXeyL/y
         2RWUlzuKN5VP0XklUO69DBrfHmpWs83I+ejVRzI6oiVxtllasLYXWteSDQkcAq6lumiK
         fTww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PBYHfE48;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id h12si918399edh.4.2019.03.01.16.13.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 16:13:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PBYHfE48;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x429.google.com with SMTP id w2so27621765wrt.11
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 16:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vqnqEOJoJmV3gnIHnome28Kr7ZmjJ9O01lENwgp71tc=;
        b=PBYHfE48Kl1hmSKwzrDmtapIrLj0onDBu4IrxYcEq+/rYZWsXFaBAGs0dPQoBp4wq6
         JEWBW9WF4NYhKo3nyQ78Q82W2D7psjKHe82Jdv2PD/jujQiqOHf+nLq/2NhDq7Jbdg9z
         UpNo90eL7B3ieYeMuZnS7XPhkMH2U/7lAzIw8l1Zg4nUswwWKfxbm94be2/0UADffTZO
         1MiVjTj5VuXKfCiQazTss8GZvDCjOU1TOl7o8qja2MXBDNEKpWAGTz9LWae0vHLcebM/
         Hmhhh0D1TsbvN5C2PLJ8zFXDPvaraf/iNKedpZBi3XR0xWv/srOBxneAkcp/fQjmGB9c
         m4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vqnqEOJoJmV3gnIHnome28Kr7ZmjJ9O01lENwgp71tc=;
        b=gfid2aWzQwQeTs3rdmajEc3vLRZF4u5+2FYJJMv4Sx5eodeVPwDgTS5yp0vQJCT7UI
         bkr84iZ1bwtlLc2ukYqbCclpiq9aULCpHN1zR7FHk95SCHsuIR/3tDTEEnZ1cecV8c2J
         XLQgCDYBBFTxE2T1wP7YFPme24XaHOsyL0DOwiZ+oKKOqjafPkehYps5v2Tvrd858mXH
         33diQ/x/Gs/0MCDy1BpAOts5bg9onglS02Fo4p2isXk7whBJR83oGTb14hL1qeKufcNS
         Ct/+th/R9t4yp8jWA6QWmpVhIJKRTdzEMwJSxUKjU+rVPwrOinDTdSQbQUrDXxSvVtMn
         6szg==
X-Gm-Message-State: APjAAAUO3yWSWO/SmhhaXWgIWw5t976WmP8Fy++75tNIRHnghUbdM9KO
	Xm2+oTkHn2+4WwcAIj6z6PPaRJ4=
X-Received: by 2002:adf:ffcd:: with SMTP id x13mr4981733wrs.20.1551485607474;
        Fri, 01 Mar 2019 16:13:27 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id z15sm41551608wrh.18.2019.03.01.16.13.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 16:13:26 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: mt7621-dma: SPDX license cleanups
Date: Sat,  2 Mar 2019 00:11:13 +0000
Message-Id: <20190302001115.20477-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

 This patch series adds SPDX license identifier to fix missing and
 malformed warning generated by checkpatch.pl tool 
 then removes unnecessary license boilerplates.
         Now that we have the spdx specified,
         the license text is not necessary.

Jules Irenge (2):
  staging: mt7621-dma: add SPDX GPL-2.0+ license identifier
  staging: mt7621-dma: Remove license boilerplate text

 drivers/staging/mt7621-dma/mtk-hsdma.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

-- 
2.20.1


