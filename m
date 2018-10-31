X-GM-THRID: 6615609378154217472
X-Received: by 2002:a0c:9e2e:: with SMTP id p46mr2312465qve.22.1540998212373;
        Wed, 31 Oct 2018 08:03:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:25b3:: with SMTP id e48-v6ls1319898qte.13.gmail; Wed, 31
 Oct 2018 08:03:31 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fyAaoPv7kG102Amq7/ebOe5lIVSVlNQ4qDTDdG9U5Vg/lWokxLxaMNSsdr1fH5Nmvz0CsL
X-Received: by 2002:ac8:7481:: with SMTP id v1-v6mr2370053qtq.13.1540998211826;
        Wed, 31 Oct 2018 08:03:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540998211; cv=none;
        d=google.com; s=arc-20160816;
        b=EUTXXEbtW6pkNgfDE5yziNUOiFfe1qVk0UXv1ak0O+MrGRZThoiRuCdRp826aAAsYf
         Ew/9PcgpT5dnL5mGpWPgRNIO1DhVbteGfAfSbB/mmV5n+3pDPLcbCDUME01IS5d08/6C
         CZhHI1xiDarxNg3I9pKJ0kgSJp4VkUadFLezt7wyq1SB0faYlikersMniibogKPWdPsl
         7PsccsKXDSWnrA1HVR0KoxZEHQRz2cI8XuhAggQo5V0XvgKzewA2dAv+DW5MA5vS2qkW
         R9JG6BeJmPbF89UdivPjb7UQRUZg3Sy9ZygVzJiEE304ZgjY5kkuulRP9S+VYyWDyyab
         Ys4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZVy5C7gVTqrB0QrFgaOuL+scvRINcyS9QCdTNwdZ+a8=;
        b=Z2TpIOch1hFhjLW0dMpISLTarVb7MV5TYugpS3WZMckWhwbBm8cbJm4mZCP9cdvU3i
         E+WYlaYa1soEd3HW9xJXagF+bHsXgAatibVx8JW7RF4yD2ntElQVTlYaOHfdVWAitQgk
         ACEq1NORrvt/4fqiPKDW5WzuXNnuCB4tnBCUfh5yTN9ZS8OCITb+Nin52wUEKEpFZEKN
         APpX5+Eef/bb01u+GzE0QVHLYI1jGp4WHBkqanQREmxPlkwauqAcmyBgtb2LXbvnaDtG
         D4Rjm23G0tZX0MT67BG3gvMj4O7Y80w3DGonjOIJvEqEpoCEneCExbFR4HLnFJD1UQxr
         AFUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Su2TlvPS;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com. [2607:f8b0:4864:20::72e])
        by gmr-mx.google.com with ESMTPS id l18-v6si806207qtj.0.2018.10.31.08.03.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 08:03:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) client-ip=2607:f8b0:4864:20::72e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Su2TlvPS;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72e.google.com with SMTP id a132so9995839qkg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 08:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZVy5C7gVTqrB0QrFgaOuL+scvRINcyS9QCdTNwdZ+a8=;
        b=Su2TlvPSItfVwrJIyg9IkiBJE2+VSvnFUdNlfsSwD4vtx28TZ22nj6C1si4U9Kgkkv
         2Dd3ePVK7R8Oevln75eIVcfiV65/IisZdWT4hGTFa+UOfNGtiYqP6ewWEYJPo24JkaUX
         3dvY3j145gbpRrgJ6u4hhPYY+flCho4lSDnBb2ciZL4Wn2K2loBg0xKW4aLfHuzthcT7
         4jWSLsPN5JcfJiO+mgY9klYx76yx7z5QeEIDAfXj7yddl32gnSI5l7wXAoFloUGwmXFg
         efH1I12wEGGVVKqeWfjmC8VOvekM4GkCP6hu24lV6LUXalUpGsXeWmu9FJl8QV8/LjWj
         RtUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZVy5C7gVTqrB0QrFgaOuL+scvRINcyS9QCdTNwdZ+a8=;
        b=JzlWz8fi0yiZKoQLPWsl+Es2Hu8sgq1wtyI1kolrOZnmzIMvpriZBso27jLrulDnCt
         EQpLCEC1uCQXHPrBE/x0NmOBQpfWSEqDRvAVqJzAY/i/Qy3vZB2Yy1P7h2+BK4cP2o7T
         EL5QXqdCjzGRtB9RRS/QS1XAmVCRvJHJeARmgB3ft6xm7TOChgUC3Fn+5niMN5kNhElm
         FQGZkW4brOQARb9ugQBiXPthCQjO5/3vGss1VkRAoP6dbEUSgx2bvXaS19w1Emd5e1bA
         vq283cK0BYbZuE1nhfqSRmFaZaVTqLVfsmED1PNc275KCHbmBPQwyJMICJDuhABl9ENb
         DgEA==
X-Gm-Message-State: AGRZ1gKufVeEb8NGiiOMV3Lmb6l5ZzXUaF6Bx9NZeMf+0Pq5gKJS2N0G
	0FieoIaT8CH/ZgPGUWeuEOKyWiJ1rOA=
X-Received: by 2002:a0c:f684:: with SMTP id p4mr3069036qvn.80.1540998211419;
        Wed, 31 Oct 2018 08:03:31 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id x34-v6sm14853639qth.86.2018.10.31.08.03.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 08:03:30 -0700 (PDT)
Date: Wed, 31 Oct 2018 12:03:26 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: vboxvideo: Remove unnecessary parentheses
Message-ID: <20181031150326.yikoivqgwfurtrg4@smtp.gmail.com>
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

Changes in v3:
  - Update to apply patch to the latest kernel tree

 drivers/staging/vboxvideo/vbox_main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vboxvideo/vbox_main.c b/drivers/staging/vboxvideo/vbox_main.c
index 7466c1103ff6..ad0e0b62bd1e 100644
--- a/drivers/staging/vboxvideo/vbox_main.c
+++ b/drivers/staging/vboxvideo/vbox_main.c
@@ -122,10 +122,10 @@ void vbox_framebuffer_dirty_rectangles(struct drm_framebuffer *fb,
 			struct vbva_cmd_hdr cmd_hdr;
 			unsigned int crtc_id = to_vbox_crtc(crtc)->crtc_id;
 
-			if ((rects[i].x1 > crtc_x + mode->hdisplay) ||
-			    (rects[i].y1 > crtc_y + mode->vdisplay) ||
-			    (rects[i].x2 < crtc_x) ||
-			    (rects[i].y2 < crtc_y))
+			if (rects[i].x1 > crtc_x + mode->hdisplay ||
+			    rects[i].y1 > crtc_y + mode->vdisplay ||
+			    rects[i].x2 < crtc_x ||
+			    rects[i].y2 < crtc_y)
 				continue;
 
 			cmd_hdr.x = (s16)rects[i].x1;
-- 
2.19.1


