X-GM-THRID: 6661982581807906816
X-Received: by 2002:a5b:cc8:: with SMTP id e8mr4806320ybr.0.1551177751359;
        Tue, 26 Feb 2019 02:42:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c042:: with SMTP id c63ls5617071ybf.4.gmail; Tue, 26 Feb
 2019 02:42:30 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaRWvCvo7ATajj/gou5sGEpviI206VehRum84FWVn6kCQIipliOyCShVcm54EG/Tv2KVlPC
X-Received: by 2002:a5b:d04:: with SMTP id y4mr8315545ybp.13.1551177750465;
        Tue, 26 Feb 2019 02:42:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551177750; cv=none;
        d=google.com; s=arc-20160816;
        b=kBBI6CSoiHWpTo0rO6rrMtxa+rKCE85Fg81xGs8+V68BEPdtTOdhXJVFbL8xaevVqd
         +kTivtIeznbLLahZYMbD50QUuf3yOsXEhRxdxNIg8hfldueoxwrL3yUC/flAhvE4EFPB
         dElEK33u85c/34sG415mlByLHrzNkgGaQUwtNAkeOjeIAxBdSBbdfGjkWki1sHa964Jx
         8PClxGNQh1X4Oud/nNR3fKZqt/jQgnF+S+k5AX6QobrsA5qo/uS8CSzP7Dz5j7ttCiJk
         Udl1hJma7+SUbsJD1+iJg7jJ9rJkgFyEEaoxjdfTV+QZEHKRt9UCjXR3XQad6He+7jz1
         iWpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xW54W95wK7c05fNWxRA51YNECRmslmcCul/JrWeLg7w=;
        b=PyvnXRm2y10zXj7+NMx39IJJQxGb1J/KoyAVcKGnnnZMsOXLYDtUh/gWRKRx3YPckd
         hSkGQfsdlqu+g84MTNNHLxn5mFnX855XRD33gLEUremkt479bj+iEjI80S11AyBL6u4r
         vkuSxktjvN+NUSwjW3ZXMYNNaHeOGSitDJ4TecJScp0TBN0G+u9hX5uOyL3z761fHEyE
         Ewz22Ees2J+NxOpkeo3tPf5aHpjvFUUAk9eFDUQpMwPgeRQo5vuhvRwuzmGw4xxo/zpz
         zlvDHgXUObh96ti3FI7DuCDHjYafvcJhoOUTMxGBoj4lUwhqkm6szb0+UxWxnIhrk1x/
         w6tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RwInbBNR;
       spf=pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j16si396057ywa.2.2019.02.26.02.42.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 02:42:30 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RwInbBNR;
       spf=pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D93582173C;
	Tue, 26 Feb 2019 10:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551177749;
	bh=dspkEIJ+V940JZvOpk/qOu9dT6fvqZRWkJaoDSUcJt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RwInbBNRMEUYABlLeKtOnc2W4JlI39vvN6RuqYVfo/Q1Ajd1STVp7U3ioYdHlprnR
	 xMU9t4jPIJjT4NKGZQ0IV6h6Svcdicatc+r//C2xsjjqpCggimKvhqsLf9obUXUiUh
	 Y6O952CdOULf6hEvrSsH8yRKSH8mAayAvdUj8Mj8=
Date: Tue, 26 Feb 2019 11:42:26 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [PATCH] Staging: rtlwifi: rtl8822be: Use __func__ instead of
 func name
Message-ID: <20190226104226.GA20764@kroah.com>
References: <20190226002243.15322-1-bhanusreemahesh@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190226002243.15322-1-bhanusreemahesh@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Feb 26, 2019 at 05:52:43AM +0530, Bhanusree Pola wrote:
> Fix checkpatch warning:
> WARNING: Prefer using '"%s...", __func__' to using 'rtl8822be_set_fw_rsvdpagepkt', this function's name, in a string
> 
> Use __func__ instead of using complete function name.
> Avoid line over 80 characters
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtlwifi/rtl8822be/fw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtlwifi/rtl8822be/fw.c b/drivers/staging/rtlwifi/rtl8822be/fw.c
> index f061dd1382aa..43a56962e37a 100644
> --- a/drivers/staging/rtlwifi/rtl8822be/fw.c
> +++ b/drivers/staging/rtlwifi/rtl8822be/fw.c
> @@ -736,10 +736,10 @@ void rtl8822be_set_fw_rsvdpagepkt(struct ieee80211_hw *hw, bool b_dl_finished)
>  	totalpacketlen = TOTAL_RESERVED_PKT_LEN;
>  
>  	RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_LOUD,
> -		      "rtl8822be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
> +		      ("%s: HW_VAR_SET_TX_CMD: ALL\n", __func__),

You did not even compile your change :(

This is not correct C, please fix up and always test your patches before
sending them out.

thanks,

greg k-h

