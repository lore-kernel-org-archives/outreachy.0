Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04317A
	for <outreachy@lists.linux.dev>; Tue,  5 Apr 2022 14:56:36 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id g24so17446923lja.7
        for <outreachy@lists.linux.dev>; Tue, 05 Apr 2022 07:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3QK+pmBjpQkz/W+VFJ9GTDkz94TGWhn02X/3g/I+Wj4=;
        b=mfH1qhoHGzPVr3npMrHA4RAiv2SjiXOJT4eMjwfrtvBgbGvj0RxuQ0ygxjfBHdIC8c
         joHtEtjoSEj6mKb0yhTXtTbW3ya/D1MMJkK/1L/X4Z60qgS5D5dToGbkI0yWyJtlMpwI
         izklB5CoUBp34ode7gkrt5nsPqwGsm8jTwxqgu3E/QjabbtV48TUOdCFcVQpgg37wpAP
         GZQYiGPIPP9q9z9NRotSUJktM0nu36N1d4eMtlrrdv75QMLCOZEn2yH0u1qBmtxrNTbW
         LFOyjKI7UvLcMBR1E8KHHJpJmq8L5vbv28coLo1Awj2Ue5AyCxxc+oKnv7NxP3RjJeU3
         ZlMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3QK+pmBjpQkz/W+VFJ9GTDkz94TGWhn02X/3g/I+Wj4=;
        b=1W+SSy04pkVnsgCUg9KGaUmpNoC21X3Nokm7bS2zoiHirc1tP50zJLdR5wbVHHiClp
         Sw/HEVdI+EAofU/WPYN5chr+2XEU0NQduiKTzzfho4o7PjJEYNBdyaXfO2FpOifEX+bf
         kjN5YLlbq+VMhlrcZ0gJvcAlxmtn07O2yoQJdfPe+Fq6u/4785JaPwrPsFI/cGj4bcHi
         baeWe5IibGFMKwAUzH7CK7muUBSOBPwrhYZPP45lAdoHecwvoWYRZyHz0/Xee/mzeE5d
         UfLnWaXpHbZwklXzXxjuTBvjHJqRCWoKhAvqvpSAXmm7m9HmL6xcpBuUwFzhoGC2eRRX
         rOQQ==
X-Gm-Message-State: AOAM531HGGdeYQi46LgBvE3DwmyCIjLj4GwEGF34K2YoRSY1Knkn1sE+
	LdP1gLijqh8k+Vi2GgepltklpKn5iwuiaXy6t7U=
X-Google-Smtp-Source: ABdhPJzyI+tMlFcQ9k2RF0Rp5Ov0jj7OtQXGs1A9JsUMkpnH4v48y7lkJXFWkBCOba2nVXCS+mtY3T+h7LjwHaPTblo=
X-Received: by 2002:a05:651c:98c:b0:24b:5b4:9393 with SMTP id
 b12-20020a05651c098c00b0024b05b49393mr2433290ljq.214.1649170594552; Tue, 05
 Apr 2022 07:56:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1648840991.git.sevinj.aghayeva@gmail.com>
 <1a9f181f7f30f71c03e6e88df9fb8c17a298a192.1648840991.git.sevinj.aghayeva@gmail.com>
 <Ykl/4mIsSzaPRr+y@kroah.com> <CAMWRUK4BpTFf8fGoANjjOEZ2dxCws=QPLPJ166JPgnsdsy+pmg@mail.gmail.com>
 <CAMWRUK43UO-nT3-8G1GBt9ZzTqGo_j2=_YyE686-8H01ub3meQ@mail.gmail.com>
 <CAGe6so8TdMGFzuGGwR9n5KS1iQjPsxq+VUMp1HgGBn5=eC4b-g@mail.gmail.com> <20220404074806.739c9fc3@elisabeth>
In-Reply-To: <20220404074806.739c9fc3@elisabeth>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Tue, 5 Apr 2022 10:56:23 -0400
Message-ID: <CAMWRUK7X=S8p+1vmBsb28BcQf14yUWv0q3ccrTJBje+gyM0=Rg@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] staging: rtl8723bs: remove redundant braces in if statements
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Roopa Prabhu <roopa.prabhu@gmail.com>, 
	outreachy linux kernel <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 5, 2022 at 2:28 AM Stefano Brivio <sbrivio@redhat.com> wrote:
>
> Sevinj,
>
> On Sun, 3 Apr 2022 08:40:08 -0700
> Roopa Prabhu <roopa.prabhu@gmail.com> wrote:
>
> > On Sun, Apr 3, 2022 at 7:25 AM Sevinj Aghayeva
> > <sevinj.aghayeva@gmail.com> wrote:
> > >
> > > (Sending this only to outreachy.)
> > >
> > > I just did "git fetch origin" and then "git rebase origin" while I was
> > > in the branch that didn't apply to Greg's tree. I got a merge conflict
> > > in ext4/super.c. None of my changes have modified ext4/super.c, so why
> > > do I get a conflict on this file? Can someone please explain?
> >
> > The file on your branch is still different from the one on
> > master/origin even if you have not changed it and git is not able to
> > merge the file automatically.
>
> ...this can happen, in turn, for (at least?) two reasons:
>
> - true, you didn't modify ext4/super.c, but another commit (not
>   yours) touching ext4/super.c also affects one of the files that are
>   modified by any of your commits, or anything you have in your local
>   tree. This is probably the case here.
>
> - the upstream tree, itself, was rebased. Most kernel trees upstream
>   have a no-rebase policy, that is, once a commit (including merge
>   commits) has been published (pushed) by the maintainer to that tree,
>   that commit will never disappear from the history. This should be the
>   case for the staging tree as well, as far as I know.
>
>   So you can pull, at any moment, and that will just "add" commits to
>   your history, never modify one. The rationale is somewhat explained
>   by:
>
>         https://lwn.net/Articles/328438/
>
>   ...but not all kernel trees follow this policy, for some (such as
>   linux-next, or nf-next) it would be impractical and of little value:
>   they're not trees people are expected to do significant work on.
>
>   In that case, contributors can expect some small disruptions in their
>   workflow: at some point, their local trees might have commits based
>   on a former upstream commit that doesn't exist anymore.

Thanks for the explanation, Stefano!

>
> --
> Stefano
>


-- 

Sevinj.Aghayeva
