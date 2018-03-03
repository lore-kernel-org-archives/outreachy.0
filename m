X-GM-THRID: 6528739356252831744
X-Received: by 10.46.118.15 with SMTP id r15mr617013ljc.23.1520090776784;
        Sat, 03 Mar 2018 07:26:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.65.141 with SMTP id d13ls1297838ljf.11.gmail; Sat, 03 Mar
 2018 07:26:16 -0800 (PST)
X-Google-Smtp-Source: AG47ELs4fieNHi+yPTaGmDKGNigFHRpcZMkqEBbqZJVVy6dpejfJWm7JQABVRTgami0cdThVlvvq
X-Received: by 10.46.65.29 with SMTP id o29mr618754lja.3.1520090776022;
        Sat, 03 Mar 2018 07:26:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520090775; cv=none;
        d=google.com; s=arc-20160816;
        b=pgB12BveRwO55JoVfOLk7CVfvEs7hXLnGNV2mrieFJkjaMoxiK0A7W1W9Klxy4q0jJ
         1P9r1DsAUfbA/ZgmqfjesMGAd6xIKon1t8gMjagZqkQTMhKfUyiAcaCACBOdAgCWufGO
         yclsGgDisBQqUGITVkhxGd6Usq+qLz0GmcN/qVfQ+yhcav+tlF1R6SgEBAgaiG96/zsP
         ngJiHmFmvm8OfNWzlw6iRTgA99MNiTY6MDkwBIF2ZHDtr//PdUEqeK50k8bfXZCHSANi
         OF3QDOpVM217Q8FVXg+E70iruXSd9u8383CkuR1Qw59bfHFGWtFWXsRJGd5xy0V/yEez
         R30w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=QpRBBchUilnSIN5mAuICXuPlZp0t0/k/LLLJEoF/MpQ=;
        b=yFo7xIjaZeU6XoNq/yKu2rP8HCjKY/KvmSBz/48sB8W/TxbE2EU6feBlXRJ7vaqzS8
         V4EZvzrWsPQYUstbSNOKg1YLU5728l1EHqNwWwV66Wkvt5dTjPNTqw/qWx0ahUDlgu/P
         BtMjf+cnF6VojhM9vceG/bCmBfQm48SrwnCHBdIp+QPKhopFxQzN62WT9VOKWE70lSVZ
         5N+T/jXs6FE4FiJUMqXXNu8enUWNbUD3lLpeOBqKjsOqS9YbriBM/LUxG24R8wZz/UqI
         DXPVgSg/Om2T+snoApJ3NLezZrdz5m/3mBYoycBUYvjXtX4t+R3hiowVR7QOLufM2JzP
         1i8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w7si348595lfc.2.2018.03.03.07.26.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 07:26:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,418,1515452400"; 
   d="scan'208";a="256834030"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 16:26:14 +0100
Date: Sat, 3 Mar 2018 16:26:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rinkle Jain <rinklejain96@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Fix style violation
 for line ending in '('
In-Reply-To: <20180303152244.GA9913@tic-tac>
Message-ID: <alpine.DEB.2.20.1803031625020.2302@hadrien>
References: <20180303152244.GA9913@tic-tac>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Mar 2018, Rinkle Jain wrote:

> Replace line ending with '(' with function parameters to resolve
> style issue found by checkpath.
>
> Signed-off-by: Rinkle Jain <rinklejain96@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.h | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> index b8ee33dcb352..432b348c81e1 100644
> --- a/drivers/staging/vt6655/baseband.h
> +++ b/drivers/staging/vt6655/baseband.h
> @@ -47,11 +47,10 @@
>  #define TOP_RATE_1M         0x00100000
>
>  unsigned int
> -BBuGetFrameTime(
> -	unsigned char byPreambleType,
> -	unsigned char byPktType,
> -	unsigned int cbFrameLength,
> -	unsigned short wRate
> +BBuGetFrameTime(unsigned char byPreambleType,
> +		unsigned char byPktType,
> +		unsigned int cbFrameLength,
> +		unsigned short wRate
>  );

I think that the code could still be improved, to use more of the
horizontal space and not leave the ); on a line by itself.  Look around in
the kernel outside staging at .h files to see how other function
prototype declarations look.

julia

>
>  void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
> --
> 2.14.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180303152244.GA9913%40tic-tac.
> For more options, visit https://groups.google.com/d/optout.
>

