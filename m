Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D892168AB
	for <outreachy@lists.linux.dev>; Sat,  7 Oct 2023 23:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fwmvwt/b"
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2c135cf2459so38506941fa.0
        for <outreachy@lists.linux.dev>; Sat, 07 Oct 2023 16:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696720374; x=1697325174; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ONToG7oG7/f+SFTnu4mPPujCcFSqRuj65HGWe9jlrpU=;
        b=Fwmvwt/bp0EoSY6Dmw0h/3PkOdqUTpmGgkm8UlOqql9vmx6PUi9kVkCSrYj8/bRm0b
         VHBuu4TRtXkbjsnQ+f2HL1JHJn5DvWPTCW6HhoHPRo6F5oNXpLeWWpJMSvq1CptwiKzP
         bxbg0YP3Y24Rh7X5gp6u4K6ikWjOTgCafm7usoKFnfcJ7Aao1/drYOWaZNtZZKt637/M
         B9dGMpvLq2k/UYLWWJLVUSs8XmWqvou3CMwZ2vlIaEhyBd4cqTjIux1RhiI7+yQiwL7F
         hQqNp4j1uZqzQBksJdi5hPHDQtR2VTiS5tpi+pIhLQj1KOHOGUyzXst8+Lt4UbMMofmY
         94Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696720374; x=1697325174;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ONToG7oG7/f+SFTnu4mPPujCcFSqRuj65HGWe9jlrpU=;
        b=X4eK50iIqwSZhzm2yivdTmNz9a9nRUAPX4PvPBf5lzu7BirGgIuGXxxS8rlXdOOT8S
         GxcxBfSZf8Lc1PJno/PMIH7tPxNqBRXW1c217zvRNGYHGPmLDSL8kM+/IGRXgNb63c42
         9jWFB7htVbUxiH6EvsP02rM3+QXokp7OfgggpM2zl9G5bKTdk/5nXfps2AiqIUWjNPdK
         DnqEDWnjdQTM9KXSC6/iTH9O4N+xj503ZQjKD82dcXBSTAMHaf8k+66TpguZwg4FGxiY
         pUyDDzQtxophDHoSexUdfXwsk/kEXrOKRiDmGdFVytaZ+tM3RI1r/6CWgJxqrG9qBrHJ
         aqgw==
X-Gm-Message-State: AOJu0Yxlfs2+fi2IUXQ/4ALwr+lGkd7Mgii5zGuZ4AHvPszs5koJOUlt
	cF9lJaasTMgRrCoFtCVRLTLBbIIJ0m8DPaos1cOjLO+3bTScUA==
X-Google-Smtp-Source: AGHT+IHz8AO/Q1IlRp032zeaj/k7uPjzJkNtQVWygF5SP5XVnKtYaaj1yNaCCYXtjUQQULX8mZC/EynVYPexPTHDAzA=
X-Received: by 2002:a2e:b0ee:0:b0:2bc:d0f8:fb4f with SMTP id
 h14-20020a2eb0ee000000b002bcd0f8fb4fmr10623140ljl.7.1696720373622; Sat, 07
 Oct 2023 16:12:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Sun, 8 Oct 2023 00:12:17 +0100
Message-ID: <CAKrXSsbDAA=VXpy5kO33S9LkjLVGyZNKsmN2ttk_fK0kKRRLAw@mail.gmail.com>
Subject: [ERROR] HELP NEEDED
To: outreachy <outreachy@lists.linux.dev>
Cc: Julia Lawall <Julia.Lawall@inria.fr>
Content-Type: text/plain; charset="UTF-8"

Hello fellow community member,

I'm trying to build the kernel on Ubuntu 22.04 LTS natively installed
on my computer and I'm getting this error message:

arch/x86/entry/thunk_64.o: warning: objtool: missing symbol table
make[2]: *** [scripts/Makefile.build:361: arch/x86/entry/thunk_64.o] Error 1
make[2]: *** Deleting file 'arch/x86/entry/thunk_64.o'
make[1]: *** [scripts/Makefile.build:497: arch/x86/entry] Error 2
make: *** [Makefile:1764: arch/x86] Error 2

It seems like a file is missing but I don't know if that is possible
because I just cloned the repository and didn't touch any file.

Please advise
Gilbert
