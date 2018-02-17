X-GM-THRID: 6523279529594585088
X-Received: by 10.28.6.5 with SMTP id 5mr72719wmg.20.1518852672514;
        Fri, 16 Feb 2018 23:31:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.170.1 with SMTP id t1ls621221wme.7.gmail; Fri, 16 Feb 2018
 23:31:11 -0800 (PST)
X-Google-Smtp-Source: AH8x225Q0VV8sndGYKFXOjBmptAWIxMam3/6vxjvdWw1Rr/F9zWSzxPLM3+tm6ieCCse4+Kndeg6
X-Received: by 10.28.91.147 with SMTP id p141mr1525630wmb.31.1518852671394;
        Fri, 16 Feb 2018 23:31:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518852671; cv=none;
        d=google.com; s=arc-20160816;
        b=vxXZVxwvXZ1wiHOwtErrhtoZqsuvs2rVzUM4xjgGcqg9sreWqdj7zF2F/YN0Adcjr7
         BskeCD0qzuVFJFWyH/yqy2MpQcOzOmy3gAcvG3VwWVxmSg/F2pAvHKR2NUgwp94S1GZO
         UW82e10r09V+jZijIAmahCkFEWwgqYL9PKZycBSL7NwjvioJDOxnd5WTBvxiI87fz8Hz
         RxbFDrXyE1if3SdYoZ20QRUw5PK/ZFGFhqLT4evTl5Xkh00rvQ4I95HvBa9lKUidqRnX
         dA30fvAFiU9hOH9VOkI5lX8iXm5iDzq5eo/2KNuwCMBDZEa/zDuwyvn8YQ3ynypB2dwV
         Grdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=+G18prUecrnN3MguUyTJPWyUcXgjoW9BxOnMunH/hIA=;
        b=JyeI0stbJAFfaFeF2lnQ80eFHXMTIWlrLH/tvxxmaa4wn0jKBoWXFLDe9CyoPAJUs0
         p6FpIy7HaBV0B7eSMB7+aGeAyOTRGdaSSaxl/inV1CF+xCUMhIHaz0vR1WVLRazzpJYF
         7y6rWyBwxs6NKS4xwYTw/KA/8CvmC3/benDsgoJ+N8EJt/l/JiOmW5dJ9hDYQdt4pZj5
         PQDq2bGRSZqtt+td0E2D7MDyKGEmIM3oOd3l6WOT8VPkM8k2yjXeWzJkNNRoj/VoTbve
         1lgMFG6uZZOxQleBMOjpnmAU4feK5Epr7vZwWLNK0a+vIGb0VNwTEvBXjUFZVPYI8IML
         k5Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g70si193874wmc.3.2018.02.16.23.31.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 23:31:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,523,1511823600"; 
   d="scan'208";a="314028637"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2018 08:31:10 +0100
Date: Sat, 17 Feb 2018 08:31:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ishita Tripathi <sakurakhadag@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Ian Abbott <abbotti@mev.co.uk>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtd520.c: Fix new line
 after dereference operator
In-Reply-To: <20180216221603.GA77503@ubuntu>
Message-ID: <alpine.DEB.2.20.1802170829440.2645@hadrien>
References: <20180216221603.GA77503@ubuntu>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 16 Feb 2018, Ishita Tripathi wrote:

> Delete new line after the dereference operator (->).
> According to https://kernelnewbies.org/CheckpatchTips, it is better to
> have longer lines than break at this operator.
>
> Signed-off-by: Ishita Tripathi <sakurakhadag@gmail.com>
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
>  		}
>  	}
>
> --
> changes in v2:
> -changed subject line
> -improved description

Greg asked you not to move arg and I asked you to move the first line down
to the next line to line up with arg (and thus not exceed 80 characters).
These suggestions are contradictory, but you should do at least one of
them.

julia

> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180216221603.GA77503%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

