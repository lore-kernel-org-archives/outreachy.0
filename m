X-GM-THRID: 7024064041486123008
X-Received: by 2002:a25:6c89:: with SMTP id h131mr12074185ybc.0.1635519389560;
        Fri, 29 Oct 2021 07:56:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1805:: with SMTP id 5ls4743847yby.0.gmail; Fri, 29 Oct
 2021 07:56:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJypPk+iQTY4JrWjrUI9Bn+0TE8UQI3+w34XblF6i/DK/Bs3ykclicvc4m8sW01VoRY8KoCr
X-Received: by 2002:a25:3108:: with SMTP id x8mr8945119ybx.497.1635519388421;
        Fri, 29 Oct 2021 07:56:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635519388; cv=none;
        d=google.com; s=arc-20160816;
        b=oT3Wgi9FY5IBekKXjwRk2MSTBI/QlgB4Ncyk9Xx9X+7QLOrNP32C/Ts7VLapNLUXrK
         RoLyzS2uw1CdbIXCPDtb3C5gkhz+Trh5DtIEYQ9IqTvYY3vM9LHSvfCFyDSQ1tw6iUsz
         cvZ/y/VpN0RqEGzl9gdipTnqNXBbmExqjj/MWB+NMJxlyqTFO8QR/mwYDHyCHyXQQlMp
         CM6xUu8SEPcNIjYwYKSClpojk2ioo/aFT7rr/D3o9+VvkiZwdmloEoNW53UKToJPbw9w
         S5pdxqUJjneROMBUN4aRjIcA3KRCbTPSSjX8FLU3uo0kglOzoHtpYhZktWqJrJNya28A
         yQRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=Psdok0lolc/DRk6gfEZkpmxNT4+m/VOYNLeCH1dS5Kw=;
        b=XkYy9qPgP/wXqks1arU3FBtfTXPHlRnDpiCxXTQpPY1tWmNzXZW15z62UN4w+k6t7U
         On3ta6fFC7pJBXxaU+rx9umUY++a59rvbDkZN0qoP8g+4fOFO5Nt0GPupRsGeg0koqg0
         aNTrMnf0XS4RmqOp31SaDI4ffl0sWaIVERVYL2cLB2rfkbvJVmFPXfOiMTSPvSq0SgxZ
         EGRp3LzjvElqV2XTYvDsDNvzIqrSN21VI6LRG5eu7w+KQGUP3Ush7dztRq9EatQFHjKk
         KRRIel0vROvAuD20QB2WcaY/ew+RNXpO8EHGmBGEKVIWEjROd2TAQxH6yXeuPRR8rJiI
         n9uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=c88mFZGR;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id o13si539356ybu.3.2021.10.29.07.56.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Oct 2021 07:56:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=c88mFZGR;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102d.google.com with SMTP id n36-20020a17090a5aa700b0019fa884ab85so10766914pji.5
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Oct 2021 07:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Psdok0lolc/DRk6gfEZkpmxNT4+m/VOYNLeCH1dS5Kw=;
        b=c88mFZGRY94DlJQosTNHHqjAM1zsfGZjFnJpNLRb9jvir3ir+OsuQ93qUFRiVZ5w+9
         CD796z/24q/IZg+sWZjvP4DpkNAuePSXi3T9a0Sqcjo0kzOuxXXvFt0KFZSSf1EvAkRy
         xl1LASVrzVLZReVmf2Few2Z3u2t9igt7q+sflgo734CGMnuuNiWhnyz3ZbSm0pkHTExl
         PILHvtrgyzvMYLr2EYCecdnNjLN946sFlahG/KODZOKlMh5KIDggHVSW1ogSlR7RFO8I
         AKbQjROVoBiBgYrt70Sy6gxsWGjho2R44tMNw44vA1OzBOeEE0wiPIzXALmPNfWUkWfr
         VL4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Psdok0lolc/DRk6gfEZkpmxNT4+m/VOYNLeCH1dS5Kw=;
        b=XOumoa0A12fYmTUSadH+A/UVCRiNCy3dQzohWIEKcZG+PnwBBec5rcmFkW76BmfdE5
         m80XsscfVJyPKiZo0xng0Bcm1BH2GHgCYj93CDw1v4ukFkO7wwaJNHRZ0Ts39BJIAGw1
         uXWnjOXVDHIFIGc9NDAUWBGqql0lEBpTDIldSaVJFweLYvpyk3HbjLkZcSVuTb5qV+ZK
         sboPBiSOnty46Tod9V5RZpQQH9AzCwYUM+CoSUAUW/pEyrMWmiGD8NbEOyz1CTXoA4q9
         c5r812VEPdYESuWn/5F1L4F185bVLBmqZYYXe30/6k57AHvGwiJHZxhwXayx/o3FEZ9c
         Kglw==
X-Gm-Message-State: AOAM531zS72F53zGr6KPZhZ/nYQAFSTP1UzWzCaulKxyinWWWPAfzK7/
	vD1d37d3DenhjUq6Uh/lNfs=
X-Received: by 2002:a17:902:e806:b0:141:5df8:c535 with SMTP id u6-20020a170902e80600b001415df8c535mr10263327plg.9.1635519387911;
        Fri, 29 Oct 2021 07:56:27 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from ?IPV6:2405:201:d007:e827:3d78:7315:8c23:fdaf? ([2405:201:d007:e827:3d78:7315:8c23:fdaf])
        by smtp.gmail.com with ESMTPSA id v8sm6462465pjd.7.2021.10.29.07.56.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Oct 2021 07:56:27 -0700 (PDT)
Message-ID: <3dfc45e5-12bc-72da-a260-5551a483fe6e@gmail.com>
Date: Fri, 29 Oct 2021 20:26:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: vt6655: Use
 incrementation in `idx`
Content-Language: en-US
To: Karolina Drobnik <karolinadrobnik@gmail.com>,
 outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
 <c569952d92ba51f32679c2fd87fd48ad8e49e3fc.1635415820.git.karolinadrobnik@gmail.com>
From: Praveen Kumar <kpraveen.lkml@gmail.com>
In-Reply-To: <c569952d92ba51f32679c2fd87fd48ad8e49e3fc.1635415820.git.karolinadrobnik@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28-10-2021 16:05, Karolina Drobnik wrote:
> Increment `idx` in a loop instead of adding the loop counter
> `i` to do so. Thanks to this change, the cast to unsigned short
> can be removed.

> 
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index f195dafb6e63..c07653566d17 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -700,11 +700,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
>  			return false;
>  
>  		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
> -			MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_init_table[i]);
> +			MACvSetMISCFifo(priv, idx++, al2230_init_table[i]);
>  
> -		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table0[channel - 1]);
> +		MACvSetMISCFifo(priv, idx++, al2230_channel_table0[channel - 1]);
>  		i++;
> -		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table1[channel - 1]);
> +		MACvSetMISCFifo(priv, idx++, al2230_channel_table1[channel - 1]);
>  		break;
>  
>  		/* Need to check, PLLON need to be low for channel setting */
> @@ -717,17 +717,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
>  
>  		if (channel <= CB_MAX_CHANNEL_24G) {
>  			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
> -				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table[i]);
> +				MACvSetMISCFifo(priv, idx++, al7230_init_table[i]);

If I'm not wrong, there is a problem here, we are using the modified idx value here, instead of original which is *MISCFIFO_SYNDATA_IDX*.
I don't see idx value being reset either. Am I missing something ?

Further, this bring a question, how are you validating or planning to validate these changes ?

>  		} else {
>  			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
> -				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table_a_mode[i]);
> +				MACvSetMISCFifo(priv, idx++, al7230_init_table_a_mode[i]);
>  		}
>  
> -		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table0[channel - 1]);
> +		MACvSetMISCFifo(priv, idx++, al7230_channel_table0[channel - 1]);
>  		i++;
> -		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table1[channel - 1]);
> +		MACvSetMISCFifo(priv, idx++, al7230_channel_table1[channel - 1]);
>  		i++;
> -		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table2[channel - 1]);
> +		MACvSetMISCFifo(priv, idx++, al7230_channel_table2[channel - 1]);
>  		break;
>  
>  	case RF_NOTHING:
> 

Regards,

~Praveen.

