X-GM-THRID: 6666325868481085440
X-Received: by 2002:a37:8c07:: with SMTP id o7mr3358206qkd.6.1552127380851;
        Sat, 09 Mar 2019 02:29:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:3094:: with SMTP id w142ls1920765qkw.9.gmail; Sat, 09
 Mar 2019 02:29:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqyqZgbLD0HVQcFQX16f40rjcmk21wS+NVro5cHxRQn5fpduJnEM8+Bd0MXLKPVf/oNNNCRD
X-Received: by 2002:ae9:f507:: with SMTP id o7mr12243091qkg.46.1552127380245;
        Sat, 09 Mar 2019 02:29:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552127380; cv=none;
        d=google.com; s=arc-20160816;
        b=gffkQD82J+WoBInOVwF2MiiLvCw0WyuuerZIwO/foExVPVXaNcj8BXlRm3KEJv5Zq2
         xm8Q+LCAbxfe5l02+pDMHEoSvVFhwkZIue9oRllPebxaYhy6W+rmvfcXLfi1QSWmH+hi
         sD+jWzZcHe8TevNsNtuyN5fPaNvEuom0Kod9FqBQXv3Gbg38GQMXMhWOVR07Vl3j28pW
         hdAUOgKBD4Ha2UX6CfrSeLCyiTBsLmuRwj6g47bAAz5ZmIaNyiZs0FbHj3UNsL3WTCFg
         Z9un6CZhWyv8V25XiIXdCT1fECjl/8EacE5ir8d2xL4tPGjN2R1UugqZs6vFi990VFwD
         UJWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/hiS6X2lUMoc1bJAJYOrPfTEboQA29eFUtQgI3Rzzos=;
        b=j79wk3hkrjJ6fdi+HvHmyxk7EG0InWNm5tcvI/8gQkOI+pGJSyptOKEOQApS5KPUBZ
         FWwq002ARlhkFoaE4TyhaCvoMcLO/Rp5Ltw8ZeyolC/zGHGJUGXK4jkfmp84vIQx79FI
         pCiew6L8vLTmLkwCKb1HGjD5WJI/tHXkwrWdvAzt2UwnRDLElRsFfaLYc6i/hmngE+tp
         zPwlXRm/lponeTVV1qAETryg+wTM18+403HQSvK/rtV13bDKt5cfhKxqFNY13Py+ZvBM
         VQ5FVDclW/n5Jdl7fCJuL7L3RAkX6IYgZuCI7vUzmpRW8Em5oJ8QVtHRJ4JSz+7xHgp1
         eG8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="sXyRbf/5";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m1si5503qtc.2.2019.03.09.02.29.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 02:29:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="sXyRbf/5";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 957A0207E0;
	Sat,  9 Mar 2019 10:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552127379;
	bh=ZF3xA3GN/J8dXm2/ypHYCJvziLpBQ9SKNB6/HbQAJ+I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sXyRbf/5uOlCwp8Z9F4wqu/dDVCKxa1sP2tCtXe0seKF1g6sdoo2Rs36AEJdVK0r+
	 P7qDEppHYT3GTOBPli7YPzDFt8XkpHFdsOPpBuz0JsUngMxBSoiIsUeZygRKER181w
	 8IylGmW1mfIKNbxxFpBW2ipqi0sAAjOD6q9DwZkI=
Date: Sat, 9 Mar 2019 11:29:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: adham.abozaeid@microchip.com, ajay.kathat@microchip.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: wilc1000: remove unnecessary variable result
Message-ID: <20190309102936.GA18149@kroah.com>
References: <20190309094840.38154-1-himadri18.07@gmail.com>
 <20190309101610.39595-1-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190309101610.39595-1-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 09, 2019 at 03:46:10PM +0530, Himadri Pandya wrote:
> Remove unnecessary local variable "result" and its assignments from
> function wilc_set_pmkid_info. Suggested by Coccinelle.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V2:
> 	- Arrange the function arguments to the right of "(" in function
> call in the return statement
> 
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 4dd9a20f6a0b..fa0e1bd9f836 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
>  int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
>  {
>  	struct wid wid;
> -	int result;
> 
>  	wid.id = WID_PMKID_INFO;
>  	wid.type = WID_STR;
>  	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
>  	wid.val = (u8 *)pmkid;
> 
> -	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> -				      wilc_get_vif_idx(vif));
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +				    wilc_get_vif_idx(vif));
> 
> -	return result;
>  }
> 
>  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> ---
>  drivers/staging/wilc1000/host_interface.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 4dd9a20f6a0b..fa0e1bd9f836 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
>  int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
>  {
>  	struct wid wid;
> -	int result;
>  
>  	wid.id = WID_PMKID_INFO;
>  	wid.type = WID_STR;
>  	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
>  	wid.val = (u8 *)pmkid;
>  
> -	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> -				      wilc_get_vif_idx(vif));
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +				    wilc_get_vif_idx(vif));
>  
> -	return result;
>  }
>  
>  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> -- 
> 2.17.1
> 

The same patch is included in this email twice :(

That's not going to go well when I try to apply it, please fix up and
resend.

thanks,

greg k-h

