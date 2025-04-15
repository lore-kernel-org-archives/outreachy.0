Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A6A284686
	for <outreachy@lists.linux.dev>; Tue, 15 Apr 2025 09:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744710488; cv=none; b=S9UGOgoXPXIEJmTLQd8GbIF58UEntHxbTrejTS2yWfcuZy+IIGDuSOpXPvnbg3GNVAoLkyzFcAJPvSY4UukdWF19jgdqrb3SHhN5xrm7tgzj8gf4j/f4865uMN4kiZuoJ51U0gHjY91MYCxR7Nl9wAuK0ofxEqYBTyl99zGQ/44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744710488; c=relaxed/simple;
	bh=XwdLaCuSw/svHGtksBYVkgu+OuFp6F20SxdtxEtCz2U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MOt5/RfXit0Ufj4+1wCYH61ZUqGjWkDnaEBQX3uwgnvpGt4ifMRXQXLG7293tOAsthwF4DNdW9G9FogyIxGVNs6FxJANmaEklIAChaYP2/VmxRyGNZRbSFGAJUgwqEXR0Eg9tjqLoOmgVOpX6xYNvj78myIoaBuJEUwpfoHJZY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jrSmiNWo; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jrSmiNWo"
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e614da8615so4018580a12.1
        for <outreachy@lists.linux.dev>; Tue, 15 Apr 2025 02:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744710485; x=1745315285; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gb+c2p3mLvlqDfXkYOWAI/AG3hFxF8DuWPtYLMqN044=;
        b=jrSmiNWodRzB6fSRl9opevjk7S//8nMBsffpTjx43DkWoHwA84dNrl061fkJbCskUd
         k5XK8ZcauAOnDSLXDfPd0VxTzxxKr0agz7mtJAfU37AoQRYhll6zlErbVOeOQ+ziLP2B
         pIjyB6diC4HPwe7boVC77u1Cawrv0X5dvpd3By0OLewnM8zmWb5hfi1Hz7mITuDYezjz
         nm70EP7Y6GUOvOrlKdxOEaubvItuLAHpKrQdrCzrZJ+leIEvgwpj1dazQbVB7CVSWYsh
         XqlT0N2yobYDCcwDFHkdYK6MerMT+T8p5FraobDy/w7axGJ3ng+vERVaGZzO8IxvgIU1
         YAsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744710485; x=1745315285;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gb+c2p3mLvlqDfXkYOWAI/AG3hFxF8DuWPtYLMqN044=;
        b=an0tXu9Zxusu4jN/Hod/8bhrjJm630KsFQa9U32fOvB9s+2mIcIQM7hbgKtUNGav6M
         ziAzfkHAV3rA3jJlY1Py0aTN7urB+ytjkCTaz7R0sCOdwa4zCuRgYFzWaa+L8Vkrv5ol
         rxH0+sLDACGZv/lxTF7nJxSCAgElaAK63TQNc2wzPTXnUpF0EnLGQzVlAB6zMu1XvX8D
         cql5RIfXiwWcqhuEu0ov5M4C35pLgeEcLYpfSRpWgW3LJF3HkB3IJJdDNi5V1XHU2lb7
         JrMzbKQY5ZXG1a2pcd3cswpaY2iUCDD7Yh5lFITip2vFQI2sNZ/O9Xw/gXar5suSpfk9
         cKCA==
X-Forwarded-Encrypted: i=1; AJvYcCUCw1le1Nuwzkzx3W8Zjvp5pfVmGmJm43nOvh7fF2S7LD6ftLn22N8JPOdBf/YGXIENyMJEZReUCws=@lists.linux.dev
X-Gm-Message-State: AOJu0YyXPrFAqOQzxL7X4FZYNe6yXVEG/GjromLFCXJPq7JethZTgy5u
	MW5nMAbJnuRXJPLJznZVAo19H5nTTcxVn+s0QaCDYJILonAJvp4JvQfCHFtOdiz8GHSpxtDUj7F
	6mOjf90SeVti1nZNgtvur/Y67OKE=
X-Gm-Gg: ASbGncsGJu78jySDE5OG/bqSolW+Ig4Ho4uN+A9UsbmN7PAVXeBhw/Cas24e2ijyEsz
	rCYuCUOfv5CuyYD/+erYE5uAEeqdjZTmzoQ4Hap0qvBNvV9S0sGJp68dVLxz+pPvQHCYoxYB/5L
	bY+UgSHfQUC3TqfcMVTKevOK0=
X-Google-Smtp-Source: AGHT+IEsDR42I9KXVZuEQbzr98zHgVXVJ02NxCygw6Gjud7Osvohk6umWjgqGQEwTMTI717oaQh9CW5abEjictqt0pM=
X-Received: by 2002:a05:6402:26ce:b0:5e4:d52b:78a2 with SMTP id
 4fb4d7f45d1cf-5f45e22a8ebmr2040389a12.15.1744710485126; Tue, 15 Apr 2025
 02:48:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <67ebe607.050a0220.396ffc.2dd5@mx.google.com> <CADYq+fYe2o6goZthVjmNqtNRnFT+PATGKwzuZJiDzhEYgfBYXQ@mail.gmail.com>
 <CAMyr_b+jCO2k+VbAB=Ahv9=Xi8adSUF3SM7UrO8FLa5JSfro6A@mail.gmail.com>
 <CADYq+fa94LXFe=sZbEYYKMN4wX7bWFkTtBOSD3_OpjjkhkRnFA@mail.gmail.com>
 <CAMyr_b+LNRxxbiqR_xWZvmEFMLV-XqB-fdskR2Eovv45ua+tVA@mail.gmail.com> <1c557a-5e71-2938-38fc-f18aaa29d0c7@inria.fr>
In-Reply-To: <1c557a-5e71-2938-38fc-f18aaa29d0c7@inria.fr>
From: Richard Akintola <princerichard17a@gmail.com>
Date: Tue, 15 Apr 2025 10:47:54 +0100
X-Gm-Features: ATxdqUEYjLtjxGjylqre7sUIzuWmuuz888ld9pIdxycggmeUe1vFWXUt8WKIJCo
Message-ID: <CAMyr_bLm6kZBKPr8qzpakS8tN8_cVReNYr4sZ1GnLseAohvjew@mail.gmail.com>
Subject: Re: Setup for sending mail via Mutt
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Samuel Abraham <abrahamadekunle50@gmail.com>, outreachy@lists.linux.dev, 
	Richard Akintola <princerichard17a@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 15, 2025 at 10:04=E2=80=AFAM Julia Lawall <julia.lawall@inria.f=
r> wrote:

Hi Julia,

Given this information from Gmail:
------------------
Gmail users with a personal Google Account

Starting January 2025, the option to choose =E2=80=9CEnable IMAP=E2=80=9D o=
r =E2=80=9CDisable
IMAP=E2=80=9D won't be available. IMAP access is always turned on in Gmail,
and your current connections to other email clients aren=E2=80=99t affected=
.
You don=E2=80=99t need to take any action.
------------------
One cannot enable IMAP as the current "Gmail set up" text suggests
and in the same vein there are no configuration instructions to copy
except copying
the app password to password line of the .esmtprc file.

identity "my.email@gmail.com"
hostname smtp.gmail.com:587
username "my.email@gmail.com"
password "ThisIsNotARealPassWord" --- app password to be placed here
starttls required

> I'm not completely sure what the suggestion is.  The current text is:
>
> ---------------
> Gmail set up
>
> In gmail, go click the gear icon, go to "Settings", go to the tab
> "Forwarding POP/IMAP", and click "Enable IMAP", then click on "Save
> Changes".
>
> Then click the "Configuration instructions" link at the very bottom of th=
e
> page. Note the outgoing mail server information in "Step 2", and copy it
> into the .esmtprc file, as shown in the next section.
>
> Next, make sure two-step verification is enabled on your gmail account,
> then generate and use App Password.
> ---------------

> What should it become?

This is what I suggest that it becomes:

Gmail set up

Enable two-step verification
(https://myaccount.google.com/signinoptions/two-step-verification) if
not enabled on your gmail account, then generate and use App Password
(https://support.google.com/accounts/answer/185833?hl=3Den), copy password
to password line of the .esmtprc file.

Richard Akintola
