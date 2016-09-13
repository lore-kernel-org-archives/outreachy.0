X-GM-THRID: 6329663993990348800
X-Received: by 10.36.112.144 with SMTP id f138mr14440968itc.6.1473746716913;
        Mon, 12 Sep 2016 23:05:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.88 with SMTP id r85ls4347965itc.0.canary; Mon, 12 Sep
 2016 23:05:16 -0700 (PDT)
X-Received: by 10.66.172.14 with SMTP id ay14mr13116883pac.0.1473746716093;
        Mon, 12 Sep 2016 23:05:16 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h124si3157985pfe.0.2016.09.12.23.05.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 23:05:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6F143954;
	Tue, 13 Sep 2016 06:05:15 +0000 (UTC)
Date: Tue, 13 Sep 2016 08:05:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: most: move assignment out of function call
Message-ID: <20160913060522.GE9098@kroah.com>
References: <1473739629-17286-1-git-send-email-eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1473739629-17286-1-git-send-email-eraretuya@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 13, 2016 at 12:07:09PM +0800, Eva Rachel Retuya wrote:
> Pull out assignment used as a function argument before the function call to
> improve readability. Change was made by hand while the following coccinelle
> script was used to pinpoint the issue:
> 
> @a@
> identifier func;
> expression list E;
> position p;
> @@
> 
> func@p(E);
> 
> @script:python b@
> E << a.E;
> func << a.func;
> p << a.p;
> arg_list;
> @@
> arg_list = []
> for i in E:
>     if (        '=' in i
>         and not '"' in i
> 	and not '==' in i
> 	and not '!=' in i
> 	and not '<=' in i
> 	and not '>=' in i
>        ):
>        print "function: " + func + " has assignment at arg: " + i
>        print "in file: " + p[0].file + " , line: " + p[0].line
>        arg_list.append(i)
> for j in arg_list:
>     print j
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/most/aim-sound/sound.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/most/aim-sound/sound.c b/drivers/staging/most/aim-sound/sound.c
> index 9c64580..e9d6b67 100644
> --- a/drivers/staging/most/aim-sound/sound.c
> +++ b/drivers/staging/most/aim-sound/sound.c
> @@ -236,12 +236,12 @@ static int playback_thread(void *data)
>  		bool period_elapsed = false;
>  		int ret;
>  
> +		mbo = most_get_mbo(channel->iface, channel->id,
> +				   &audio_aim);
>  		wait_event_interruptible(
>  			channel->playback_waitq,
>  			kthread_should_stop() ||
> -			(channel->is_stream_running &&
> -			 (mbo = most_get_mbo(channel->iface, channel->id,
> -					     &audio_aim))));
> +			(channel->is_stream_running && mbo));

This patch isn't doing what you think it is doing :(

You need to keep calling most_get_mbo() for this to work properly, look
up how wait_event_interruptible() works.

thanks,

greg k-h

