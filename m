X-GM-THRID: 6809913191851622400
X-Received: by 2002:ad4:5051:: with SMTP id m17mr7221601qvq.122.1585899600881;
        Fri, 03 Apr 2020 00:40:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:38ad:: with SMTP id f42ls3527156qtc.9.gmail; Fri, 03 Apr
 2020 00:39:59 -0700 (PDT)
X-Google-Smtp-Source: APiQypLPUUvqzAw7tvXQAsFe8Vo/P03LsB3B4e/A83083578RpzXY+qqs8ge6De7qud0aAXGPUY7
X-Received: by 2002:ac8:7397:: with SMTP id t23mr6870982qtp.196.1585899599883;
        Fri, 03 Apr 2020 00:39:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585899599; cv=none;
        d=google.com; s=arc-20160816;
        b=CN/oBqSSjYoRtoLUB23GUuy5Cz6BB3QBLiNvYozKJ56W4i7x16ih23t5oIWFmv3dCS
         vRrm/eWbw74MfbdqDwzOMqBZCsXlNO5byovIgqeQju/6RKq2pkoqxPh+vZKtJbg3fCe1
         hyKHn6evEk2VBSnw0F2Ka/LGghBcfeRF/CfJKlTa+iMw77UFUysyTjSBgYFufBuZgr24
         Z0X4CEo/Utu1CfDcCd97BfkHP1Qf79ojHtigcgiyW8+vkHGHr9JuiidpgBsC3yCo7QTA
         2BrP9o9ai/A/x+TkC0o3+Vsb1Ww/sHy3TPddRAkGqWjcpmAupZN1ZC6tdNGKbUth2kdr
         3Cuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PvjltFS5LP5kVRlCNG02hP0n6ccXnAOGpCaIGJK4/x8=;
        b=wSjQa4QQppwNpn/stW0LjpTUN+DYUsqdFjsOhA/jPYvDt29Hp4X3c8OCo+BWFTQIpX
         F+TzoeBvalMvMH6maCDfviFRyaxoKN0DibhDT0NSYVuHsVNHBghERVPlCrhiGg3ZXhxC
         ZNSH4/mIXPjbaHMetwv2e+YrLkk0HZBjxl58xrZOAgqOWPlBKo1PG0tneUnYz9nB3UdN
         YAEbIJKC4H4GySz4ryrGPUmOU3AP4bLrrv3PUJqrk2Kc7PCzyHMV3wwSYx4XQFQXbuk4
         5KkpUaliFcL8OxLmmgJfVR67YYhbj9MwunB81/MFoM+nr6SWn9uRuKGcj4XHSpg+YgAb
         CHAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FWrnoAFW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c194si418874qkb.0.2020.04.03.00.39.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 00:39:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FWrnoAFW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2788B20787;
	Fri,  3 Apr 2020 07:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585899598;
	bh=Y6SSLJZZ9TvE9c77db7l1RhlVZ/Z4iWu/Z+IpJUCDEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FWrnoAFWWwjxtj5uaXdrv6hJh/m5foiiveKmGewSs7XEJ7OumdTzw5JDCkGYJAwIR
	 KvcYrOBh78NyX77gyV9SaQ+yDEFzgGUzNJCol+nPKIUF7uMOr3jRXNf9sRn3RLzt3r
	 tDYA0tcr7qxx17929tJBmGlNM5eZ5TYQH2dQ+Oxo=
Date: Fri, 3 Apr 2020 09:39:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
	julia.lawall@inria.fr, Larry.Finger@lwfinger.net
Subject: Re: [Outreachy] [PATCH v3 1/3] staging: rtl8188eu: Properly
 structure the multiline comment
Message-ID: <20200403073956.GA3466197@kroah.com>
References: <20200402182621.61694-1-debsoumyajit100@gmail.com>
 <20200402182621.61694-2-debsoumyajit100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200402182621.61694-2-debsoumyajit100@gmail.com>

On Thu, Apr 02, 2020 at 11:56:19PM +0530, Soumyajit Deb wrote:
> Add "*" at the start of each line of the multiline comment to improve
> code readability and to adhere to the uniform Kernel coding style.
> Reported by checkpatch.pl
> 
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index 93283c7deec4..5b2b4d1d56f6 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -1226,17 +1226,17 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
>  }
>  
>  /*
> -op_mode
> -Set to 0 (HT pure) under the following conditions
> -	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
> -	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
> -Set to 1 (HT non-member protection) if there may be non-HT STAs
> -	in both the primary and the secondary channel
> -Set to 2 if only HT STAs are associated in BSS,
> -	however and at least one 20 MHz HT STA is associated
> -Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
> -	(currently non-GF HT station is considered as non-HT STA also)
> -*/
> + *op_mode
> + *Set to 0 (HT pure) under the following conditions

Please add a ' ' character right after the '*' character, to match up
with the proper way to show comment blocks.

thanks,

greg k-h

