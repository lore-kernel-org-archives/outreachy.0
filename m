Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625C311CA6
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 12:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mtPm//WT"
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-d90da64499cso967842276.0
        for <outreachy@lists.linux.dev>; Thu, 05 Oct 2023 05:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696507936; x=1697112736; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=88INhPzfprh/5TOnDT7cJwPmIUxShNDj63wc/BiM930=;
        b=mtPm//WTKVHREFPQHZmNJRoOW4WBsjW7agj057YErmz6uz4YNvpnR2WLRhkJfLuzFn
         a3KfMGFHnrCc7+scvN0SmEhWJ+7yc3cEQmwverUPgowe+EReWpB8DVkJ2gFacr+frDGS
         BuJdlZEPNnrwWzWljLyA4sauz4M1w3zWQYnK8eTKh3/b1b3dXLnjRlCaLC7/YOXSl+Er
         6cKGxr5Ii34tr8RdBmrlZeE66QJOVTvZZALoCfjbb7v+I8LEm2BYQkiJAg6G9RwfKcAW
         9S+5LIq9IIT4fxoh4dRf7gnh3BGcI02RdOaU/SLompoxnNSh5JarWV9+7WPK+STVV0HR
         Mh1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696507936; x=1697112736;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=88INhPzfprh/5TOnDT7cJwPmIUxShNDj63wc/BiM930=;
        b=DiS9i0Exhj2hkuaob7th7WjpwRn9JeeM8ICDpib9g0JOd1JLlIrCEvXf20DcBJwqiE
         DuBbw1tOVw1/9NHuamEYHqKqyWKZltSdy/LoZl7mGEdLPERJVSfcpgiooCqi/7GrdeUT
         nEdlfoPYqvuP+DwwT0C68yYuWQ6fvkHwQScEA5E01B3K0dx1AXAYhhF163FtMhJsYp1h
         nr+Mx5zs+3XJha+++rgatNtbK5WgLPOw6MclpfAMB35IrSeZHvKu4FgKy/mmSCNi0x0I
         yNBobFP7knQ+bh8DLw53TiCvunqvGhg6svVZhf+pWUJv3EwkGZw82TqHEKaY8avORI7e
         wx7w==
X-Gm-Message-State: AOJu0YyOhLIDs//tqX2ZocdY4loYKhVut9UWR4zX9oCMiL0vMm70dvWH
	FYwQ482Fq69e+CzN3RoRnn8bucnnp270ASBroR0=
X-Google-Smtp-Source: AGHT+IEYpyenGDzPP6A9xmpkBJ3+A5PjefXxVEHI3r46tlwDYBWRicJ0bgaKLviJ68rsPpBWGU18d0iQ5cdAuwBt3m8=
X-Received: by 2002:a25:50c2:0:b0:d84:897f:5bcf with SMTP id
 e185-20020a2550c2000000b00d84897f5bcfmr4387746ybb.30.1696507936211; Thu, 05
 Oct 2023 05:12:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
 <ZR0NRvHkjcWIv9+f@ashyti-mobl2.lan>
In-Reply-To: <ZR0NRvHkjcWIv9+f@ashyti-mobl2.lan>
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Thu, 5 Oct 2023 13:11:38 +0100
Message-ID: <CAKrXSsafYQSb2YH128da-+CcnxejZ4V=n-xO5UDmTJLUk_zG8A@mail.gmail.com>
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
To: Andi Shyti <andi.shyti@intel.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Andi,

How do I check to see if my system meets the system requirements?

Thanks,
Gilbert

On Wed, Oct 4, 2023 at 7:59=E2=80=AFAM Andi Shyti <andi.shyti@intel.com> wr=
ote:
>
> Hi Gilbert,
>
> > I am Gilbert Adikankwu, an Outreachy applicant for the December Cohort
> > 2023. I want to use this medium to introduce myself to the community.
> >  As a Linux user,  I appreciate the quality work that has gone into
> > making Linux a rewarding experience. On this note, I'm interested in
> > contributing to the Linux Kernel. Specifically, I want to contribute
> > to the Linux Kernel through the project titled; "Improve i915 sysfs
> > interface implementation". I am excited about collaborating with
> > community members on this project.
>
> I'm glad that this topic has raised your interest. Please feel
> free to reach out for any questions and doubt.
>
> For the time being, please, check for Julia's guidelines.
>
> > I am eager to learn, contribute, and be part of the Linux Kernel
> > community's journey. I'm reading the first patch tutorial to learn how
> > to push my first patch. Any help you can offer me to make the process
> > easier is welcomed.
>
> Looking forward to seeing your first contribution... Linux Kernel
> is a lot of fun ;-)
>
> Thanks,
> Andi
