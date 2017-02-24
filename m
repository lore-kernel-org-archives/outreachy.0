X-GM-THRID: 6388897294904721408
X-Received: by 10.99.137.72 with SMTP id v69mr1299996pgd.82.1487957043981;
        Fri, 24 Feb 2017 09:24:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.1 with SMTP id 1ls7586745ota.5.gmail; Fri, 24 Feb 2017
 09:24:03 -0800 (PST)
X-Received: by 10.129.173.39 with SMTP id l39mr1229566ywh.158.1487957043617;
        Fri, 24 Feb 2017 09:24:03 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si1770588pfd.3.2017.02.24.09.24.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:24:03 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0E9224A4;
	Fri, 24 Feb 2017 17:24:02 +0000 (UTC)
Date: Fri, 24 Feb 2017 18:23:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] staging: rtl8192u: Remove ternary operator
Message-ID: <20170224172356.GB11385@kroah.com>
References: <1487575302-12460-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1487575302-12460-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Mon, Feb 20, 2017 at 12:51:42PM +0530, Gargi Sharma wrote:
> Relational and logical operators evaluate to either true or false.
> Lines with ternary operators were found using coccinelle script. In a
> few cases using logical && operator would suffice. Hence those were
> changed to improve readability.
> 
> Coccinelle Script:
> @r@
> expression A,B;
> symbol true,false;
> binary operator b = {==,!=,&&,||,>=,<=,>,<};
> @@
> - (A b B) ? true : false
> + A b B
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v4:
>         - Aligned operands for && and added a newline.
> Changes in v3:
>         - Converted ? operator to &&.
> Changes in v2:
>         - Converted ? operator to if else statements.
> 
> ---
> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> index c27397b..b17bdf9 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> @@ -977,16 +977,18 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
>  	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
>  
>  //	if (pHTInfo->bCurBW40MHz)
> -		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
> +
> +	pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);

While the indentation does make sense, it does not look correct with the
if statement still there, right?  Please fix this up when you resend
this.

thanks,

greg k-h

