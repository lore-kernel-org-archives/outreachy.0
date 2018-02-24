X-GM-THRID: 6526221446486687744
X-Received: by 10.80.215.210 with SMTP id m18mr1732549edj.0.1519504519494;
        Sat, 24 Feb 2018 12:35:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.205.208 with SMTP id h16ls4715411edj.5.gmail; Sat, 24 Feb
 2018 12:35:17 -0800 (PST)
X-Google-Smtp-Source: AH8x225p6ChMYogtpAr+XI8IgMDy68gk+aY//gXsc89eQrfpUz7qevR4CDF2XRPObQmGZ5ZokrLJ
X-Received: by 10.80.202.11 with SMTP id d11mr1729710edi.9.1519504517592;
        Sat, 24 Feb 2018 12:35:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519504517; cv=none;
        d=google.com; s=arc-20160816;
        b=lOYUwx8nb8ZFITSsio5FwsUHPxZgNdXIV/qeDh164w+Mixc7lwPn3+Rf9MH/ZioyR1
         B7O4lObNuF7W0/cdlSr5m48eHCaJCH8n3a9kA6IJSIduJZXEd1CGCBKYlUu9Nfz0eUhz
         A1gacIHsRXfekOq/7tMMucZK6RyreB3M6Z1feZJSdSl0MHEXN0FJpqOv4GXCTppTeMIh
         xw1owV+fkNrx1GSTLvGeWlIxW27eG/pKVNFIdATwLNrTssBAFuJYo6zDPw1hoALEfiIh
         pP2Vb2fPUT7UZRg6JHU94A82VrkC05khddfESILi30YksyhVxLU9E+GLvH/E2jGFnNhI
         WQPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=v5++B1uWB0blKU/U/OOltCwq0b7H97EWs3bgMfb5lpI=;
        b=F/eJMNI+ScAAt74+ygPpHQmzAF5Hj8YbHHcxIIWZFJH+AWqg5ne1o+2aJVYdZ+LbMB
         OIKrIbzBASaHe7BBvUPQgxXzaAXhJO1QnGiXHC8o7xmlk7USumxXrKQqZYzA8aXtKcyN
         oIvUZcrpY8IT/u771yw1wRVS9VbJa6fwv+TIJOld9x0ZBPnHHYpKmLlyjJaMPq6sdC79
         Ig7EbmFdZmvCnCgrh4xnNwA2YoDJ5+/Z4dAxYO1im1Vz6KaZWaAxy9yUJdbEhcMw4TkP
         uHB14RFIuW712eSD8odfW2T+0+xYJT3psFQ++tIA0WVO451t+f3DaCl7nBNjv+36fn0F
         nw0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h9si210854edi.4.2018.02.24.12.35.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 12:35:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,389,1515452400"; 
   d="scan'208";a="315152809"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2018 21:35:17 +0100
Date: Sat, 24 Feb 2018 21:35:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, garsilva@embeddedor.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: use structure
 pointer to get the size of the structure
In-Reply-To: <1519504330-9936-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802242134470.3243@hadrien>
References: <1519504330-9936-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Feb 2018, Santha Meena Ramamoorthy wrote:

> Use pointer to the structure to get the size of the structure. Issue
> found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
> index 03fbff0..bd06bec 100644
> --- a/drivers/staging/rtl8192e/rtllib_wx.c
> +++ b/drivers/staging/rtl8192e/rtllib_wx.c
> @@ -371,7 +371,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
>  		struct lib80211_crypt_data *new_crypt;
>
>  		/* take WEP into use */
> -		new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
> +		new_crypt = kzalloc(sizeof(*new_crypt),
>  				    GFP_KERNEL);

You could now move the GFP_KERNEL up to the previous line, since there is
plenty of room.

julia

>  		if (new_crypt == NULL)
>  			return -ENOMEM;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519504330-9936-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

