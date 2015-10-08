X-GM-THRID: 6203334269363814400
X-Received: by 10.66.147.165 with SMTP id tl5mr7383415pab.21.1444329315911;
        Thu, 08 Oct 2015 11:35:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.138.40 with SMTP id qn8ls458201obb.54.gmail; Thu, 08 Oct
 2015 11:35:15 -0700 (PDT)
X-Received: by 10.182.19.166 with SMTP id g6mr7259517obe.42.1444329315574;
        Thu, 08 Oct 2015 11:35:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q68si1020815ywf.0.2015.10.08.11.35.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 11:35:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [199.168.151.86])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 177641BF5;
	Thu,  8 Oct 2015 18:35:14 +0000 (UTC)
Date: Thu, 8 Oct 2015 14:35:12 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Replace switch by
 if-else statement
Message-ID: <20151008183512.GB10133@kroah.com>
References: <1444326298-12640-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444326298-12640-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 08, 2015 at 07:44:58PM +0200, Ksenija Stanojevic wrote:
> Use of switch statement is wrong here, better use if-else statement
> instead.

Why is it "wrong"?  It looks cleaner to me as a switch statement, easier
to read and understand.  Why change it?




> 
> Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/vt6655/channel.c | 33 +++++++++++++--------------------
>  1 file changed, 13 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
> index 7a71782..3d12da6 100644
> --- a/drivers/staging/vt6655/channel.c
> +++ b/drivers/staging/vt6655/channel.c
> @@ -132,26 +132,10 @@ void vnt_init_bands(struct vnt_private *priv)
>  	struct ieee80211_channel *ch;
>  	int i;
>  
> -	switch (priv->byRFType) {
> -	case RF_AIROHA7230:
> -	case RF_UW2452:
> -	case RF_NOTHING:
> -	default:
> -		ch = vnt_channels_5ghz;
> +	if (priv->byRFType == RF_RFMD2959 || priv->byRFType == RF_AIROHA ||
> +	    priv->byRFType == RF_AL2230S || priv->byRFType == RF_UW2451 ||
> +	    priv->byRFType == RF_VT3226) {

That's hard to read which types are and are not included here, right?


>  
> -		for (i = 0; i < ARRAY_SIZE(vnt_channels_5ghz); i++) {
> -			ch[i].max_power = 0x3f;
> -			ch[i].flags = IEEE80211_CHAN_NO_HT40;
> -		}
> -
> -		priv->hw->wiphy->bands[IEEE80211_BAND_5GHZ] =
> -						&vnt_supported_5ghz_band;
> -	/* fallthrough */
> -	case RF_RFMD2959:
> -	case RF_AIROHA:
> -	case RF_AL2230S:
> -	case RF_UW2451:
> -	case RF_VT3226:
>  		ch = vnt_channels_2ghz;
>  
>  		for (i = 0; i < ARRAY_SIZE(vnt_channels_2ghz); i++) {
> @@ -161,7 +145,16 @@ void vnt_init_bands(struct vnt_private *priv)
>  
>  		priv->hw->wiphy->bands[IEEE80211_BAND_2GHZ] =
>  						&vnt_supported_2ghz_band;
> -		break;
> +	} else {
> +		ch = vnt_channels_5ghz;
> +
> +		for (i = 0; i < ARRAY_SIZE(vnt_channels_5ghz); i++) {
> +			ch[i].max_power = 0x3f;
> +			ch[i].flags = IEEE80211_CHAN_NO_HT40;
> +		}
> +
> +		priv->hw->wiphy->bands[IEEE80211_BAND_5GHZ] =
> +						&vnt_supported_5ghz_band;

I think you are changing the logic here a bit, are you sure it's still
identical?

thanks,

greg k-h

