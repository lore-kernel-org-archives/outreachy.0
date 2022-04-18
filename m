Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6235D7A
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 16:00:27 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id b21so24828120lfb.5
        for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 09:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Hyh0O4E1e/jazCXLVX0tMnmRpyGPMcLIClpOjF9aK74=;
        b=UxQZdHF1h25e6w/5Aus2WynH1kxENFF8lgPKIpmtjPVRzhSiCDDQ9rLp7DYOSp78FV
         qsZYfQsZQ6PqbJnjqK3PF1JJPxX4gchm0UdfMsMF5/PJtexewdKg3Gu7RuN1gZqGCNdb
         ldlvjLTyF/YcJ0Vb2F4+sQNS9pWQGACX6Lb8TD4I25EvnzUAug+W90yjDXhKF1lkJko5
         azb5uFaxT0Swh7+6HbivG21wjofB77WnwdyEyxwTPAG6vm8TPTHGuvzN8ZBa9KYEtLUU
         ld8wDbt+hOnw7egWeVUxLgGiMMglyH3Oa3ADA1Lr2Axgy/vFi92kh3+AagDhUbj8wA3a
         3bgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Hyh0O4E1e/jazCXLVX0tMnmRpyGPMcLIClpOjF9aK74=;
        b=e1I2m277kA7+6Ku/X4nzqdfLP55KejyNGk0B0e7rnNwGhaWzIOEhdG0E/Rgypv8XtT
         IndU1Xe+GpYD/Brj3fmlwPBDMW8qsawuXGGDOFjFuSUrPwtOxWuIqBVjSLKIS3z8iZC+
         T+lIlTuq5HXCw921VXfpCWSx0wQT8nQ27LTZmYfHSz8/CbCb+4jlCw/atf/loDgXOlPv
         RDfFprVHblryPJ1asLY5g0O0Ny7VXG3fdgxz7TQSXcM4KXUwmR2/Qh8xvVxQU7xYMHXT
         eBgzZNEsSWvVcgjyRH5bTPHi0BayqYqcanY5Y+APHzIU5Lpa82mKxqGFO4c3SDGCTWoZ
         bK9Q==
X-Gm-Message-State: AOAM530UXYurxcLRBb+2P7uuXfp4bWtmdKrekCtS2vDqEZJ1cHTj/hgJ
	0qqZkGl5S7+IppO8CnH6M6kA+UDYUSFMkETcL4/snWcf
X-Google-Smtp-Source: ABdhPJzYqAMmHYidIVueqkaLN8qiCCjk+4VeIK/avxm2lRNQHlXn8osggighTo6nBvZd3v1vZyd63GdsHJxW95RDCjI=
X-Received: by 2002:a05:6512:2627:b0:44a:2987:218b with SMTP id
 bt39-20020a056512262700b0044a2987218bmr8909899lfb.563.1650297625291; Mon, 18
 Apr 2022 09:00:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20220418155530.GA43865@euclid>
In-Reply-To: <20220418155530.GA43865@euclid>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Mon, 18 Apr 2022 12:00:14 -0400
Message-ID: <CAMWRUK4y_8Tm-dV99WsS9SJ5d-2VwFUSa66ojBQGp6nMsEU-=Q@mail.gmail.com>
Subject: Re: [PATCH] mbuto: always display help message
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy linux kernel <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

Please ignore this one. I didn't check it properly.

On Mon, Apr 18, 2022 at 11:55 AM Sevinj Aghayeva
<sevinj.aghayeva@gmail.com> wrote:
>
> Currently, if the user is not root or if fakeroot is not available, no help
> message is displayed. Parse the command line, display the help message and then
> exit if the user is not root or if fakeroot is not available.
>
> Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
> ---
>  mbuto | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/mbuto b/mbuto
> index 49b8139..c9f0b18 100755
> --- a/mbuto
> +++ b/mbuto
> @@ -1179,7 +1179,7 @@ usage() {
>  # If we're not running as root, re-run with fakeroot
>  if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ]; then
>         if ! FAKEROOT="$(command -v fakeroot)"; then
> -               err "Not root and no fakeroot available, exiting"
> +               __missing_fakeroot=1
>         fi
>         PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
>         exit ${?}
> @@ -1203,6 +1203,11 @@ while getopts :c:df:k:m:p:s:vh __opt; do
>         h|*) usage                                              ;;
>         esac
>  done
> +
> +if [ ${__missing_fakeroot} -eq 1 ]; then
> +       err "Not root and no fakeroot available, exiting"
> +fi
> +
>  shift $((OPTIND - 1))
>  [ -z "${PROFILE}" ] && PROFILE="base"
>
> --
> 2.25.1
>


-- 

Sevinj.Aghayeva
