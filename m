X-GM-THRID: 6523255029551333376
X-Received: by 10.28.145.13 with SMTP id t13mr1432994wmd.14.1518814334569;
        Fri, 16 Feb 2018 12:52:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.214.21 with SMTP id n21ls493224wmg.0.canary-gmail; Fri, 16
 Feb 2018 12:52:13 -0800 (PST)
X-Google-Smtp-Source: AH8x2275mxPMO9xxdKOwcbiHe6MJpBeMmauJeDs3uHSV42vaXBZzoEA440ddiDzPM+PPygE0dFla
X-Received: by 10.28.52.133 with SMTP id b127mr1440724wma.13.1518814333605;
        Fri, 16 Feb 2018 12:52:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518814333; cv=none;
        d=google.com; s=arc-20160816;
        b=xVDcSdQZ2IztOziY6ktLWiRDqy2Oqad4FcypAnZlhLoLghODR0fQkwW1mK+hCDB5bM
         GHtHM2cXUaKRte5AQs+gU1T166ajUThr+H894+hW9DXtUaxUEZ5ogA92k/F68pj6GkfT
         yNO5R+KbgP8k0tjSml63/QC52Sz+oL8FNj46sDkLFY/aDlueSulz8K69cIXkRYQcmQnc
         FiaIeRZSyg8VrBYoHcQD8slFyMCuBPikuEEy4Bm93IGOSiObql3CLu+/RjMhvBNiroB5
         XVfte1pixizVFPhzPPExJJOerV9NnDwuhZ8vBrwkWwlKBpp2z/pJu8opIDJThoyzCoha
         Zv8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=DUqHeAb7XfL6ztgJHEqI+R2Ai961a+7OX46kmA/Xias=;
        b=RoUxO3bTCU+OOYilUiAxhLxDlXCBQKgqUD2g/6c49Q5CJgQDqBtn8Z7in/4eTjLrs6
         q4S6ce/BFNwC81hDFgNEP77F3+e/Nw1f+HAgKZ9LHpGQgjHi3QUa+UpWgPmB5xN7fQxT
         DL7t3C4RWtUP10AAOFCRq5EWK2kQWDAFga1TpB4hKx86JgmzLBS09Hmonsr9cY0EM+Cu
         tRqNIztsjCXeVQTKva4uy4JS3K2AByADG+W16I6YLJ9Fg8pSysZxijYkr9y1Q+RfT/Lk
         Pg1xwyygfB5CGUTg9I58FKEgmCAZRJVhxf9PWanaoGdIRL+u0TM2oIXLYoklez7GYh/G
         AGzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r7si227772wmc.4.2018.02.16.12.52.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 12:52:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.170.62.28])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 51B2C1085;
	Fri, 16 Feb 2018 20:52:10 +0000 (UTC)
Date: Fri, 16 Feb 2018 21:51:05 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ishita Tripathi <sakurakhadag@gmail.com>
Cc: --to:  Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Fix checkpatch issue
Message-ID: <20180216205105.GB2375@kroah.com>
References: <20180216204100.GA76452@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180216204100.GA76452@ubuntu>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Fri, Feb 16, 2018 at 12:41:00PM -0800, Ishita Tripathi wrote:
> Deleted line break after dereference operator (->)

Your subject is a bit "odd" :)

Please look at other patches for this directory to see the proper prefix
to use.

> 
> Signed-off-by: Ishita Tripathi <sakurakhadag@gmail.com>
> 
> ---
>  drivers/staging/comedi/drivers/rtd520.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/rtd520.c b/drivers/staging/comedi/drivers/rtd520.c
> index bb400e0..47b7093 100644
> --- a/drivers/staging/comedi/drivers/rtd520.c
> +++ b/drivers/staging/comedi/drivers/rtd520.c
> @@ -815,9 +815,8 @@ static int rtd_ai_cmdtest(struct comedi_device *dev,
>  
>  		if (cmd->scan_begin_src == TRIG_TIMER) {
>  			arg = cmd->convert_arg * cmd->scan_end_arg;
> -			err |= comedi_check_trigger_arg_min(&cmd->
> -							    scan_begin_arg,
> -							    arg);
> +			err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
> +					arg);


No need to move the last line here, right?  Please keep it as-is.

thanks,

greg k-h

