X-GM-THRID: 6803757345304215552
X-Received: by 2002:a17:90a:d997:: with SMTP id d23mr2336411pjv.187.1584408615237;
        Mon, 16 Mar 2020 18:30:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls9744608pff.0.gmail; Mon, 16 Mar
 2020 18:30:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtSoNVjubss2a6v9e7yVNoVq887EXSyFVU+2ePHfkWMgtrVSqVvveIp//cpYFlSXlJ5MApd
X-Received: by 2002:aa7:9888:: with SMTP id r8mr2518628pfl.293.1584408613145;
        Mon, 16 Mar 2020 18:30:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584408613; cv=none;
        d=google.com; s=arc-20160816;
        b=QMhhqYCNoKnmS+wwe7hcWqB+na/gc3LDKBH2sxWge4S/G0iIZncdDEYUe0Xd2roCBb
         hT3EwCYVoOGRl/DP0SKrTNy/VEJ/mWgkUnxiZz5KOZHdrsEpVEWACcOOs1gEePZluhDa
         Cq2YW86GdBY+2FlX+AinGIk91T7h5VbnSqRcGozt4/60ZypkDgVgmIK0c+RaZZkvHOiR
         Z/zafOB0PKcvp8NsLsCXhWgUehOTGIPPZwVFr7XfGwUSXS/NRAb7YEc3nQA2Nq4Hc2Ix
         S7OLDEaqbSkpV1WCSFicvlVB/6KOx7ykCBiiEo/SOcHnjUMmLHOSG4Tvnclksgq4g857
         ELUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=v+j5+E6R9obgLcgfbIY2evcFGEIa3DBuxZ4WKFszDqg=;
        b=dCkuaR092YFo88wb/6KHrPKKlvmVDCTnL3jfD1/Fmzxbzox7bperCdDP2Reb1rYP+d
         fqb7ceSPuPxbpwzvdBzUSPurFOcCthoimHjfvtSiwJnTNvsV8NXtuMgLD+7TzbrdUudT
         0ZxxXYHSw0y+XTjEkcnZEVUWfFkblY8kNTvtbpEMAc4GiAvABGFjQmK9/ruDtJi2YRip
         jUzrkg16muKdYAPhSeSIjnpAvHf1Z6NrNPSC/jZBZELRwckSeiaDihJRG7ktUQZsGrFm
         dYdoiE8x8cpYWkcwz4/8VgsoKGK7TqDtBbGKdsO1cfgWamaxIW9I8mhOFmK0cBzhbbH5
         H6zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Bj6A9RlT;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id k3si99913plt.1.2020.03.16.18.30.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 18:30:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Bj6A9RlT;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584408612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v+j5+E6R9obgLcgfbIY2evcFGEIa3DBuxZ4WKFszDqg=;
	b=Bj6A9RlTni8AiU4AUPpobiBwGVjgWmYxPDCUakyYNXUPBWQ79nNOed286piZsrtUx2kVsv
	ylzUX1ItZSE0EVDHt6+eBFmaWwUxn9XrjchDcj9OkMPJycqGr7EPWK4ie1dCyxziXkBjcj
	nlbBMYeiiwwNiLXN01tB55imuxCFVQY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-CKjLUnH-MkiuJlez11N1Gg-1; Mon, 16 Mar 2020 21:30:08 -0400
X-MC-Unique: CKjLUnH-MkiuJlez11N1Gg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C2C61007268;
	Tue, 17 Mar 2020 01:30:06 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CFD8E8F374;
	Tue, 17 Mar 2020 01:30:02 +0000 (UTC)
Date: Tue, 17 Mar 2020 02:29:56 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
 sakari.ailus@linux.intel.com, mchehab@kernel.org
Subject: Re: [Outreachy kernel] [PATCHi v3] media: staging/intel-ipu3: css:
 simplify expression
Message-ID: <20200317022956.1982719d@elisabeth>
In-Reply-To: <20200313222811.GA31838@deeUbuntu>
References: <20200313222811.GA31838@deeUbuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Subject has an extra 'i' after PATCH (this might actually confuse some
systems for processing patches). Two comments:

On Sat, 14 Mar 2020 03:58:15 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> An array index computed inside square brackets complicates the code
> and also extends the line beyond 80 character. Add new variable to
> compute array index separately and use it as an index during assignment.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes since v2:
>   - Added feedback from Julia
>         1. Rephrase patch description to make it concise and simpler.
> Changes since v1:
>   - Added feedback from Helen
>         1. Updated variable type to "unsigned int" from earlier "int"
>         2. Implemented the change in another area in same scope
>         3. Left newly added variable uninitialised. 
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

I'm not sure if checkpatch reports this (I haven't tried), but now you
can remove the curly brackets.

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

For consistency with the input_width == output_width case, I would
instead keep phase_taps as phase * IMGU_SCALER_FILTER_TAPS (otherwise
the same variable has two rather different meanings), and, here, assign
it in the outer loop.

-- 
Stefano


