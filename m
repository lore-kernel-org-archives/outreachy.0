X-GM-THRID: 6463670591377375232
X-Received: by 10.46.0.222 with SMTP id e91mr370091lji.21.1504941296361;
        Sat, 09 Sep 2017 00:14:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.130.138 with SMTP id e132ls327136wmd.22.canary-gmail; Sat,
 09 Sep 2017 00:14:55 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4wGH2oYpWOsbS24hQmLby7awaZFybin64RoESy8i0XYNOvTn2g4gk5zEs4gYslakU2Sg0F
X-Received: by 10.223.136.141 with SMTP id f13mr302574wrf.0.1504941295524;
        Sat, 09 Sep 2017 00:14:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504941295; cv=none;
        d=google.com; s=arc-20160816;
        b=PldlOvPsFGwX8p4Mf8TmE+wMt9FBfsDC2fkLR2BQNp/xKeiqT5rTErqcErSSLx2EkC
         qGoeH2r0Ef85LGL386vUEDzoydAktF6GT5UKXOi84OM1cac1FXv1649KN2t2jtMbdb46
         BChrQqzZDTMFEVPBr6/KvjLvAOlyZ6BawriEAxdP923ikIes7gJQHwBiFy7o8A5SsVLU
         halx+EIiLU0imt9bAPsOT7zBpT+1SR7WZu3Ca8wsC+ctTbi1ZILrtBWZ1IzMLAAz1yBU
         6JOeEZ9iuE/jdbjmEXzwwITbbp4+KHcvye5uJLl0tau8PVjcSg7BB7VL8QkxlOKvcnHv
         NeTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=YUvAwuzWtGKXk1XZiToEcuMdXW14endbqhShz0QW+Rg=;
        b=ZWgRxOsHmkpTlm7RSuEmA/Vj2QwXUEXLVNl27VNEipv31RVaMwgCQ0wTVW9NQkVVDg
         Pj0ong12b6Qb1ud36vDVsfXXXUNixD4nTyPwNzj97gvmbT0CWIYF012uYR3AxcFbtlU7
         qIz9hqE9w/Hxit0sqEigsfpOSh/zJG9FV2hEBrwKCW+F9tSdp2lEXdxUnlH6KF4u1kRC
         JDHlpg3vDsdhS/FhBgz1Mnj5sKd1RQDGmSwkGVKgWbqo2OU/flj6NcNk8MaXyVWANlhc
         aXNqJQeOeIhUejcahr78TfaP3geETX2yqXuuU5mXj724Fl1hl7Ohq/LImsAXwC2D9o/G
         +7Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a21si162714wme.2.2017.09.09.00.14.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 00:14:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CA62C7A8;
	Sat,  9 Sep 2017 07:14:53 +0000 (UTC)
Date: Sat, 9 Sep 2017 09:14:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: unisys: visorbus: Declared char * array as
 static const
Message-ID: <20170909071451.GA27010@kroah.com>
References: <1504940442-27511-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504940442-27511-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sat, Sep 09, 2017 at 12:30:42PM +0530, Harsha Sharma wrote:
> State explicitly that individual entries in array will not change.
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/staging/unisys/visorbus/visorchipset.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/unisys/visorbus/visorchipset.c b/drivers/staging/unisys/visorbus/visorchipset.c
> index 6d4498f..6f2a010 100644
> --- a/drivers/staging/unisys/visorbus/visorchipset.c
> +++ b/drivers/staging/unisys/visorbus/visorchipset.c
> @@ -1162,7 +1162,7 @@ static ssize_t deviceenabled_store(struct device *dev,
>  	struct controlvm_message_packet *cmd = &req->msg.cmd;
>  	char env_cmd[40], env_id[40], env_state[40], env_bus[40], env_dev[40],
>  	    env_func[40];
> -	char *envp[] = {
> +	static const char * const envp[] = {

Are you _sure_ about this?  Why make it static?  That seems a bit "odd",
don't you think?  You need a lot more changelog text to get everyone to
agree that this is ok to do...

Also, you forgot to cc: the actual maintainers of this code...

thanks,

greg k-h

