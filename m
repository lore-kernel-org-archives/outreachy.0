X-GM-THRID: 6395630061335085056
X-Received: by 10.13.242.67 with SMTP id b64mr6448197ywf.78.1489102183505;
        Thu, 09 Mar 2017 15:29:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.50.212 with SMTP id y203ls2124891ioy.7.gmail; Thu, 09 Mar
 2017 15:29:42 -0800 (PST)
X-Received: by 10.99.98.131 with SMTP id w125mr6396757pgb.60.1489102182732;
        Thu, 09 Mar 2017 15:29:42 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si1492430pfb.5.2017.03.09.15.29.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 15:29:42 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so8743414pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 15:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xgEtPpscudhzJBVhpteKVcFlXpoI6ctRS6lhkKX6TEg=;
        b=rV515dobUUDE+Z7HQf9y3sFXWL63BHlaMlTCrpdQXaJvsDL5Vp0JmeytfJDB3KXuoP
         HQr4rl2iFMF1Cx3obYAcYfjqJZhuNP1TQ+yQEuSmvRq/NHOjosvcgqMASXpqI4385+QU
         Lbua0OLGrEevzeMi/WfGyR3sR4mrrinwWutnXxqKcetiz0wuhwbXHKd+l/DZXKnNBqV3
         vxcu7+kjJb0CacsnZUbkFrvIpiKu9ZOxPRbLuJkAJR7hgrUhrr1EwIsNseo6JAKzLEog
         Jf0FHVyH/Q4aaWY1ejHKxjSlBofi0fWSnDa2IxyPEZm46aX/7IIgbyKx/i88baagSbAv
         d7Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xgEtPpscudhzJBVhpteKVcFlXpoI6ctRS6lhkKX6TEg=;
        b=RrQzS/m39Wy3S+zqz6cD3X9I7YgFXlGzDuZwd2j3l/+gCyExmwWKFdfQ3GYE3pPaJo
         9vWNY7/o/35Fvl0py1zqAorrJ5BJdJRrosN9U0TpICxlcRg5+odVk14Ou2T9rK8PIMVU
         +ZROdv99VL1QbRKvghSlaXiMCQ+PWMGyZmL+CPM1FiwqNiH6NFUaJ26TNzhvHN2Pi2BI
         FdFECZgMMkJnT9kOamOPiC0dnaWa/ZbsVlr7a2cdkQwHTuwfNprEZHUTkZWvKlP5DFEJ
         IIucMSPKGlOfj61BX0U+UctWGhqnUg4+S6Iv5mgywPoT5BJI9OU0nXEXcbgss1GpKegL
         a8Tg==
X-Gm-Message-State: AMke39m323hykJMd2fXvCO05FIwBP+hjFOSbT/j6BGz2Mx9gqm18KMM1gOEcgAsCNhAgqA==
X-Received: by 10.99.170.5 with SMTP id e5mr16729206pgf.89.1489102182529;
        Thu, 09 Mar 2017 15:29:42 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id l19sm14621157pgo.13.2017.03.09.15.29.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 15:29:41 -0800 (PST)
Date: Thu, 9 Mar 2017 15:29:40 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>, julia.lawall@lip6.fr
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: wilc1000: Enhance code
 formatting
Message-ID: <20170309232939.GB16746@d830.WORKGROUP>
References: <20170309223059.7353-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170309223059.7353-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 10, 2017 at 12:30:59AM +0200, Tamara Diaconita wrote:
> This trims line size at 80 characters and makes code easier to read.
> 
> Problem found with checkpatch.pl.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index a2df5c7..00bb604 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -123,7 +123,8 @@ struct disconnect_info {
>  s32 wilc_parse_network_info(u8 *msg_buffer,
>  			    struct network_info **ret_network_info);
>  s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
> -			       struct connect_resp_info **ret_connect_resp_info);
> +			       struct connect_resp_info
> +			       **ret_connect_resp_info);

Tamara,

Here I might take the checkpath CHECK on alignment, rather than split 
the structure..  

That is, do this:

s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
                              struct connect_resp_info **ret_connect_resp_info);

and live with this:

CHECK: Alignment should match open parenthesis
#126: FILE: coreconfigurator.h:126:
+s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
+			      struct connect_resp_info **ret_connect_resp_info);

It still looks better than the line over 80.

Let's ask Julia???

alisons


>  void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
>  				 u32 length);
>  void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170309223059.7353-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

