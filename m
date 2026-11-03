Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.222.180
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793743929;
	b=n53R6r9Qd/ybVZADKuNrEP/RfOfKzwnwkiPDz2RLMAWGQvBGL6BIKPEi3bw1V0b5r14N
	 7HEBzPlNBUQxRt4d8i4ea74Wxep/OWOFqZd3HgrlJrCgdK0M2LOrAoIQygOh+ARehG1Ug
	 mWuh3ODO08KAXxc8WwKAifBgPa7SDqspJUwACvU4UfLqt8fIg3BuBgDZuAz7BW3FykG4k
	 fvxSUoUNzGoVogKJalJ6CD6sRFq26/Krnc6h88B4Dygd9ZyfUjWqNnk6dhF3B2LOp26ar
	 CJFQIGMgyZUf/G5DZHfx72+PNRh/EJ24AOsf0AEz5vc8Jkl0twiHVmjEBTe1SfDN59w==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793743929;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=zhleLxlgO/8KkinCeUWj94TJDi+jMt0bo+ONkONjbbs=;
	b=2Zx08KpOWSKuIiswT1h4oPoUPs3CbiZ7uWmRWFBfV3LAZ3D11IZixH8mGxg2SQP985W7
	 zsq1quMH0Cz04u5mcnYWzK8vdxG6y/Gal/7KTeonN+E6y0oW9VHk+hnuy6nMQx5mZke1h
	 HOAmUsbByjGPIQaUES+4YjyKj0pWIJ3KZyHjk/ZjVTlg9u0G0IDuIfUrl4d6qDWObEJwo
	 T6agU3xiCx664HffNa5YX1+DBPdKWP8puSHfpLFPFbRMLoICgVFLMnL1cRrlUqITHwgtH
	 bsuQarDYBwmicObQBOUfNTzMVDnuzSXs2jvhcONaXDXeMKOQeA0VUwyR9zXQKql9z9w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=pBxP32qv;
	arc=none smtp.remote-ip=209.85.222.180
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE40606A32F
	for <outreachy@lists.linux.dev>; Tue,  3 Nov 2026 22:12:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5AE40606A32F
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=pBxP32qv
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-93f3c895a0eso10349285a.2
        for <outreachy@lists.linux.dev>; Tue, 03 Nov 2026 14:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793743927; x=1794348727; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=zhleLxlgO/8KkinCeUWj94TJDi+jMt0bo+ONkONjbbs=;
        b=pBxP32qv2SDqXSbwKq5zeVpQ7x/is9u7xC2MolREXbPUBW3wzamfe/BSWULc2kqrYj
         dKrhMYoqGN86nrrbpRueqnYkqYxG0vt+g7X0FJ7sH90nZstyPdCXYQYqA1w9R0zegHhh
         ad+BxEbqYsXxSfXO8vamywUhAAWUHaMEndXzDsubUndaLFFL2CNKhYLknRZGyha2V69J
         ilDVBICe/iZfW+oUjumvNAu6zfaImsorN4yqSwrlwxhxq3hQEsnmEygA/xUb79jwswhm
         giobACF07ThM45jG4DEZdRWN5Vr8xzGaXq15tzuGIw7voSeQIXjhNZSNOKkKqT2caolK
         k4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793743927; x=1794348727;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zhleLxlgO/8KkinCeUWj94TJDi+jMt0bo+ONkONjbbs=;
        b=RywMYsNKQrYRkhip2k07nU4+z1akoIaLHrt0ACEM2QTfMVcTvz9D/Lf9rPgszIk6Vf
         uzTJX7RSgm92kNCEaRX4dYA39x2hfHUB1nysNggXRHJnc4q2XO05fnzUln99qDCf5si0
         r4C7AvnV+gluhVIpgHMgkP/tHMQUJdtaLbec3loUlMXOP4cw9mN25HieNOF2v/pVLWun
         EWmfdLTocyeQK0HwX9IbnrVAf6tvZvbH/bmuOkSbzGky9axX8VIGiz2yKfSrvm1nFTWj
         3ONiFg+UU+4tctVB0F8fZju+TKNYsaAIMarnS2UDjYX2JAJnoUTKtx7xFEf758KHE/1r
         aNgQ==
X-Gm-Message-State: APuU4Z8Vjx3twUOFWIC45VwFUuYX+GRJ1QSIpgYD9cyuGd/LiaBqKoBj
	SOFRkGIegVtNLJae0wLdxrJO3cQtk+yGjRMYDV6gJdmcr0yT21JXKu+jDxZDICc6OvDp3Q==
X-Gm-Gg: AYBFou1B3jPriPYVALP6ItlTJyCwhRk/j6n0DrVwGwMKX06WXeTni4Y2YQzUhlGslrG
	oxuZ/u3ppMHT4CLcAdHIzJFlQ1xbVSk8yUpkiStZfWZW4S7hxshnnlL5ICxu4lUpbavIxZQdrvr
	k+8x7nCXQssz9FycPJbRPg8Qd8cBCDBiTlRTriEbapgQGuLlcq7HFwj0WjCSUTFNSJluCjxDQhk
	kaZbWcZwW/cLCo95S6nuuuP/DwP+Z7TnAwIPL6hIuf7rKaPYf+w6D99guQ2S6Vd8qn5qo9ulexQ
	QsjDiVbex3fYUr0I8nYl3PFeYiOFqAwjlhIwwZUcS/yq+gE9jdBQpHMJA7xwvPSGNnssHjB9LKL
	DU2L51fjiqQJTUTFm3oV3mW2RpyZQWBYECfADSAsJSqMPPzPHZ0B6yR6kqyxkYRy0UEbYHDBMWK
	IIWO2SI2w1pPiMXaeFEIH31B6ZzXaRh1TmI/uy+E2riaD6LiBw3vFh3nypMaHPF8fruGnnjxy5h
	Q2qfyrOvOoFt2jT8cyVcW3dirqL8iyLSP9wS7dpJM+cpErHwZX4KbGzkZhRDQeuOTZVLedQp832
	16mhvyfTcSvNzd7yAl5K9jpcJ+gDCVJYG1T5wtOYMp4UwXrkIWxxkjz1oLU8YzPWsSp7GW5XBex
	TqJXDSH9F07eMKyIdGFhntekdSBrWzEB4k1E=
X-Received: by 2002:a05:620a:2805:b0:93b:d79a:c463 with SMTP id af79cd13be357-944216db682mr2344562985a.59.1793743927168;
        Tue, 03 Nov 2026 14:12:07 -0800 (PST)
Received: from codespaces-be20d5.ynsnsb35uh3ubhr4tvarlepncd.bx.internal.cloudapp.net ([172.191.151.57])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-945d4844be4sm39276485a.29.2026.11.03.14.12.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 14:12:06 -0800 (PST)
From: Eileen Blessing Kabi <kabiblessing5@gmail.com>
To: outreachy@lists.linux.dev,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andy Shevchenko <andy@kernel.org>
Cc: linux-staging@lists.linux.dev,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Eileen Blessing Kabi <kabiblessing5@gmail.com>
Subject: [PATCH] staging: fbtft: fix spelling mistake "writte" -> "written"
Date: Tue,  3 Nov 2026 22:11:41 +0000
Message-ID: <20261103221142.45100-1-kabiblessing5@gmail.com>
X-Mailer: git-send-email 2.56.0
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

Fix the spelling of "written" in the write_vmem() kernel-doc comment.

Found with codespell.

Signed-off-by: Eileen Blessing Kabi <kabiblessing5@gmail.com>
---
 drivers/staging/fbtft/fb_st7789v.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
index 861a15414..c4db681eb 100644
--- a/drivers/staging/fbtft/fb_st7789v.c
+++ b/drivers/staging/fbtft/fb_st7789v.c
@@ -221,7 +221,7 @@ static int init_display(struct fbtft_par *par)
  * write_vmem() - write data to display.
  * @par: FBTFT parameter object.
  * @offset: offset from screen_buffer.
- * @len: the length of data to be writte.
+ * @len: the length of data to be written.
  *
  * Return: 0 on success, or a negative error code otherwise.
  */
-- 
2.56.0

