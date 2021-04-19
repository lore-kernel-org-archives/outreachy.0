X-GM-THRID: 6952926381632126976
X-Received: by 2002:ac2:5d52:: with SMTP id w18mr12606257lfd.28.1618854324609;
        Mon, 19 Apr 2021 10:45:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:890b:: with SMTP id d11ls2507390lji.9.gmail; Mon, 19 Apr
 2021 10:45:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzEjex9CtdWO7LYC87sRTGh7+lz+acAwBDRj+wDiceLGhFMnnpAa3QtHm82qxMHgcAV5Qa1
X-Received: by 2002:a2e:93c4:: with SMTP id p4mr11568264ljh.367.1618854322822;
        Mon, 19 Apr 2021 10:45:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618854322; cv=none;
        d=google.com; s=arc-20160816;
        b=fLnG/j4UP31my1emfnDZG7/g5+daDtHjsQLyUFQf2JZVjW0is8wydnZU4XFK/XOT5j
         aBltJ/W5l7AftrRwAbqjQ2lycUD608eOYX9YhAYxTuM18X+3g6K4wcJftVdtZImU3eqB
         8TdX7+MY/g9VdQyelhwPQUcU4KhxRg/Hv9UVJjnxnkRpb9Uv11sXVricUBfkTRGaR2P2
         Axzxz5sL4qecxxZ5lvTQqtK6iI89PfyjxjvGni70su3rXNiUtWNbVOyh85N295+gH9qB
         YQ77qZZdvYZl/efClH3wWwij4zNyhTDtfdGRll7Nk7xb+o1PliJKQGO7Y0pHrAvss2Hl
         9qjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=gVUu4X/OtXIVrNcunscRKwwCWFH0QrV33ktH3MaZXqo=;
        b=Gv5mTqSRV811zae6OHngd0dbdaHyda1JwXKfkVUAS/DycdU0SlQyX0G3BApkZq83sW
         Mh3jC3naiPHfN+NzQink0q7DpkosC83ShOaRFtR33zfKItSOl6XCZi0JXlWUiOOzeyCn
         m3W0aRN+dLaTvtoRERqqADLKwuAD1M+rGpxTH2dyHzwmybJ7nGfzrKYXgezSvnDPE0hP
         4ykDzGwP03BXFZVk7veLHIGVL7oQffwbYijRvc1pVR8pONd9utOMKzzC8VytUQf0XYip
         J1vyZEF0Ytnd3iZyIVqs/3TgaZye8HrhvaIMLs0Dzr9R26fsIW5VwDi1oy5bRS7r+wgl
         lLFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="vZ7B/zvU";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id b17si642235lfo.9.2021.04.19.10.45.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 10:45:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="vZ7B/zvU";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x629.google.com with SMTP id mh2so32690451ejb.8
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Apr 2021 10:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gVUu4X/OtXIVrNcunscRKwwCWFH0QrV33ktH3MaZXqo=;
        b=vZ7B/zvUBbTaKW41y7hT9t0/+etrzfUvhKcjKI8ubNO+aUoeMqnCWbVgjzxthr6FmI
         BrzO4TT+mvyL9PCHkzhchbR2qIFG9eTvalakSP1KbnexYWQYmlz1XDWerSW9lmwnjdYI
         kECFSXbTLZ9R8e7HFao3t+vNmFTMKiYmIJrBWCNsKrdKMpsoizI53QV/ov5D3caR9O2k
         j6PkRvuIiTfINHBgYTaZ5n7tCRM8/BoaYmTgBt/FGkmYB78fPmN+bqWdIu7JwTzsTbvU
         yMmqQnPYoGIm3Lq4ieo2k6hwlQvWKuZwRQjZrD7tCezJQgn/AsOmoRnDGJfbEznDuZUA
         KsSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gVUu4X/OtXIVrNcunscRKwwCWFH0QrV33ktH3MaZXqo=;
        b=CtJqpWWVband9vGUaLUzxY92+dPTRNDjBJk+AdyiP1Cw9ECW7ZaDe8N/IFIdxKivcV
         dDV5WPx7ws4eQh0ezXbY7is+Hl0245VND6/8fBu6tKkKfiV+Ki4fmz5yBvNUqt/Kvrhq
         wwHlmupZvjayUiIGRGLn7fSQOg4/qGZSZIIIja19h/Qr7UxDrNtj+QoTHluGsV+MfLW9
         3JgnGOHJUGJSxz7SwoJ48ZJ32bs8uSnjeb/YU+iENP1y9+b/LzMG/PNF2ET7g71QTSVL
         uZwmd6n3NyRMiWhfGuPX9fD7bCYuL4sKBu7p9yhfefYqKa69BbhoobQPVmmvgJbTMlhD
         ei4g==
X-Gm-Message-State: AOAM531EjHgm2R1dS6yu//hzpnbp1I3Y8N3lCSTp9e8uAcvgmsFtWDHP
	BWO6bFcMb0Bm2UohQ4lLgWXwPGTKL4H90A==
X-Received: by 2002:a17:906:b890:: with SMTP id hb16mr23259641ejb.221.1618854322202;
        Mon, 19 Apr 2021 10:45:22 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id u6sm2052686ejn.14.2021.04.19.10.45.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 10:45:21 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Coccinelle: understanding its output
Date: Mon, 19 Apr 2021 19:45:20 +0200
Message-ID: <3557115.gcaS8tdjop@linux.local>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

I think that I don't yet understand Coccinelle's output. 

I've just run the following command:
spatch --sp-file scripts/coccinelle/free/kfree.cocci --dir drivers/staging/
wlan-ng/prism2fw.c

It outputs something that looks like a patch:

HANDLING: drivers/staging/wlan-ng/prism2fw.c
     (ONCE) already tagged but only removed, so safe
diff = 
--- drivers/staging/wlan-ng/prism2fw.c
+++ /tmp/cocci-output-17844-0c6c7c-prism2fw.c

First, what is /tmp/cocci-output-17844-0c6c7c-prism2fwc? It is not a file in /
tmp. If it is a file, where is it?

The output goes on with lines like the following ones:

  @@ -1008,8 +1005,6 @@ static int writeimage(struct wlandevice
        rstmsg = kzalloc(sizeof(*rstmsg), GFP_KERNEL);
        rwrmsg = kzalloc(sizeof(*rwrmsg), GFP_KERNEL);
        if (!rstmsg || !rwrmsg) {
-               kfree(rstmsg);
-               kfree(rwrmsg);
                netdev_err(wlandev->netdev,
                           "%s: no memory for firmware download, aborting 
download\n",
                           __func__);

Please read the two lines with a trailing '-'... Does Coccinelle mean that 
they should be removed? If yes, I'm not able to understand why, because I 
think they must not be removed. Am I wrong?

 I'd appreciate some help.

Thanks,

Fabio
 



