Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.179
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793791638;
	b=FfK6HlN9C7kpH5i/JmudJyJ7nhbHUmIHIsgSBUBvX7yf+fDuT5fEos7aqYSETlAwizxC
	 JfijBhLmgjkBKrj7QlBnp5I7WnR2/3otqbw5Ov9aKbMGAPDdpzF6nr8n2rvebIZprYTPa
	 aoH6PEn+TLlgQQhyQKgEkXKn+5cnm7lpIQRENBEG3Jo+nrqA/ZiDXnD/lY1MnKQnaGBeA
	 uXyRoB5h+JrSWqKeSOYkTnR0LX/I5cHGjabbsKC83mem4Bh/froDCNwBDil5Ikp6bHUKO
	 mBHwxFMe21lhRwgCkxQ+FXI6uaEvo6M+S3tS0wM7SRQzlnOoG1hXrg9gMN778I0RRPg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793791638;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=4q1WGi9vPIf9vHoF8r8SkjERKMefi2tjXdzTAcwJSz0=;
	b=O7yawIZjuo4cXCUPVPmFafaMODKNtDaucG7Dvqnm9ExwPgf78iRrpIUuVN42ag2RBiRH
	 5qF/NDfxTszBQUkLAxaCXRsf0IpjwHlEp1TaMyKW+1DCfWY0ll1TwfzdxMzgNw8LS5OtJ
	 H3y4HR+23pYIbNMbnIH9Vrx2al16rdhtafAWUv6C9oS3HZ+HlSyuPglHGW0+kvpViP3Be
	 t7okYA5EFC52MizisUDJHlFueKZGnyTW62gY1QHSPuO5eiKPlZaGaj1MCtTIU0GA+KWrz
	 97m8JG/V89EM6ECgrg6HHu6B3ZjoTZmos7oHl38Ge7pZNZv43HWYhMSCwRd61lwo5oQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b="gRwLH6/V";
	arc=none smtp.remote-ip=74.125.82.179
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8E0606D809
	for <outreachy@lists.linux.dev>; Wed,  4 Nov 2026 11:27:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 8C8E0606D809
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=gRwLH6/V
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-35b2c599f43so1165834eec.0
        for <outreachy@lists.linux.dev>; Wed, 04 Nov 2026 03:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793791638; x=1794396438; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=4q1WGi9vPIf9vHoF8r8SkjERKMefi2tjXdzTAcwJSz0=;
        b=gRwLH6/VQxmiMHue5C1hBstJAoJjG3aQb3Hiqnbatr453VB0+D4d3I7F1Xd3ObDnOu
         EOGa9P/ns3PhiEaKdYHwoMyslfAVJ781ZSgmSwOc652BV43ZXk9Eb7LgvO5+tvv8O0ZK
         cBREmpJ0hVC6YjK1v/e4jj7gan2+7t0SQZEn6YkTX6JQ6hw4itRRCcB45KK2une2KnPL
         hqtZiSuRuIER/IUUjfS31IOKsG1j8jTtGc5QUf+qnINbKiKRG54Kmp01xz6Zouqc179Z
         5Rzdxf3Z2D5RFmhZynkTKmMYpp5AgIvVj2j8+6OzjBb9nudHAihxVJJgKqr9dMo8/VFL
         QagQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793791638; x=1794396438;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4q1WGi9vPIf9vHoF8r8SkjERKMefi2tjXdzTAcwJSz0=;
        b=rp2TR69PyOZIOdKuQXAjETAyVXVFNZWnPtZ7T/7hkEMOkG8Zui+drMq6tCZxvhZQaG
         ry8L2l5Ah6j8GXN7hkz4zLNzRwSVS56DQ5JMpt/4iS4OrPfbDjxqtPHUNlCJ3s6wy/+3
         dHHKO4Wg3Se7iaq9hI59vriU3/e5lcT+5o7h+MVqSh17A8u0CgMyIrjM+kTFc/Rfh24O
         w6Wf2Sv4OVLC25+A4NkDyyBAMkfYbDJ9HqdUzUTXlYmeXjOSjBQetbr6Rh/NI1TYVGXb
         gFTqO231Njh84O/p+hogv5jLQWsxgu3BcEl/wlXfMrCnst4/kuxDn18rlExPhAUOydT7
         bUaQ==
X-Gm-Message-State: APuU4Z8X6l2uyC+6DFwbrvsiZMMMu4ztQxr09nq3z5qF4z9dim2eXGGX
	98waHPQBeokxlShtRdqO2SpHQ3nsuHQYkWlZStYhu9gwXX1l8MkVLUa7TWYDWTJE
X-Gm-Gg: AYBFou3oNUBfLaXlxRbU/+7nh7Cg71gjV8ruaOqM70qnCuyDOVZTjb57Db4e8IGtNkG
	6xVFFe01t8baboSEzT3131R5xaaiP0YbiavAkK6RXS1fYUfkVyBtif/zBLPxjA6pg5yw5iG8cJT
	rjz2t8/op8T4fL8HxbINGK1vlgnpz4+J6V4LJTboTKAId1Ih/gMpWZQVB2jIvz7z1pEbotafPVD
	j2XkDPFheLgj8KDJVfiFt9WPfaN3r6XfcnCmkBpZJKczqs9UVGHrpEWYPlIL6hIeMCW7rJ0t6eb
	RWA0qr+ahv8cFuwNBOaFXl9I0p2/o5iW6emFBIb51rLFzvc3GZAHz7shJ8O+DdeBGQXrxMC7dRp
	5X8qXA2jXuWKHL5BBa7Pulg2oRhqlkPNPXNoBS8Ecg4u+JNgXakOCb01ICLc+5xrGn2MxqIK3ip
	3XEmY939CAR14Q2t4tIH/fNfWl9DVVi1cQteCDtojJaSQR74h5ck79smeKmfVA900FQ81232NKZ
	G2/fK+cGdTYM9lukNkIZbwg++NsXdHbhSkmsDIkFaomcDHLFNIQeZZ9MhxGK0fLidt12o2D8hjJ
	YB+iNd2Ewe5BtOxOKLiXWJgt9mOjMvpx49yT9bOQu4RQfvtsrAg=
X-Received: by 2002:a05:693c:41dc:10b0:351:2958:1740 with SMTP id 5a478bee46e88-36a42445a8amr24062847eec.37.1793791637656;
        Wed, 04 Nov 2026 03:27:17 -0800 (PST)
Received: from Anonymous.localdomain ([223.181.62.51])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36ca38d36besm11119601eec.11.2026.11.04.03.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 03:27:17 -0800 (PST)
From: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
To: outreachy@lists.linux.dev
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hussain Sitamouwala <husainsitamuwala21@gmail.com>
Subject: [PATCH] staging: sm750fb: fix spelling mistakes in readme
Date: Wed,  4 Nov 2026 11:26:29 +0000
Message-ID: <20261104112629.180890-1-husainsitamuwala21@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix two spelling mistakes found with codespell:

"defaulty use" -> "default to using"
"althernative" -> "alternative"

Signed-off-by: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
---
 drivers/staging/sm750fb/readme | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/readme b/drivers/staging/sm750fb/readme
index cfa45958b9d2..a000f833d8ce 100644
--- a/drivers/staging/sm750fb/readme
+++ b/drivers/staging/sm750fb/readme
@@ -30,9 +30,9 @@ About the kernel module parameter of driver:
 		insmod ./sm750fb.ko g_option="noaccel:1280x1024@60:otherparm:etc..."
 
 	2) if you put 800x600 into the parameter without bpp and
-		refresh rate, kernel driver will defaulty use 16bpp and 60hz
+		refresh rate, kernel driver will default to using 16bpp and 60hz
 
 Important:
 	if you have vesafb enabled in your config then /dev/fb0 will be created by vesafb
 	and this driver will use fb1, fb2. In that case, you need to configure your X-server
-	to use fb1. Another simple althernative is to disable vesafb from your config.
+	to use fb1. Another simple alternative is to disable vesafb from your config.
-- 
2.53.0

