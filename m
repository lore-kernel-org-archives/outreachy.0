Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.218.53
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792925646;
	b=LksUffhTeQf71gvIcfKsdzLUN5BoJbjz9D0UQ1bSSlu7sutt25gU1iCwTcUrQwwwgegz
	 OZW6ArmOpQAyAeWysbFNH99gHXYwDCr8hYyp8LQABVbxFxTshWYFBToGgZuOIjPqd9ZBv
	 27XJ8DaL+BtDK+ZPts8yEIVg4gzP3MQnF8S4FQUnmuBZ6NxtJhi0GleCqk9wowQb9kKlW
	 lkQdQimYYok6IxhViIUveKiPTiAu6jg1AaEO8YMGEBfvAxiWz1Sia+lSCVV+GxP5hIzgS
	 OfLfZyhCGjftDHRFmq4hC8HiB3DZVLvCzXKd2HeM/PpugbflcPrsQhH66cPIJk7DHCA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792925646;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type;
	bh=MtahZLniFEJWP8SrmHT3ICGVYOg1SiAxfLPOaOBltmM=;
	b=DTY2oPieqqg7ZHbrOvI6scTcfSXkKfj0R392NvbUZ/7ZFqHM8eu7lnborHgZSxLgrfBh
	 FmRfJp1DS0CMoFALVARevN840lgke9bseNhCvmndJmglglOO92GAjKikf9zGCQxHhtcsw
	 X0veovAvs/fs2tmGWsCjLJEI82xrHNC3hV52qvuE+P6Ds5Jj/3lCSA0XJ7xAjvjVkXjjS
	 xHWH2bRdEcwsCOLx3YcBRtQtABlnFOIvAvG7OHKKroJcGCc2LVVh5miEBRTkg8IfEHV0L
	 BXKEHvFLiOnpygu8EsXPhyLAm6gLK69LXW5rPyuvuhg00FwblBft4MKWWtudCD5BdeQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=CN58dwws;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.218.53
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77FC606A31A
	for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 10:54:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B77FC606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=CN58dwws
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-c4395d31228so319059766b.1
        for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 03:54:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792925644; cv=none;
        d=google.com; s=arc-20260327;
        b=b2DUHvVxbA9/wU8ovSAJKlKtsh8dazqsCEEOIHsmbSSMYbQWSDwE/Cb3v3Ns93nGZY
         wwkLKCkiojM0SwX6RW152iLZzJa4KxkFV0+MX2PtjkTRP4ulKV+L1cwI6d+XlKBl99TL
         R2tC1Hb3lfCmwKPKk/I7Yia/he5QiKasf+AKqvehhDcy2lN2Ium9y5LU9ra0N0u+T363
         y6uE+3ZfEqrIoAwxdpi/RzNSrVTf5ON3J/x7LJ7j2QLNN9tUnXHAq0ryb5ysmjgMi6ID
         EF5Qgywxri9sTVMGRgZZjWUv4R2piXcABRFD1NXO1XN2QcJZBmwItGMc1ljPBbjv7ugO
         W7Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=MtahZLniFEJWP8SrmHT3ICGVYOg1SiAxfLPOaOBltmM=;
        fh=kF7ilSsZD+fAB347BtL+CoHd3+nqw8tNUjiBGl82HzU=;
        b=DQQzDDo4jf3EgA+kmxRkHKNqtOKHi9QbTKDbboiwZtYvweRvol05529xuosjVHVICe
         0QlWciI/33RZn8pK4o8Se52PCiicKIFf8Io2seivQ0mJxVTUXPXSE2286+MWYIrL5FzX
         C/BoOVrfvVJPmRQMAJbzbYn8trRZSTRRokwzScS8evpErpB/+aYE/SYcLJYFx+6SyC6O
         DdmWcftuvLOD+a6nXhUfaC13CRrWzaQVLxXqiIIo6FutI72EslKFSznlKa6za6pfliD/
         8GZVAv80uT2TFAkJhn4Ec5LyCAcsnKws+WTk0VqonOA4sck6X81/HNs7BSlBnNFDkECP
         VL2Q==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792925644; x=1793530444; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=MtahZLniFEJWP8SrmHT3ICGVYOg1SiAxfLPOaOBltmM=;
        b=CN58dwwsfQL5uuPoKH0CZx/zXBAak+FKG/LXbWyvSdPdv91EWHvC3LGTOd1KtogmmI
         VU/SX4IizQ1eetduFkNcqiybn7tREpdofIHg8w8CmVEzIIkGtlfb6emT5fWfhiXAGmLj
         +80IDMkzRkqIZEMcu5vjJcn1GpSJbaInJZEuHU/RO9cunlq+AcNQf3UWvndJXu8d5Jbi
         YlTnUPx4PfqLobfLhWO+DV4eIqoffc80137Wg0xUb20ehIHwEpd/QvUcZ0qPBXpQDlbE
         i5KBv4fNSFU/bimDXWrkLJYBUbcT7Xrwv2CNHcV85aJb13FA/QzsX5pbCvRARTHkJoNQ
         xz9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792925644; x=1793530444;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=MtahZLniFEJWP8SrmHT3ICGVYOg1SiAxfLPOaOBltmM=;
        b=sbKuG45K34E2KvRWCoVcQR2MW8UKaovfMsV1erOckoj6aPQk/gWiY65seCGGCYGRxJ
         aGLZN3dEDxAumBzX7MJ+auLV205+w4dUazH4wjWYM3USvejYp51xtvBJLnQZKIFCXZUY
         K9ZLgAXeBTsZEkWRUOOWA6YLzCpwTLcvA87N7IWOSXISoqRLgpc/dVqPDJiIEFzU/CX2
         3G+QgV3bzyriE0Do+VTREnrr/bgHRmlgF+z2d4grSk2l+IfafRtsVq1JXTKu5QOrP9WJ
         NGuBkzG00Qfw6cNm0OGS83DKkFZvUdePXrzhEmXALZ2nsjPlewg6vKZIOJhpyLyOHk+n
         FI7Q==
X-Forwarded-Encrypted: i=1; AKwUvByn0nsXjF9NwGKQFJ4VKCKskY6c/LxJ+y9tfTzAHr2QG9oMiOwAaLi4KOM1exl+7wop+KOr2V7Bkqg=@lists.linux.dev
X-Gm-Message-State: AFq9FYIN/M7imXKV+24UCbILLGzqZLeE0dOY/d8K+NbGtdXMKOyUhoN2
	3fmjmPUyMyIhxfMQym27+22Az/J8rknbhUa8COmiqxlwrWRg+WdVXB7M2jdJqb42ZxIjAaQOwlX
	BkxS270Q8JqBYs4A2CaXd7I9CboQ+Vpc=
X-Gm-Gg: AYBFou2SDgMDYbdmfqIyFS2pnLa97XM18pANUHfJzo8x60NCqfSrqFfBZGqxNCJDCif
	xskqhGpsIjJmdhmKOUd+KjeuO6r73QJkjGB3S+ILB2j6ye1bCIr6zE0MmlHtICuIlAuTlgxR1bU
	QlkjhuKrjLUbqEr25nVPhpbp++wsT7jGijFya8Wx/Lc7XHWtHajUAPvf8OoS7mNee772R1QSnXu
	KTV04/ZYLOpLom0JdiOnboGwlkZm8w3P2pcBJdVbej9m+zsYl596vefIQdVWMVZ+w2JRNfzGHr1
	F+HQBlMv4iMFlX/XPnc9GNvBdoiCjOhUfV2IGY7K1RgVhW39PpqvP2PLOat9jJq7RoNrdfYG92v
	6D1y4++nhz0cIUZ3rObRaKeeOhWuib5nalslMVfPD6HfN4kM7ngsrMsbAmklvEV6c+gNI
X-Received: by 2002:a17:906:dc8b:b0:c29:659e:2fd6 with SMTP id
 a640c23a62f3a-c46bddb549fmr450364866b.10.1792925643928; Sun, 25 Oct 2026
 03:54:03 -0700 (PDT)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
From: Abubakar Musa Samaila <abubakarmusasamaila@gmail.com>
Date: Sun, 25 Oct 2026 11:53:49 +0100
X-Gm-Features: AclHuK9TY3j97je9JyLB2E5dU6k-0NiwAm7rcWLnTy2tP6DroPMgj8seRuA_E5c
Message-ID: <CAHxSwT8zGKHDLjAbkR=EZL7QVwzS_47TPB283YTHKEQsE0mvFA@mail.gmail.com>
Subject: [PATCH] staging: fbtft: fb_ra8875: Replace mdelay() and udelay() with
 sleep alternatives
To: andy@kernel.org, gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Cc: linux-staging@lists.linux.dev, linux-fbdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, julia.lawall@inria.fr
Content-Type: text/plain; charset="UTF-8"

From 474546adc013fab098dfda25e6503413fddb9929 Mon Sep 17 00:00:00 2001
From: Abubakar Musa Samaila <abubakarmusasamaila@gmail.com>
Date: Sun, 25 Oct 2026 11:38:17 +0100
Subject: [PATCH] staging: fbtft: fb_ra8875: Replace mdelay() and udelay() with
 sleep alternatives

Signed-off-by: Abubakar Musa Samaila <abubakarmusasamaila@gmail.com>
---
 drivers/staging/fbtft/fb_ra8875.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ra8875.c
b/drivers/staging/fbtft/fb_ra8875.c
index 0ab1de664..ded953636 100644
--- a/drivers/staging/fbtft/fb_ra8875.c
+++ b/drivers/staging/fbtft/fb_ra8875.c
@@ -47,12 +47,12 @@ static int init_display(struct fbtft_par *par)
                /* PLL clock frequency */
                write_reg(par, 0x88, 0x0A);
                write_reg(par, 0x89, 0x02);
-               mdelay(10);
+               usleep_range(10000, 11000);
                /* color deep / MCU Interface */
                write_reg(par, 0x10, 0x0C);
                /* pixel clock period  */
                write_reg(par, 0x04, 0x03);
-               mdelay(1);
+               usleep_range(1000, 2000);
                /* horizontal settings */
                write_reg(par, 0x14, 0x27);
                write_reg(par, 0x15, 0x00);
@@ -72,12 +72,12 @@ static int init_display(struct fbtft_par *par)
                /* PLL clock frequency  */
                write_reg(par, 0x88, 0x0A);
                write_reg(par, 0x89, 0x02);
-               mdelay(10);
+               usleep_range(10000, 11000);
                /* color deep / MCU Interface */
                write_reg(par, 0x10, 0x0C);
                /* pixel clock period  */
                write_reg(par, 0x04, 0x82);
-               mdelay(1);
+               usleep_range(1000, 2000);
                /* horizontal settings */
                write_reg(par, 0x14, 0x3B);
                write_reg(par, 0x15, 0x00);
@@ -97,12 +97,12 @@ static int init_display(struct fbtft_par *par)
                /* PLL clock frequency */
                write_reg(par, 0x88, 0x0B);
                write_reg(par, 0x89, 0x02);
-               mdelay(10);
+               usleep_range(10000, 11000);
                /* color deep / MCU Interface */
                write_reg(par, 0x10, 0x0C);
                /* pixel clock period */
                write_reg(par, 0x04, 0x01);
-               mdelay(1);
+               usleep_range(1000, 2000);
                /* horizontal settings */
                write_reg(par, 0x14, 0x4F);
                write_reg(par, 0x15, 0x05);
@@ -122,12 +122,12 @@ static int init_display(struct fbtft_par *par)
                /* PLL clock frequency */
                write_reg(par, 0x88, 0x0B);
                write_reg(par, 0x89, 0x02);
-               mdelay(10);
+               usleep_range(10000, 11000);
                /* color deep / MCU Interface */
                write_reg(par, 0x10, 0x0C);
                /* pixel clock period */
                write_reg(par, 0x04, 0x81);
-               mdelay(1);
+               usleep_range(1000, 2000);
                /* horizontal settings */
                write_reg(par, 0x14, 0x63);
                write_reg(par, 0x15, 0x03);
@@ -150,11 +150,11 @@ static int init_display(struct fbtft_par *par)
        /* PWM clock */
        write_reg(par, 0x8a, 0x81);
        write_reg(par, 0x8b, 0xFF);
-       mdelay(10);
+       usleep_range(10000, 11000);

        /* Display ON */
        write_reg(par, 0x01, 0x80);
-       mdelay(10);
+       usleep_range(10000, 11000);

        return 0;
 }
@@ -210,7 +210,7 @@ static void write_reg8_bus8(struct fbtft_par *par,
int len, ...)
        }
        len--;

-       udelay(100);
+       usleep_range(100, 150);

        if (len) {
                buf = (u8 *)par->buf;
@@ -231,7 +231,7 @@ static void write_reg8_bus8(struct fbtft_par *par,
int len, ...)

        /* restore user spi-speed */
        par->fbtftops.write = fbtft_write_spi;
-       udelay(100);
+       usleep_range(100, 150);
 }

 static int write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
-- 
2.34.1
