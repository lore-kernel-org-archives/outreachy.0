X-GM-THRID: 6752704263003045888
X-Received: by 2002:a81:7189:: with SMTP id m131mr10892224ywc.387.1572236479921;
        Sun, 27 Oct 2019 21:21:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:cb92:: with SMTP id n140ls2331851ywd.15.gmail; Sun, 27
 Oct 2019 21:21:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1kwNk8Itqsc5lM7qZ7IvUTGlNIMZW2qZR8hazv89Yf67sZw1qh/bQr5hoDEBrBE1ecZiH
X-Received: by 2002:a81:6e43:: with SMTP id j64mr11314568ywc.91.1572236478228;
        Sun, 27 Oct 2019 21:21:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572236478; cv=none;
        d=google.com; s=arc-20160816;
        b=R8QosWITjZ7p7Pt4+JT9khAQAfZEfctHP9ywufzlhEnoNBPXTBpbzRwDK2zXKTcO/I
         xrI7eKLbm2MIsPIE/0w5cy2he38v2C/rR1mKwOxeaeSBKHXGU3Yw53hVhsq5G2eJjqSV
         QCXJEAoMr1GonZ47FUe5IbUI7sT6xqZ35woHLr0wtNr8ASM5X2Zt8tau+V3xe5+PXai5
         watoO0gFajWAQw8vjzomdnNyX8eBAJWYtEiIo3FYi6YNSFuVAW2IqXYzWVyniE3sinbQ
         Nak2KKEcSc2Y/cHmktus04rjHSPgAdExgm95NrGfzuHfCGAkTTwraJJUNnuQRLlfcsWc
         SKRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=yDBMsYXvX1BQ8s/wNt4TyfHIg04y7ZFnSQT1j3snvC0=;
        b=VuJ8pNLoFQeV/45z7tTczfZzGD/pokAPdtXPwkW1v7VZAoq/tC729aVhY95LbXQwYN
         V4uAaWCtYzvcKPSKwIhZ2ujKSzCc5aBx1qOEomGWHzyEwqjYo9gpceWD4Q+OmBZO9EW2
         EPqNigskdmhCEDIg2e1KYsAN4b2IHBMRHRwA6ZhbCkC/p0ub20NXQlVH3LHbXp23pDnq
         0nZVkErQCg+Q1TJVlSZMoxB6AJR70ECXrHOR6q2PocGi5ulw54JVt9mjJGuPY2lLh8e2
         TCfDQ5rGlafJr3TacC9BTqsmK99GE21ohBvoPx5VfkF+0hlkXYfVAem3fIXAAHSlG3xT
         y1rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=dhLUQTUv;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id r185si575978ywe.2.2019.10.27.21.21.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 21:21:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=dhLUQTUv;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe44.google.com with SMTP id d3so5495697vsr.1
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 21:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yDBMsYXvX1BQ8s/wNt4TyfHIg04y7ZFnSQT1j3snvC0=;
        b=dhLUQTUvmvyDZ/Q5NX/jzZHouhzzSxYa41uR8en3P1zdXWvZk5q5bkShmcfY0YKvt3
         cyyRNBWfhkJkOyUaNSh7/8wI5Nt+VlNilcfQoMRzyH84quAXp46sYsvwbxQCjQvJVixp
         QCJgT8XbpWlICIt65ANpUBKqv73Dr3eMcOVZ/cBuTw8ay1cuDhclAQ2RY6oI6qeanxBE
         SvqZo2Ljb41ONorHxz5/rHWLQZY2Whgr0wgcBudRw796h5TriOTAX5+5VJxR01pLWFvd
         oL9o2qgJABQXbiFIaFrCLB/mirH6EgS/DrlR1vQ3QvevnJJ9NFZqw9HXTf0nZlB1Zf80
         Fp2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yDBMsYXvX1BQ8s/wNt4TyfHIg04y7ZFnSQT1j3snvC0=;
        b=ZC07sbnJOjMQ/aZ6iBKyMRnATgMXm2olZzSdby3Z0qOVQJDDoTI1gMsFTwvpEKjXaI
         T9LH+K5zczri7pQYQW2/UgKC08HwiGZkyL5gGqxGQvd11nmlcCWwJKoAJd5938t4DMrJ
         yves6/CIn1nlRlHwTBDVxmMAcgGDjKHAKJ8tEgdmZHvYqDbD4JNS/L5+3QzSQkgn61bB
         E/aAjXzZEfS+ONF72RoslAH9yseWDI/PKakDhvqI63nVVwT6WwahANsfyZB/EiIMnvj2
         PbMV5YDt8BMyy1WM2PscpULDeWfhRt9cRQaGOhu+i7t5CRIVLn3y3ZZvXrNfSaqcQ9k2
         nnSg==
X-Gm-Message-State: APjAAAUV3zxyuj/2n4AwzTr+3J4iKUarSySX5KX9FjsdUFgJCYOSrOIL
	23t3FAYigqOdvSLlc9UNORNXt32Dh3glTg==
X-Received: by 2002:a67:f2c4:: with SMTP id a4mr8142096vsn.138.1572236477569;
        Sun, 27 Oct 2019 21:21:17 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id l70sm3698201vsd.23.2019.10.27.21.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 21:21:16 -0700 (PDT)
Date: Mon, 28 Oct 2019 04:21:11 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: [PATCH] staging: octeon-usb: Fix line ending with a '('
Message-ID: <20191028042111.tzfhugs6f4erohir@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

checkpatch.pl message:
"CHECK:OPEN_ENDED_LINE: Lines should not end with a '('"

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index a5321cc692c5..582c9187559d 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -1836,8 +1836,7 @@ static void cvmx_usb_start_channel(struct octeon_hcd *usb, int channel,
  *
  * Returns: Pipe or NULL if none are ready
  */
-static struct cvmx_usb_pipe *cvmx_usb_find_ready_pipe(
-		struct octeon_hcd *usb,
+static struct cvmx_usb_pipe *cvmx_usb_find_ready_pipe(struct octeon_hcd *usb,
 		enum cvmx_usb_transfer xfer_type)
 {
 	struct list_head *list = usb->active_pipes + xfer_type;
-- 
2.17.1


