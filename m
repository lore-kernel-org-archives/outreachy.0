X-GM-THRID: 6662791794901647360
X-Received: by 2002:adf:b692:: with SMTP id j18mr77209wre.8.1551388913090;
        Thu, 28 Feb 2019 13:21:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:3d6:: with SMTP id 205ls438456wmd.1.gmail; Thu, 28 Feb
 2019 13:21:52 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY73wr6m+pmOUFrk3RpArnJXU+FsjE0caRBdfoVRACbaBgf2mD51AQOCeLo06F5D/YT4r9F
X-Received: by 2002:a1c:c00c:: with SMTP id q12mr124151wmf.5.1551388912190;
        Thu, 28 Feb 2019 13:21:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551388912; cv=none;
        d=google.com; s=arc-20160816;
        b=oFmU3nQXyAUMuymcf0YoKbzGPYUlexM6enTupZiCTaY0HdmG+ZLbqTU2AmKLmTNxrN
         E1rsPECqCm9UnF/n5zxUJQEF+ezu8MZMT45VonmfO4j6u/lLaD06L3cxU5TAZqX8mDcn
         afDPGFbblTmSj+fLxjJuUmBVmTSHc90eB2o7OkKOTF/hXLL/FqgkV+In7mXng4E/Ivqs
         hS7C/gjPKMM4FwA66OY7HOK2RQ0TeejbII56v63S+ZmrRg2yJWY+A/qMjkuQZAUAhWf4
         a1jfhCTKN/6hTCCcq36hbuzyqFfIr0q4l9wqa4i0s6K8nsW29DEloEKAD82/XNlvW+nr
         XZHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=jrlZuLnFczAxqVpg+3oV3PA1TcgUTsi9rVs+hJT4hSQ=;
        b=juV8BBxVirCmM+ZvVKQDIRKwg4x1JG/0LT7PFnB92uVPdtXnUBKg5gXmZ/Krrc69y3
         P2uTfgNM5Gc3bUKr5tQXhSSq35cbOcFgLcNE6oFpLAISg9CV48c259W3oGxvbrmLYsTn
         KfZgRC0iOFL3F54CaoUNnXmZp1tlwBfDSO3WS2dzC25htLF79v9g+IldnwDKK3ycY/+8
         RsSsDd/XWEJ11b+TpTpqVOQf4owRWcaSfuYW9Ib4ZhV+RmeCj+0SbKxxVOygZCH2B0Zz
         sgRLswMWYciPcjlbm1MF9RFNX06AB1Ey40ZcpuaWOYNhjqAx9zkNGe4v9nHPwBiRMTex
         ulxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 109si756105wrb.0.2019.02.28.13.21.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 13:21:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,424,1544482800"; 
   d="scan'208";a="297718740"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2019 22:21:51 +0100
Date: Thu, 28 Feb 2019 22:21:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v6] Staging: vt6655: Align a static
 function declaration
In-Reply-To: <20190228211422.26979-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1902282221410.3134@hadrien>
References: <20190228211422.26979-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Feb 2019, Madhumitha Prabakaran wrote:

> Align function arguments and function return type to improve
> readability.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
> Changes since v6:
> - Started again to recommit from greg's version due to code duplication

It looks better this time.

julia

>
> Changes in v5:
> - Commit log and code diff are matching. In last commit, there was error
> from my side while reevaluating and commiting it again
>
> Changes in v4:
> - Commit log and code diff are matching
>
> Changes in v3:
> - Included driver name in subject line.
>
> Changes in v2:
> - Improved alignment of function declaration
> - Modified subject line and commit log
> ---
>  drivers/staging/vt6655/card.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 3226dbaab3bb..6ecbe925026d 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -60,14 +60,9 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
>
>  /*---------------------  Static Functions  --------------------------*/
>
> -static
> -void
> -s_vCalculateOFDMRParameter(
> -	unsigned char byRate,
> -	u8 bb_type,
> -	unsigned char *pbyTxRate,
> -	unsigned char *pbyRsvTime
> -);
> +static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> +				       unsigned char *pbyTxRate,
> +				       unsigned char *pbyRsvTime);
>
>  /*---------------------  Export Functions  --------------------------*/
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190228211422.26979-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

