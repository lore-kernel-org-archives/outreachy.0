X-GM-THRID: 6803757345304215552
X-Received: by 2002:a2e:1653:: with SMTP id 19mr10026011ljw.112.1584137352295;
        Fri, 13 Mar 2020 15:09:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b5d9:: with SMTP id g25ls2165699ljn.9.gmail; Fri, 13 Mar
 2020 15:09:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvnjxNgtXsKbsGQ76nAi7VKiH/d66I1faQ1jeoQiAl8VKnngdX9xS62s3+gAZAymE2tFkB7
X-Received: by 2002:a2e:6819:: with SMTP id c25mr9579288lja.16.1584137350457;
        Fri, 13 Mar 2020 15:09:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584137350; cv=none;
        d=google.com; s=arc-20160816;
        b=m2ZBVT/CDkJ7zAvLK9pc2nW/8akppvBgmDws20MuxK5+bYPWg4/TbReyq4kraZEVm3
         ckCTrl+UJGD9WCUJV1sFxYjDWqe/ZvAHxeIXRuX7CKedMsiN6+wOWieG01TK6w+WydM+
         9Ta8UZ5SzrTLr47Kv9h2jy/xFTTL6+JihovxZxBiXHZRzfRnxUlyyimeLqr3PY936atY
         BCe7tjsEIstMgheH0NE6OldlhbkX9gJhoVr4S+ZzXcO0/vUt4uPsvfs1rN4PNH+KfDR0
         o989V67l+yCx9CqXDSa0PE7AAxgE3HbsJd45dBjRTh4pjbng/FE8zQnjJWJ1Vhnd4dza
         2LNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/1XuBV6vIoVH3XKGqr6UnAXYgGyHxCbJuTkXN4zRp6U=;
        b=mVU+jgfZ+y0KyYTF+5CmD1h4NNh49HBMjihSsewDp63UUibkchwePYgVfvC+7oXHKJ
         Ob9M3NoWP/KbLfnrjVMUCNyFpXkTUCSj+7ZGPcIaxcZJ6FhCSxEsQdCyk+mnYZuwfLgD
         XnPIjCuXpNe3CIpQH30JcOl2B/arQ7u9E/gsyskGBKNkFt8lE94Uv2v5nGF7v9F5w+c2
         UJxtQVFxnfNbH3vETleUJzflilO2QDesm67joWWnZsjSgTiMqKrR7EhYNfrVmhmtEKp8
         6ioOMPJnWP5Qe9u88ge5DoO6yaZzcKxje+NSyV1wCFoALKAMB6Y9ksKj84PBXudSG+Ql
         MwmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p14si569642lfo.0.2020.03.13.15.09.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 15:09:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,550,1574118000"; 
   d="scan'208";a="342330613"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2020 23:09:09 +0100
Date: Fri, 13 Mar 2020 23:09:08 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, sakari.ailus@linux.intel.com, 
    mchehab@kernel.org, gregkh@linuxfoundation.org, daniel.baluta@gmail.com, 
    kieran.bingham@ideasonboard.com
Subject: Re: [Outreachy kernel] [PATCH v2] media: staging/intel-ipu3: css:
 simplify expression
In-Reply-To: <20200313213755.GA5213@deeUbuntu>
Message-ID: <alpine.DEB.2.21.2003132308340.2355@hadrien>
References: <20200313213755.GA5213@deeUbuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Mar 2020, Deepak R Varma wrote:

> An array index computed inside square brackets leading to complexity
> and code line exceeding 80 character.

This needs a verb.  "leading to complexity" is not precise enough to be
useful.

julia

> Add new variable to compute
> array index separately and use it as an index during assignment.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes since v1:
>   - Added feedback from Helen
> 	1. Updated variable type to "unsigned int" from earlier "int"
> 	2. Implemented the change in another area in same scope
> 	3. Left newly added variable unintialised.
>
>
>  drivers/staging/media/ipu3/ipu3-css-params.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/media/ipu3/ipu3-css-params.c b/drivers/staging/media/ipu3/ipu3-css-params.c
> index 4533dacad4be..5622319b69ff 100644
> --- a/drivers/staging/media/ipu3/ipu3-css-params.c
> +++ b/drivers/staging/media/ipu3/ipu3-css-params.c
> @@ -49,13 +49,13 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
>  	int tap, phase, phase_sum_left, phase_sum_right;
>  	int exponent = imgu_css_scaler_get_exp(output_width, input_width);
>  	int mantissa = (1 << exponent) * output_width;
> -	unsigned int phase_step;
> +	unsigned int phase_step, phase_taps;
>
>  	if (input_width == output_width) {
>  		for (phase = 0; phase < IMGU_SCALER_PHASES; phase++) {
> +			phase_taps = phase * IMGU_SCALER_FILTER_TAPS;
>  			for (tap = 0; tap < taps; tap++) {
> -				coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap]
> -					= 0;
> +				coeff_lut[phase_taps + tap] = 0;
>  			}
>  		}
>
> @@ -82,8 +82,8 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
>  			coeff += 1 << (IMGU_SCALER_COEFF_BITS - 1);
>  			coeff >>= IMGU_SCALER_COEFF_BITS;
>
> -			coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap] =
> -				coeff;
> +			phase_taps = phase * IMGU_SCALER_FILTER_TAPS + tap;
> +			coeff_lut[phase_taps] = coeff;
>  		}
>  	}
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200313213755.GA5213%40deeUbuntu.
>

