Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0769F1FCD
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 16:49:18 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id q22so6465969ljh.10
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 09:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CtyJRceC8mDyQR0u2QPd0NEHhNvA+ZjcEcRY3kUCwKQ=;
        b=OPkWwjaiuEmxlbEDYHKtt7eb/mRb2/mJxihDgMTzZLH/2HmNSuQ0Hwx3cw1iZGtsqG
         9Qyu93BSmuSNHFKdsUNLpMxPd3phP/fbLqQ70O4Ox5PHbhutOTZvoae43IsNqW4ccygD
         X19ov5xHLhPLG96WRLP6cDb8YVl0V/dHgS1kfxw0hzElie7F9geaj6dsuFuGIDdehtg6
         qrcMoMzjl8dn/vqAyeTQQOv25EP8eE39NhNoyKCfjDkSvkf7g7p+G7Q0bVxGk57W7K7P
         F6jTyifatN0NujsCI6i5RWUtcDwgYDFlFVbwrdx1724T7On/xl9tJ/EsiIkgeMf7VPmh
         18xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CtyJRceC8mDyQR0u2QPd0NEHhNvA+ZjcEcRY3kUCwKQ=;
        b=JW5m0czdD6bSVUF1URIeOChcmpKP0ipWcfTYPf9O0ElYitk1E8T1v+nnSGwrFngYc3
         GZayrsfGfGW+pec4AqDKk+SqUh53C9gndyR31CsOXyJbT1+LAb+a+z7NuiyPHoQpqLyf
         0KGW1YYE5LK0Hlx6I1z8kHfFQvZLcOD73UzKuO4bvo7Iq4HKo/Tyqw7472jFIaeQToN7
         fgqK+J6C02sS5/vzhLoUPPRDy0Obo0I+o0K/Va3HKGTuHrw2I9rcH19oiRPlVTY71SnZ
         KAyJhgL4uDiBo+hCEbCUJyDifsz27d3TZueHDQOz3DswqkRUvewsfnFSKuEKFLCVfbYX
         02/w==
X-Gm-Message-State: AOAM532p+UbY6zPLVZspojmaIp2o281/EJZgVjfuwiLb+lQB7qSJ6Igp
	cefMNyHoVe0k6ekqhNSCVxUtzZWbGpNRcUueSA8=
X-Google-Smtp-Source: ABdhPJz1kqhFLSivtESjXb4p4YfZX1M+c+QI7Sc3ByCN80hg8LRewxiNEHr5oFLkncabDhSpHznH9vlYfl5aYfVUqdo=
X-Received: by 2002:a2e:b532:0:b0:24d:b593:5db with SMTP id
 z18-20020a2eb532000000b0024db59305dbmr353446ljm.38.1650559756770; Thu, 21 Apr
 2022 09:49:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20220418165519.GA54466@euclid> <20220421175648.13570c38@elisabeth>
In-Reply-To: <20220421175648.13570c38@elisabeth>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Thu, 21 Apr 2022 12:49:05 -0400
Message-ID: <CAMWRUK77nq0Z-6okpT18h=5HPxuiLRYETSjdy6G+umOpBeQnfA@mail.gmail.com>
Subject: Re: [PATCH v2] mbuto: always display help message
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy linux kernel <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 21, 2022 at 11:57 AM Stefano Brivio <sbrivio@redhat.com> wrote:
>
> Hi Sevinj,
>
> Sorry for the delay, I'm finally testing this and updating the demos
> around it.
>
> The previous series looks fine (I'm hitting some issues with
> grep, still checking). However, this:
>
> On Mon, 18 Apr 2022 12:55:19 -0400
> Sevinj Aghayeva <sevinj.aghayeva@gmail.com> wrote:
>
> > [...]
> >
> >  # If we're not running as root, re-run with fakeroot
> > -if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ]; then
> > -     if ! FAKEROOT="$(command -v fakeroot)"; then
> > -             err "Not root and no fakeroot available, exiting"
> > -     fi
> > -     PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
>
> ...breaks everything, that is, options are not passed anymore, the
> "base" profile is always selected, because:
>
> > -     exit ${?}
> > +__not_root_and_missing_fakeroot=0
> > +if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ] && \
> > +             ! FAKEROOT="$(command -v fakeroot)"; then
> > +     __not_root_and_missing_fakeroot=1
> >  fi
> >
> >  # Parse options
> > @@ -1204,6 +1202,14 @@ while getopts :c:df:k:m:p:s:vh __opt; do
> >       esac
> >  done
> >  shift $((OPTIND - 1))
> > +
> > +if [ ${__not_root_and_missing_fakeroot} -eq 1 ]; then
> > +     err "Not root and no fakeroot available, exiting"
> > +elif [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ]; then
> > +     PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
>
> $@ here doesn't contain options anymore, being that it comes after
> shift $((OPTIND - 1)), which renumbers (shifts) positional parameters
> in a way that $1, at this point, is the first non-option argument.
>
> And $@ follows the same pattern: the first token in it will be $1 now.
>
> I'm replacing this with something like:
>
> diff --git a/mbuto b/mbuto
> index 49b8139..6918415 100755
> --- a/mbuto
> +++ b/mbuto
> @@ -1179,10 +1179,11 @@ usage() {
>  # If we're not running as root, re-run with fakeroot
>  if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ]; then
>         if ! FAKEROOT="$(command -v fakeroot)"; then
> -               err "Not root and no fakeroot available, exiting"
> +               __fakeroot_missing="y"
> +       else
> +               PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
> +               exit ${?}
>         fi
> -       PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
> -       exit ${?}
>  fi
>
>  # Parse options
> @@ -1206,6 +1207,11 @@ done
>  shift $((OPTIND - 1))
>  [ -z "${PROFILE}" ] && PROFILE="base"
>
> +if [ "${__fakeroot_missing}" = "y" ]; then
> +       err "Not root and no fakeroot available, exiting"
> +       exit 1
> +fi
> +
>
> and I would push it (please have a look, first!) together with your series as
> soon as I get the demo to work with test collections.

Looks good, thanks for catching this. I didn't test it properly.

>
> --
> Stefano
>


-- 

Sevinj.Aghayeva
