X-GM-THRID: 7024064041486123008
X-Received: by 2002:ad4:4e49:: with SMTP id eb9mr11533402qvb.22.1635518872087;
        Fri, 29 Oct 2021 07:47:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:1a0c:: with SMTP id bk12ls3809501qkb.8.gmail; Fri,
 29 Oct 2021 07:47:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyGHomNRtR6Hy97OeECl0vPWDYhgcVEcqU8fomQkbPW17Q3kRmjtuO65MZylvGwFgZ1qddj
X-Received: by 2002:a05:620a:254c:: with SMTP id s12mr9351525qko.36.1635518871148;
        Fri, 29 Oct 2021 07:47:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635518871; cv=none;
        d=google.com; s=arc-20160816;
        b=Ubv4W1dAIPa9I4jpdQxK/1rxBBSm/6OV9WEX7D+gQ8g9YT4hDCJ5r6Awrj5ySfpZvz
         ZwWzttf8qVpwm7CvtemFoSaAlAIK86os3ne7mjwyU9Vex5Q4suBex0SxqyFvvjin+hmu
         COX5hiCjC7cD/2L3kRTC1iboPypHzX7mr3OLNaA9yupTEoeacnIvkQFcfVO71dG9nQqb
         2xjSBw0/0tMwTjSsd1N+WyUie2LS0Hv0NTQq9UAon7VhLYwnqH+QbptOmiWn9RXoHuru
         B24m2PkJm5q/cI4qPVvXWytNjWI7kFNd0d4CtXaNQ/RmYCWZib70LkuJN+IvQIriuBhb
         NvxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=hV6vofY7LVmgEKN79iTvz1KdYYvMLZvDW2AQ8HYXn/E=;
        b=QaM+gOMlk8mgIIo89h+eH/g58xXIJNTqbgmrt/ciBuGjhR2N723ramQtYtU6AmroTx
         wmFgyffHNGTdD+gC+hI/rOUoBqAlnh1GnJCFcls9R+vLBrnrrFiHnPpnMfEJlLoGzVVM
         Xxvubzzub6+E070c2EN1xKd2r03oELsONnRfaUGoGH1RJ/kYC/fOuhXC2FW3aXdvbUqE
         jqp8lun1irdIkg5ogasArVxlKKanzK9dBMAQtvVWtEu3TjhZ2kfld8goaWYJrbetwCIp
         xm3NCvx2E9nPuuD6bGocx6WhG9xa7RDDJq4RiPtGe96zj5sQ2f2KaoKBsLSXqQ11sj8f
         15qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=PchEGoqz;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id b125si782251qkf.0.2021.10.29.07.47.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Oct 2021 07:47:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=PchEGoqz;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id l13so1946027pls.3
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Oct 2021 07:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hV6vofY7LVmgEKN79iTvz1KdYYvMLZvDW2AQ8HYXn/E=;
        b=PchEGoqznLSapRib9ayECws6mKwf45wiAVWBNDkJ3CUb8tFnVGhuCvyAqoG3Y7wa+X
         oxUXyRklHvdyeUK1TiKYHaOuXmR/fG7PRLWCycEjQwL3bKyZI5TAnrnG1TvZDENcOVAR
         kOU65pb2p3EAVzHgR+s5jGWQLp524ixxd17ZXbRu1tRLWYCh0fthr+WyTb6cxOJqw42L
         O2/xwEzF2LqlzPxD+R3OKWdAlGNCSL3J0DPk0JsiGX4OfvXeEa7fs8Csw0Lszdgypvk3
         mTEsKi0ESFvBcTaG0v8Bk1Q1jiM1acSq44s4HxbkyAyVRiK798g3xcBcduWSv3+WGpNi
         /eHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hV6vofY7LVmgEKN79iTvz1KdYYvMLZvDW2AQ8HYXn/E=;
        b=QSuUXgTEx4aTeWT5qliwRWs5PG196EiUxFvS0P9FZsdVm3dF6X5DSxZXeLDNthmAz1
         xWPcCdSVOn0eoHfeiKErWrvgYWtqWXT2cimHy2mVdfMAm2nxbyp61QO2RMD+vjLOfHHf
         y4RudJoS14ZJlwzA2FsSGj4h8GaR/cM0sa58e5jBZf/w2KiBsMt0Sfmkg7mE7xSTI3cF
         gjiI33oAZlZh0UTFr5Rva5LN2NObsQO+p424C87CrsmSssCnsqHXewdfFLm95/qxrPO/
         j5W07T9uag9mR5HgN7+pGyElvMsy6eQIuTQm8Eow6pI+osq/EV2NMqrwdFEjQSXKX64x
         wJWw==
X-Gm-Message-State: AOAM531VCADfN2rgLgAFbVVetAduD7jurncKoCUQqTD92HdYYyRm2Pmb
	WjybleR01zZFS/hwaNd0jOM=
X-Received: by 2002:a17:902:e848:b0:13e:f908:155a with SMTP id t8-20020a170902e84800b0013ef908155amr10320481plg.13.1635518870777;
        Fri, 29 Oct 2021 07:47:50 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from ?IPV6:2405:201:d007:e827:3d78:7315:8c23:fdaf? ([2405:201:d007:e827:3d78:7315:8c23:fdaf])
        by smtp.gmail.com with ESMTPSA id k22sm7629195pfu.148.2021.10.29.07.47.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Oct 2021 07:47:50 -0700 (PDT)
Message-ID: <8cf5e5a4-675e-8c50-f234-018321dcb93a@gmail.com>
Date: Fri, 29 Oct 2021 20:17:45 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [Outreachy kernel] [PATCH 1/7] staging: vt6655: Introduce `idx`
 temporary variable
Content-Language: en-US
To: Karolina Drobnik <karolinadrobnik@gmail.com>,
 outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
 <34bd0e8f42597edf006a950d420345befc4e0bc2.1635415820.git.karolinadrobnik@gmail.com>
From: Praveen Kumar <kpraveen.lkml@gmail.com>
In-Reply-To: <34bd0e8f42597edf006a950d420345befc4e0bc2.1635415820.git.karolinadrobnik@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28-10-2021 16:05, Karolina Drobnik wrote:
> Add a local variable to store `MISCFIFO_SYNDATA_IDX` offset.
> This change helps in shortening the lines in `rf.c` that
> are deemed too long by checkpatch.pl.
> 
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index bc4abe77db7b..f195dafb6e63 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -681,6 +681,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
>  {
>  	void __iomem *iobase = priv->port_offset;
>  	int i;

Why not to make *i* as unsigned short and get rid of all the type conversions below ?

> +	unsigned short idx = MISCFIFO_SYNDATA_IDX;
>  	unsigned char init_count = 0;
>  	unsigned char sleep_count = 0;
>  
> @@ -699,11 +700,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
>  			return false;
>  
>  		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
> -			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_init_table[i]);
> +			MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_init_table[i]);
>  
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table0[channel - 1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table0[channel - 1]);
>  		i++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table1[channel - 1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table1[channel - 1]);
>  		break;
>  
>  		/* Need to check, PLLON need to be low for channel setting */
> @@ -716,17 +717,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
>  
>  		if (channel <= CB_MAX_CHANNEL_24G) {
>  			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
> -				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table[i]);
> +				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table[i]);
>  		} else {
>  			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
> -				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table_a_mode[i]);
> +				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table_a_mode[i]);
>  		}
>  
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table0[channel - 1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table0[channel - 1]);
>  		i++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table1[channel - 1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table1[channel - 1]);
>  		i++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table2[channel - 1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table2[channel - 1]);
>  		break;
>  
>  	case RF_NOTHING:
> 

Regards,

~Praveen.

