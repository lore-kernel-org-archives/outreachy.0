X-GM-THRID: 6661107741495394304
X-Received: by 2002:a67:874d:: with SMTP id j74mr4437693vsd.31.1551106188977;
        Mon, 25 Feb 2019 06:49:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:5c94:: with SMTP id q142ls2526162vkb.1.gmail; Mon, 25
 Feb 2019 06:49:48 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbRm7JTf+es9thVie9E0Zd4Lfwm7bDxJD1oLLswpS7sRh4aulsTdcVYRakg8mMtql/utgo/
X-Received: by 2002:a1f:8445:: with SMTP id g66mr8669839vkd.4.1551106188299;
        Mon, 25 Feb 2019 06:49:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551106188; cv=none;
        d=google.com; s=arc-20160816;
        b=gZMqrl4K8Un61u5VgvmtSAsij8Ox7hlVmOZXl+6CeKpZNWQKPodqQ3HGPDarTpQx1a
         yiVN1kXhFI9uv6lhY4v0+gfXb1colHefFBPHvv1VGdTnnB2OcaizJtypFQn9t5GiGXg5
         4Oh5+wIFT0F/I2cuVcMq/Pef4tMeBm3vBz8B11gljM65LobF7d1ygt5fUdJb2AMn53j0
         CK0nqG2evcCi0Cw+mqH1mNef+//1keXbE4AVAcuO/MKprsMPylHxIxJWWFPfPJPR5aRo
         zryBeNg0EV6X8HlwnMDWDatJ1uQvRXZhEox/ylUHaqxKMml+PQTr+PNIcrHjL1VLybny
         n4OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=MXtcIkkcIQwdI5zZU+S53tjFVdydZtJRLIf5lRnIvcQ=;
        b=ZxZNXHH2u23OpJEUgOLtMYk5uuXwGkuw+WfMfGpaOAXLNe6VA3cZG/TzeH0NPk7a0W
         +RA1hZc77Q5s4w3HwC3gNKwjI3VDVPwysxdxqcqbIkuxhFNvD4amFtUoOZ7QOcYNdqrT
         eLCdohTlsfvyhiWXliTgMaESilbOAO1hF0xLUR4Kl8+VejAOsAp/mMoLkfPsBOh/c35y
         j3Fp9Asa9R5YhThwIob3kNekvX2oI1i/BQEHMKAEY9iBQZ9PEZLNQM2Kqmwxbf+wF6M8
         AIwXEEyRN5j4fxD3nl0JHEZ5WNKL/zjkO9Lnd2hyyIc//eT75rZuceNv2DIgP2NiBTPX
         Zyhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="kP4w/FNa";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id e17si413616vke.0.2019.02.25.06.49.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:49:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="kP4w/FNa";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id d15so4627955plr.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:49:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MXtcIkkcIQwdI5zZU+S53tjFVdydZtJRLIf5lRnIvcQ=;
        b=kP4w/FNaXjCzTYFGIzE4eRsiqlTTYiWOpE1Iu6F9WMWXUTPTdNv7U+xQIqMasJTwpY
         6+vvD4cStU4kW6JkQphDnzYhVwHWpeZNmY8hkeuR9T5ULQuauZjTsxW1YrLKwr50bylK
         tr1hCEPwExMoAxBgOffoT6qbUYOtnomPPVp8yCv3aHGlAVsQn9W+Kc5998Ce12RX0Gam
         2EErCHf+45XpBuXT0dXcwHWvQzMW6f22YCDdi5PgW5a7QI7E9w2l5jRMHLDP+SJ44Kns
         Eb8rpXjRkMkF4/9juPvZ1CRI4DfLu4fWWSg6einP5gZC5gdCq4mK0Jnvb4IX9EYx9jL8
         9CzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MXtcIkkcIQwdI5zZU+S53tjFVdydZtJRLIf5lRnIvcQ=;
        b=Lj26lwvGeb+v4l/f8MM4Uk1zEMee1SAZoAoSiVo8C0xof9JiZ7pTEs+Uvokm3XidjK
         djqgBjvelm+e65Tm+fM5qRizUwD2MGdp79/01kzxSTENnnrujxpWbYatkTRyZPc3RGAG
         n4Q6Mm3FE9qXZfcoO8Tl7M63Xn4lF7qbL7p3IcV8Z+IFsizscWcjo2okN14SK6V3LZ39
         xyKKJuZHAbQrFoIsUndHBUz0wjy/L7dvnH3dsGM+WaobP6j1JGOPvV57ZbRGFEOyIK6W
         bt+SbH5oHubbSyF/Y40qSFlt9dvP4S5alkmqF/tZfXrd67tyF9oiIejw4ILh4gBGTE7k
         /ycA==
X-Gm-Message-State: AHQUAuaz0o2TRSmNTCK+ACKEiVneLcj155QlO3uB4OMS8bZM4whylXrG
	lTE3GNkBZ6BKd/FE313t+fe5nN8KDGg=
X-Received: by 2002:a17:902:7b85:: with SMTP id w5mr21089056pll.288.1551106187225;
        Mon, 25 Feb 2019 06:49:47 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id b85sm28233875pfj.56.2019.02.25.06.49.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:49:46 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 0/2] Staging: mt7621-dma: Fix checkpatch issues
Date: Mon, 25 Feb 2019 20:19:30 +0530
Message-Id: <20190225144932.8922-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series cleans up the following checkpatch.pl issues:
CHECK: Alignment should match open parenthesis
WARNING: Prefer 'unsigned int' to bare use of 'unsigned'

v2:
 [PATCH 1/2]: commit log modified
 [PATCH 2/2]: commit log modified

Bhanusree Pola (2):
  Staging: mt761-dma: Alignment should match open paranthesis
  Staging: mt7621_dma: Prefer unsigned int over just unsigned

 drivers/staging/mt7621-dma/mtk-hsdma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.17.1


