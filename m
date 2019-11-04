X-GM-THRID: 6755493300686290944
X-Received: by 2002:a63:ec03:: with SMTP id j3mr31666847pgh.212.1572886312629;
        Mon, 04 Nov 2019 08:51:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3d8a:: with SMTP id k132ls1823178pga.5.gmail; Mon, 04
 Nov 2019 08:51:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqyHyLe0BdyPpmc2aCiPvJ+GL9+IXdqvPEngUM6O+hqgJNhR1DdovQJETgxSJRWl6l0GdgkI
X-Received: by 2002:a65:63cf:: with SMTP id n15mr6233135pgv.314.1572886311257;
        Mon, 04 Nov 2019 08:51:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572886311; cv=none;
        d=google.com; s=arc-20160816;
        b=BRqpJYxeVNaAVx5pSMoJ9YuooHVTY/vvJk4EDlpxg8mVlz/mUq6pQWkBfEX/Uc6Dlg
         Y8gSOp5tBl2jOCWNTopEJTmKBz9cA8HjZ3UGXvSLlSrYMAbhQ+5NMP9vRzYrDF4mTde+
         4klmdswqnNqJcA1ZQ08L4+ROEXXFxRmM8wyRt/XpR61wvfrzyQaiFSIgIpd70jyqWmVT
         W481/ES5mgQ0Fsyf5lFZIKqBENprj15bwvfiGGb2zVm7ILLpL7WMTCfqTmQPGonSeWCk
         oiMTKn+lbNNdSqteE28F6RQsigkTwBYSRPz65Wp8S/eXmAkFCitVvRcmplaM37jYlXfV
         OtRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=P+uCt8G6c3ep7nUcZOmjJ7BXVIxTh0wJiGb2Gr2AAk0=;
        b=o0/ZrZvD18Z+RkVo61mLg+o6b/fWjQMJMZY2UiT221LMfKcKvwFbOg26PoxINVklvN
         cJgTCs1v4Yn8Zc979uzeHZYtF/BbqnzbXnXYXXy2t+ArGQapsO36aKSJkKeHq/D9q5Qe
         F98YINpEWNbgO9bWhzHIkAWFQYfdIzy8zrfiG+D/LRIa8wxaskX/YIQCwr/kJuv54LGh
         yyjkzoVr5lGN+dPeIe/JpTlvLUGEb5fRxqy1Mt4qyJGFXY9Olcc4v01BQ4e6D5FvcB6W
         T4y49jiUphk8r7laJvlVxDaXpskYiQdeP/CfMEPZZO0puQW6DTYCx2UZQ9d2fUdnsZ4s
         tT1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qVUFC0x9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t71si847037pjb.2.2019.11.04.08.51.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 08:51:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qVUFC0x9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (host6-102.lan-isdn.imaginet.fr [195.68.6.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 61A772080F;
	Mon,  4 Nov 2019 16:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572886311;
	bh=ZmHGadF8VrETaBFi+B+Z6MDGAsQZ0t9Gj/4iezFDasU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qVUFC0x9QvBB6c7Za3K5mBIEw+ZH7xtUz3kovv0i72+I9G4zU3GDixfLyhghR7VJQ
	 wQYkEojIK2stVJQFPjsEd5u6xAzGlGRwlUI3tVpbK0SpOcXjDEPsSHHCYY9QmCTNid
	 Wi5VJnwkLplkT55ISaydRIrptKkjA0RgWMVbTvwA=
Date: Mon, 4 Nov 2019 17:51:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rts5208: rewrite macro with GNU extension
 __auto_type
Message-ID: <20191104165148.GA2293059@kroah.com>
References: <20191104164400.9935-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191104164400.9935-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Nov 04, 2019 at 04:44:00PM +0000, Jules Irenge wrote:
> Rewrite macro function with GNU extension __auto_type
> to remove issue detected by checkpatch tool.
> CHECK: MACRO argument reuse - possible side-effects?
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_chip.h | 92 +++++++++++++++++------------
>  1 file changed, 55 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
> index bac65784d4a1..4b986d5c68da 100644
> --- a/drivers/staging/rts5208/rtsx_chip.h
> +++ b/drivers/staging/rts5208/rtsx_chip.h
> @@ -386,23 +386,31 @@ struct zone_entry {
>  
>  /* SD card */
>  #define CHK_SD(sd_card)			(((sd_card)->sd_type & 0xFF) == TYPE_SD)
> -#define CHK_SD_HS(sd_card)		(CHK_SD(sd_card) && \
> -					 ((sd_card)->sd_type & SD_HS))
> -#define CHK_SD_SDR50(sd_card)		(CHK_SD(sd_card) && \
> -					 ((sd_card)->sd_type & SD_SDR50))
> -#define CHK_SD_DDR50(sd_card)		(CHK_SD(sd_card) && \
> -					 ((sd_card)->sd_type & SD_DDR50))
> -#define CHK_SD_SDR104(sd_card)		(CHK_SD(sd_card) && \
> -					 ((sd_card)->sd_type & SD_SDR104))
> -#define CHK_SD_HCXC(sd_card)		(CHK_SD(sd_card) && \
> -					 ((sd_card)->sd_type & SD_HCXC))
> -#define CHK_SD_HC(sd_card)		(CHK_SD_HCXC(sd_card) && \
> -					 ((sd_card)->capacity <= 0x4000000))
> -#define CHK_SD_XC(sd_card)		(CHK_SD_HCXC(sd_card) && \
> -					 ((sd_card)->capacity > 0x4000000))
> -#define CHK_SD30_SPEED(sd_card)		(CHK_SD_SDR50(sd_card) || \
> -					 CHK_SD_DDR50(sd_card) || \
> -					 CHK_SD_SDR104(sd_card))
> +#define CHK_SD_HS(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> +					 (_sd->sd_type & SD_HS); })
> +#define CHK_SD_SDR50(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> +					 (_sd->sd_type & SD_SDR50); })
> +#define CHK_SD_DDR50(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> +					 (_sd->sd_type & SD_DDR50); })
> +#define CHK_SD_SDR104(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> +					 (_sd->sd_type & SD_SDR104); })
> +#define CHK_SD_HCXC(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> +					 (_sd->sd_type & SD_HCXC); })
> +#define CHK_SD_HC(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
> +					(_sd->capacity <= 0x4000000); })
> +#define CHK_SD_XC(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
> +					 (_sd->capacity > 0x4000000); })
> +#define CHK_SD30_SPEED(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD_SDR50(_sd) || \
> +					CHK_SD_DDR50(_sd) || \
> +					CHK_SD_SDR104(_sd); })
>  
>  #define SET_SD(sd_card)			((sd_card)->sd_type = TYPE_SD)
>  #define SET_SD_HS(sd_card)		((sd_card)->sd_type |= SD_HS)
> @@ -420,18 +428,24 @@ struct zone_entry {
>  /* MMC card */
>  #define CHK_MMC(sd_card)		(((sd_card)->sd_type & 0xFF) == \
>  					 TYPE_MMC)
> -#define CHK_MMC_26M(sd_card)		(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_26M))
> -#define CHK_MMC_52M(sd_card)		(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_52M))
> -#define CHK_MMC_4BIT(sd_card)		(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_4BIT))
> -#define CHK_MMC_8BIT(sd_card)		(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_8BIT))
> -#define CHK_MMC_SECTOR_MODE(sd_card)	(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_SECTOR_MODE))
> -#define CHK_MMC_DDR52(sd_card)		(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_DDR52))
> +#define CHK_MMC_26M(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
> +					 (_sd->sd_type & MMC_26M); })

Ick, no.  These are obviously pointers, which can not be "evaluated
twice" so this whole thing is just fine.

checkpatch is just a "hint" that you might want to look at the code.
This stuff is just fine, look at how it is being used for proof of that.

thanks,

greg k-h

