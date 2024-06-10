Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF2F14F131
	for <outreachy@lists.linux.dev>; Mon, 10 Jun 2024 21:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718056203; cv=none; b=Lfs6zyDoyinHEvHvFIy11YzAB0MwaJlXAX327nVWuBTlmoQMOR50Pd7jWqvJ/f6Bhhy+sDTO3vBReCd7eQh/IvrLCdAyWOqvsQL3AANiMyN5IjVq2lYWxZD4XcybwOEHYWEg2crTi9PmBCi0YNN9UMcglW/TajbRqmS7TFvsdSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718056203; c=relaxed/simple;
	bh=aK+MvmAA8kIOyIRHZX1xsB92zhAqy/GTi5BmrSTv5XA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bz/9A7P2fkmmVy0S81HXygO2o9QtymbWOxLcbGqtZFn+nYxlRUaQDd2RswIebzm5vDL9QMWUqXBuI4snNLrN7pvk9hVGT5J0WWua/3rDzdZbI+7oWOaYYRuwqlcWgA4r+gtK0tkzhP9E9I7QsG/sZe5Sf2KaiCV3up3rmbx+RGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=X13cZFGO; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="X13cZFGO"
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-57c8bd6b655so7252a12.0
        for <outreachy@lists.linux.dev>; Mon, 10 Jun 2024 14:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718056200; x=1718661000; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eksTqXwNHrouSTPFhnmFlzzMzUPXkraejJkVTgCmu2Y=;
        b=X13cZFGORFtYmKqkpteMYhncHHVhkAGuIOsVuEjqoRPhdZEzqjAsVrDK2RL0E6jDtz
         d9Zq2W97L8VH91M7am39AWvrepC+fA6/fz1F5nQBoHyOpq8PpzBIzkcC9MJtuRRA+af/
         xr6xVvIg00VXwEIWhtoOR792/o4leQnl1z1wPawErETWmOUgXLbyO2x27nUP/rnR6G/5
         9FlybEERAtmB9nzwpVfujHOY5w2XOp7kEFmnOrnBccHj8i2MX6QcgMVGgbxkSbRmpEcX
         sqz5hm+kOOqJqFgdXq2kSbbHv6edKplQmD1MJtcjiQqR1kr0qbShPoSwn+PyuQ5zJN8j
         nQhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718056200; x=1718661000;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eksTqXwNHrouSTPFhnmFlzzMzUPXkraejJkVTgCmu2Y=;
        b=ncT31WmHIVyRTO6Zg+GEFYG9e2yoN0adtmCnuRfKvcip3GZpol37iv3DVGggDDQOit
         ZfIeJXU178neDIIH4nXQKAXxvr/2BYkeyEYNv0hHu2MpnsP/fqBnDFsQoApALFB7O104
         oI1I7dsxtRXRgGL5mZPrj+4C1314FG9MT6dWyfs+nSCkTI1DUZW0lg/d669jXOv/ruYl
         lKgmjNi8v9l8WaCysxVJcyHA98K1MTHe0mQpBLsJ/sONKe0wEovdHTqBoALlkoGDbzVy
         qbzf3VMXbOE+Nl3qkLqRXa67ib3/aOZ3FNbVB8D1t8zpilu4QNfWXyDlD4OQ2thvKDt3
         sz1w==
X-Forwarded-Encrypted: i=1; AJvYcCUXrO4c/f1Ya9ZguCqmGs6HTcO6jggtJfRlphdjWmRmdLWezipt8+GWgeEGrYkux/3qn6b3mGRdcl03A3tlLEQZ795Bocu7+p8W
X-Gm-Message-State: AOJu0YzvVy8z21o9rZ4SBp7wFmO5GmTkzfXBLUymS5TxjgpQOrgQF8mY
	JacSVhHo7RoReYFgdeXOvtjDEVdzClAU2o/dB9t0F3XYjHvtr1ruZARPWbS4uuuj+eV+6S6Aor9
	daaZAtEvKWHOtXscRSkDdykRS9+D4oGJfNQyG
X-Google-Smtp-Source: AGHT+IEozEHs8y0agsnFtGYgTtaJTexOkSr0dHamKFFC+EB2Pbn/u2SuG9c90Sc0TBhIuA40/EQByAp0Kf4h7dBxnoA=
X-Received: by 2002:a05:6402:746:b0:57c:93b9:1f34 with SMTP id
 4fb4d7f45d1cf-57c93b91fc2mr3662a12.0.1718056199485; Mon, 10 Jun 2024 14:49:59
 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <ZmJJ7lZdQuQop7e5@tahera-OptiPlex-5000> <ZmLEoBfHyUR3nKAV@google.com>
 <ZmNic8S1KtyLcp7i@tahera-OptiPlex-5000> <20240610.Aifee5ingugh@digikod.net>
In-Reply-To: <20240610.Aifee5ingugh@digikod.net>
From: Jann Horn <jannh@google.com>
Date: Mon, 10 Jun 2024 23:49:21 +0200
Message-ID: <CAG48ez3MBGi6i9Xcj29+pD9Lo1_hKkEtWYn-jNqvOZ_WWQZjYA@mail.gmail.com>
Subject: Re: [PATCH v3] landlock: Add abstract unix socket connect restriction
To: =?UTF-8?B?TWlja2HDq2wgU2FsYcO8bg==?= <mic@digikod.net>
Cc: Tahera Fahimi <fahimitahera@gmail.com>, =?UTF-8?Q?G=C3=BCnther_Noack?= <gnoack@google.com>, 
	Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, linux-security-module@vger.kernel.org, 
	linux-kernel@vger.kernel.org, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	outreachy@lists.linux.dev, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 10, 2024 at 6:36=E2=80=AFPM Micka=C3=ABl Sala=C3=BCn <mic@digik=
od.net> wrote:
> On Fri, Jun 07, 2024 at 01:41:39PM -0600, Tahera Fahimi wrote:
> > On Fri, Jun 07, 2024 at 10:28:35AM +0200, G=C3=BCnther Noack wrote:
> > > Is it intentional that you are both restricting the connection and th=
e sending
> > > with the same flag (security_unix_may_send)?  If an existing Unix Dom=
ain Socket
> > > gets passed in to a program from the outside (e.g. as stdout), should=
n't it
> > > still be possible that the program enables a Landlock policy and then=
 still
> > > writes to it?  (Does that work?  Am I mis-reading the patch?)
>
> If a passed socket is already connected, then a write/send should work.

If I'm reading unix_dgram_sendmsg() correctly, we'll always hit
security_unix_may_send() for any UNIX socket type other than
SOCK_SEQPACKET (meaning SOCK_STREAM and SOCK_DGRAM), even if the
socket is already connected, and then we'll do the landlock check.
That's probably not the intended behavior for Landlock, unless I'm
misreading the code?

Maybe to get nice semantics it's necessary to add a parameter to
security_unix_may_send() that says whether the destination address
came from the caller or from the socket?
