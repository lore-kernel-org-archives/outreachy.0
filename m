Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F66715622E
	for <outreachy@lists.linux.dev>; Mon, 19 Aug 2024 20:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724098568; cv=none; b=dS/Tsa0AnXNcdQLzB6ycgPq1fqwSxUOROO+fddZsW3TFXCNHgcAX1yl09T+FrHfsJl1Bb0JeE6XJTcSnGI91kYzl2tCiYn9UxbD8bojrKqkh1jJ/vIoF8wwIhPHa6hXP0xxDElgywtBU9ujmTw4S3d7FiEghZr2FfNFWvIRxVdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724098568; c=relaxed/simple;
	bh=tKSoRUQpXePqqNTuO8rItPgcLe8nqBrJWVuADpXoCjA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jbxOGApVhngVmtnGZnMljgS8pTUw4lwLhyXMfwX1Vyy8CXqOitviVt56B7x6HIUloqFnPbJ75T2jaXv5VQ4tGgRlrhyOKTbuN8X+ZM8Y9IfKR8k9sRVIE5I8xW81+vaNPbalcgF0UKnzTV1wj61XOf9fpW3EcWKpWRN5aaDI4z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m/i0ZAX5; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m/i0ZAX5"
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-713e460f920so1407218b3a.1
        for <outreachy@lists.linux.dev>; Mon, 19 Aug 2024 13:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724098566; x=1724703366; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FrgAIDdpTJtQEBQLOPROESfX8lbaYtW70SZKJ96zmp0=;
        b=m/i0ZAX5j9k1yuopVVoCyBcBgBqCaAMpTYdQ7fBF+f3hpoZhzjRizO1QaAOtuMJyLL
         e87x/DZxyFPTOP+uRx0OTXZ6Pni/Ua7j33xlLwn4E6HszQKeVhrxCk/HDHN4t10Cs1V9
         6/9ooqPIQeSj+D3DtaR2u5HyV9kJxB9EGrDIDYqdHLu96sSjQlbrJOEeV4NA/Uf9lJ3B
         6qh82nroindnZRyWrJmaF/jXDgfQMxP9oL8ro7SlvN9uSiOvE60NhLdHaYJuisGrO1FT
         Y0XyJkK23rVAB3yv76AoGIXyJTe6wUrWWH+n/7/o/9CtRYaJoasEJfwGXLm+Jv0fNusf
         qIrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724098566; x=1724703366;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FrgAIDdpTJtQEBQLOPROESfX8lbaYtW70SZKJ96zmp0=;
        b=WNjulaWIUI+dV2HI2C6sYMcuplUmah5dKaSVmUOYeqATTHdtPy8pppwpHIODowQPuD
         a2DFPZrhAsUPe7Bv6og1Hs56hxbwnSjQ4YwtcgxgkAu/8N17TQyt5PiKhIiMWycsF0Ms
         208wFbpV1nfKK6qJ4KRPGSQkV5B20XkDYlvkBohb1+SIV4N6HXZ988t+cWUvrwQ08lkQ
         g4W4ooQviZYDp+qC1RwUXHrJkNFN4UGl2+BCNxnYBN5oraNECJUivxCRpfhKh0KKx5xl
         naioyOpsIOk9XoZrT9tz/Bpnf/5NTRI7MrTdc36xyr0MLlp9tdrjJbHwrLxN4RYfJlGL
         2a6w==
X-Gm-Message-State: AOJu0Yx+tpXNFuNhr6/4fD0HLVDz7JA0VHjzwl9ThHqK5pY9uIKCn4gH
	8d8FLlZKstOiRO7tgrqrqypWiMG0vKVOQUoXUQpsqRwKV6st6VJY
X-Google-Smtp-Source: AGHT+IE0lM+jGCdajVXpacBz0vUoVs56Q6/TR5ea1dfxBHh0n6IZGwrc2PgaGKjQ0BSjJfw4NK2NwA==
X-Received: by 2002:a05:6a00:174c:b0:713:f127:ad5c with SMTP id d2e1a72fcca58-713f127b28amr3702328b3a.28.1724098566420;
        Mon, 19 Aug 2024 13:16:06 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7127af3f690sm6888850b3a.211.2024.08.19.13.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 13:16:06 -0700 (PDT)
Date: Mon, 19 Aug 2024 14:16:04 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: outreachy@lists.linux.dev, gnoack@google.com, paul@paul-moore.com,
	jmorris@namei.org, serge@hallyn.com,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	bjorn3_gh@protonmail.com, jannh@google.com, netdev@vger.kernel.org
Subject: Re: [PATCH v9 0/5] Landlock: Add abstract unix socket connect
 restriction
Message-ID: <ZsOoBPpNZ+8KXKus@tahera-OptiPlex-5000>
References: <cover.1723615689.git.fahimitahera@gmail.com>
 <20240819.Gie1thiegeek@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240819.Gie1thiegeek@digikod.net>

On Mon, Aug 19, 2024 at 09:58:27PM +0200, Mickaël Salaün wrote:
> There are still some issues (mainly with tests) but overall the kernel
> part looks good!  I pushed this patch series to the -next branch.  I'll
> update with the next versions of this series.
Thank you :) 
> I'll do the same with the next signal scoping patch series once the
> lifetime issue that Jann reported is fixed.
I have already applied those changes, but still need to add a test case
for file_send_sigiotask()
> On Wed, Aug 14, 2024 at 12:22:18AM -0600, Tahera Fahimi wrote:
> > This patch series adds scoping mechanism for abstract unix sockets.
> > Closes: https://github.com/landlock-lsm/linux/issues/7
> > 
> > Problem
> > =======
> > 
> > Abstract unix sockets are used for local inter-process communications
> > independent of the filesystem. Currently, a sandboxed process can
> > connect to a socket outside of the sandboxed environment, since Landlock
> > has no restriction for connecting to an abstract socket address(see more
> > details in [1,2]). Access to such sockets for a sandboxed process should
> > be scoped the same way ptrace is limited.
> > 
> > [1] https://lore.kernel.org/all/20231023.ahphah4Wii4v@digikod.net/
> > [2] https://lore.kernel.org/all/20231102.MaeWaepav8nu@digikod.net/
> > 
> > Solution
> > ========
> > 
> > To solve this issue, we extend the user space interface by adding a new
> > "scoped" field to Landlock ruleset attribute structure. This field can
> > contains different rights to restrict different functionalities. For
> > abstract unix sockets, we introduce
> > "LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET" field to specify that a ruleset
> > will deny any connection from within the sandbox domain to its parent
> > (i.e. any parent sandbox or non-sandbox processes).
> > 
> > Example
> > =======
> > 
> > Starting a listening socket with socat(1):
> > 	socat abstract-listen:mysocket -
> > 
> > Starting a sandboxed shell from $HOME with samples/landlock/sandboxer:
> > 	LL_FS_RO=/ LL_FS_RW=. LL_SCOPED="a" ./sandboxer /bin/bash
> > 
> > If we try to connect to the listening socket, the connection would be
> > refused.
> > 	socat - abstract-connect:mysocket --> fails
> > 
> > 
> > Notes of Implementation
> > =======================
> > 
> > * Using the "scoped" field provides enough compatibility and flexibility
> >   to extend the scoping mechanism for other IPCs(e.g. signals).
> > 
> > * To access the domain of a socket, we use its credentials of the file's FD
> >   which point to the credentials of the process that created the socket.
> >   (see more details in [3]). Cases where the process using the socket has
> >   a different domain than the process created it are covered in the 
> >   unix_sock_special_cases test.
> > 
> > [3]https://lore.kernel.org/all/20240611.Pi8Iph7ootae@digikod.net/
> > 
> > Previous Versions
> > =================
> > v8: https://lore.kernel.org/all/cover.1722570749.git.fahimitahera@gmail.com/
> > v7: https://lore.kernel.org/all/cover.1721269836.git.fahimitahera@gmail.com/
> > v6: https://lore.kernel.org/all/Zn32CYZiu7pY+rdI@tahera-OptiPlex-5000/
> > and https://lore.kernel.org/all/Zn32KKIJrY7Zi51K@tahera-OptiPlex-5000/
> > v5: https://lore.kernel.org/all/ZnSZnhGBiprI6FRk@tahera-OptiPlex-5000/
> > v4: https://lore.kernel.org/all/ZnNcE3ph2SWi1qmd@tahera-OptiPlex-5000/
> > v3: https://lore.kernel.org/all/ZmJJ7lZdQuQop7e5@tahera-OptiPlex-5000/
> > v2: https://lore.kernel.org/all/ZgX5TRTrSDPrJFfF@tahera-OptiPlex-5000/
> > v1: https://lore.kernel.org/all/ZgXN5fi6A1YQKiAQ@tahera-OptiPlex-5000/
> > 
> > Tahera Fahimi (5):
> >   Landlock: Add abstract unix socket connect restriction
> >   selftests/Landlock: Abstract unix socket restriction tests
> >   selftests/Landlock: Adding pathname Unix socket tests
> >   sample/Landlock: Support abstract unix socket restriction
> >   Landlock: Document LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET and ABI
> >     versioning
> > 
> >  Documentation/userspace-api/landlock.rst      |   33 +-
> >  include/uapi/linux/landlock.h                 |   27 +
> >  samples/landlock/sandboxer.c                  |   58 +-
> >  security/landlock/limits.h                    |    3 +
> >  security/landlock/ruleset.c                   |    7 +-
> >  security/landlock/ruleset.h                   |   23 +-
> >  security/landlock/syscalls.c                  |   17 +-
> >  security/landlock/task.c                      |  129 ++
> >  tools/testing/selftests/landlock/base_test.c  |    2 +-
> >  tools/testing/selftests/landlock/common.h     |   38 +
> >  tools/testing/selftests/landlock/net_test.c   |   31 +-
> >  .../landlock/scoped_abstract_unix_test.c      | 1146 +++++++++++++++++
> >  12 files changed, 1469 insertions(+), 45 deletions(-)
> >  create mode 100644 tools/testing/selftests/landlock/scoped_abstract_unix_test.c
> > 
> > -- 
> > 2.34.1
> > 
> > 
