X-GM-THRID: 6342317350126092288
X-Received: by 10.36.73.38 with SMTP id z38mr2537712ita.35.1476687536402;
        Sun, 16 Oct 2016 23:58:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.25 with SMTP id q25ls11909667otb.2.gmail; Sun, 16 Oct
 2016 23:58:56 -0700 (PDT)
X-Received: by 10.129.160.66 with SMTP id x63mr6288784ywg.46.1476687536018;
        Sun, 16 Oct 2016 23:58:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si4730195pab.2.2016.10.16.23.58.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 23:58:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 58FB971;
	Mon, 17 Oct 2016 06:58:55 +0000 (UTC)
Date: Mon, 17 Oct 2016 08:59:02 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: wilc1000: Replace the name of a  variable
Message-ID: <20161017065902.GA24896@kroah.com>
References: <20161017063027.GA6200@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161017063027.GA6200@domino-MS-16Y1>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Mon, Oct 17, 2016 at 09:30:27AM +0300, Mihaela Muraru wrote:
> This patch replace the name '*Error' variable with 'err'.

This says what you are doing, but I don't understand why you want to
replace a variable name like this.

Also you have an odd extra space in your subject line :(

> 
> Found and solve with Coccinelle:
> @r1@
> type s;
> identifier sn =~ "Error";
> identifier f;
> type p;
> expression c;
> @@
> 
> f(...) {
> 
> <...
> (
> -p sn = c;
> +p err = c;
> |
> -sn
> +err
> )
> ...>
> }
> 
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 138 +++++++++++-----------
>  1 file changed, 69 insertions(+), 69 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 483a6b6..8c47558 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -603,7 +603,7 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
>  {
>  	struct wilc_priv *priv;
>  	u32 i;
> -	s32 s32Error = 0;
> +	s32 err = 0;

Also, shouldn't this just be 'int'?

thanks,

greg k-h

