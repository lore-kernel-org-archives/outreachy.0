Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3863926E1B
	for <outreachy@lists.linux.dev>; Sat,  7 Oct 2023 13:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iWRYEn8X"
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6c4e38483d2so2087863a34.1
        for <outreachy@lists.linux.dev>; Sat, 07 Oct 2023 06:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696686644; x=1697291444; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2FZezSuaD8AEsineI8XbK+IBBeq735LG7eYS52fIqn0=;
        b=iWRYEn8Xvq3eeM8/GF9JW6YNWD5yt7U7s5kBGftXHMIz/StuMWPgN9IJW6J8Ngmbds
         gIcK60vYDpV06OGGaecPmgRS2f1uzEYJ1W8Ia17pPwybAG/Gvioxh/mB0wOsx28Y99zo
         mgMAU7WHTwG4umS7hieYrvKn1f/zrEPx/QG92XpCJCs1Lj6QgNhu6t47ixiwRK52l+Al
         EC8CYmSYRVaV9wtgLvuW0PdkdhG9pxRqShiuuVlEQ3HlHYokc/2MYJkw2cU+bqlogjya
         H/ecjHTiabLsmylmlyHne0Q7EUoxgpCbzqaUN3cC30xEKj7WpR0JHoR7UdnT0DE74iUv
         u06w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696686644; x=1697291444;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2FZezSuaD8AEsineI8XbK+IBBeq735LG7eYS52fIqn0=;
        b=dJwQ58gTg4ALhsy84Y6KTpUw9MNRr3GRbpu/UKhA8awhhY0xHEcdjHc13Rks8XI6BK
         RkZ5x0J2Pu/L7cMrvPHlTVoDtNnTy1TvD2yyOntKsaafdHAVbkyrBLAz3FQEY/mYX9UF
         BDRj+yoaBmn0fmkpQQCMrBlVDA9DS1ARPx3FdmG1AAEYuZbl9KW5wVGmskKrHVyD9rVY
         rcBPXHRZ75zQo1aooLGh3paJxiCf0gghfCwtAksqSA9ohlBOK3fDHcVhjSGJh+LT5A3D
         GOWLd8Bo5qi9JlFjEaQWhwDE9Ahm2sv6aOyEd9gPCjVwYAoQ9zUKlH+mrzi6p/UAbIFE
         2o5Q==
X-Gm-Message-State: AOJu0Yx2k+IAgaTQ+PnySBPx/dGxx7j52DL/uk5i+2afUU1WOMB8bBod
	wUe1uGCQLyoQ0epPpJU4D4sSSmQSpi/m89SCA62XTsgOeQJz0A==
X-Google-Smtp-Source: AGHT+IE3mE30v4Y89sNEFirCWte2tbX73ubTUuTR8q3TuodYPjl1bACNMjQNlEDmJQEehOKKVzzkeUoHAF/1rEwWb98=
X-Received: by 2002:a9d:674f:0:b0:6b1:d368:557c with SMTP id
 w15-20020a9d674f000000b006b1d368557cmr12132759otm.30.1696686643911; Sat, 07
 Oct 2023 06:50:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Calvince Otieno <calvncce@gmail.com>
Date: Sat, 7 Oct 2023 16:50:32 +0300
Message-ID: <CADFX3OQ1rdnR=ONu5wufAYN0NrvMkaveQ_Y9z_1K8m9Dzz3SPA@mail.gmail.com>
Subject: Unable to make file
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello team!

I have a problem. I tried running the Make file and I got this error message:

make[3]: *** No rule to make target 'debian/canonical-certs.pem',
needed by 'certs/x509_certificate_list'.  Stop.

make[2]: *** [scripts/Makefile.build:480: certs] Error 2

make[1]: *** [/home/calvince/Documents/labs/git/kernels/staging/Makefile:1913:
.] Error 2

make: *** [Makefile:234: __sub-make] Error 2
