X-GM-THRID: 6389640527251243008
X-Received: by 10.28.59.66 with SMTP id i63mr750495wma.21.1487706660061;
        Tue, 21 Feb 2017 11:51:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.72 with SMTP id a69ls790882ljb.42.gmail; Tue, 21 Feb
 2017 11:50:59 -0800 (PST)
X-Received: by 10.46.87.27 with SMTP id l27mr2844123ljb.28.1487706659329;
        Tue, 21 Feb 2017 11:50:59 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id v70si1200008wmf.0.2017.02.21.11.50.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:50:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-lf0-x244.google.com with SMTP id z127so9964003lfa.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 11:50:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AD+VL1UYyrkWqpRy/K5OlNs2hBiTQ/4WCvFXo/N+ry8=;
        b=QFKfQrjBL0H0iY8akk5r7Z0qY4Gf4qQJsb5W7gnuby6AdHj0Aiz6OrI8NbLAYubwVP
         04tG6jJBVi3UT3lgdBPgOO9MWy7gpRXVJzJspXjEqfaGx0IXZTgJsNbh7nf9cet+P67n
         HpQ9sAaL+oophElDTf8JVcj//Unj5AEyc5bEI3DVTmyuI9YPYyr1z05pEKQu5R/0JfWg
         xSlVVk5Vg8idm+ofimykxIhICXULvCkJb5wX141F1WKz5lfay0LtBOdVoadGMb7ghrs/
         CByvIAlBxdZTfSiFqNSPirn6UJUkQcSZwvD2qujMA6fBnPznT1KCv+KQiHcnFVjIY/o0
         wNlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=AD+VL1UYyrkWqpRy/K5OlNs2hBiTQ/4WCvFXo/N+ry8=;
        b=SH4QtvmTc8zaKZ53uxJuf49hIgIvN92ItoVE2Cxxg2G1LlfiEtJX0j0kGDWLWFG9nN
         ibAA3mC+XNyEQXloJjjDK3efbn726LLSt8Rg3r0sn29WVaB+WkcYlkqJii/Vs1qpT7KV
         pa5q15rDbEDCMUV+mtz6sjD2ripmB8iKi8zqkPqlzlWvYWBqpd2s5kk0A0s+EjaVW+ef
         rinJacelIPfD130FufN/SOMklLir1Ymu0yAKmLrdZx6+FO1ju3j6hRR4T8ge029Mwg5K
         3os6ohDHFHaFoKYpt/JZif1n2ZAV1zCyGEEkPgPhScuQ/hJXln4DuOB7O+Pfh71nURsn
         sZqA==
X-Gm-Message-State: AMke39mSSmPw/6u4QZTRFm5mJQ4JNz1LOdzA8ax4ixlP/hgdmCRIy3e8iDLaZUL+yGGZVg==
X-Received: by 10.25.18.95 with SMTP id h92mr2298141lfi.63.1487706659056;
        Tue, 21 Feb 2017 11:50:59 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra ([84.216.234.102])
        by smtp.gmail.com with ESMTPSA id x64sm6435473lfd.15.2017.02.21.11.50.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:50:58 -0800 (PST)
Sender: Johan Hovold <jhovold@gmail.com>
Received: from johan by xi.terra with local (Exim 4.88)
	(envelope-from <johan@kernel.org>)
	id 1cgGSh-000165-Fp; Tue, 21 Feb 2017 20:50:59 +0100
Date: Tue, 21 Feb 2017 20:50:59 +0100
From: Johan Hovold <johan@kernel.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	johan@kernel.org, elder@kernel.org
Subject: Re: [PATCH v2] staging: greybus: loopback_test: fix device-name leak
Message-ID: <20170221195059.GF10245@localhost>
References: <1487703983-19655-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1487703983-19655-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 22, 2017 at 12:36:23AM +0530, Gargi Sharma wrote:
> Change array index from the loop bound variable to loop index.
> Memory leak was occuring whenever there was more than one
> loopback device. The pointer to dirent structures must be
> individually freed before freeing the pointer array.
> 
> Coccinelle Script:
> @@
> expression arr,ex1,ex2;
> @@
> 
> for(ex1 = 0; ex1 < ex2; ex1++) { <...
>   arr[
> - ex2
> + ex1
>   ]
>   ...> }
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v2:
> 	-Made the commit message clearer.
> ---
>  drivers/staging/greybus/tools/loopback_test.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index 18d7a3d..1c01833 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
>  	ret = 0;
>  done:
>  	for (i = 0; i < n; i++)
> -		free(namelist[n]);
> +		free(namelist[i]);
>  	free(namelist);
>  baddir:
>  	return ret;

Oh, there's an illegal free here, which probably was what Julia was
referring to. Yeah, not sure why things haven't blown up, perhaps there
happens to be NULL pointer after?

So we are in fact always leaking the device name here.

No need to resend, unless you prefer. You can add my Reviewed-by tag if
so.

Thanks,
Johan

