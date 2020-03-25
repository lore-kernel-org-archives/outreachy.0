X-GM-THRID: 6808244889450446848
X-Received: by 2002:a17:906:264d:: with SMTP id i13mr436670ejc.1.1585175519237;
        Wed, 25 Mar 2020 15:31:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c818:: with SMTP id a24ls2461958edt.4.gmail; Wed, 25 Mar
 2020 15:31:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vurG7YRZBH+y5TaGAiagxMtxh+UYtd4HOs6pTL2NUZmg/DL0Lj7pftyWrOIwEK9LL/oEeAD
X-Received: by 2002:a50:d5c8:: with SMTP id g8mr5454730edj.370.1585175518010;
        Wed, 25 Mar 2020 15:31:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585175518; cv=none;
        d=google.com; s=arc-20160816;
        b=cWGLhZzk+KG1/NPgxNDDlj+GlYQuKzLe4ym+YwpB0TssIPCES4DitmyNUgG511g36f
         DlCQbF9vgni8itWiUZDoirROn2lpmUUdGBy5ansAu0/OtWo3H0DgmkOcR2xqZVbHOsYv
         yfScRzx1f++CKDA9fxGnsLP6hJ6BgMpIGAlrH1gqDOGUIlhP/fs8UoT8CZtYXwBHkT08
         XyLUwVvNqEiLX64/u5Ds2vpG4jQPA5TEVGAhzWUW6OOuYVoIYGinQJu3KCiEepZdmFS2
         2+A8541TjVaIlk41g0WLnbAToVWtSf5v48ixSjVVd3AOdz7mItq6p1lAUC7BjFOhdUCh
         dsNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=JaDNxmowIHppQzyXmLT2oTAbpeEFjiMH/SxX0pUMGKo=;
        b=n4PshluJLJ94sEgEa3eeuvFD9tRBhMludndM6ZHx6wqaN0TF55gbs2laz1e83hKWr0
         NxwL0PkEP3L1fuvZMgUd1X+lXdyrgdTNuiUIMNesYHrxP+eTGMTMqDhXDcIy9UuVIDzX
         Bfr8aeDHQVNGUiRZZx60tm2P0h9WZHUGz97gCvgz+7U8PSjzNVLo/cXiGB/+QFwc93q6
         jkB2w/bqCib5gFLrHIwvAb8WBzFG4bNea1blAUr036qeZU5yFqYCME+MpN90aNWdoclT
         jZVX0hDGh7VdEMgfU2kY/5viz8s5PWovy9DD4UieoIBz/2AN2GDz2VZ1Qk2dDx3n9vYP
         m0Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=txMgZieu;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id w13si24299edv.2.2020.03.25.15.31.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 15:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=txMgZieu;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x142.google.com with SMTP id t16so2375107lfl.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 15:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JaDNxmowIHppQzyXmLT2oTAbpeEFjiMH/SxX0pUMGKo=;
        b=txMgZieuBidU4+XKJPdVCkfSs4yjyDC7a6028StGfadSW8dZ3M+DfemEk8eOcZRou8
         uGShF0KG/wtTOoUWKI2s8VzpIA2KEjrewXGOI6KfqPySy99MpwsY3Pojqi0TNFg5SRP6
         0DA3o71ojNCWFnqqszLJYAJ5UVGKAuJZh9P/ySDP/P4fu+G4brgUhMGUXUum3D3kXKc4
         QuXbrkvnhNIj+sSHf6GXVWL0UIQdNYkWP/P2t28pGtuUyGswv0hrWF3AOWdJTJ4xKVBz
         Z+HQuqP11oztMsFFCp4FGHoc9RPlhO2S/4iQsQPxvGH02MT87sX5PuSRRP4oFHMcDE+E
         7GdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JaDNxmowIHppQzyXmLT2oTAbpeEFjiMH/SxX0pUMGKo=;
        b=eRSGP7Vq7eon7CGiubvClOPwYGZRXFyAy5uy+AyWUkF3V7zVAXqav5uq8zBccOo9eV
         JK8s06rf69lp7q1B6HLaNbZxZxaWvZrAKAzezFrehJqRaJRecoyOSA6Zi+vZxPDmZuF2
         ExXaX4TWvDGU7Zo8pS9ApDBv5i80diRdibIY8vrRbXsTi6UzAsV4LT5TKdFSmEQcw4AX
         mdwwhtZ0YwRUDHsKQJ3sfGWcffJUkLAGrZULQaeJdN5R0rww66GMhnhiGhWubdxJaDuk
         tKG+EnTeN6BqwQgjvxMgBGvSZgaj7QlBZkruBSbbfzs9diZpSQ9xw57PDlg67r1nTu4M
         UBCg==
X-Gm-Message-State: ANhLgQ1C5NQtpE3EA5K8jZS+Xw4lIprkm3ioANwcskgyPMLFwCvf//qI
	oWoRvrU1WHhYMAKtxFbKzXA=
X-Received: by 2002:a05:6512:1054:: with SMTP id c20mr3561413lfb.69.1585175517458;
        Wed, 25 Mar 2020 15:31:57 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.199])
        by smtp.gmail.com with ESMTPSA id h6sm298546lji.39.2020.03.25.15.31.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2020 15:31:56 -0700 (PDT)
Date: Thu, 26 Mar 2020 01:31:55 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: octeon-usb: line over 80 characters
Message-ID: <20200325223155.GA6515@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Code readability increased for 80 character limit.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index dbafd46..de3b082 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -2641,9 +2641,9 @@ static int cvmx_usb_poll_channel(struct octeon_hcd *usb, int channel)
 						     hcintmsk.u32);
 				usbc_hcchar.s.chdis = 1;
 				cvmx_usb_write_csr32(usb,
-						     CVMX_USBCX_HCCHARX(
-						     channel, usb->index),
-						     usbc_hcchar.u32);
+						CVMX_USBCX_HCCHARX(channel,
+						       	usb->index),
+						usbc_hcchar.u32);
 				return 0;
 			} else if (usbc_hcint.s.xfercompl) {
 				/*
-- 
2.7.4


