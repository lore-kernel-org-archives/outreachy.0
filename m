Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1CF223D7F4
	for <outreachy@lists.linux.dev>; Thu, 18 Sep 2025 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758168745; cv=none; b=mZe/PLLLOMa9F0nZ5b590ZZqunOc84Ifkw9eH+SBwvwsOATacXzAEfm3IXe8Ya6ll1Md2HzlyODbInfTOO6WRPfkV9wQNj8FfVq130lXHoWnArqpcvb6Ilshdr0z+GLHBasNTu4cphpZFzHf0ZXdYpvCsB2wANsRsqL5qywsn1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758168745; c=relaxed/simple;
	bh=ycORfjxRMwF/YI8iraI/7j71mrjleo1veOyJ25xlVDk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=SHV+F7lOF4J/FfylZgqNBWN9jqg/hrtRnee77Jh8xXQLYTtq58AE9L6bD0THcpg2btE8zsEihNFXX8LT3e7d2+qrd8Gkyo4cJD40RQ8svHgaVrZHn1fRZmrBqaykv2ZK3/EKvDMuGcE2g2tGcRhDTwnm0hB6r3+tCEJgpd4pyEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dw8CeduQ; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dw8CeduQ"
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b54a588ad96so343749a12.1
        for <outreachy@lists.linux.dev>; Wed, 17 Sep 2025 21:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758168742; x=1758773542; darn=lists.linux.dev;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HP53M4MzIueddWbxF+VqJVFeYeK5AwzwKnn+jkmN5nc=;
        b=dw8CeduQawIpekpIvRPRL57xv306pZL+Dr249a7o8o/cCjAwuBUDOUWhnEmJe8zrUC
         0xy6kP2/4uW9QM0DK6h4KlFo1O6ffUQJQ5bepKFeIMuWtiuSwS9tlJ0/oIzMqcAjL273
         GDzo0AhqiTrC7y5bdjnD+oSmD4rmyBy6enHLe4M83nZ3UThtyQ+I0DN6bB5zaYfpF7db
         ofEbVGoFiH/Z9VXTwHpySBZxdbCtFC3BTWfPi8s6PPv6RkruSqJ5XW4EQBD9Gt1VlYID
         o7OJ1Jez2uQIdZeYA19uO4JhvrQKSHCKqY/gViT38OUDM4a67+jLc7EyPm+zmp2WCtok
         HJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758168742; x=1758773542;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HP53M4MzIueddWbxF+VqJVFeYeK5AwzwKnn+jkmN5nc=;
        b=i53o1rPXXZm8UQtlA5SR4wxy3PIO50QatUnf1/EHHLry4hxrN747MC74WA5+Hnh2La
         qSiiBwsnLxoKBZRdOiJX1/hma3rrhIfkjpQPh16FJlFGsAkAU5xAcs7ubzBBm/bMALga
         FUc3hclURYNt6vFXqwNigDpbKFw9HJTsFIS2Q27Ge9uwTYBPx5UiAuJ0vKsh6ggmWoRV
         HY0h7kXTxd+CuDSatFXmj7QmlguE2/lWMkW/kl4okK/bRbtg0djxtIIv1b5HsZO7BbXl
         EX9U/VhYsvE4+3DnQFEOgteo5kff9/AnYsnWpgfB70O8KFskzpEPp2YHJ9tp9yQQlwHl
         yPJw==
X-Gm-Message-State: AOJu0Yxv58cRmHk8zqlbxw+hqY9Qky8wkHXFWyslu4B89Nq4lrJ2B6Sq
	imKW4qVDni8cSfjxn07nQtJrbwt9Utu+M2D/SasuwE4QLsKc1dR7ojFQCVTr6pRB
X-Gm-Gg: ASbGncuPf98TdVus3+3U1QkA+d4u2AJ0S5HOdHvvH53ISOIfIt7W5Y08cRfe1iTN8Yn
	cumbHHDh0a5lDr8NguHWff6RN5SzM3XMuvpwUMgvGckTlxBf62JtIblp7RDo7dVbpYXODCJhdaD
	ZUX78lKCj0hGHXmQYPYUXuZrgo7fHKW0iIZBi+pfG6pHbvWlKu8Qn0btzzdjfb1KIZOIze9qoe7
	K8YjVaxG8ttHdiXTyl6SSniwM1JZpfmW1wA7jzGMio0iWUKztdEol+RKXGk1CvAmmS9mQKUm5Kz
	lMcUpDKS9UrVpqj1dxhjjcKTBlE5dFd+G7LniX5dWZT/oIaBdMV8a3q8OOAsNRn1BGUYk9td8gM
	UanlukJjW9DKgw6+bltrqicvKQILzLh9y2E11lMupEHvXisRS
X-Google-Smtp-Source: AGHT+IFNcdiPBpjg31UKAEZ7PvONDApfci6eNElrU0KT8MJnQc1k/9ajTapCOanoN63Oa3cLkMCZqA==
X-Received: by 2002:a17:903:41c8:b0:268:1074:85cc with SMTP id d9443c01a7336-2697c7eb4d2mr28249615ad.4.1758168742232;
        Wed, 17 Sep 2025 21:12:22 -0700 (PDT)
Received: from miguel-linux ([2607:fb90:b202:1eed:3ddc:cc9a:5e4c:fc74])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26980180bdesm11172215ad.56.2025.09.17.21.12.21
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 21:12:21 -0700 (PDT)
Date: Wed, 17 Sep 2025 21:12:20 -0700
From: Your Name <miguelonrm1@gmail.com>
To: outreachy@lists.linux.dev
Cc: outreachy@lists.linux.dev
Subject: Kernelnewbies help
Message-ID: <aMuGpG_wqdm_LOOi@miguel-linux>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi, 
I am resending it in plain text.

miguel@miguel-linux:~/git/kernels/staging$ apt list --installed | grep libdwarf-dev

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

libdwarf-dev/noble-apps-security,now 20210528-1ubuntu0.24.04.1~esm1 amd64 [installed]


miguel@miguel-linux:~/git/kernels/staging$ apt list --installed | grep libelf-dev

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

libelf-dev/noble-updates,noble-security,now 0.190-1.1ubuntu0.1 amd64 [installed]
miguel@miguel-linux:~/git/kernels/staging$


Thanks,
Miguel



    El mié, 17 sept 2025 a las 20:54, Erick Karanja (<karanja99erick@gmail.com>) escribió:

        On Wed, 2025-09-17 at 18:25 -0700, Miguel Rodríguez wrote:
        > Hi there, I am following this tutorial
        > https://kernelnewbies.org/OutreachyfirstpatchSetup
        >
        > When running the step  "Building the kernel", I am getting the error:
        >
        > HOSTCC  scripts/gendwarfksyms/gendwarfksyms.o
        > In file included from scripts/gendwarfksyms/gendwarfksyms.c:12:
        > scripts/gendwarfksyms/gendwarfksyms.h:6:10: fatal error: dwarf.h: No
        > such file or directory
        >     6 | #include <dwarf.h>
        >       |          ^~~~~~~~~
        > compilation terminated.
        > make[3]: *** [scripts/Mak
        >
        >
        > Can anyone help me know why it is failing?
        Hello, have you installed this libraries
        libdwarf-dev and libelf-dev?
        > I am using Ubuntu:
        > $ uname -a
        > Linux miguel-linux 6.14.0-29-generic #29~24.04.1-Ubuntu SMP
        > PREEMPT_DYNAMIC Thu Aug 14 16:52:50 UTC 2 x86_64 x86_64 x86_64
        > GNU/Linux
        >
        >
        >
        > Thank you,
        > Miguel
        >
        > 



