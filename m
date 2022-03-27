Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675A03D79
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 15:46:33 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id o3-20020a17090a3d4300b001c6bc749227so13205295pjf.1
        for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 08:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S0Yz/dqzHBB8FThs/HmajL/JFQeeiGaZ5qurabktgBU=;
        b=AvveYWnytXUHMVGn2qbCQyrREkKD8pxw1NIYAfNey9UsxYPglbyOsqWrj4e5AiN+Wk
         REG1Gld/YXpLjtYPXWWqALAjCoEeE6zSO0XHt85J43ICL+41ub13XDdfoF6CFOlzsHzY
         zK4mRlshiuljm27nSPVZXscYSU76rSjJlxzYjmPLwcP8LMXtE00nCUg6ZHfXJTZzE+m2
         MewJeFRhHjqE0F7avPPas9HDIWUyFet7Cy4g9OXjUBaLFqostOJNrZ/XBqvsu4UX7UaN
         h3Wp20uDcz72MXWmmsKYTvyeZq3CMUBe/o/7nupB8icK1vDrMPTzK2LqmtAiQV8XVLJv
         /zgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S0Yz/dqzHBB8FThs/HmajL/JFQeeiGaZ5qurabktgBU=;
        b=jxCdRuFMepqb7iXAZI1/u0del/5nJGEmutdk3XNDm2WHbuVUB42w9PWiTezNxWYiUY
         nhQ60vStd33dLMEEIq5nVGY7kYcKhZRpKPrxCk7nbwCscAzkOghS8PlKucx8Rjr+2fDB
         u3BeuPRiKoP0jcGEjIDMoVd1yVuYRXT2sjvpldO7k+AssvtnJ+brQHrxB/Y0m7a0qjoK
         r80k7sP8HKsYhlR/bY0AZ1CbSn3c4IVX/SGhyyzJfEzb0Pd94c+BezkbURglwyuLzYEL
         RgC8tKmneRecWtq06/2o3CKUreJ7k5nQpQ1MCaKTYCNFRda5x4TPFF+zyNU5wR9ZNG6z
         1Kag==
X-Gm-Message-State: AOAM531tBDmmraEM7oxqUqVfnPJet4r9mra+ETsa/zpEGDlyCcLA0JIy
	zUFZsH1ITRKI2EQ5pj4839M5yzmkdwyO/EvsONs=
X-Google-Smtp-Source: ABdhPJzcFuPQLtDsLfs1M1zCFe8v/5SNAAbSHn9AmNhsoyLt1Qt3GQHRF5z0r6UJwEZbFJyfdxi6/982snAoIc1vObc=
X-Received: by 2002:a17:90b:3e8b:b0:1c7:852d:e843 with SMTP id
 rj11-20020a17090b3e8b00b001c7852de843mr24357490pjb.244.1648395992899; Sun, 27
 Mar 2022 08:46:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAL1a2smMNX16+hNuCjJJ+Yq8iU0+0hvh1AyCf-K9imtBM_vHWA@mail.gmail.com>
 <20220327042412.GA1158431@alison-desk>
In-Reply-To: <20220327042412.GA1158431@alison-desk>
From: Roopa Prabhu <roopa.prabhu@gmail.com>
Date: Sun, 27 Mar 2022 08:46:22 -0700
Message-ID: <CAGe6so-jsaAeBznNMTMN6CQwnv6VkDAFDna2Vu4m51rLgAQFzA@mail.gmail.com>
Subject: Re: #Outreachy-Contribution
To: Alison Schofield <alison.schofield@intel.com>
Cc: Formasit Fokunang <formasitf@gmail.com>, outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 26, 2022 at 9:21 PM Alison Schofield
<alison.schofield@intel.com> wrote:
>
> On Sat, Mar 26, 2022 at 09:42:59PM +0100, Formasit Fokunang wrote:
> > Greetings,
> >   I am Formasit Chijoh a second year student studying Computer
> > Engineering and a beginner to open source contributions.I am
> > participating in the Outreachy 2022 cohort.Due to my keen interest in
> > operating system development especially the linux kernel, I would like
> > to contribute to the Linux kernel project (Refactoring HIGHMEM
> > Interface) proposed for Outreachy mid-term  session.Contributing to
> > this project will go a long way to improve my knowledge about open
> > source and equally improve my skills to becoming a software
> > engineer.I have a general knowledge in fullstack development,
> > shell(Bash) programming and am equally good in C/C++ programming.I
> > will be glad to learn and apply from  @iweiny@gmail.com   and everyone
> > in the community.
> >
> > Thank you,
> > --
> > Formasit Chijoh
> >
> Welcome to the Outreachy Linux Kernel Community!
> Alison
>

Welcome Formasit!
