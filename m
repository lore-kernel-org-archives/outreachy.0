Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.218.42
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792938166;
	b=gitQOwpNozqQZjK2kwebzyO92b+6NmbzfB0qYw4EQATt9NjyF62mA//gSIodNxBZENev
	 dagbuvtT/T+G8JkVjZoKhe1a8qdERqDW5vwapWI29IyyL5jORlEotNwg64jEEqfHMBbji
	 s90HKTwWKl6Uk+qjZdLXIGRirfwaDtWs+NYatDdWZLTSqTtnlZp5cPLT5M7bgE9wV4Zmg
	 BPVP1zOaIpT/XF2Z/Bl0xaCKpjVeMN0HMgBCJdrzS1YP4j9eaU513MEWLZ0opmkWLiOHx
	 z0dsONNst8OzEu/lzerQTbLLY1OVDmtWWWZWmrGbtSFu8zh8A4u/ZrH2VKruK+bR9rQ==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792938166;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type;
	bh=GWA3ILffVhGa4FkzQXQubKTR5QBs74w5VthahbifZWg=;
	b=vwEVnE9/fOfeqKQTWyafWxp9185fovtPjrwIt0Za1AuqMGl+4TDA5H7TfHSmFiN0NViL
	 xVV9Izzci1IQYUFhkJGs0EOoMjnBWhhnLS9pS1bUS+/Y8qbCOoz1QYigQiu0wM/NPAIAY
	 tqEYWbVzPPz4Wx+rtUlZaP7eioj7AVEdebGzPNAsiXxt9fXUepJUcIedHV5ZM6whkyDsn
	 AfL/w1B+sb6nDkZgWCznGy1nqM25II6tHgDgbuQn5o5uLfwmF3DjXCFbyllej9ZAUxOy1
	 dBCbe41izBPL39xHtgNIHKYbiwYtXZTK6y7IMz8YggeRPOPpCk49YjuDH0s/NnapXPg==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=DIzbT5VE;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.218.42
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDBD606A31B
	for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 14:22:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org CCDBD606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=DIzbT5VE
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-c498fa2f365so5624666b.3
        for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 07:22:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792938164; cv=none;
        d=google.com; s=arc-20260327;
        b=PIP5JY+xqyTRhh+mtN+mEJZAyoZC8fsjy7DT8jylFRLzRNK1OgL+fZ2UA8I5gSNQNz
         mRM0RMEIbcJ2W3U4m+K9Wr+ff2FslbeQAq0VndhrUUrb3HBFqhfSWvLXekituCE0dYvS
         My1ClUeNgssyhMFuUU06nHsi8MNzRCEWGbi28BNsap7f10GPc7kAIxhLaT1CmkNHdYoC
         MrHaiFrfvMJwFm5I6XMHRl3RHwqkTE69lIpE7n3DKdLCpwS9lfeur3+dt6tAZpK70io9
         DZRi0kWYdEhwiM0S8LOh7Q5rKmFnKavtdN36kaWJL80wdqtsMjS0vTAoztbLmbaNkyIV
         xM7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=GWA3ILffVhGa4FkzQXQubKTR5QBs74w5VthahbifZWg=;
        fh=olYqNaJLxdu6I/ztSdnpB3v3sFSbXP4FGjvQGNpPlZ4=;
        b=NK4xoxcbh5z4gV9rrn44pW8yFejLJfTPym4n5uLUj880ZG5Mx8aQ5ACAP6B4StSoi/
         5+SJAL3lGbTTjolb3wrPHecUljyQ5FQQ1dCFmOHsbMQciUC92cjlS+cInu+Od69pgYPX
         kz0slEThqhUL/gxnJq7sSY6QNaBo/BOYovZiJRo/pHGcuG9A5Inw0OIntgcn5OA/8E8F
         gW+Ol/aTCCgsk3lVSaoyV5oJXzrt8xutZ7Lv/Ykiz+3b1u2SoGTlVYygiMU/PGnJcTVx
         Pmv/ZotWO3UbmLWo0m3EgWO/PGZLtXf3LFckx6UATQgXZ4QgosAqHmk3FL+OiuuA0er3
         vHIQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792938164; x=1793542964; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GWA3ILffVhGa4FkzQXQubKTR5QBs74w5VthahbifZWg=;
        b=DIzbT5VE3DatzXwwt3fVgwxYEF6irCk92Jo+7BKwCPiPRXRNIpnATpkrFETGI7Pfkl
         y0hni7URlUWYrKjWrILmtKsKblgk91r4N0XVgdSPR00d3DZ1G+1W2iRSh2hNjz3GeMMf
         WYCeVjzdS58cXFuc2xKRkyx6FnCDPeXkMcy/EhTHj0F3I72U4ZC8fevOtx4p/SFT0VIA
         nuw3kKvO13WjeFcOeZFgx/oo0RffDA3Pq2odK01IbxYriKbPQcqg5GqQ2Oy/eVXZC36S
         6A2qy5+6U98QpcZBPPYqxXuJxPbIl+iJy9QLBkExU+qtfv9224T8qqTKZpXckCDscmC6
         bmGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792938164; x=1793542964;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=GWA3ILffVhGa4FkzQXQubKTR5QBs74w5VthahbifZWg=;
        b=to5zQN1fr6gO5rkQP2o7iDApEhESkeJv/2iTrXzuOG0IIX4G4AB+aqLLEdqDfWcquE
         zFdeIQabMfrscb4rwrNBGDepsPGtUGA3e8FETer5LEFNf59kszNdilNHuVVD0N56XRYq
         DrMKAdZf5ZBC9CAvIR5PsWWgoKIGVtv7Blt79XwOafBLlGfmdg17SRfqFlOZCv78X11v
         gGpAIHcal5jnGaWnq49i5p8TIEF+/9eR3V72c4cLudb0xVndOVUE/dGSkFgxdaLNQzdF
         TTYZRf0ul3ZaQDAi/V7+B197UZ7kI5oJSD/MmmYsjc7x61wmCr+neFZQDQ1VRc8/flIE
         zJ9w==
X-Forwarded-Encrypted: i=1; AKwUvBzHMfZqbq95hJKnDKPwfwl/BzasOwp5nxB8a2YHH+UGyy87thwMhlC7PzYm0FdZi3S9atxhWeTW2Og=@lists.linux.dev
X-Gm-Message-State: AFq9FYLye9KjqZdiRK2q1JMECPoWX0ozeV9Y+12YFOGUIwQOZRH75WyK
	TJr2ygVRGZNzZqqiPsxRqyCVjNyL8ysMUe7DT7p6UOtfpJ8hERoaIhEVtz+tHqdkk74OGvMJrGn
	WSMK1YPvwDXnf13qjrU2oubD8blFQ51ihln2qd9Z2sC34
X-Gm-Gg: AYBFou0SNiy2CAOH7YNlKpfMTbgM2zldaX1eX9URL80wH+k3i2WdBmQTn11CGiTDV7G
	bCbCv4JqtJXMm/jNj1Kquhwr5asM4SE39960tGhdYdpfNA7gaHUJ+wAS6TCyb8XM3+1nuje0Y2i
	isMd/xzSTfhzHLQWn1yZ88yjPNDSJZwmRGQ9qWazm8X0DmbGDAmOJryq+Q7Z2wwp4YZMAXeYLpL
	zKZUHRNO7NENnLX6arK9SSyFJipTxbOBE7IjHStXLGIdOb1Sd09Mrg31ftUpCAqUvoyhZle/yCz
	wzPB2i4wL85nzZ71bsUCokkVKXmNTIDdNA8+QrQo6mcVTh442zIqQ8GEgk8Ox1Cbi37xLFQs6p6
	sgl9SQrBm6B41+p6n2aNwF0vdW6QzzKdvPZWzXeGHpEmVn+2jSoKPiDK7DM0IWwHsHg==
X-Received: by 2002:a17:907:dac:b0:c31:e9b7:f10b with SMTP id
 a640c23a62f3a-c46bdea43dfmr530904366b.42.1792938163869; Sun, 25 Oct 2026
 07:22:43 -0700 (PDT)
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
Date: Sun, 25 Oct 2026 15:22:30 +0100
X-Gm-Features: AclHuK9wgskeKFnwTz3UroDZd-FWWYPOLCNifdGibJ7BV5fPBFLMKtRw3_x8_lk
Message-ID: <CAHxSwT_bdBdiwwXpGpr9+rGizZU3p+RsB18hPH5TxqMuMZOsQw@mail.gmail.com>
Subject: [PATCH v3] staging: fbtft: fb_upd161704: Replace udelay() with usleep_range()
To: julia.lawall@inria.fr, gregkh@linuxfoundation.org, andy@kernel.org, 
	outreachy@lists.linux.dev
Cc: linux-staging@lists.linux.dev, linux-fbdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Replace udelay() calls inside the init_display() initialization
sequence with usleep_range() to avoid CPU busy-waiting. Since
init_display() runs in a non-atomic context, sleeping allows the CPU
to yield, improving power efficiency and system responsiveness.

Signed-off-by: Abubakar Musa Samaila <abubakarmusasamaila@gmail.com>
---
v3:
- Remove raw git headers from the email body per maintainer feedback.
- Add a descriptive commit message body explaining the rationale for
usleep_range().

v2:
- Send patch inline in the email body rather than as an attachment.
- No functional changes to the code diff itself.

v1:
 drivers/staging/fbtft/fb_upd161704.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/fbtft/fb_upd161704.c
b/drivers/staging/fbtft/fb_upd161704.c
index 7288140e7..94ae5bbf0 100644
--- a/drivers/staging/fbtft/fb_upd161704.c
+++ b/drivers/staging/fbtft/fb_upd161704.c
@@ -32,27 +32,27 @@ static int init_display(struct fbtft_par *par)

        /* oscillator start */
        write_reg(par, 0x003A, 0x0001); /*Oscillator 0: stop, 1: operation */
-       udelay(100);
+       usleep_range(100, 150);

        /* y-setting */
        write_reg(par, 0x0024, 0x007B); /* amplitude setting */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0025, 0x003B); /* amplitude setting */
        write_reg(par, 0x0026, 0x0034); /* amplitude setting */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0027, 0x0004); /* amplitude setting */
        write_reg(par, 0x0052, 0x0025); /* circuit setting 1 */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0053, 0x0033); /* circuit setting 2 */
        write_reg(par, 0x0061, 0x001C); /* adjustment V10 positive polarity */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0062, 0x002C); /* adjustment V9 negative polarity */
        write_reg(par, 0x0063, 0x0022); /* adjustment V34 positive polarity */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0064, 0x0027); /* adjustment V31 negative polarity */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0065, 0x0014); /* adjustment V61 negative polarity */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0066, 0x0010); /* adjustment V61 negative polarity */

        /* Basical clock for 1 line (BASECOUNT[7:0]) number specified */
@@ -60,7 +60,7 @@ static int init_display(struct fbtft_par *par)

        /* Power supply setting */
        write_reg(par, 0x0019, 0x0000); /* DC/DC output setting */
-       udelay(200);
+       usleep_range(200, 250);
        write_reg(par, 0x001A, 0x1000); /* DC/DC frequency setting */
        write_reg(par, 0x001B, 0x0023); /* DC/DC rising setting */
        write_reg(par, 0x001C, 0x0C01); /* Regulator voltage setting */
-- 
2.34.1
