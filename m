X-GM-THRID: 6471963734455615488
X-Received: by 10.223.139.198 with SMTP id w6mr1941289wra.4.1507047580355;
        Tue, 03 Oct 2017 09:19:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.160.247 with SMTP id n52ls4189205wrn.6.gmail; Tue, 03 Oct
 2017 09:19:39 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDTTQUuhYzW1wz9r8epITINdbj8I7o71WjF7Mn21zvO1Ba1I49/cwoD3D3Xo8GWYzKvfCET
X-Received: by 10.28.71.131 with SMTP id m3mr2367007wmi.19.1507047579675;
        Tue, 03 Oct 2017 09:19:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507047579; cv=none;
        d=google.com; s=arc-20160816;
        b=XuE6xNizMzR/Xy5ONEYbcgh0F3qKIBxYHyEmfJLNFIic0jowUgTomaGQYMLMs5/IxC
         V+BAKrsumcWzShHCzYSEDzjlaTZ7JN5hNdqzIW4WD4ZDX/K+5uM5rk9Ga0qAbFg00d6w
         zYxYfZG+QPFLSl0NJuhSVSIQ9bxyS/C42kbeu5fPuydBidzSWv6LVi2WK7V3FlOZFEpy
         sfIbKHAOeZyUWAnPqZOiNeum0+9D4BkIfY7zi11UMgxN1srD3kYsq5F0Gjcq59gi0SVz
         oYUMjN/xAj4sCDMvjpTZGqO890nBgiWSG/X/+S68/iT7fE/ppRX5E29KMPcPIhgPJagy
         PTMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=k6hTN1qjzm3l5zxriCNNYhJ3zSaiHh3wcCGUW4kCNx4=;
        b=nfx0GT5Axn2pJyXvjIogQinCBVSaQzwmATqOpwHz70ALB+3b2KPIIePjH5GwdLWPuX
         Xu/kFSgc62dX/vnyrF8TvHq/xlWSTjetcr3G025VZ5P6/Yk2Evbn+rE26hxrImbG5t3P
         SARS+zP/oYZH9x2Q3x/kteaTLc9UclHjLyvCIvBcV1mczlUoSD1prYANiwAFYC9lIC7H
         gkyOWnU4FXYgQbSKlXXW/rhZJ6uPyo4SI96Y/OkSLuL2d/Ui8b1XOdXy+pXLB7J6zYZD
         xqyg2g7gbab8u2KbTSj1ZmAZJPf461RJsTddVlIQMMTUSlTJOO0ihrNdblgWubQTLheZ
         U0yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d82si1361930wmd.1.2017.10.03.09.19.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 09:19:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 079559FA;
	Tue,  3 Oct 2017 16:19:37 +0000 (UTC)
Date: Tue, 3 Oct 2017 18:19:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rtl8723bs: Use kstrto<type> instead of single
 variable sscanf
Message-ID: <20171003161947.GB25889@kroah.com>
References: <20171001152428.11054-1-georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171001152428.11054-1-georgiana.chelu93@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Sun, Oct 01, 2017 at 06:24:28PM +0300, Georgiana Chelu wrote:
> Use kstro<type> instead of single variable sscanf to
> convert a string to the appropriate integer type.
> Also, check the return value.
> 
> Issue found by checkpatch.pl script:
> Prefer kstrto<type> to single variable sscanf
> 
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/rtw_proc.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
> index 92277457aba4..58eb50aa8098 100644
> --- a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
> +++ b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
> @@ -70,7 +70,11 @@ static ssize_t proc_set_log_level(struct file *file, const char __user *buffer,
>  		return -EINVAL;
>  
>  	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
> -		sscanf(tmp, "%d ", &log_level);
> +		int num = kstrtoint(tmp, 10, &log_level);
> +
> +		if (num != 1)
> +			return count;

How would num ever be 1 here?  Did you test this?

Look at the documentation for kstrtoint() please, I think this just
broke things :(

thanks,

greg k-h

