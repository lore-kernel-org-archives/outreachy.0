X-GM-THRID: 6670195041552564224
X-Received: by 2002:adf:f301:: with SMTP id i1mr1061057wro.19.1553025984083;
        Tue, 19 Mar 2019 13:06:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:ca1a:: with SMTP id a26ls14490wmg.8.gmail; Tue, 19 Mar
 2019 13:06:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqycvkP6RNh/OovL3QICh5yhAT471ygRtczEoD8fCGb/ZYMpRlMWbGSrBp1kaH7AENm5Cj1F
X-Received: by 2002:a1c:ca0f:: with SMTP id a15mr371309wmg.11.1553025983193;
        Tue, 19 Mar 2019 13:06:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025983; cv=none;
        d=google.com; s=arc-20160816;
        b=yp6yQxQxXUEFSnnuXOB3mSUyAFSf0fHB8SLJl6gToG1ixUbXPhJmPcMWX9FoqOUoVM
         KiJhfu4gBU48bZwptbjkUvPzsyWf+QLG2mU2mVdjpHjCaFspm5yIcVSVI03z7ogH4H+7
         2MIcF201IsdnUptpP21dGlL44qVilg7Me84BtdQYLkl8aYCozWTSu8OE5imQi7cuSV+D
         MwlK4VLLwGfooyrUgrgTwHUja5ilcv+MLAU2ahwpAubT+J+rRwP72IGQLZoHFpoanbBe
         tSzWrs2wMILy4OtD7qfDsa7aIvLxwUjmIb3MpKUdwyRlRVKVQKkCv7NfiP5EQ5Hn2qbR
         i7Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=temH9M91QdHAeiQjMR+nfz5zkPdL/quE46NM5tnvZOs=;
        b=q5GKUCFXVsEzMbnCfHPv/0h/uEbq5yUiwpUP9zWwrvvOof6PT5c42IDtAU+66vhC1q
         QNiVHMYulJPgQgki8LwehiFmanaBesxt9ZT+wSsuNDNb5V7vP+Sxl6wi7UD2G+J4lYce
         zWKd25oSoOIMALD3ffqekP8bULUNQVi04YdpL1HMjnjxWRRYQOkHw5VSC8Zzwc9YjpB1
         AWLQAErY6C+1NEZTiHT6NJvDHyqb3HKTz6wBFqCAqO232ovbvsfE2pVOQmWkc5MadZGh
         CEirNVwZumxOQ2ix6wJRgQ2+bHK/yjyZlDXiKU395Y308zNKI+mY38L6Ww5mTaMVLb/d
         etow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 60si233049wra.3.2019.03.19.13.06.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 13:06:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="300009303"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 21:06:04 +0100
Date: Tue, 19 Mar 2019 21:06:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: Remove parentheses
 around variable
In-Reply-To: <20190319200308.10710-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903192104300.2460@hadrien>
References: <20190319200308.10710-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

This didn't arrive with a From line that corresponds to your SOB.  You may
need to put From: Nishka Dasgupta <nishka.dasgupta@yahoo.com> at the
beginning of your log message (after the subject line) if you aren't able
to have the message come through with a proper From line.

julia

On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove parentheses around variable.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/greybus/bundle.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
> index 376ca53f0d83..3f702db9e098 100644
> --- a/drivers/staging/greybus/bundle.c
> +++ b/drivers/staging/greybus/bundle.c
> @@ -32,7 +32,7 @@ static ssize_t state_show(struct device *dev, struct device_attribute *attr,
>  {
>  	struct gb_bundle *bundle = to_gb_bundle(dev);
>
> -	if (!(bundle->state))
> +	if (!bundle->state)
>  		return sprintf(buf, "\n");
>
>  	return sprintf(buf, "%s\n", bundle->state);
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190319200308.10710-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

