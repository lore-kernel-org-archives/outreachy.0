X-GM-THRID: 6669200248940789760
X-Received: by 2002:a67:ea19:: with SMTP id g25mr7774305vso.6.1552822976754;
        Sun, 17 Mar 2019 04:42:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls2844781vsc.3.gmail; Sun, 17 Mar
 2019 04:42:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8gQKXyfQfsyU/cNp0sl0PLnXeJbpuFuWZp2wFuiPVsnW/bqlt6loql1WsKFfxwNXEz9wt
X-Received: by 2002:a67:7d43:: with SMTP id y64mr7893601vsc.30.1552822974623;
        Sun, 17 Mar 2019 04:42:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552822974; cv=none;
        d=google.com; s=arc-20160816;
        b=M9BwryH2AFvSwlYJmvlWVZR8RlKa5G4Ib18ueBFYUUjdwTO3s7C0fQblPbIVR8TbZK
         tvALAtVECw26npBzYzwoMyhzN+o4vcxSYf3r5jKhS5c4mOMSqKmMegF84aS/0mcnQNhQ
         XYKEk14YRIJhAPItaMFbS6VJlVaamaz8UelB7nycjIXPtuVpfsoZnoZVtYpVkH/pUz6Z
         UVxhUkNq0K+sD/TO2GqVmKJylxflQ2doMkpZhdaxKfNirgdGJWAy8SVQzIPB/WvQzoAL
         IQPEefA6uUhjgnghFjv1Elt6Rjr2pBYtozRUMnqgjfJu7Op4xPtSnqTklWI3YPHU3sWw
         QUdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=F7I+PaB2H4atUtUz7Jg08GSZxr2QZb80F30J/IG110Q=;
        b=eqpMHe3/xBx50qtb1cV/yzd7XsRXKbIs0BTo2Vzg8D4vo0eIf2kW+Xa+Vduw+ICKTR
         +PjJWxIew1eVelS4HZ0HsyfQdBNOtbi/jkL6cmg9869jdHN1vWNgBO7vP2jKiA182efX
         UbaqMeIzEu4XtrizKUdLZmb0XvkNJjuokpz0GSSrMmKjSQBDGqXsO74X07H0inkCzTaW
         9RL+692Q10xoevIukGdod1+Dbpb0rHzzeCPxViwppinP44GYTWdvwx04/Ln+syilVuJC
         H8bPzxqz5+j/IAiSp8GNlyN5zxnID52kwHK2F0XnvZA/2903F1HfiBv/rHJzF0Dw7FDP
         Irpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I2kudWyK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c15si357965vsp.2.2019.03.17.04.42.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:42:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I2kudWyK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EACC821019;
	Sun, 17 Mar 2019 11:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552822973;
	bh=Os1Uc3twXrOOV9uXrE56WaHXMJIAn/UVr2As1wCg7fA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I2kudWyKPbzjvLUyUSEXtcET0aApylqKgApjE7rN9W+vut8qX7fbV96vKjo/NrE+G
	 h02dP42njqf9UmUXmpILsF4CMLQWyYnXbTA0W5jaVNaI6+x1GFhiMHcd4YUmH5HHy2
	 OvUHNzg89aBF714SSgwAiB8LCEGypJhthxzIat+M=
Date: Sun, 17 Mar 2019 12:42:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] staging: speakup: fix line over 80 characters.
Message-ID: <20190317114247.GD3160@kroah.com>
References: <20190317112857.18220-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317112857.18220-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 11:28:56AM +0000, Jules Irenge wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
>     "WARNING: line over 80 characters".
> ---
>  drivers/staging/speakup/kobjects.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

No signed off by?

> 
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 11c704b27c3c..53c8793c382f 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -154,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  			continue;
>  		}
>  
> -		/* Do not replace with kstrtoul: here we need temp to be updated */
> +		/* Do not replace with kstrtoul: temp need to be updated */

Original text is better than this, I do not know what your shortening of
the line now means :(

thanks,

greg k-h

