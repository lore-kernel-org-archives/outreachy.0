X-GM-THRID: 6807521221589073920
X-Received: by 2002:adf:f7ce:: with SMTP id a14mr33756744wrq.180.1585001693289;
        Mon, 23 Mar 2020 15:14:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls722570wmc.0.gmail; Mon, 23 Mar
 2020 15:14:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtatrLQP00bds9N+zhiNcfuFbuO4URF4UcZEGq3aRWHe0ONNBoCwmEfONuuYgjgSnnwJnuU
X-Received: by 2002:a1c:9ecb:: with SMTP id h194mr1704252wme.49.1585001692073;
        Mon, 23 Mar 2020 15:14:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585001692; cv=none;
        d=google.com; s=arc-20160816;
        b=UJe+/CDHEeQGTP9aIk1j4Za3m70ja2ijATbb10D6XGtIfxYcs1Q35dBRLMx5EA6K6X
         uZp4XDTxCNvfBqP3ej6CEG9OftteY3FLz7osH9HmgsiQUdQtWPTYGnfcrvMVSi8k48FF
         GRMjhH+w9fDWf0jVnCrVJQ353V1lT4mJlMJXXSdKRFNQSd1Thuu2hxmr0STatm0dfFFQ
         KhqmaRn/HzrKJxwUfBcvnxELG4FDbC9+BkGQdy2Ygu5B13SWBDP0FRJjAu8FeyrjbKpB
         USFN6gtqDklcrezsejyMBWV3Sy4952g+7KNeUb0+wZ7eLlkjE7/qZ88jXsn9n+jkaJAr
         ve+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=hpsJbFF4CHQL68fQJKPPzgFoiTLZx7Q3pJhGwvzmQj4=;
        b=wyOwFUAFIM4YaPTdVlt2dpdXZqfD8jrjBqVot9OWF/e/fxsXeE82JXi4FvSk02BelV
         2kuOG3Pz684y7XNn5z4dtX9AsYbR292qNz9BgwGqchela70CKUUbKyEnwJT0ePQ0i5BR
         PJe1NxoCdw6jG0ddk4xrvt0Xj3fTZJaAp2CYqVj3ntCm9EdVxsR2bnmPXRtFNQPdwlcQ
         LK26TQhFc+59uposliSBZ8C5+qUxrmiYfEUUD38uE8Qw5OPXUvbIN79Vdh5yMeqYECZC
         6srXu1zjP4/jFCCcCSImGDJ05mkHytLOWIv6/vJesVBzovuhSLF8vuTlfPFlDzdVzF0X
         xLeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a0c:e300::1])
        by gmr-mx.google.com with ESMTPS id f3si56425wmc.2.2020.03.23.15.14.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 15:14:52 -0700 (PDT)
Received-SPF: neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a0c:e300::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id B2F30E65E;
	Mon, 23 Mar 2020 23:14:51 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f9al7RmcjHrR; Mon, 23 Mar 2020 23:14:50 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr [86.234.239.11])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id F00C2E65D;
	Mon, 23 Mar 2020 23:14:49 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1jGVLN-005wHN-8k; Mon, 23 Mar 2020 23:14:49 +0100
Date: Mon, 23 Mar 2020 23:14:49 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/3] Staging: speakup: Add identifier name to function
 declaration arguments.
Message-ID: <20200323221449.evmqf7kasqde3nqg@function>
References: <cover.1584997290.git.jane.pnx9@gmail.com>
 <b2a1ca962553194840d8cd2bf1f7d3174e3b1336.1584997290.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b2a1ca962553194840d8cd2bf1f7d3174e3b1336.1584997290.git.jane.pnx9@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)

Sam Muhammed, le lun. 23 mars 2020 17:38:45 -0400, a ecrit:
> The void (*read_buff_add) argument didn't have an identifier name,
> adding an identifier name to match coding style.
> 
> Checkpatch.pl CHECK: function definition argument 'u_char'
> should also have an identifier name.
> 
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/staging/speakup/spk_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
> index a2fc72c29894..fc6a9416829c 100644
> --- a/drivers/staging/speakup/spk_types.h
> +++ b/drivers/staging/speakup/spk_types.h
> @@ -189,7 +189,7 @@ struct spk_synth {
>  	void (*flush)(struct spk_synth *synth);
>  	int (*is_alive)(struct spk_synth *synth);
>  	int (*synth_adjust)(struct st_var_header *var);
> -	void (*read_buff_add)(u_char);
> +	void (*read_buff_add)(u_char c);
>  	unsigned char (*get_index)(struct spk_synth *synth);
>  	struct synth_indexing indexing;
>  	int alive;
> ---
> 2.20.1
> 

