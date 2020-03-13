X-GM-THRID: 6803757345304215552
X-Received: by 2002:a63:9a42:: with SMTP id e2mr7500357pgo.297.1584123791383;
        Fri, 13 Mar 2020 11:23:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls4273010pfg.9.gmail; Fri, 13 Mar
 2020 11:23:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtEDviDCznXI82QiwGfI9EP8DOSyxsvY48kyJd3aUeBoIc0knF2jyg8+a+cxg1aVbfsjCSG
X-Received: by 2002:aa7:9aa9:: with SMTP id x9mr13399598pfi.320.1584123789821;
        Fri, 13 Mar 2020 11:23:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584123789; cv=none;
        d=google.com; s=arc-20160816;
        b=xPQXD9avbqj62e+fOHNrvCnU4cHj29ycxhv7AsxOayo4LonI12l/9/FD9u+vLVCiZg
         cggdGzJq9PPrGYo1DhhBKF66bQT8XodPuiORG9PTsThRBAfYYwl3bP8vkvrH9OhDRiiV
         ZSTlPmc0d/5DoQNfMGEBDTo/X2rrEYmcpfWvmbHi7PcSD+kDa+9vdFoPWqbfPBFcfPOU
         tkwIdJbhOZFIjwKbalEA0PEFuStuFZ7AH8+YUnWpy4+1IpS0DqAZINz6GIEQyVH7VCkW
         RdOdovjc+DOGdJS8yjMoM1CLPxoTV1QJ9MN89dnoBLe3OvKPKofi8d/za1Dm3kfxT6s1
         FGBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=j6EuK2Uvg2kpQ6FUT2FzKBkchhNljQAUCDdd9QWc5oM=;
        b=iU86G4anvixy/oQbDAf+taacKYkO+jKxupBlI9fBQ22nkFHirN6CJrojzSy2n5/oBE
         6KdhC7HcRVv0AqByBm36IJCaea+PuohN9i4tHFwdBFEnGmYDG6j5ZrIJWYD5I22WKCkS
         EJLnnsFSWP/mdtGCBPkOdHUU4foXdYxttHY+AMvsDGwRkP3lK4qTbFeArT3LH6m1On74
         AqjGDr9u18cOUBP0DmsxcgDNQbBTem4hCOlI/X+ocNt/4v2geWBPAo0HbEzrZcqM3oqF
         1UMbfPl44U2aAnkJY0pfKqVk1RhgQS1a5MdMVw0VrObt6igyGvuk62BajTer/+/a3WpA
         hUzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id x128si536359pgx.2.2020.03.13.11.23.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 11:23:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Received: by mail-qk1-f194.google.com with SMTP id e11so14139686qkg.9
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 11:23:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j6EuK2Uvg2kpQ6FUT2FzKBkchhNljQAUCDdd9QWc5oM=;
        b=hFwPwU7pGriVmTFsImB5sndLAU9WnGm47tAMdAP7JoMvsUTtiCfIPqB5qL1lj8+b4Y
         PTwWCmFDRvR6udpdPukeaoKpXKeHozJusPXKBSBBGoQMEl5vuC4ukNzIVkLFiJLc8P2t
         Zr+XaFscDB4XgF16GcRy/6H/Sz1zQ0GKhpXQwZyEdGF0xgeEAH5W1AhTzRGjTA+x3Zyz
         ErdNw0HgNeR4fBLjCySSHXef3W2IXMm037gOfdVo4h9cvreDmnIgzKn9Gidig8cao9YH
         p9cboOcptvi1Bk3AMZD9eLIKHzBSMwfYrp/q5iuGgSrKZcBhLNfJOv193XeTNpV5Wc/d
         liOw==
X-Gm-Message-State: ANhLgQ0+R0j0SlPtFa8/Y2wLuEa9L0/D1/NXW5Lp28WVkoJtbrVaw/8r
	NexZUzER6JVCm+Lslc+fvZU=
X-Received: by 2002:a37:b4c5:: with SMTP id d188mr14012329qkf.27.1584123788788;
        Fri, 13 Mar 2020 11:23:08 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from [172.16.0.63] ([177.103.155.130])
        by smtp.gmail.com with ESMTPSA id e2sm1009727qkg.63.2020.03.13.11.23.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 11:23:08 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH] media: staging/intel-ipu3: css:
 simplify expression
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com, mchehab@kernel.org,
 sakari.ailus@linux.intel.com
References: <20200313181305.GA20332@deeUbuntu>
From: Helen Koike <helen@koikeco.de>
Message-ID: <ca6bf858-feba-2298-c719-2da0131ff9a5@koikeco.de>
Date: Fri, 13 Mar 2020 15:21:28 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200313181305.GA20332@deeUbuntu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Deepak,

On 3/13/20 3:13 PM, Deepak R Varma wrote:
> An array index computed inside square brackets leading to complexity
> and code line exceeding 80 character. Add new variable to compute
> array index separately and use it as an index during assignment.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/media/ipu3/ipu3-css-params.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/ipu3/ipu3-css-params.c b/drivers/staging/media/ipu3/ipu3-css-params.c
> index 4533dacad4be..4b15e767bf32 100644
> --- a/drivers/staging/media/ipu3/ipu3-css-params.c
> +++ b/drivers/staging/media/ipu3/ipu3-css-params.c
> @@ -50,12 +50,13 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
>  	int exponent = imgu_css_scaler_get_exp(output_width, input_width);
>  	int mantissa = (1 << exponent) * output_width;
>  	unsigned int phase_step;
> +	int phase_taps = 0;

No need to initialized it to zero.

Also, it seems phase_taps can't be negative, so you can use unsigned int

>  
>  	if (input_width == output_width) {
>  		for (phase = 0; phase < IMGU_SCALER_PHASES; phase++) {
> +			phase_taps = phase * IMGU_SCALER_FILTER_TAPS;

You can also declare it here:
 +			unsigned int offset = phase * IMGU_SCALER_FILTER_TAPS;

>  			for (tap = 0; tap < taps; tap++) {
> -				coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap]
> -					= 0;
> +				coeff_lut[phase_taps + tap] = 0;
>  			}
>  		}
>  
> 

Regards
Helen

