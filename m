X-GM-THRID: 9924000088064
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f233a8f6abde5ca
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.142.69 with SMTP id r5mr36381269icu.3.1427362822510;
        Thu, 26 Mar 2015 02:40:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.5 with SMTP id 5ls669965qgo.94.gmail; Thu, 26 Mar 2015
 02:40:22 -0700 (PDT)
X-Received: by 10.236.21.179 with SMTP id r39mr7218330yhr.35.1427362822221;
        Thu, 26 Mar 2015 02:40:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pj7si617219pbb.2.2015.03.26.02.40.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 02:40:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 55843AE7;
	Thu, 26 Mar 2015 09:40:21 +0000 (UTC)
Date: Thu, 26 Mar 2015 10:40:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Reduce line size to
 increase readability
Message-ID: <20150326094018.GE20410@kroah.com>
References: <20150326070214.GA2896@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150326070214.GA2896@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 26, 2015 at 12:32:14PM +0530, Vatika Harlalka wrote:
> Reduce line size to increase code readability.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_neo.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index 41105be..2abe60b 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -333,7 +333,8 @@ static inline void neo_set_new_start_stop_chars(struct channel_t *ch)
>  {
>  
>  	/* if hardware flow control is set, then skip this whole thing */
> -	if (ch->ch_digi.digi_flags & (CTSPACE | RTSPACE) || ch->ch_c_cflag & CRTSCTS)
> +	if (ch->ch_digi.digi_flags & (CTSPACE | RTSPACE) ||
> +		ch->ch_c_cflag & CRTSCTS)

Indentation should be lined up with the ( on the line above, not the
full indent, otherwise it runs into the lines below when trying to read
the code.

thanks,

greg k-h

