Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B9B522E
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 07:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="itwvF8rs"
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2c15463ddd4so39374351fa.3
        for <outreachy@lists.linux.dev>; Sun, 08 Oct 2023 00:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696748831; x=1697353631; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ff1WfdzHHuDl9Klfc34bCLkHjVk8SAbKgF1TFZgFhs8=;
        b=itwvF8rsnSsnUJbOUMtSIrCtKzz4zFZjkLnv61KB733MLNdynStZuQnvd+9W7UCEXS
         X1wNskmqK6cQGkF/t8SQUNxysBrnZ7VvxDwm0QxVaJnCDnls7PAfHi2y/nOGas0Dldyv
         Al3MwWFBOl+gPkegGwmpJDcJZWNQsRmqhnsK6zKx9IC5yBqC26oe25z4hR6c19zUaJ4S
         Y+QoVeXXxMNNRLP7slbmgrWoyQBHNXocrw4fNlxjHJr6OlqCP2xkAvOvWi1JCA/29mZ0
         eVYtc87j6i2yaxJ4pvm/VjlyknCebf2msgn8H19ZmSq53Um1Ar4u26qLYXUMT1iokiLb
         dSLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696748831; x=1697353631;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ff1WfdzHHuDl9Klfc34bCLkHjVk8SAbKgF1TFZgFhs8=;
        b=pignsLrg024LK/7sDu839illJa3O9lqSD20Eyfl9+XtemEGQ8raR2EQ+QOE8GhU+sC
         pZ3tzg2OsZfxB0i4rTmRN9cfK4nfoE8Ibv8/c42r8WMCOx5FAa5DoEwgJ+plO8l63VAU
         Ca4N8JqAbRsjVSf94ZOmTanHB4dpnNLqj/+gEu6eYOImmhowgQfoUISuKQkDtnHKikb+
         T0xaug8vEGDNYoYRcwF4mmDn5132kpCfOMlJeapoJpyCKwV8yqhjbyjuB5MDHflAtrwJ
         sXXmz0spfzZ0bcV9T4HSVwRoo12uKbY5c7WFnlhghglvlqpeZeXKvpFBeKETHzQyqETR
         iwJA==
X-Gm-Message-State: AOJu0YxTsfEjpcmh9tWtFwzzBMfjV1G2VJ2Uys1RJOQVGrndcMGwNqF8
	W8AG/+o2di810fCV84fQqvIhxgC7fjs+raw+jsBvIF5+/NA=
X-Google-Smtp-Source: AGHT+IFI7ZTxmkY2YmanReLiU3/MxEj+v/vrWgRe+Z35HULYfFkSQ6djjWzk9ERh+jFYDJUqNuoARZBlu19O+7x1Brc=
X-Received: by 2002:a2e:3e15:0:b0:2bc:ff80:f639 with SMTP id
 l21-20020a2e3e15000000b002bcff80f639mr10584654lja.7.1696748830475; Sun, 08
 Oct 2023 00:07:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAKrXSsbDAA=VXpy5kO33S9LkjLVGyZNKsmN2ttk_fK0kKRRLAw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310080811050.3223@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2310080811050.3223@hadrien>
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Sun, 8 Oct 2023 08:06:33 +0100
Message-ID: <CAKrXSsZBOPVVOqwRqgg-zZMXq=8hqris-92CNRBt7j_qiHkixg@mail.gmail.com>
Subject: Re: [ERROR] HELP NEEDED
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

Hello Julia,

I deleted the kernel and redownloaded it. It is compiling now.

Thanks for your help
Gilbert


On Sun, 8 Oct 2023, 07:12 Julia Lawall, <julia.lawall@inria.fr> wrote:
>
>
>
> On Sun, 8 Oct 2023, Gilbert Adikankwu wrote:
>
> > Hello fellow community member,
> >
> > I'm trying to build the kernel on Ubuntu 22.04 LTS natively installed
> > on my computer and I'm getting this error message:
> >
> > arch/x86/entry/thunk_64.o: warning: objtool: missing symbol table
> > make[2]: *** [scripts/Makefile.build:361: arch/x86/entry/thunk_64.o] Error 1
> > make[2]: *** Deleting file 'arch/x86/entry/thunk_64.o'
> > make[1]: *** [scripts/Makefile.build:497: arch/x86/entry] Error 2
> > make: *** [Makefile:1764: arch/x86] Error 2
> >
> > It seems like a file is missing but I don't know if that is possible
> > because I just cloned the repository and didn't touch any file.
>
> Maybe there was a previous error.  Start over with make clean and then use
> just make without the -j option.  It will take time, but you can see
> better what is going on.  You can also do make >& out.  Then you will have
> all of the output in the file out, and you can look through it to see what
> succeeded and what failed.
>
> julia
>
>
> >
> > Please advise
> > Gilbert
> >
