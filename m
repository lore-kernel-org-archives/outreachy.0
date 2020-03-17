X-GM-THRID: 6803797661564534784
X-Received: by 2002:aa7:947c:: with SMTP id t28mr4437027pfq.239.1584445640866;
        Tue, 17 Mar 2020 04:47:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls10286948pfg.9.gmail; Tue, 17 Mar
 2020 04:47:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsEM3sBLmks7jwOoHFSFtngw/re6jlaHDeuLV12iukPuT3zpmOin0h8x9C6TS22H2seqCmx
X-Received: by 2002:a63:fc1c:: with SMTP id j28mr4775655pgi.289.1584445639319;
        Tue, 17 Mar 2020 04:47:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584445639; cv=none;
        d=google.com; s=arc-20160816;
        b=hm/E/Mc6PcGybaIcrhM9cUXHjbmbD7X7lijcoCqEHOq8RElt9uB+N+7SB5jBF7R4J9
         kKOrG5yE17Eb13HaS5EVd5Lxc0Zvv9hBXKOkWIZ2E4oR58fEq/IopUqqwVOwTYHDQ2RA
         Kb1w+GK3tilrl4mdBenDAGU8h7QbKFmEgJaYT/SL6rfs7Soioonta8i1i5tKvQBPyyM+
         ZGVnyk1Wks2EFlCkAYTNcAUhvyl7c+Df9nkWlnGHpAi87f+FV3uzwZKGnbVvWMTKa467
         Xny+8K3TzFBeTlBE3QIXv198864PMriova7O4dgGPeNjwrn+27q/mk9oiBr0ScV7K7TZ
         Vvig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3jKP2bQ3yw1gSqjNCCdW9GF8/J3IqN67jLFZCAyYqWY=;
        b=NQ8XLMw0mhDE0C8paGBpnZnj0skaau3elzVOpelr3Zqkivx6vhd1jzTNYUJNSd9vHa
         39mB6M0TrtK3GW9sjRVEAyV+Q0IpSkbXTUtbDLhgDKnBBluTQAUtJPC1lWO/j8k9Y56z
         OyNXqNtSJ/1mvaIt+9a0iOkCkfj6lIcGdoK4EjEwOeKj/3AMQzbtY4mVgnqfiLZH7ZTq
         olJM+609q8NQi5vI74Uc9/JepgX7y2FXkRrQ4jNcbpXTW1KK9MQVNxz6OOlTI08ePWDo
         v9pmGLlzIFw+YAyv1vkf6UlRH0DbCvTehbPxtdY0bbnm9wtFvirNZw5/CApQJHf1nWU2
         SZwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LvbkocCY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s63si128010pjb.0.2020.03.17.04.47.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 04:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LvbkocCY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9CB9C206EC;
	Tue, 17 Mar 2020 11:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584445639;
	bh=BlKgPW1d8fRENsBk9HG74KJXq2z3UBns1KNB/bRIta4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LvbkocCYSHynX2wyQ57sQnZIlWerV35zPndns47G0dN0rxR1GPng8aIn8lcYDPZDq
	 uvvf5bCfqvw4yaHtRoYE7H924usGbXuHm3M3LZ2YeoHF5N+xu4+iUXTR+OW4LWitxb
	 BvP9sryatqDM644uyXthdjCkKGrTT69/vxUuwADE=
Date: Tue, 17 Mar 2020 12:47:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, rmfrfs@gmail.com, johan@kernel.org,
	elder@kernel.org, vireshk@kernel.org
Subject: Re: [PATCH 2/2] staging: greybus: hid: remove unneded braces
Message-ID: <20200317114715.GA1233900@kroah.com>
References: <cover.1584131593.git.lu@pplo.net>
 <3626ab8e2feb4e1a43476c9f1c721d314c345cfc.1584131593.git.lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3626ab8e2feb4e1a43476c9f1c721d314c345cfc.1584131593.git.lu@pplo.net>

On Fri, Mar 13, 2020 at 09:49:37PM +0100, Lourdes Pedrajas wrote:
> Braces are not necessary for single statement blocks.
> Issue found with checkpatch.
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/greybus/hid.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
> index 04bfd9110502..9d4ca66e1c8d 100644
> --- a/drivers/staging/greybus/hid.c
> +++ b/drivers/staging/greybus/hid.c
> @@ -290,9 +290,8 @@ static int gb_hid_parse(struct hid_device *hid)
>  	}
>  
>  	rdesc = kzalloc(rsize, GFP_KERNEL);
> -	if (!rdesc) {
> +	if (!rdesc) 
>  		return -ENOMEM;
> -	}
>  
>  	ret = gb_hid_get_report_desc(ghid, rdesc);
>  	if (ret) {

This patch _ADDS_ checkpatch warnings :(

Please always verify that your patch does what you think it does
before you send it out...

thanks,

greg k-h

