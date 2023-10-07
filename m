Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C5714F89
	for <outreachy@lists.linux.dev>; Sat,  7 Oct 2023 07:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eTakghwN"
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-1e1b1b96746so1807368fac.2
        for <outreachy@lists.linux.dev>; Sat, 07 Oct 2023 00:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696665447; x=1697270247; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BVkEbBNw6DQehJuM4d6QY06vLrmvDsQCRcxZov4j3AY=;
        b=eTakghwNExr2srwrbwybXEh6HUjzNKYzXkUUjN1EQoCw63Ivfs30cFmz23wH9qVFca
         9kKKLP38NCs8SqyupBz/hI3yzITSzygevp2duSN4hDD3z80Ey5SMsXHNgVLRa/9Tssmh
         zHmGokadUighI2oAvsG0nxPtcnprIEAnrHa1qCDXYUt7tVzY5hxdASPcZqwm3YmiRXhU
         2WkDt5wOeral0dQle8F5xTka9mZk0ifymSZlxNHAyMtqMqGFGJ8HXTsX/gEGmznEjpdE
         sEuP8icGiHBleO9bFJU0XYOtQzy8YkGSgimx+CuJRT/VnWdn3XvXg4vb84BWg9hAD35h
         g9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696665447; x=1697270247;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BVkEbBNw6DQehJuM4d6QY06vLrmvDsQCRcxZov4j3AY=;
        b=iX61G7I2h1Lmcy4ci3z/aDpLHssTAC74I1fZm7uOMALpWgL1HLvzEXdcGK1WknI3vg
         mVYglT7loqrvt2ebGJKqO0U6hLwHgX1c3gLjAcOVRiBmS7mhyKbjU+ywAWpMu+LR471/
         eWW3q4xcmiXLYswTPT0Ry8A7eTG8bxXhotUAtKWjAle7UxZcGtq35AReAe9zQb2vZDFO
         KlZ2/XeM3PgLBVgL4AVDyHKlpR/05vr4PGwJ2BqQAFkgznJKR5Wu6YBTsFpxYVuZV3a1
         TJExO/QaJJN9i7TRHnmSmTaBd7O727J1N0p+lnJs1aUPXtLWd4KhcFgMn7x0cOo9lBi+
         5SpQ==
X-Gm-Message-State: AOJu0Yyn79ak0ShZBNhLoNxvfG2XG1tqNdcjnyhHdsmqDPB1+t6/F9Pe
	EENcav8LvIe33Y5ZqJXRnzFQIGW5Etkaa8cINzFIGiSynxyijQ==
X-Google-Smtp-Source: AGHT+IH9+Yf6CBqb1RCiul6c0LT5bGwrpFje3UIkztNxNpoN2DWWGaFry2amNMlrw/wd8xHbw2/2qAYZVph8QlGTq+A=
X-Received: by 2002:a05:6870:9721:b0:1d6:5fb5:1541 with SMTP id
 n33-20020a056870972100b001d65fb51541mr11639357oaq.35.1696665447355; Sat, 07
 Oct 2023 00:57:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: K <maduechesik@gmail.com>
Date: Sat, 7 Oct 2023 08:57:15 +0100
Message-ID: <CAAFs_TEEPRjMGovLtqPVteSAiWtS0bMqo_ekHEajtNU05448bg@mail.gmail.com>
Subject: [Outreachy Applicant] Help needed
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello, Kenechukwu! Thank you all for your efforts. Please, I have been
having this issue since yesterday. Anytime i logout of my Vmware,
every file I got from my git clone staging folder disappears when I
log back into Ubuntu on my Vmware. Yesterday I was already building
before I logged out and now I am back to square 1. Please, I need help
urgently.
