X-GM-THRID: 6337545646226014208
X-Received: by 10.66.231.74 with SMTP id te10mr1115558pac.67.1475623176010;
        Tue, 04 Oct 2016 16:19:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.19.111 with SMTP id q44ls14173593otq.30.gmail; Tue, 04 Oct
 2016 16:19:35 -0700 (PDT)
X-Received: by 10.237.38.37 with SMTP id z34mr1557985qtc.20.1475623175663;
        Tue, 04 Oct 2016 16:19:35 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id c75si1881367ywh.0.2016.10.04.16.19.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 16:19:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id u124so3186692ywg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 16:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xHPZUPYLm/zmOcbhaVmO8i1psNsn94M7Jf/A06CZQEg=;
        b=dw2YhdararSg4b6N6D4aGB+Or4Wz9ISCkWduq0t3PegjgdQt4VNsU9sS1zSH9sNCQ5
         Hh9kCamrYM/IL1hBKTX2fIuladFPG6VgwzKVRNCA3lKCGXi3wL61nNsJL6zLPJzr8U6V
         SOH7KjE1o6jdKPGAPawvZxc/azBi76G3a9yIF8FXtcpcc1/DNQaouJR3eFoTT9XNOT0+
         2qqZ977Uu8PMC0PDeXDhe+NnwpNwwfyG7lNqQ7Xb17GmuYpkBFJaQxJOC8foz9H4M7oT
         pn9zD4W3GnfbStwgwr1Tx7USTpItIOm+i1Sa65FDaq+2q01qD7frKiCu3IDT1l1JyS8n
         HjnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xHPZUPYLm/zmOcbhaVmO8i1psNsn94M7Jf/A06CZQEg=;
        b=DpkVPy0mEE2ktcA07k6oZyG/BTtWHwxiZDOKaEax6ymeBfHa1eTGgSRVvvMWTvJ3QI
         k+MOLhexSMoFaZw/UG6G0QlJVFjXALHXS314WlUWlAjpUQ7R7CamFa/VpTcW56LmcU/B
         b9WvsVoJ3GfZnWmgE5CwJflkZNU4fgq1ijz8/Zhpd777mHnivybwx3x7K3+1HeJTGo3V
         Ow68GjGvPYK8RopH/Khvvt0K1mlGaCHLljJXeZfhAFHqh7b2IF5a2xvzS1JrVtm9w1Gz
         QWIfY3LK1cquj+PzzCJRFipXTEysd8Qmt5Y60+ULcVJjcdumnr02gfLacF8DR7svfU0R
         Q0AQ==
X-Gm-Message-State: AA6/9Rm6GwX2bBOnW+6tEBAWfTSlnbpWqq2GN3LXEFdEQCmHZ+Zu1L8pS4VXwq/3LbsOdQ==
X-Received: by 10.37.77.86 with SMTP id a83mr4885937ybb.0.1475623175471;
        Tue, 04 Oct 2016 16:19:35 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id m75sm18647138ywd.52.2016.10.04.16.19.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 16:19:35 -0700 (PDT)
Date: Tue, 4 Oct 2016 20:19:31 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Add log level to
 printk().
Message-ID: <20161004231931.GB5862@lennorien.com>
References: <20161004095344.GA3903@lennorien.com>
 <alpine.DEB.2.10.1610041214500.2940@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610041214500.2940@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 04, 2016 at 12:15:44PM +0200, Julia Lawall wrote:
> 
> 
> On Tue, 4 Oct 2016, Elise-Lennion wrote:
> 
> > Fix checkpatch warning:
> >
> > WARNING: printk() should include KERN_ facility level
> >
> > KERN_ facility levels ensure that unecessary messages, in different steps of driver implemention and testing, don't saturate the log file.
> >
> > When log level is not explicited it defaults to DEFAULT_MESSAGE_LOGLEVEL (usually "4"=KERN_WARNING). A module startup message usually isn't a WARNING.
> 
> When you made this change, I think checkpatch would then suggest you do
> something else?
> 

Yes, now I see it suggests to replace printk() with other options. Although I'm sure I executed checkpatch after making the changes and didn't see any new warnings.

> > Signed-off-by: Elise-Lennion <elise.lennion@gmail.com>
> 
> Is this your complete name?  I wonder because of the hyphen.
> 
> julia
> 

My complete name is Elise Lennion, without the hyphen. I'll fix this in future patches.

I sent a new patch to fix the mentioned issues. In this case should I create a completely new patch or send it as a [PATCH v2]? I chose the latter, even though its subject is different. Thank you.

Elise

v2: https://groups.google.com/forum/#!topic/outreachy-kernel/-YJbFK96SFI

