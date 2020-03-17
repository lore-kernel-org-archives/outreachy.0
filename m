X-GM-THRID: 6804182476850724864
X-Received: by 2002:ac8:604b:: with SMTP id k11mr5159772qtm.251.1584447606580;
        Tue, 17 Mar 2020 05:20:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls8276710qtc.6.gmail; Tue, 17 Mar
 2020 05:20:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsKLZ2oLezJI/G+sVP5X/g1yw2loZy15xAtn8t8fMwg5OLHGbMz1aAZw7qp0pCKduwzT0K0
X-Received: by 2002:aed:3284:: with SMTP id z4mr5242397qtd.22.1584447605297;
        Tue, 17 Mar 2020 05:20:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447605; cv=none;
        d=google.com; s=arc-20160816;
        b=PrRMMFiJIUfiKUwya8QW/rOqbQoZu0hdWgyEQuR/+CT16wl8xv/h3nwho6pfwDOUei
         mGJkjxFd1yon7M8Zb8VZnOf92fKD51rSdoKH3n+df1lNEPj+gb5SOZ1dwqink9fAz5y9
         wvO86dRsMvGcMtiYwMdH3fFJ60unZ+RotoLr8TPvTJXL+sJtcrnDDUDtRrLNvlGY1eWG
         PTc4Gj4lHJMPCMW4NALw2CeIAixbR9j6t+IMTRdpkjE+YEH/P64Sa9aA87JCi75yVg8J
         AQyn6bFyH+y4BOujHEbDowqE1138uczlZMFJybC3koUiiDF1eSy66gLZgAtWhyxxwTEV
         7P/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Njrt6ydmNUj5bAtolOhR0/vdsMwW2Kem7OWYqV/2Rpg=;
        b=RNjs8+jcs+dC7z9dCQGFe4kaJpr54MKRs0Wp1KLO7a2AfWZisLhxPB2G6qQEdFUgNM
         W82bKV+aWDO+OdnG7TRUB0HdpZmWwEI5FnllNzbXGKAL5qO6T5V8WG8dQkEUFzXdunXk
         GoCLjSaFN4xqWb7ss++MmBl6AjAxFhRI5TxyBK8dKDUZGnYPD4buPXdmPjQi0Lhzodcz
         eun/nPkNN/KJsUN4g1GMDD5rJFErVtrljDxy9Szlzsk0aYa9qIFf5ZxIR7kPJwdMfeHe
         EJA/5WGk0tkl/2ZSao/1k9ee7Ix24nHuBo9UjalOxq3du6Sto/beiBsXm0Qp6s1TAwBy
         gHLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DzV+1RSz;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id c6si241678qko.3.2020.03.17.05.20.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 05:20:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DzV+1RSz;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584447605;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Njrt6ydmNUj5bAtolOhR0/vdsMwW2Kem7OWYqV/2Rpg=;
	b=DzV+1RSz/PT0e5rlxzu2qBzCwYKnbdbWyVnlkEXkkWcovkmMxyQSszWipjmRn5z+hCE16t
	QHw30wDvs3kYtDhqBbYkgHsn9+pbjCif3PL4SKqSFYNQR5jifD+LDNFWf4AgwT73uqjHtt
	XaUXZqrMkEgoTvs6fkt6kgtfPDKjN94=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-461-K0A0WuFtMRSqqxAEZcQiRA-1; Tue, 17 Mar 2020 08:20:03 -0400
X-MC-Unique: K0A0WuFtMRSqqxAEZcQiRA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B972190D340;
	Tue, 17 Mar 2020 12:20:01 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86A101001B34;
	Tue, 17 Mar 2020 12:19:58 +0000 (UTC)
Date: Tue, 17 Mar 2020 13:19:52 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
 abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_tio: Reformat
 function call arguments
Message-ID: <20200317131952.7e19a55f@elisabeth>
In-Reply-To: <20200314214254.GA3941@deeUbuntu>
References: <20200314214254.GA3941@deeUbuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 15 Mar 2020 03:12:57 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Reformat function call arguments so that the function call is clearly
> visible. Issue detected by checkpatch.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/comedi/drivers/ni_tio.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/ni_tio.c b/drivers/staging/comedi/drivers/ni_tio.c
> index b264db32a411..f6154addaa95 100644
> --- a/drivers/staging/comedi/drivers/ni_tio.c
> +++ b/drivers/staging/comedi/drivers/ni_tio.c
> @@ -1342,8 +1342,8 @@ static int ni_m_gate2_to_generic_gate(unsigned int gate, unsigned int *src)
>  
>  static inline unsigned int ni_tio_get_gate_mode(struct ni_gpct *counter)
>  {
> -	unsigned int mode = ni_tio_get_soft_copy(
> -		counter, NITIO_MODE_REG(counter->counter_index));
> +	unsigned int mode = ni_tio_get_soft_copy(counter,
> +				NITIO_MODE_REG(counter->counter_index));
>  	unsigned int ret = 0;
>  
>  	if ((mode & GI_GATING_MODE_MASK) == GI_GATING_DISABLED)
> @@ -1358,8 +1358,8 @@ static inline unsigned int ni_tio_get_gate_mode(struct ni_gpct *counter)
>  
>  static inline unsigned int ni_tio_get_gate2_mode(struct ni_gpct *counter)
>  {
> -	unsigned int mode = ni_tio_get_soft_copy(
> -		counter, NITIO_GATE2_REG(counter->counter_index));
> +	unsigned int mode = ni_tio_get_soft_copy(counter,
> +				NITIO_GATE2_REG(counter->counter_index));
>  	unsigned int ret = 0;
>  
>  	if (!(mode & GI_GATE2_MODE))

I think both the original version and the "fixed" one are quite hard to
read, the proper way to fix this is to initialise 'mode' after the
declaration.

-- 
Stefano


