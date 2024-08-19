Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2780C1DD38C
	for <outreachy@lists.linux.dev>; Mon, 19 Aug 2024 19:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724097362; cv=none; b=HNdtuBi3GTy4tGxz5NvluoXKrvhAF81MEqv7kxv9Aa3mctMr7K59T/OpGyqL9eG/LLduwScqV0UV9NuhJzkO0+zuj9NIf3Lck8/QqdxalU0VYRf+PXeTLljJWRzJGtGWV1g/PXlL5ycxI91i+dh5RfsYUAFkqh4SDIh44Nstx7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724097362; c=relaxed/simple;
	bh=uS/M4QEvgCj88JTFWG7lropq/FH/WIZ1cBIY6CYKMGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kSEX6iapWaoA+DvntIGkmoZb6AzkTb1J1F36vLUjbvekT9tlFVff0jM6orqfzhMTkHd+JOS8jY/lBfjt3yh6/BmEo2UX0nHrScRpH511ZEsaE7ZO1Aa0rPjoxcWQuDYCh/4nY8ciPxQpf2/q/J9Bu1VG627ZRo+QYrog44CnFbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TSFSA8fz; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TSFSA8fz"
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-710dc3015bfso3162476b3a.0
        for <outreachy@lists.linux.dev>; Mon, 19 Aug 2024 12:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724097360; x=1724702160; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3u14jaF6sMpm2P6xSbFPosvPrziDfmVI/333/HfvZmg=;
        b=TSFSA8fzXmnNqrSqMTwm4r3vOFtkVNgH/CtHXogWQnU/w594usCUO3Lih84Tt0s+2D
         Bz+SJ7Ow9PWAMsVT+B3wcWTbYSRi94GZLW1UyMyzf6SsqNJ7eAjWWSjInW0uyeocckQY
         TL0Qr36ikUdtwk2s1BizCUwm7tQjnoZQycsrfeOP6D+znKDA1aZHpH0gq6cj1orPXRu8
         uDMZde5eW63OnqtY9MtXNRuACgTvLcs3PcjRtoKhQnz40NvrNYb7GV6FNRNNYjV6qyrs
         tfL620yE3Cmps6L5sbUOURAsHdQU65IUA9GsOxJqX851xY7QmEykO1FUZE9eQC9y9bqn
         yHuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724097360; x=1724702160;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3u14jaF6sMpm2P6xSbFPosvPrziDfmVI/333/HfvZmg=;
        b=rQsRugAtRTCM2wy3+5EWNTTtXIPe9UX/hPIHoNC6VqzphxTbyJo47yAkVoqd4/VrYR
         +keYHmwH6cm7Wtgqe5PNOq+RN8+ysFCq+JMAJgVpul1DFjiATUFEYlQtF9r1JbR5RLhq
         PtMSUuBqLK8Yc2rzuCSCjNtdenKZQAoT/xMr1m9nhhFGh98Kj+zir1yICFQ6csEW13SA
         PVO0Bvan/UYMZ5yFMi2Wk6jnAUQbLeyyNW+TSiVG49lux9Zpj2P2Rvw8bcg6mZBG47T6
         2RRnwxYD1fKjZSwVodNnIaalxnKQ9w9lEtCjFU18tJ+ckng88LNDKVJToW7IyfRJWCes
         U55w==
X-Gm-Message-State: AOJu0YyT/qsXmHHtIi8V5TwexMR3yXptuGhmgzXnkW1duca4LtIVeUCy
	q5LIsrcPaap9tyXKQKZwhXrDN97Fsupth8r3pOVcCsLxBT/Z1+sn
X-Google-Smtp-Source: AGHT+IFTnJ+IdpJusYJcVfML72MiQsY6fxuJQh0HWezllw+QiSMVbC73bgI1yusV/JD4kKkA6LI9lw==
X-Received: by 2002:a05:6a00:945b:b0:705:d6ad:2495 with SMTP id d2e1a72fcca58-71408337f6amr1201717b3a.12.1724097360260;
        Mon, 19 Aug 2024 12:56:00 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-713e85a2191sm2900394b3a.74.2024.08.19.12.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 12:55:59 -0700 (PDT)
Date: Mon, 19 Aug 2024 13:55:57 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: outreachy@lists.linux.dev, gnoack@google.com, paul@paul-moore.com,
	jmorris@namei.org, serge@hallyn.com,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	bjorn3_gh@protonmail.com, jannh@google.com, netdev@vger.kernel.org
Subject: Re: [PATCH v9 2/5] selftests/Landlock: Abstract unix socket
 restriction tests
Message-ID: <ZsOjTacm9SO6Cu+y@tahera-OptiPlex-5000>
References: <cover.1723615689.git.fahimitahera@gmail.com>
 <2fb401d2ee04b56c693bba3ebac469f2a6785950.1723615689.git.fahimitahera@gmail.com>
 <20240819.ig5eekohQuoh@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240819.ig5eekohQuoh@digikod.net>

On Mon, Aug 19, 2024 at 05:42:59PM +0200, Mickaël Salaün wrote:
> On Wed, Aug 14, 2024 at 12:22:20AM -0600, Tahera Fahimi wrote:
> > The patch introduces Landlock ABI version 6 and has three types of tests
> 
> "and adds three types" ?
> 
> > that examines different scenarios for abstract unix socket connection:
> 
> Not only connection.
> 
> > 1) unix_socket: base tests of the abstract socket scoping mechanism for a
> >    landlocked process, same as the ptrace test.
> > 2) optional_scoping: generates three processes with different domains and
> >    tests if a process with a non-scoped domain can connect to other
> >    processes.
> > 3) unix_sock_special_cases: since the socket's creator credentials are used
> 
> "unix_sock_special_cases" seems a bit too generic and is not
> self-explanatory.  What about "outside_socket"?
Sure, I'll change it to "outside_socket"

> >    for scoping sockets, this test examines the cases where the socket's
> >    credentials are different from the process using it.
> > 
> > Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
> > ---
> 
> > --- /dev/null
> > +++ b/tools/testing/selftests/landlock/scoped_abstract_unix_test.c
> > @@ -0,0 +1,942 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Landlock tests - Abstract Unix Socket
> > + *
> > + * Copyright © 2017-2020 Mickaël Salaün <mic@digikod.net>
> > + * Copyright © 2019-2020 ANSSI
> 
> You can replace these two lines with your copyright (same for the signal
> test file):
> Copyright © 2024 Tahera Fahimi <fahimitahera@gmail.com>
Right. I copied this from ptrace_test.c and forgot to change it. Thanks
:)
