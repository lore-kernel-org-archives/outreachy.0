X-GM-THRID: 6335880985647775744
X-Received: by 10.157.19.78 with SMTP id q14mr1375043otq.41.1475211156317;
        Thu, 29 Sep 2016 21:52:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls4882736otb.16.gmail; Thu, 29 Sep
 2016 21:52:35 -0700 (PDT)
X-Received: by 10.31.154.66 with SMTP id c63mr1429438vke.24.1475211155842;
        Thu, 29 Sep 2016 21:52:35 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id f12si4182830pfk.0.2016.09.29.21.52.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 21:52:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E99C178D;
	Fri, 30 Sep 2016 04:52:34 +0000 (UTC)
Date: Fri, 30 Sep 2016 06:52:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com
Subject: Re: [Outreachy kernel] Split String Checkpatch Warning
Message-ID: <20160930045238.GA4515@kroah.com>
References: <20160929221404.GA7406@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160929221404.GA7406@localhost>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 29, 2016 at 03:14:05PM -0700, Elizabeth Ferdman wrote:
> I'm seeing this checkpatch error:
> 
> WARNING: quoted string split across lines
> 
> example:
> MODULE_AUTHOR("Ralph Metzler, Trent Piepho, Ben Pfaff, "
>              "Christoph Bartelmus, Andrei Tanas");
> 
> Just wondering if this is a good thing to fix, and how do I fix it? I
> don't see anything about it in the style guide. If I put the whole
> string on one line, it's more than 80 characters. I found one option on
> stack overflow that says you can do:
> 
> char *my_string = "Line 1 \
>                    Line 2";

As most stackoverflow answers, this one is technically correct, but
totally wrong :)

You would end up with a string that contained "Line 1          Line 2"
in it.  The leading whitespace is not what you want to have before "Line
2".

Just merge the strings, putting them all on one line, so your example
above should look like:
MODULE_AUTHOR("Ralph Metzler, Trent Piepho, Ben Pfaff, Christoph Bartelmus, Andrei Tanas");

Hope this helps,

greg k-h

