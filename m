X-GM-THRID: 6805922771293437952
X-Received: by 2002:aca:bd0b:: with SMTP id n11mr2446060oif.90.1584628193329;
        Thu, 19 Mar 2020 07:29:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls1067362otb.7.gmail; Thu, 19 Mar
 2020 07:29:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsT7VRkuxs2Ydy/EcjInwk8A+1vxudRxQ4DIWNmLc5mVvWoqwOFcIgTbm1Zb2JU8njUf7Fc
X-Received: by 2002:a9d:2c64:: with SMTP id f91mr2635364otb.17.1584628192113;
        Thu, 19 Mar 2020 07:29:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584628192; cv=none;
        d=google.com; s=arc-20160816;
        b=R62EaWykd6DzXEFyYOyPvcAkRteLRz9ASQAiAgahrkABF0f2/+TyDNxYmeW7E35HmU
         gVNdpv1LFUrzez/yKFxjO4qEGuZZkmfQkQOBhPSvL3MpqdlsKGcUY3XlnSBNu/GZWDRA
         X5DCfMkpLwGrFyyQatzRlyf7SWD8u9RHwr/WiSYDrWC/XuzPOGydoXB6V8SabdwbI8jY
         iISu8yTGp1l1dm29NEzSKOF/KN9A8Qg+izvflSlMAGxTKOoVgPAz3JbBT4PstPOreUUc
         Wie0NW9Ljz9LH+Kktm/1cRm04zcdcmkeei45b/WnrZgz0OI9kUbcjL7zXAzR/bFo46ha
         W2rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xudLwq3EDxpndDsZipTKlCVzK8QR1EPwI5f5nA7fx6k=;
        b=OA7tkstSm5PL+9a0Na9OFZQkL7eO9I3Z22rNi3zrslXef++AbYPSMw3CDfIYj9cfaS
         sTjne5tnTj+11oVkHj3Av620s6J59VOJColPPrR5p/EzhmfrkdrdlJlEx7LEoDJhJmNy
         YQrg2ixKBnXIni60vqabSUJJiURcSZfVPkOIln79R7HwCycPWcdStC53ZLGXOgSMBA0b
         HLMIud5jETRrkTS9IWFIuhsO5vHsPRhgICkGfp3Z5AXAs821dWBh0HWc3aw6B+GS/CS/
         bhgHHIq5U8mmWmhFDA2BvSpc2p8ltovPA4hOsSVBW1TaNVI4mNLuuZyGhCBSww1CUYWO
         6WWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DjC2dtIE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j10si91748otj.0.2020.03.19.07.29.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 07:29:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DjC2dtIE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9B45720663;
	Thu, 19 Mar 2020 14:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584628191;
	bh=nhCR6KhpP4poZ46Sg9aXFRRR4UcPYH9lfEqXnLGa2Bo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DjC2dtIE1ZeavZB8nmhMCxpDsAQqT5VwGWxAfu/8E5gOeC9Ql8WX/fEUe2PJJkUC2
	 fyPupeWdGkoQBA8efJnHCZeUlBGZUIhElwXXghkldlpiexfWzTBkjsU1/JCXIL9KXE
	 +u6PUVSalv0uV952WaftZsu3s4UTAQEME2a6POC8=
Date: Thu, 19 Mar 2020 15:29:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm750fb: rearrange line exceeding 80 characters
Message-ID: <20200319142948.GB51437@kroah.com>
References: <20200319141612.GA11981@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319141612.GA11981@siyah2>

On Thu, Mar 19, 2020 at 05:16:12PM +0300, Gokce Kuler wrote:
> Moved to the bottom line after << operator for it exceeds 80 character
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_cursor.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
> index bbbef27..b67c545 100644
> --- a/drivers/staging/sm750fb/sm750_cursor.c
> +++ b/drivers/staging/sm750fb/sm750_cursor.c
> @@ -116,7 +116,8 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
>  					opr = mask & color;
>  
>  				/* 2 stands for forecolor and 1 for backcolor */
> -				data |= ((opr & (0x80 >> j)) ? 2 : 1) << (j * 2);
> +				data |= ((opr & (0x80 >> j)) ? 2 : 1) <<
> +				       	(j * 2);

The original code is much easier to understand and read, please leave it
as-is.

Remember, checkpatch is just a hint, not always a hard-rule.

thanks,

greg k-h

