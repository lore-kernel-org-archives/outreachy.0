X-GM-THRID: 6335880985647775744
X-Received: by 10.129.82.88 with SMTP id g85mr1016694ywb.72.1475193888268;
        Thu, 29 Sep 2016 17:04:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls4277075otc.12.gmail; Thu, 29 Sep
 2016 17:04:47 -0700 (PDT)
X-Received: by 10.157.7.18 with SMTP id 18mr1203992ote.61.1475193887877;
        Thu, 29 Sep 2016 17:04:47 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id a3si1380375paw.1.2016.09.29.17.04.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 17:04:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id s13so33801960pfd.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 17:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fW7ixk1zUdI+y1cxjRIb9jhyYS38y8EXPSi8J+Drde0=;
        b=VZS9BhPEpx0DBL9I5DenG9rgzbakywkjXQW+FfecpdEc+9GUFA20Jtjx8xrTFMgxmr
         Ro5A8Xc2UIgf+sEHkBvBipWZZ2DG0yXWza8pTWZ0vssee/UsUZ75nyriK56pGO+20Z1k
         Rk/11PIYE/iH++5t/RCvKE2To1yXTOxTThvqSm9PWSERzNAxWp7t8c9Qfvh8/ezvQN2W
         DHeOyafQOY92nLQbXx8QWII6wHVaPAiYf2obmQ+DHrVi8liZRxvNzUQ73y2zSzNLc5An
         NgcX5X2mxayPsXFlox4HYS5A8InLJJ1nzBQfmHAZjshrUv9zVzSIIOhhzjzpJdfjwb0h
         xvmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fW7ixk1zUdI+y1cxjRIb9jhyYS38y8EXPSi8J+Drde0=;
        b=h8KiEaDSIN7kbBwLZU11hKU826Osz54xdSuEKRFx0L41ZWrc7R5n2hstUpGjeyr+LC
         WRbfIl0wC8gRSBtvAJeX24iAQWgouzMpZKfr5Ez34dx/PXJ+nMJHT91ATv0datliWkyW
         COxRcwPnIeTTFjmRXDDjnXjcxz80SzzbgYZ+i0rXKocpsReBderDWLmVStY4ZH535DF+
         5cYNFeJ3KEtGML0WERpGh+MYMq81wftIJ2iittTA6iFSLpCD9xj2X7+/rMqf2RxvMyHg
         MGjnI+tw2OCktytt8wK547YNa8JrHwI31IyfnUCMEWKEL/OPyyNEqqI+i/jpYW0mgSi7
         AevA==
X-Gm-Message-State: AA6/9RkXGIP11Ugjc8DVU0RuQfZpl5ei/7HwUVxSloqlFLLdGtvsjxI8Hcgx0nEbgc1PKg==
X-Received: by 10.98.158.90 with SMTP id s87mr6788756pfd.117.1475193887676;
        Thu, 29 Sep 2016 17:04:47 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id cu2sm22818303pad.18.2016.09.29.17.04.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 17:04:47 -0700 (PDT)
Date: Thu, 29 Sep 2016 17:04:45 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Split String Checkpatch Warning
Message-ID: <20160930000444.GA8196@localhost>
References: <20160929221404.GA7406@localhost>
 <20160929235013.GA4857@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160929235013.GA4857@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Sep 29, 2016 at 04:50:14PM -0700, Alison Schofield wrote:
> On Thu, Sep 29, 2016 at 03:14:05PM -0700, Elizabeth Ferdman wrote:
> > I'm seeing this checkpatch error:
> > 
> > WARNING: quoted string split across lines
> > 
> > example:
> > MODULE_AUTHOR("Ralph Metzler, Trent Piepho, Ben Pfaff, "
> >              "Christoph Bartelmus, Andrei Tanas");
> > 
> > Just wondering if this is a good thing to fix, and how do I fix it? I
> > don't see anything about it in the style guide. If I put the whole
> > string on one line, it's more than 80 characters. I found one option on
> > stack overflow that says you can do:
> > 
> > char *my_string = "Line 1 \
> >                    Line 2";
> > 
> > So I'd be putting a space and a backslash after the line?
> > I don't know if that conforms with linux kernel coding style though.
> > 
> > I'm also wondering if anyone knows any good resources on common
> > checkpatch errors and the proper way to fix them. 
> > 
> > Thanks,
> > Liz
> Hi Liz,
> Best guide may very well be this googlegroup!  It goes back a few years,
> so pretty much every checkpatch error has some history in here.  'split
> string' not so much, only 11.  Hopefully you can find something in there
> that gives you a lead.  Search through the googlegroups web interface.
> alisons

Ohh that makes a lot of sense i will definitely do that from now on.
So for the split string, it looks like you can just make a long string
and ignore the 80 char warning.

Thanks so much!
Liz

