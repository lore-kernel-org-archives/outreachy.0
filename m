X-GM-THRID: 6523255029551333376
X-Received: by 10.25.44.7 with SMTP id s7mr561064lfs.20.1518814451050;
        Fri, 16 Feb 2018 12:54:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.25.151 with SMTP id 23ls322991ljz.5.gmail; Fri, 16 Feb 2018
 12:54:09 -0800 (PST)
X-Google-Smtp-Source: AH8x2279nNHmNrT/ocRdlV0I06Pa5FUXYXZraZ+T9fS6FLY3QjA0A6DGZIStFZ/tmudmqrSTI2o4
X-Received: by 10.46.60.21 with SMTP id j21mr493535lja.39.1518814449046;
        Fri, 16 Feb 2018 12:54:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518814449; cv=none;
        d=google.com; s=arc-20160816;
        b=agAZLy6fKw4IyKkqziFe7fNYtP+UPLVJsQ3TU+VLYC7Ho7cHpGgxgGofKlCInGpRE6
         WHu/2JjAbaliTM64xDkg4DyeKZhQ7mcSSHcFHxE+0dncPC86NesBRZEesDKKzGRTrFu/
         eSJ6RgTpg18ke7u4uvLaVJLIofMUv/Qm19XsZbPQy9N5FRyJUNy1AZ4joCOK1bjloS+V
         twzbK38+npzwGLAAbUPPx7e7gvRtPfiqRTRhxnHz1w8d9mB31Ba6f+iZJsspj1H2SdT+
         sxqJHmgw2D19gORXbfqybLFxW+Bhequl3DiLLALC3VS+jwj3M9909Zv9cTL42i2tFx0B
         CcVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=p0q3DFwGjTtz53Ct/c0IWpIBw6eXUNI3bPO10M2dilM=;
        b=r9EksKOlxjCuI2uy3oPhgyKn00U7ISgNCrZz/zXA9g6paayh2xRwsV+vxZ6xk5ab8o
         68e0DUZU19JTu2+9ef3cq0PoXJUzBhhYfsTEUHVRuoFUmGqoWJGAjfuTamUkaOqEjHLE
         IL0qhrycuiGeQGuBLlPub81J+F4FQyEnOFUGQqwCm9nwylPAcJ+swQEiAWv4CKT0uqFG
         gOlaGgGLoUukd0LWQkWsvvGuJCqZkn0hJisXkc04ej4UPBPC+mYMrKAuvTskvRRLQuQe
         GWifrM/gxa068hOKMOQwP0qZW9LIQMz2kWqEV4J0U5KbYHYXItwUDtyCXFW7hLC3V0Rj
         StSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b10si870942lfe.4.2018.02.16.12.54.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 12:54:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,520,1511823600"; 
   d="scan'208";a="255093223"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2018 21:54:07 +0100
Date: Fri, 16 Feb 2018 21:54:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ishita Tripathi <sakurakhadag@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Fix checkpatch issue
In-Reply-To: <20180216204100.GA76452@ubuntu>
Message-ID: <alpine.DEB.2.20.1802162148210.2213@hadrien>
References: <20180216204100.GA76452@ubuntu>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 16 Feb 2018, Ishita Tripathi wrote:

> Deleted line break after dereference operator (->)

Thank you for your patch.  There are some issues with various parts of it,
however.

First, the "To" list looks strange.  There should not be the --to: and the
; after the email of H Hartley Sweeten.  Did these come from th
get_maintainers script?

Next, the subject line should give some information about what files are
affected.  Run git log --oneline drivers/staging/comedi/drivers/rtd520.c
to see what are the subject lines that others have used on this file.

Next, "Fix checkpatch issue" is not very descriptive. Find something short
that described what you do.  You can put that the issue was found using
checkpatch at the end of the commit log message.

Next, the commit log message should be in the imperative, like you are
ordering the patch to do something.  So it would be "Delete" rather than
"Deleted".  Here you may also want to say why you made the change.  I
think the code is more readable without these strange linebreaks.

Finally, it could be better to just put &cmd->scan_begin_arg on the next
line, lined up with arg, rather than going over the 80 character limit.

Please send a v2 patch.  There are some hints about doing this in the
tutorial.

julia


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
>  		}
>  	}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180216204100.GA76452%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

