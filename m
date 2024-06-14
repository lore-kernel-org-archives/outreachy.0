Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCC1383
	for <outreachy@lists.linux.dev>; Fri, 14 Jun 2024 20:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718395504; cv=none; b=lBJHuh7zB6Mx6ARHt3MpcCVgZ4dfgO5/4nF564VBVs+xDLq3l5p3D9gqDiT3NXpkygHyW7wdjprMePHDcLbdoX6vUgNuxTEDMmCiLV4Xb8eSh8fKek/3iQUlY2urbzfTLJ7Rd96jIp3ZteZ1Qo1rFeLCfGOiogy0eMkbakkh/AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718395504; c=relaxed/simple;
	bh=RY8ceAoPye2/KbZtpTdpJ8++ZFtCXb35P5m4OwHe5Os=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=szVtZYVMvQi+ykbOibdUQWx0xbCPYnwhLemub8p8NhZjMmfHYmy+F0uSPFjti/o7R7QWEwMROVfx/jtqdzACiunspNxnRAVBqNl4LTbh/PHV1JJHerfE2Dj5a90S6cyYCl0/XjCPo4AMjixUh8SGlwpnR/93RBBMw+FaAjsqFbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lm13D/Nh; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lm13D/Nh"
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-57c8353d8d0so3262478a12.1
        for <outreachy@lists.linux.dev>; Fri, 14 Jun 2024 13:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718395502; x=1719000302; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GOLNVEd7uGKCnwNzRJhDFbm6VnORpl1wejZd5oVyq3I=;
        b=lm13D/Nh8TY0m7+vQZHI3ysRroQxqapurDu2cDgg7SkA/+tQqtAcXTPy0OSTcfWEV3
         1YWP+p1XzSRbwNm577vWMKarRrcPtwhX1rd4Uk4Woz96S6W7Px74s904dB8Rvwt4asrz
         1YJR1vAs5A98iEcdBZY72wvqxxGcSd7V0UX0v5Q2/TWXtCbyBQR23JJv4kcyK5fTgTtw
         pN9X6joDEkW6nzvp9PmIIgbXuliChpJOqIt/WqNYKyimmFrXiLWo90NevtFng6S8kBMS
         QLgNAZQ4yVQQ1aMMTj+72QcreQE+LvusKlUOB+vwTlpSgtE6XcJHG4KHC4aL8/svJ5p2
         xiKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718395502; x=1719000302;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GOLNVEd7uGKCnwNzRJhDFbm6VnORpl1wejZd5oVyq3I=;
        b=fKRMJQA9alRWiEZUdYmUnhOKjPbFlymhEozlhodiOh8DXmomvkumkgbs/aoZjY2UaP
         2tYvvdqN7fnS0KwfY5yDFxs68svztJuKVr8k46mm4PYVVucecm4oNXbxkPvGAqsoXCOc
         /FQub4sSeTdrlOF9VcU90n234wFFygVnSwKOEIckS1DUXhw3mtIaBwPKhFVaZNEq+jOZ
         gsCEXoUHnhWMLS8Kq55GS8VX4omDJI3UpFkOvnt2lXJO/cNUxmYGEEfKdxJwbjWR2B7x
         nxbDxUZUwsv2Be54pJnCL4tJBS/Vi6vLpz/nLEWU5Rl6ZGx4RV3gyCb/sP0RCsZOCOUg
         Z0tQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqZOI2qT+OTVOIiX5ziQA+ombgJ+ErEFcWazMWaoktcOnsCGekViNYkUfhP90FoMiqF8nhuQEk50jFSQrI9E7vKWNnEXVZMOGZ
X-Gm-Message-State: AOJu0YyxiV6oiXHRTFnnT1rOG/M9PhK/mZra/Yb6q0Zzy5uVE1938nkv
	xBTBM/8092dXveoHVJImWgr3LT5hSGtsMXwHRs5eaDIpVs7kyEjMR0O8JFlM
X-Google-Smtp-Source: AGHT+IEWfLWlENiwg72FCRRqNPcBcq3lwyJii5+8BM8ZYIu/nw1QYu4DRlw4LsF9JMJ9JUGXSABcog==
X-Received: by 2002:a50:ab1d:0:b0:57c:a886:c402 with SMTP id 4fb4d7f45d1cf-57cbd665237mr2364187a12.12.1718395501361;
        Fri, 14 Jun 2024 13:05:01 -0700 (PDT)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb741e5aesm2639504a12.60.2024.06.14.13.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 13:05:01 -0700 (PDT)
Date: Fri, 14 Jun 2024 22:04:56 +0200
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: Jann Horn <jannh@google.com>, Tahera Fahimi <fahimitahera@gmail.com>,
	=?iso-8859-1?Q?G=FCnther?= Noack <gnoack@google.com>,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>, outreachy@lists.linux.dev,
	netdev@vger.kernel.org,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>
Subject: Re: [PATCH v3] landlock: Add abstract unix socket connect restriction
Message-ID: <20240614.128b8d9046fd@gnoack.org>
References: <ZmJJ7lZdQuQop7e5@tahera-OptiPlex-5000>
 <CAG48ez3NvVnonOqKH4oRwRqbSOLO0p9djBqgvxVwn6gtGQBPcw@mail.gmail.com>
 <20240611.Pi8Iph7ootae@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240611.Pi8Iph7ootae@digikod.net>

On Tue, Jun 11, 2024 at 10:19:20AM +0200, Mickaël Salaün wrote:
> On Tue, Jun 11, 2024 at 12:27:58AM +0200, Jann Horn wrote:
> > This reminds me - from what I remember, Landlock also doesn't restrict
> > access to filesystem-based unix sockets yet... I'm I'm right about
> > that, we should probably at some point add code at some point to
> > restrict that as part of the path-based filesystem access rules? (But
> > to be clear, I'm not saying I expect you to do that as part of your
> > patch, just commenting for context.)
> 
> Yes, I totally agree.  For now, unix socket binding requires to create
> the LANDLOCK_ACCESS_FS_MAKE_SOCK right, but connecting to an existing
> socket is not controlled.  The abstract unix socket scoping is
> orthogonal and extends Landlock with unix socket LSM hooks, which are
> required to extend the "filesystem" access rights to control path-based
> unix socket.

Thanks for the reminder, Jann!  I filed it as
https://github.com/landlock-lsm/linux/issues/36.

–Günther
