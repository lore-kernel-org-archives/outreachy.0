X-GM-THRID: 6615609378154217472
X-Received: by 2002:a37:b4c3:: with SMTP id d186-v6mr15420285qkf.56.1540316589939;
        Tue, 23 Oct 2018 10:43:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4889:: with SMTP id v131-v6ls2160026qka.3.gmail; Tue, 23
 Oct 2018 10:43:09 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62stOtm+FwOZEaEHzUep1rhYPDMsaDPd9Q1Ic51gFR6QGqUu0R4TUd8Y/0X/uzqntSoVt2F
X-Received: by 2002:a37:7382:: with SMTP id o124-v6mr17711744qkc.2.1540316589332;
        Tue, 23 Oct 2018 10:43:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540316589; cv=none;
        d=google.com; s=arc-20160816;
        b=ylOom2CpSEGHXJknYE9q6ZslTd989Y7RBJou2vUZD/Ul8Pr7Wzq0jaiwMIGqxlZCu1
         FrviSN6bZB4NFmYSjnKKzB7NOqWalKwLfSTKinJfWHpD9YdXhWnxPpYYonIr97KJl+eb
         DdjYt94JQsILfFeXWcJwjDpb78wTlqCgxQLj1/Hl7ybt5zuCVRnPDcGJkFYauxSqvACT
         jdEPULJuUKIrWsQS7t0fAyorl1gFpVqeNNg31+yYMc6jHuSLzJi5oaf6SVP2J4m7d42/
         ChiUPbLpfvY0vjJLo5H/igT19dgiEeav0Y+iP+En4s7WlMe//k/LKZSKR0JwO2zax4qm
         R8ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=LTQBbN7v01p06gTRf7aJbSH9y9Y2K/1hrzJaEfI2w6g=;
        b=TlhoDsr/lHTWcOF841+aCsJqjoUe9c+0QnWekR+/CYO3enkDUGlta41RrSC5nv002G
         7CjRrKUziWuwOEnTv7nbIQ9SOTSwzFuqjWsFipocQzrLWnat6XNQzg66SY3DSWTVt0NG
         z3fYziONSM1RZgtrUfpEiEmNRwO8OQa2ytIg9KdwmBRJIic6UefbqlnMamXeN3vMFnVK
         CddQ+uwTGc7gSYXILquGolt9qSDwNtwGZWMwEqFoQxeLuZIQo//SKM2dh9ULM74YjVm+
         kufDSNFOcOeBWSz/wg/6563I9SfXmhmEUmR4wpHbQPMHFjZnMjTdjbldphaE0zemIMbJ
         ulKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f3moeBgi;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com. [2607:f8b0:4864:20::72b])
        by gmr-mx.google.com with ESMTPS id k8-v6si102738qkg.3.2018.10.23.10.43.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 10:43:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) client-ip=2607:f8b0:4864:20::72b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f3moeBgi;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72b.google.com with SMTP id x11-v6so1381576qkl.7
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 10:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LTQBbN7v01p06gTRf7aJbSH9y9Y2K/1hrzJaEfI2w6g=;
        b=f3moeBgiXEmlRXMxcVbbeSMnAbr01S7kNzC5HKP5fox0DzOIjOUGgkz+CAlO9nYGE0
         nazgPsB7YukROpfOZqpQB46jVOskf1hnPz4RbO+qX08GNcrpwg9wSTX21z0dyG0ydgar
         nQRhg8By8CWxmnytSyS+IZoFrX0hd7ndSZ475NZQBVydZ/q7cDJTUrrEz11OCo9rFWR5
         46LSBIjpnjz2dudLX13I+5vc8ddnVw+knzY2FruNQ7Tnf0wpELuKgVV0ZjaoCw5+o2Op
         5+gFUw6OvlDxUJdYheI1pvjOybgDpmIj4lKtnAKBriO2jxjfBeXnGClFVcB4E8DLzPdN
         1Xjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LTQBbN7v01p06gTRf7aJbSH9y9Y2K/1hrzJaEfI2w6g=;
        b=SfUKfCz21FOP64TjmBpxVpjU8sSDAYry/vpZJ/rBpjFXJ4SgIdAz7Wgr3E8gLEg3zy
         G7Qa+x+mfEhON5gmoO8Lt4NMQB42SFbDeCkG9CBvvA9RKHxwHAqsKLMeTjfIlApWeNtS
         xe1LZB6OsQSdMeozCHcGMAURyaCcOoophYdCCbXVb1SJUVir21h2guXFGj59nLE/vFjr
         frkjR+ct8TwVGqkOgtV32Fmkb8//RrtfnGu5ZNfdLd97qgJkslusa5aNsa50VSQ9iXaV
         iPcpgnQ+s71NTJnHUSG3cy5HPlkNz1yLMxTKRk0el0708CcFNI9MvA25KwV/IzLDj/mI
         afJg==
X-Gm-Message-State: AGRZ1gK2ANBtO4RDnER+DyG8xuevUlg2/1XoCJrjBcnOocMHk6PPMHeA
	DW/MPe1gnvOUmwA9aI5hLFo=
X-Received: by 2002:a37:15a5:: with SMTP id 37mr6580495qkv.292.1540316588896;
        Tue, 23 Oct 2018 10:43:08 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id z188-v6sm1218662qkz.66.2018.10.23.10.43.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 10:43:08 -0700 (PDT)
Date: Tue, 23 Oct 2018 14:43:04 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: vboxvideo: Remove unnecessary parentheses
Message-ID: <20181023174304.iq4ra7vafwujr3ex@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

Remove unneeded parentheses around the arguments of ||. This reduces
clutter and code behave in the same way.
Change suggested by checkpatch.pl.

vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].x2 <
crtc->x'

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
---
Changes in v2:
  - Make the commit message more clearer.
 
 drivers/staging/vboxvideo/vbox_main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vboxvideo/vbox_main.c b/drivers/staging/vboxvideo/vbox_main.c
index 429f6a453619..10a862674789 100644
--- a/drivers/staging/vboxvideo/vbox_main.c
+++ b/drivers/staging/vboxvideo/vbox_main.c
@@ -116,10 +116,10 @@ void vbox_framebuffer_dirty_rectangles(struct drm_framebuffer *fb,
 			struct vbva_cmd_hdr cmd_hdr;
 			unsigned int crtc_id = to_vbox_crtc(crtc)->crtc_id;
 
-			if ((rects[i].x1 > crtc->x + crtc->hwmode.hdisplay) ||
-			    (rects[i].y1 > crtc->y + crtc->hwmode.vdisplay) ||
-			    (rects[i].x2 < crtc->x) ||
-			    (rects[i].y2 < crtc->y))
+			if (rects[i].x1 > crtc->x + crtc->hwmode.hdisplay ||
+			    rects[i].y1 > crtc->y + crtc->hwmode.vdisplay ||
+			    rects[i].x2 < crtc->x ||
+			    rects[i].y2 < crtc->y)
 				continue;
 
 			cmd_hdr.x = (s16)rects[i].x1;
-- 
2.19.1


