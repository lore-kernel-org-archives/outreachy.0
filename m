X-GM-THRID: 6477098943281889280
X-Received: by 10.13.195.65 with SMTP id f62mr4530920ywd.21.1508086956982;
        Sun, 15 Oct 2017 10:02:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.230.213 with SMTP id p204ls769943ywe.25.gmail; Sun, 15 Oct
 2017 10:02:36 -0700 (PDT)
X-Received: by 10.37.59.132 with SMTP id i126mr4296664yba.13.1508086956223;
        Sun, 15 Oct 2017 10:02:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508086956; cv=none;
        d=google.com; s=arc-20160816;
        b=ycOWiTo6fCnAzcLN8wpFoL9JdAH5eo87xwTvxHsBcS6R8F741dBpXe+v8mMjRqK+Kz
         jAEDp9u9P8dWmZ3vqbWioU6JdZly9TtjHPNvo6eiv4Ap2VUfMgaAY/WdvhHtZn/Duh48
         O1XHG+/iiMJ9EBvc6KwDAg8Hxq611/TDgg9FXfb22JSvi7fBXtLmkbfEJonMbK9PcY9H
         PvuNWcG41/5T5uEnDAQ+kA3XDPRIq25ekQ52vlo+20FCce+fvPvheT66G7d10OaU27q1
         iNW+Bcnm9+1IuXmu3Kcqa7Zz9nP8qnwS1jOI/B3U2g4Z3ACdgaRU0tjipvMFC7OXOumM
         zGcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=BFYoekR8GClv5Mm/pMaNr89ofZov7HcfQ9MChm0/W28=;
        b=OZsnehAh5EaRCjg6in58Kl6Rmdxdfv4HdLTHdXghgLHeolX/Tx5dkM8sQRShVf+1py
         NSG0cetFVMQx/yXn0lfZStt1ZX9FLkesYPzBso/alQiFaIS7EimXFSYiiUeevv1Eo4lF
         nniXtZfRiNIA61k58tAg7s3qSRkrFzEGHF+opoI7vEQPLmMtRVEzeQRBuLwl+wzZz4NI
         Ej4Q34ZmM86vIZKlCjHA4hiFkhmREFWglCx33Ctrpm7e4Cr9cJ97k/D0mZW62SP7l/8C
         qnewesJcFGe6bCE3caDeiu5tZNn3QcF+zgYL3pNpte/xXo3zd2q+At8UE49U+Ojh8UuT
         ZmtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FaHSO7G3;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id o65si237399ywf.4.2017.10.15.10.02.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Oct 2017 10:02:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FaHSO7G3;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id b5so3376443vkf.1
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Oct 2017 10:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=BFYoekR8GClv5Mm/pMaNr89ofZov7HcfQ9MChm0/W28=;
        b=FaHSO7G3zloKzTTKD0TWvJmJ8fPAvYWSPavPFVzVQrb61ZsxXDAbKfbw6W5R48akmE
         pxLJZACkdHmijKF/cVhhzxTYiGB5FuTvpiZR9aCxLTkMkRFWj6zZ8SEQoKPIhoSBKmYS
         MEDVntRbjF1m20vxQcq8wCJKqLjS2DMt3zB7wmw+5RzpXp7H11a0YW0o0dj3ZzFEpGy5
         HBYXUNKIjteueW8s23emH7BT7Fqeom7Bnew0DR/AwMagu2H9v2k1F8V3lmTGkcRBMsNi
         rG8oG7mt1LnSaOEQMqFC7oOXG9bQt6hjwlrsPPZ+o4o5eM5IkW7l/bdm+AP7BrWEm4XN
         H/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=BFYoekR8GClv5Mm/pMaNr89ofZov7HcfQ9MChm0/W28=;
        b=cqdNjh5PSJPo+/KhGFfh1S6L8uKqvXjK+HRwPeI3Qd7XL+h5auGaIYnMTIYrSzOvK7
         YPQ+2iszKAEws+RCRXRclwa3H1nqWqsMkk2fedkkYI8e6pl3JZrSGEt8HVafnVGhPnNU
         06MeVf8lXIyBiEVEGPvHNWpeDuBsCikCXlfrPYCeF7Ymz1CD45+vW1ZIto3ohx4YB0hS
         EU8VDnGbUiykKdQWWcxMv05uOohJnk7pzeCOnpdKFfclw3emnz7FhnwL+ThMjDojMlTW
         fQ/UK/qGsPQRw4nFLSchH177BFU5l/6sMYzQy10nRlI92TPAW6XZTuxtrNAkDxPiGLf3
         /MEg==
X-Gm-Message-State: AMCzsaX0VWINfyraOrGKnjl90F+vaE7ggWENj6j4eohAiTZZYQqXpjgY
	aotxcUXqzQjLiRUoxlnxSywTcupNpoSaqmQXuaU=
X-Google-Smtp-Source: AOwi7QD672Ss2QYxbSrjROzLT1b183aMIjfdwXJttDx2Llbyfnik7ViwFKcy7z+a/4UQ8BgeUZxf2gPBjufwI524skY=
X-Received: by 10.31.171.130 with SMTP id u124mr5482911vke.20.1508086955676;
 Sun, 15 Oct 2017 10:02:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Sun, 15 Oct 2017 10:02:35 -0700 (PDT)
In-Reply-To: <CAHXiS5-LAiGs7+5zs-VhOmW2WLCAsNsaQrWh+5=m8=JrcyWtRw@mail.gmail.com>
References: <CAHXiS5-LAiGs7+5zs-VhOmW2WLCAsNsaQrWh+5=m8=JrcyWtRw@mail.gmail.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sun, 15 Oct 2017 22:32:35 +0530
Message-ID: <CAHXiS5_GXmDNi32UaQEoP9u+ArcrL7PkcrQPQ39u38Qh1i6Hmg@mail.gmail.com>
Subject: Re: [PATCH v3] iptables: iptables-compat translation for TCPMSS
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: outreachy-kernel@googlegroups.com, netfilter-devel@vger.kernel.org, 
	Aastha Gupta <aastha.gupta4104@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 15, 2017 at 5:46 PM, Aastha Gupta
<aastha.gupta4104@gmail.com> wrote:
> Since path mtu support was added, we can now add
> iptables-compat translation for TCPMSS extension.
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> changes in v3:
>         - fixed alignment issues
>
>  extensions/libxt_TCPMSS.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/extensions/libxt_TCPMSS.c b/extensions/libxt_TCPMSS.c
> index 4b71e44..0d9b200 100644
> --- a/extensions/libxt_TCPMSS.c
> +++ b/extensions/libxt_TCPMSS.c
> @@ -91,6 +91,19 @@ static void TCPMSS_save(const void *ip, const
> struct xt_entry_target *target)
>                 printf(" --set-mss %u", mssinfo->mss);
>  }
>
> +static int TCPMSS_xlate(struct xt_xlate *xl,
> +                       const struct xt_xlate_tg_params *params)
> +{
> +       const struct xt_tcpmss_info *mssinfo =
> +               (const struct xt_tcpmss_info *)params->target->data;
> +       if (mssinfo->mss == XT_TCPMSS_CLAMP_PMTU)
> +               xt_xlate_add(xl, "tcp option maxseg size set rt mtu");
> +       else
> +               xt_xlate_add(xl, "tcp option maxseg size set %d", mssinfo->mss);
> +
> +       return 1;
> +}
> +
>  static struct xtables_target tcpmss_tg_reg[] = {
>         {
>                 .family        = NFPROTO_IPV4,
> @@ -104,6 +117,7 @@ static struct xtables_target tcpmss_tg_reg[] = {
>                 .x6_parse      = TCPMSS_parse,
>                 .x6_fcheck     = TCPMSS_check,
>                 .x6_options    = TCPMSS4_opts,
> +              .xlate              = TCPMSS_xlate,
>         },
>         {
>                 .family        = NFPROTO_IPV6,
> --
> 2.7.4

Please ignore this patch as this patch really dosen't solve anything.
The v2 of this patch should be considered instead.

Aastha

