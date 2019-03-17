X-GM-THRID: 6669456947091079168
X-Received: by 2002:a1c:9e0c:: with SMTP id h12mr574427wme.3.1552854664075;
        Sun, 17 Mar 2019 13:31:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9609:: with SMTP id y9ls965989wmd.0.gmail; Sun, 17 Mar
 2019 13:31:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyb3fdJL9Ys3CAwKCOIva0Qx0wVk9cDkiatirSzSpoMkQ2fDaTt5JPvEWwBEIISXjNZB1WK
X-Received: by 2002:a1c:6c12:: with SMTP id h18mr55551wmc.18.1552854663141;
        Sun, 17 Mar 2019 13:31:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552854663; cv=none;
        d=google.com; s=arc-20160816;
        b=w9GyisTZ9te2YKWHeLjUdi04r2ClziSbqO1NGQ69HCrPhdbJSsw+/M/ZLeglgAbor3
         N8A1d0J/rUcmNGbcDdA1hiLaIkyGX4JsVUVg6Nn8tE29RT1RY8dvO6D7ncPebh5JNpiX
         AVqKH/FGvMxAtnVnT+Mfqo3jzbOA9XUfslW4d+bTlp2NCMQN74C3XLHQCTc0x91duwmv
         NCgfCT1XRsOMAFBgUGQ9bxW7rjhuxqsNrwvS933bRKp1nSPlycIzAVoAFuQXkA4EuLjY
         DWDhtnJmvcKtOmRWEiTLXtGXJLmjILpN44cOAe/t/Y/hm0vw9lcI8VafUdHh1gXxbxaO
         RO9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2djlmMstOERpt2GiRUqfdOIG5vejLiINwx0hDWBoqHc=;
        b=jT6aqPhFQUWcx3pwQYI19JpldAucTvxWTYb8k45ODTNp13nWFljlne14S56Xj5g/A3
         GRbzzTHDrpvS/l5M4dFMDN72r/VLni3cob47CAFfVGCpxl/XaOU0bnRh9fqkspV0avCy
         60tMWpLA4+JgWxhlpEpxSdXZpv+qvPod7lDEQytpK5ZR0Ch0IL378IHDHFJl3I6k/txj
         BW2ucg3nSF7P72bUhS1YPcVGVHCSq44enIPfbhaIpul6ndFG/x8rkKNRsQUmfBv5+kNi
         Md1DgIl6+qqvG/T+CzT2BeW1jeXikAbBLNk/Hynav+zNRj3qC8k858lEppgAvrcVusa7
         yUJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z129si356771wmc.2.2019.03.17.13.31.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 13:31:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,491,1544482800"; 
   d="scan'208";a="374412050"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 21:31:02 +0100
Date: Sun, 17 Mar 2019 21:31:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Edit CamelCase function names to make
 code more readable
In-Reply-To: <434bf516-9e31-4dcf-ab81-32842a588aee@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903172122440.2434@hadrien>
References: <434bf516-9e31-4dcf-ab81-32842a588aee@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1699360876-1552854662=:2434"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1699360876-1552854662=:2434
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 17 Mar 2019, Vatsala Narang wrote:

>
> [PATCH] EDIT CAMELCASE FUNCTION NAMES TO MAKE CODE MORE READABLE

Please don't use all capital letters for the log message.  Also, you don't
need to put [PATCH] in the log message.

On the other hand, the subject line can be more concise.  Just "eliminate
camel case" could be fine.

The subject line also needs to give some information about the affected
files.  You can use

git log --oneline drivers/staging/sm750fb/ddk750_display.c

to find something suitable.  Don't try to make it up.  Do what others have
done.

> Issue reported by checkpatch.pl tool
>
> Signed-off-by:vatsalanarang<vatsalanarang@gmail.com>

This should be your full name, with normal capitalization and spacing.
You can upadte your git configuration file with this information, and then
you don't have to think about it any more.

> ---
>  drivers/staging/sm750fb/ddk750_display.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.c
> b/drivers/staging/sm750fb/ddk750_display.c
> index f38051eedb6c..7f28e4cc4c79 100644
> --- a/drivers/staging/sm750fb/ddk750_display.c
> +++ b/drivers/staging/sm750fb/ddk750_display.c
> @@ -85,7 +85,7 @@ static void primary_wait_vertical_sync(int delay)
>         }
>  }
>
> -static void swPanelPowerSequence(int disp, int delay)
> +static void sw_panel_power_sequence(int disp, int delay)
>  {
>         unsigned int reg;
>
> @@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
>         primary_wait_vertical_sync(delay);
>  }
>
> -void ddk750_setLogicalDispOut(enum disp_output output)
> +void ddk750_set_logical_disp_out(enum disp_output output)

The above changes look fine.

>  {
>         unsigned int reg;
>
> @@ -147,12 +147,12 @@ void ddk750_setLogicalDispOut(enum disp_output output)
>
>         if (output & PNL_SEQ_USAGE) {
>                 /* set  panel sequence */
> -               swPanelPowerSequence((output & PNL_SEQ_MASK) >>
> PNL_SEQ_OFFSET,
> -                                    4);
> +               sw_panel_power_sequence
> +               ((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET, 4);

Please don't do this.  Function calls should have the ( on the same line
as the function name, to be quickly understandable.  It may be that going
a few characters over 80 is the best solution in this case.

>         }
>
>         if (output & DAC_USAGE)
> -               setDAC((output & DAC_MASK) >> DAC_OFFSET);
> +               set_DAC((output & DAC_MASK) >> DAC_OFFSET);

If you change a call without changing the definition, the code is not
going to compile.

Furthermore, above you changed a definition but made no changes on the
uses of the function.  Is the function never used?

If you change the name of a defined function, then you have to update the
name at all of the call sites, in the same patch.  No patch should break
the build.

julia

>         if (output & DPMS_USAGE)
>                 ddk750_set_dpms((output & DPMS_MASK) >> DPMS_OFFSET);
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/434bf516-9e31-4dcf-ab81-
> 32842a588aee%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1699360876-1552854662=:2434--

