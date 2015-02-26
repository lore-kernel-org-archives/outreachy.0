X-GM-THRID: 4165050826752
X-Received: by 10.43.8.129 with SMTP id os1mr6459121icb.24.1424993211067;
        Thu, 26 Feb 2015 15:26:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.98 with SMTP id rv2ls18685igb.34.gmail; Thu, 26 Feb
 2015 15:26:50 -0800 (PST)
X-Received: by 10.66.65.109 with SMTP id w13mr10318108pas.28.1424993210708;
        Thu, 26 Feb 2015 15:26:50 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si297631pad.1.2015.02.26.15.26.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:26:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 66FB6B1D;
	Thu, 26 Feb 2015 23:26:50 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:26:50 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon: Add a blank line
Message-ID: <20150226232650.GA31108@kroah.com>
References: <1424988663-11632-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1424988663-11632-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 12:11:03AM +0200, Hatice ERT�RK wrote:
> Missing a blank line after declarations. That's why add a blank line
> after declaration.
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-rx.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
> index fcbe836..9836899 100644
> --- a/drivers/staging/octeon/ethernet-rx.c
> +++ b/drivers/staging/octeon/ethernet-rx.c
> @@ -214,6 +214,7 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
>  		did_work_request = 0;
>  		if (work == NULL) {
>  			union cvmx_pow_wq_int wq_int;
> +
>  			wq_int.u64 = 0;
>  			wq_int.s.iq_dis = 1 << pow_receive_group;
>  			wq_int.s.wq_int = 1 << pow_receive_group;
> -- 
> 1.9.1

This patch doesn't apply, I think someone else already did this change
:(

