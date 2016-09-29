X-GM-THRID: 6335880985647775744
X-Received: by 10.237.35.242 with SMTP id k47mr1244830qtc.18.1475193017966;
        Thu, 29 Sep 2016 16:50:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls4166740otw.27.gmail; Thu, 29 Sep
 2016 16:50:17 -0700 (PDT)
X-Received: by 10.129.37.11 with SMTP id l11mr1200072ywl.165.1475193017604;
        Thu, 29 Sep 2016 16:50:17 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id um12si3867380pab.2.2016.09.29.16.50.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 16:50:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id dw4so18552731pac.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 16:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lv//m/3+GH9k885B6EVbAQ09JLu9RJEuJCUCdSd/cHk=;
        b=foVGhjZ0VgTvZ3hMo/bKoS/LyOM8WjloFdjaky/xHKV+2ZKDPr1nMKN44m/H+vWT8/
         jCKdONxEwH3c3R+PhaTzF6UVYhw5wsEpyh2iLbVkSRdWTBLjHGwYdfZQU2gBYUmS11b1
         2YwlH92Vbxwu5lThPkjgcGhpAIqxnGrPl1XqFCsZwb3r9kKLZFeT/MxxaWJZv7WSP2ik
         3HiWp7M+hs+rIX58uhRmQR7eGYFm075tfweA/nxztOtl57oAr3Nv3rUsitNTzdcug3xL
         bBOr/qVYD5GM8j9/ycIJM+xzpxoAqN5hbqoolv4TmkpBrAxRDLl68NF3o9WH3v6j7gTb
         H4yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lv//m/3+GH9k885B6EVbAQ09JLu9RJEuJCUCdSd/cHk=;
        b=MFvovyMiqZ2yM+gF08ZUWEUyhmI0wwsmzjeuGv84JKYS1rY6I1riwxEhVpU77bL10a
         x0X/y1ayyvDc9ejRYcO08f2qXAJ6tvVtjr90dcOl4Gp/j/5yCQlfhbQJrbPRAj8q5hD0
         QYv0gsS2/eYe5fH+bQGH6wSn5g7QL6p1yhECTbIK4NcA4rvLFf7mzavi4UD+yfUATXVD
         jwbStpMhv0BQBMsVVg5+IHxjq6HhcsdKFt1Q+m0PL9lb2RCt+zggtweSS0gCjo2K7CMP
         2Mt8Hziaom8DYpxRaY9tGR75rRmup+EGxbbEm/bkvlyxD4cDhaLmGFcuCOQ5JXuTMH/3
         8+ew==
X-Gm-Message-State: AA6/9Rn/IUDPyLaUorw4cz7DEXRDid80YMeMoFjBZ4xF9G7ReWaSKk5C0ZFzKBPj8mky6Q==
X-Received: by 10.66.131.49 with SMTP id oj17mr6927179pab.106.1475193017426;
        Thu, 29 Sep 2016 16:50:17 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id e1sm22832417pap.11.2016.09.29.16.50.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 16:50:16 -0700 (PDT)
Date: Thu, 29 Sep 2016 16:50:14 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Split String Checkpatch Warning
Message-ID: <20160929235013.GA4857@d830.WORKGROUP>
References: <20160929221404.GA7406@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160929221404.GA7406@localhost>
User-Agent: Mutt/1.5.23 (2014-03-12)

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
> 
> So I'd be putting a space and a backslash after the line?
> I don't know if that conforms with linux kernel coding style though.
> 
> I'm also wondering if anyone knows any good resources on common
> checkpatch errors and the proper way to fix them. 
> 
> Thanks,
> Liz
Hi Liz,
Best guide may very well be this googlegroup!  It goes back a few years,
so pretty much every checkpatch error has some history in here.  'split
string' not so much, only 11.  Hopefully you can find something in there
that gives you a lead.  Search through the googlegroups web interface.
alisons

