X-GM-THRID: 6472277834533437440
X-Received: by 10.101.66.5 with SMTP id c5mr1278584pgq.133.1506944614509;
        Mon, 02 Oct 2017 04:43:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.117.77 with SMTP id f13ls2911819pgn.17.gmail; Mon, 02 Oct
 2017 04:43:33 -0700 (PDT)
X-Received: by 10.101.88.140 with SMTP id d12mr1311196pgu.22.1506944613452;
        Mon, 02 Oct 2017 04:43:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506944613; cv=none;
        d=google.com; s=arc-20160816;
        b=eY1FbcFotwjBmnOzpyoJYc3zEm5Q8v8xkwH2ogzXEjS5R+fUFxfIGLrPCiBbQRTJBK
         xSePT9rMLfnIOL/AydDfwn4ytSe4xr0x23sGwLHmCV3Org3F/6W/hnWMN/gfgUd0d7UW
         2W14GCgSOxb1y/GrxmEun4oNt9sHAGD7iOFh3UbCjbDCnbd8WhuY6Scpx2mWD4a3xpX5
         ni/A06Rgj3sLaPfyStMM+PJYMKBSxiuvJxtudgvcBTwYltiE/2z/wBIAanIyrLs/Bny+
         wymPqx6h9uEq7lF0Kxu/51k6e8QRb9xE8lVcTPFQE5qRFBDsChU31Eemo4mi4/UXc6eA
         Rq9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=feznBgRTt554aR/vOn8qNl37g5i1mM7mm3gHtEN2TkI=;
        b=dIjafGazU66/ZniE7VU6vKfW/6V9dH2ra/JjEUxasdVhkgBbEYasMUGSJPO30oCaqT
         B5TJtbpccNUYc4cOd9f0Oe9d6BO1IOTuezP1REe1AteWyOSziirrMDVtQutdWySySQXX
         gKQNaesX0YQ10FhidRNIuqbR8dCib9/Z6Yjs7t5/5xsklcVSe2+p0HTJ+j9BPriKnD2G
         BxqqaMYa+s9hUejm82NfBOIoueHUQROzHb7Dbk4EuvX1JcageeHbKzYeTgjAhUXU6jgt
         MRsEZbu0DTSr5rFVlDGUgzRQUgCMx57B4a7vgt2JfHPUHvQnd94tIG3UqcwvSEGuDubH
         opWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dNQ0gt8o;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f189si1020255pfa.1.2017.10.02.04.43.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 04:43:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dNQ0gt8o;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id m28so5351144pfi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 04:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=feznBgRTt554aR/vOn8qNl37g5i1mM7mm3gHtEN2TkI=;
        b=dNQ0gt8ow3WrBs6F+IpHgQqcyIl7oBYGPl2eylukES4vbYLbGP0muSgo5oumGbjOSI
         8Ta17yWT3/Le24Y2qOb8wChgKw/IQVCnJtgtAK+iVU5WPEppBVbdF8GRC0lvDqCEGngO
         FWkdJnKXiznlG1wA4YOjfhHdxuIgKhBtpNaK7KmEWArTOXGNUaxanqKq/x6VvHSpMD1O
         LwSWYCLvfeEcrf5g0z+Iqs8EEAAByk1Qh659lic9eJxQqwZF/z18CJTvqVxbPN7PuR3J
         KEmckoaBzQAfMyu2xCo+r4WgFU56TGLoMjOvqLd+f6O3cfXJ74gknnXxnGq5foEk2uyx
         TC3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=feznBgRTt554aR/vOn8qNl37g5i1mM7mm3gHtEN2TkI=;
        b=l7nbxksqQGpLYV3NrigtMUyV2nEwlymWTi9FZxA6LoZMCKTM0WNnLeHK4wkdfcFXET
         /TGJ6KhqrVDE+L9Bq9Ywgth7mme6vTcK4HT+QuyRh7tO3PwyDEpH2teJpTIBGIVD4jRQ
         20MYVNRz12D/7dxg6VpNSMJStMpqhZ8tRIKddXZKvUoWedVSTWv3YVZTK0tASOnWs7C5
         LqMzNbbhSsaFx5pEiASOf2T4C05aPoUDGX8LZgNR13uJQf470t23whi0s/A+/y9SnKsf
         qlGIl0mB0xBwqWb61Afj80w5iINdNTBodS/P2UsuPlvZV2CrbUFk+ssDWsNdF+cZoAEg
         8S6g==
X-Gm-Message-State: AHPjjUgaFS98XdRkZYRzZT+nKVp1vJ4F+A9Vvfn8pWdekIQE8zLXMU7s
	KQ+PiqRZtyPTdW8UxUZ/6q3do60d
X-Google-Smtp-Source: AOwi7QAQuGNflue5ciqRHGud9WC4Vwfvn6hlCzoNeXSQK0HqL5bPNQcq4AgRrfmhjx1lMpBR9hf8BQ==
X-Received: by 10.101.74.207 with SMTP id c15mr12208747pgu.259.1506944612950;
        Mon, 02 Oct 2017 04:43:32 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id h9sm16393275pfi.60.2017.10.02.04.43.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 04:43:32 -0700 (PDT)
Date: Mon, 2 Oct 2017 17:13:22 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: rts5208: use usleep_range instead of udelay
Message-ID: <20171002114322.GA8908@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Since a its a slow device, allow a small range of 100

Signed-off-by: Keerthi Reddy <Keerthigd4990@gmail.com>
---
 drivers/staging/rts5208/rtsx_card.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_card.c b/drivers/staging/rts5208/rtsx_card.c
index a6b7bff..418e29d 100644
--- a/drivers/staging/rts5208/rtsx_card.c
+++ b/drivers/staging/rts5208/rtsx_card.c
@@ -825,7 +825,7 @@ int switch_normal_clock(struct rtsx_chip *chip, int clk)
 	}
 
 	if (sd_vpclk_phase_reset) {
-		udelay(200);
+		usleep_range(200, 300);
 		retval = rtsx_write_register(chip, SD_VPCLK0_CTL,
 					     PHASE_NOT_RESET, PHASE_NOT_RESET);
 		if (retval) {
@@ -838,7 +838,7 @@ int switch_normal_clock(struct rtsx_chip *chip, int clk)
 			rtsx_trace(chip);
 			return retval;
 		}
-		udelay(200);
+		usleep_range(200, 300);
 	}
 	retval = rtsx_write_register(chip, CLK_CTL, 0xFF, 0);
 	if (retval) {
-- 
2.7.4


