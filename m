Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D0F363
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 12:35:08 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id b15so24255773edn.4
        for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 05:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4nQ4IzsdOK0kiedIrLc1I+KgonYqogficyt1HdXKvJQ=;
        b=few5tyRfS7jJkEojy7HUd3MS4pmcjZTSKGGqCXwkYUV9h7v/cpjNBt0MTWUrFNwgOk
         MEeBzo99sT9RveX5S7brSl3GiWBK3bt3JqDr/h6tDtvyGVHN+sJbAZxJMYnuuzHUgM+M
         3C7VuGyzWVjt1fj7LCIBv3Zhqe+8LJFoxTk1ttP2jIkyzsk7goO0GYqaudEc5FCUpbRw
         2XTihqGF6IUCFvlg4GYRJs9iJ+DtoF4kux+i/WN4jY2hlBkNCp7CtfMuIfKJdSx+bhHG
         G/EZu1bb3OTi0b+oQX4IVb6Ju2IDIpHkx6KOT76n35bYkdajeEUwuevSPdSRBbrzLisn
         EdGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4nQ4IzsdOK0kiedIrLc1I+KgonYqogficyt1HdXKvJQ=;
        b=5LdBLff1bVgB8qMvP3tKNxLKW93/q4o0CHb3T40ZpmAfg6DRVoyoryxYvthdGrOXO7
         miNTa4acYTAhj09c5AW15eevvhkxcs/M2OrZEU/9xL4z7g4Yjl9x/rgIfH6srdwRMVSw
         /+gnkmno2Sp59CGelO3wvgNvkAMbymwi0kr9qJJVnwb4f+enRaDlMdepYvSdSNj6g5Wh
         9WWUpyQtCc+BhrrPsdMO9cCibYEzIk5uk2p2My6bpWeV0F+RtFQrE1BraaZ+vAVCnXPq
         78rWSSyPRnQ7b8hZn8+ofqvGX8+WWdVsdTQBklrhQXG5cwxbSRvHLy0mRrZjWP2rokAO
         7fjQ==
X-Gm-Message-State: AOAM533P1xkuusclsUmBduPOoDte1c0v4JXkTpMHIl5O3NvTWp6SD9MB
	67Y7EhOmWUfSHUNQiWr4xtedu4bq9W0xXX73+WI7LzwQbKl3aQ==
X-Google-Smtp-Source: ABdhPJxqyZy0MX1PgdS/Sjgl+mG8JAyqQs0RCiPNKhVb9LYIEbhX86gQccxacToIpGZEMjmBRBG29fmUKIP5Ku4j2A0=
X-Received: by 2002:a05:6402:5243:b0:419:4ce2:cb5c with SMTP id
 t3-20020a056402524300b004194ce2cb5cmr10448310edd.151.1648643706677; Wed, 30
 Mar 2022 05:35:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAL1a2snCAKCbAYh4jbtFHRK_nyCv8oaEuC39D3bQSPbjAx+oMw@mail.gmail.com>
 <CAMWRUK4y7KzUM0TUs6zrANWu2JT-MG+VRu+_UsZ9ezuyKZz7Wg@mail.gmail.com>
In-Reply-To: <CAMWRUK4y7KzUM0TUs6zrANWu2JT-MG+VRu+_UsZ9ezuyKZz7Wg@mail.gmail.com>
From: Formasit Fokunang <formasitf@gmail.com>
Date: Wed, 30 Mar 2022 13:34:53 +0100
Message-ID: <CAL1a2skeADgkQqvfDVaJDAUuzSeGqVDQcXwMHpJ8eFzigGSwfw@mail.gmail.com>
Subject: Re: Build error
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Thanks, I'll check them out.
i really appreciate

On Wed, Mar 30, 2022 at 12:46 PM Sevinj Aghayeva
<sevinj.aghayeva@gmail.com> wrote:
>
> Formasit,
>
> I also had this problem, and Stefano on IRC told me to install pahole,
> which is part of the dwarves package. So you should install dwarves
> package. You will also get an error about the zstd package after you
> fix this one, so you should install the zstd package as well. These
> packages were not listed in the tutorial at
> https://kernelnewbies.org/OutreachyfirstpatchSetup, so I just updated
> the tutorial to include them.
>
> On Wed, Mar 30, 2022 at 7:38 AM Formasit Fokunang <formasitf@gmail.com> wrote:
> >
> > Hello,
> > Thanks to Mike and Rebecca I was able to solve the problem in the
> > ./include/linux/elfnote.h .and some others that came up by editing the
> > scripts/config file as suggested .but on building again I have this
> > error. I searched and I found it concerned something concerning
> > Panhole and my allocated disk space . I added the disk space  but it
> > still didn't work.
> > Thanks to anyone who can help with an idea
> >
> > FAILED: load BTF from vmlinux: No such file or directory
> > make: *** [Makefile:1155: vmlinux] Error 255
> > make: *** Deleting file 'vmlinux'
> >
>
>
> --
>
> Sevinj.Aghayeva
