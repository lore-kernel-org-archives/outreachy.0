Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6057A
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 15:57:30 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id y32so24803461lfa.6
        for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 08:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=07g2gNb1iCbi0SddyWEUuyftH9CI7DCDgnoEjRbyO7w=;
        b=A2rcz1OZU0BivPrFisbh1mS3o3JjzpQ2qBk2OH4UoJPBj/xz6fAtYoSZNgSoHdHHQc
         jZZ5ylSTJ3qF4ZbMacpjvO5y9nj+61DZ3Cj35Kx5jtwGpEm9zzLrfEKCGc50mCfuW1uB
         tQtTG7alfnNZLK+g2Kmk4R/p8g2LJvLzzhCyDeSyZDvLRLNb1xn7c6WYmKGZQ2kIi1/A
         BAiZaiVnczE7xWSLKm9dwEL8CY4Bvi79mF8z+eVLGv5kKeZzy4E8vagDNDGOZsj74v0E
         7T3X/7U4Mhu19AUPrFufKm8GlINlxt+GTFvZhxRP7DQOcuvuTjMt6pJjSpls7XTngv0K
         FR7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=07g2gNb1iCbi0SddyWEUuyftH9CI7DCDgnoEjRbyO7w=;
        b=HIECrRv7zWStWmzfnvurUyrBuEcZoSOT09GGELhUTMZR3UgwDiBepUqPo3ljZrDtJE
         jNB5nlx7ldrJRrhBcL5vNbPecU00RmKdIXouRfq7rK9L7tOvRz7IBPMRDvMtqgGkqM+3
         Jvp1VSK2fIqExI7sfgGKAuJkDLRHCDFKhWT38LrjJAUosCINA4GHeb3gboN+uirsFI8D
         tvSHq9JVHZPFQkudeJmzH1Ix2HS8DJKJtugsuaHAeIjhfgYgexU8hRo5VKy4aWOnAVgm
         8dx5Vyxwp0yd9IvK6PRGRBUMThgE6LdOh0u/k3ifVWCPjy4EuvTpBMKy3bD5JmVvJgHp
         XRsQ==
X-Gm-Message-State: AOAM53397REw91f0jTvPEBp6D6ITxariKTlC5BxR8RFNCFb+lIUEjh3+
	u+3e96GOjfRTJ5w/G9PZFdm5bubtoPe6YT9vcRc8miMK
X-Google-Smtp-Source: ABdhPJy3lm3WyRcjpHpPVjkHJo/MPuJhNdXP6aWsBZ3RQxwxeg09hKxLkqW4aQ+etzh6y68nE5/4meAMeXbZuHcidbI=
X-Received: by 2002:a05:6512:3c93:b0:44b:4ba:c334 with SMTP id
 h19-20020a0565123c9300b0044b04bac334mr8349888lfv.27.1650297448227; Mon, 18
 Apr 2022 08:57:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1650215918.git.sevinj.aghayeva@gmail.com> <20220418122917.27fa1955@elisabeth>
In-Reply-To: <20220418122917.27fa1955@elisabeth>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Mon, 18 Apr 2022 11:57:17 -0400
Message-ID: <CAMWRUK7Uap5kEjudp7=BR-oz4c5yuRhKjJLjjmRLk1gMvE+54Q@mail.gmail.com>
Subject: Re: [PATCH 0/4] enable passing multiple collections/tests to suboptions
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy linux kernel <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 18, 2022 at 6:29 AM Stefano Brivio <sbrivio@redhat.com> wrote:
>
> On Sun, 17 Apr 2022 13:27:17 -0400
> Sevinj Aghayeva <sevinj.aghayeva@gmail.com> wrote:
>
> > Enable mbuto's -C and -T options accept multiple collection names and test
> > names, similar to the -c and -t options of run_kselftest.sh.
>
> Thanks, this looks rather complete now. I just started reviewing the
> series and I plan to finish reviewing/testing later today or early
> tomorrow as I'm adding this kind of usage to demos and documentation
> (also in progress).
>
> Two smaller things I think we're missing:
>
> - your patch 2/4 reverts the fix for "mbuto -h" with no fakeroot
>   available (sorry, commit message of 6199e368 wasn't exceedingly
>   clear). If fakeroot is not there, you don't even get a help message.
>
>   Perhaps we could handle that as special case (in a second revision of
>   patch 2, or as another patch), something on the lines of:
>
>         if ! FAKEROOT="$(command -v fakeroot)"; then
>                 __missing_fakeroot=1
>         fi
>
>         ...
>
>         # after parsing options, and displaying usage if needed
>         if [ ${__missing_fakeroot} -eq 1 ]; then
>                 err "Not root and no fakeroot available, exiting"
>         fi

Sounds good. Just sent a patch to do this.

>
> - with the 'kvm/qemu-kvm ... -initrd $(mbuto) ...' usage, we leave the
>   image we built around. It could be deleted as soon as qemu is done
>   reading it. I have two ideas (more welcome of course):
>
>   1. use inotifywait(1) if available, use it (in a subshell) to watch
>      for the IN_CLOSE_NOWRITE event on the file, then delete it after
>      the event and close the subshell. If it's not available,
>      'sleep 60' (perhaps with a warning) looks reasonable
>
>   2. or check the parent PID from mbuto, once it terminates, delete the
>      file and exit the subshell. I think it's more portable, but it
>      might require some tricks (I haven't tried at all) to keep the
>      subshell alive as long as it's needed
>
>   ...in both cases, deletion should be configurable, I guess enabled by
>   default if and only if we're running from a non-interactive
>   context, that is, '$(mbuto)' as opposed to 'mbuto' on a command line.
>   Check with [ ! -t 0 ]: if stdin (file descriptor 0) is not open, the
>   user didn't start mbuto directly.

I'll need to experiment with that to see what works. I'll ping you in IRC.

Thanks!

>
> --
> Stefano
>


-- 

Sevinj.Aghayeva
