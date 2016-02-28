X-GM-THRID: 6254203377087938560
X-Received: by 10.50.66.205 with SMTP id h13mr253276igt.0.1456683640624;
        Sun, 28 Feb 2016 10:20:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.205 with SMTP id e196ls1040066ioe.47.gmail; Sun, 28 Feb
 2016 10:20:40 -0800 (PST)
X-Received: by 10.107.8.216 with SMTP id h85mr15936861ioi.0.1456683640276;
        Sun, 28 Feb 2016 10:20:40 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id y20si1067241pfa.2.2016.02.28.10.20.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 10:20:40 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fy10so78621585pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 10:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=slNDgF7ymtPDDE0b4G6Ph2l15U0qPw0eWptPNHr5Gv8=;
        b=rG6B84cXd57CQEXexAbxoDCo+6K2xpviXHhbmWMtOqsoXhutROD+HSFXrCvlhIT6tt
         zHKCpPhvOJ+VJMQpRLuwOvsAUdkBLWJVEMkkNFssjjTIOP8EkGwkZs6q+ZQUAnBpslpw
         K6CWMutcpOqA5Ep1N1eMVWDxRT6JTv3JTgOKKTi/9ROQ9ltA9QssB4otPwlxD3N52gom
         sJE6SOZwYq+3BRSryqZxEZXpgnbZ4BZUrP4LWSLY4dcC8pR7o0nxM+0lUC+KPlTDX6s3
         3MjWFRTLumREu5AWJOlkHWJ5lrG5nvnxbyq8QGRBsX6TZbYaKRenNBqCW8wD4vlTlWIl
         MIcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=slNDgF7ymtPDDE0b4G6Ph2l15U0qPw0eWptPNHr5Gv8=;
        b=k1gl4GEzAygkP21twqT2T/LUMJpfad6JFvgBdW+oWwIv1R5jK9e8bqHgGg07tPkzNk
         ENBv5hLg5IBIlQ+BEfZSvrut7wae123CFWQ/KtmYHZFxIFBmeGetLzRinJZmrwjk6DDB
         VZm7tfpG629v72TVVBI5f7yobCQX7d+D7vtwG8zfnwhJOp7BFx+/frSJQtrgDOMn0U76
         kYlhhGa15dXEFehWkv0pMYY8k/J/I5FIawirsT6/U5CVvnRi3lzEVsyPHAfRwJJoQZG7
         NShtWTaKUp0aktYVQaSKuxqnGWZupc+pIFBGHn5dgl8TBocAWVlkFPnZKC8VQ3rIXyF9
         nsSg==
X-Gm-Message-State: AD7BkJLVzqfLKlcuEf+wgHqxDNdchpmiGPg3ARkB5Z2OT9bqcWJvhZdhmFxueiyE0HmEfw==
X-Received: by 10.66.244.15 with SMTP id xc15mr16661447pac.97.1456683639940;
        Sun, 28 Feb 2016 10:20:39 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-68-59.dhcp.embarqhsd.net. [67.232.68.59])
        by smtp.gmail.com with ESMTPSA id w69sm17565587pfi.55.2016.02.28.10.20.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 10:20:39 -0800 (PST)
Date: Sun, 28 Feb 2016 10:20:37 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] reordering remove actions in iio drivers
Message-ID: <20160228182036.GA2929@d830.WORKGROUP>
References: <20160222194313.GA9769@amitoj-Inspiron-3542>
 <1456681879-2605-1-git-send-email-amsfield22@gmail.com>
 <alpine.DEB.2.02.1602281856040.2147@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1602281856040.2147@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 28, 2016 at 06:56:56PM +0100, Julia Lawall wrote:
> On Sun, 28 Feb 2016, Alison Schofield wrote:
> 
> > Hi Amitoj,
> > 
> > I just worked on a similar patch, and yours caught my attention.
> > It's not clear that it is OK to reorder the .remove actions.
> > Although it may seem counterintuitive to do anything *after*
> > you've unregistered your device, it is indeed done purposely
> > and safely in many iio drivers.  It usually needs to stay that way.
> > 
> > Check out more discussions of this on linux-iio.
> > 
> > And, consider the source...I'm just trying to figure this stuff
> > out too!
> 
> Which patch of Amitoj's are you referring to (or which file), and if 
> possible do you have a more specific link for the discussion on linux-iio?
> 
> thanks,
> julia

I'm seeing this threaded with original patch, but I guess you're not.
It is in reference to:
	[PATCH] staging: iio: accel: Replace iio_device_register with
	devm_iio_device_register

There is a lot of linux-iio discussion when this devm was originally
introduced with 30+ patches to migrate. Search devm_iio_device_register

and another later on when an intern tried to apply it:
http://article.gmane.org/gmane.linux.kernel.iio/13354/match=devm_iio_register

The accel case might be ok...just a heads up on the considerations.

alisons


