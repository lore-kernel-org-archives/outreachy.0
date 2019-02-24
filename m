X-GM-THRID: 6661416853760376832
X-Received: by 2002:ac2:5215:: with SMTP id a21mr628165lfl.5.1550991843614;
        Sat, 23 Feb 2019 23:04:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5501:: with SMTP id n1ls952525lfe.3.gmail; Sat, 23 Feb
 2019 23:04:02 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibl6CVBycbtWGtUlSYlYfzHIXSnXS3JFVrGVHmlSJYywdc50EeVhtQfTRFpNkmZC4sYgFwj
X-Received: by 2002:a19:f60c:: with SMTP id x12mr633222lfe.1.1550991842713;
        Sat, 23 Feb 2019 23:04:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550991842; cv=none;
        d=google.com; s=arc-20160816;
        b=KjlsfL1xPLHST4Xp0tWOYrPH1MsPw2SV29ee2KVD8y+eZMoXRm/NtZ2zsCIR0N/jCG
         Z/Hd37l2hk7VNB774CkAxruVC9T8mTVvC5d6t9zM97NIyPk/X9N/pRELTjm3URrrldst
         aRQdyaR/zdKuj9G+kZnJ1tGZG2EqILYz2Em7bY5fZ+mlK1Khk/FiTQ/rv3egLT1Tg/EO
         ESL4IKSwk0spj2ruhjDxSjFkY+gA0/9EpR9mcSq7vpg4mDXP0CPcM/d8WNtVOz7w1aBk
         4OD2UPJ8aUDIJDSM3pU6M+Iq8HPSmExBmiv0IIentASL1uGV6eXK+NmA79o5rbAc46WN
         jUqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=buiJWIPutHd+g5yZWDy4gPkuS2nUt449NQumvOJpu+M=;
        b=wPwzXNMtG5qIEcpZx2s2Zkvc4WGWLQmcbuzxMBTITwETNnNzjWngLadVjBqLohPfTR
         f5xGU4Kq4z8+Ru+ug+3pbAasCZ+OWNTh76zwc4K98Bh4Vs2ubib44meVB8jF/jkeu0pN
         iU/BLIJK4V3dCFFM2awJeiuzEZvhrark51bzFRCkNtrBHTH6qVYpek2OxiU/Vm26T2iJ
         ZZQRhzmWJUWqQdi6qW/67Vq/+47jhI/5DMCL5nM5ZBjBeZOWh3MGQpUUllRgoo8AwLPG
         ALbduIHkJdixYa/Z9MJ3l8NeZxYivaYfx+RNOZgI4eplw0iYd8PEvMFBxCdPCFhxWKrq
         YGNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 19si218398lje.4.2019.02.23.23.04.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 23:04:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,406,1544482800"; 
   d="scan'208";a="297134228"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2019 08:04:01 +0100
Date: Sun, 24 Feb 2019 08:04:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Fix check-Lines
 should not end with a '('
In-Reply-To: <20190224041926.10019-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1902240801320.4483@hadrien>
References: <20190224041926.10019-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 23 Feb 2019, Madhumitha Prabakaran wrote:

> Improves readibility

Log messages should be in the imperative, which typicalls means no s at
the end of the verb.

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index 9d4af51b6ba1..1f1f82ebbbc2 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -1705,8 +1705,8 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
>   *
>   */
>  unsigned int BBuGetFrameTime(unsigned char byPreambleType,
> -	                     unsigned char byPktType,unsigned int cbFrameLength,
> -	                     unsigned short wRate)
> +	unsigned char byPktType, unsigned int cbFrameLength,
> +	unsigned short wRate)

There is no need for this large unindent.  If it is not possible to put
multiple parameters on one line, you can use multiple lines.

julia

>  {
>  	unsigned int uFrameTime;
>  	unsigned int uPreamble;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190224041926.10019-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

