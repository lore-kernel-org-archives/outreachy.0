X-GM-THRID: 6200896862154653696
X-Received: by 10.195.18.100 with SMTP id gl4mr5964006wjd.4.1444107240019;
        Mon, 05 Oct 2015 21:54:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.166 with SMTP id ev6ls1013476wic.28.canary; Mon, 05
 Oct 2015 21:53:59 -0700 (PDT)
X-Received: by 10.180.160.146 with SMTP id xk18mr2859753wib.3.1444107239627;
        Mon, 05 Oct 2015 21:53:59 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id xl3si624518wib.1.2015.10.05.21.53.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 21:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id fx3so148101381wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 21:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=T8xTrbwJlqMLDNaF54bSnFOzAHIpTYfewtE52MfHeIc=;
        b=fEsXgH89fsr1Gwq2QpQ7gyC0fP/6W0iW6qz6CyHfUzu5OxUGAW+2d4+vjRtaWIn2U/
         HvsOl4mE28G/YfBSYICw+dOgUmfP61RqKkDJne05zBsNQ0cOZSkbM2wDvlJimj+zKlCQ
         iOJ7UEQnhNUsTDwJe3cMLWVRbpz3VfUZzJ3SUEdjVJBq2U3vEprZVTPxpKmAG0bi51dH
         JR+FvAZi6hr7joiGXdNlqyLi4reHKXpEz6Kagzms1uQUmvT5ygZrhF09avEBD4crCSMi
         jNqDzAiYYxODBhsBeWHagXrzmRYGd8Z9L3yfxz+IDbKQfpZVeJuxco+NnHXL86YCb/cY
         cxeA==
MIME-Version: 1.0
X-Received: by 10.180.10.197 with SMTP id k5mr14052345wib.22.1444107239490;
 Mon, 05 Oct 2015 21:53:59 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Mon, 5 Oct 2015 21:53:59 -0700 (PDT)
In-Reply-To: <c6724038-bdcb-4813-b49b-22b9d8f5af2b@googlegroups.com>
References: <20151002040637.GA41415@ubuntu>
	<alpine.DEB.2.10.1510020959500.2633@hadrien>
	<83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
	<20151002102819.GD9346@sudip-pc>
	<775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com>
	<20151002125909.GB32540@sudip-pc>
	<71611fa2-5d15-4032-bd55-b7991ea55a5b@googlegroups.com>
	<alpine.DEB.2.10.1510041457450.2661@hadrien>
	<20151006040800.GA30304@ubuntu>
	<c6724038-bdcb-4813-b49b-22b9d8f5af2b@googlegroups.com>
Date: Tue, 6 Oct 2015 10:23:59 +0530
Message-ID: <CAK-LDbJ8q40P8=z9T1Ah90abH1ruhvtFYYGp0F3kT0BVZCsz1A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 6, 2015 at 10:13 AM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
>
> Done. Seems like those folders didn't have much to compile, only one file
> whose dependencies were compiled.
> Thank you

Hi,

You top posted again even after the explanation from Sudip. :(

Please don't do this. Read this:
http://kernelnewbies.org/mailinglistguidelines

And consider the following line:

'Please do not TOP POST. On almost all open source mailing list
top-posting is considered RUDE.'

Thank you.

> On Tuesday, October 6, 2015 at 9:38:25 AM UTC+5:30, Shivani Bhardwaj wrote:
>>
>> On Sun, Oct 04, 2015 at 02:59:17PM +0200, Julia Lawall wrote:
>> > On Sun, 4 Oct 2015, Shivani Bhardwaj wrote:
>> >
>> >>>
>> >>> Hi Julia, Sudip! I think after I have used make allmodconfig,
>> >>> something is not working right. Now, when I use sparse, it shows
>> >>> messages and warnings for arch/ and include/ , is this dues to some
>> >>> change in configuration file? Please respond.
>> >>> Thank you!
>> >>>
>> > > Thanks, Sudip! And for last two messages I did make use of mutt, I
>> > > don't
>> > > know why doesn't it show up.
>> > > And, does this mean that every time I compile, I must use
>> > > allmodconfig?
>> >
>> > You have top posted again.  Once you make allmodconfig, it should be
>> > good
>> > enough to leave it as is, at least until you update your kernel and get
>> > a
>> > new Kconfig file.
>> >
>> > julia
>> >
>> > > Thank you
>> > >
>> > > On Friday, October 2, 2015 at 6:29:15 PM UTC+5:30, Sudip Mukherjee
>> > > wrote:
>> > >       On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj
>> > >       wrote:
>> > >       > Hi Sudeep! I'm having trouble with inline mode of
>> > >       communication, I think
>> > >       > I'm doing it wrong. I'm not getting exactly difference between
>> > >       top-post and
>> > >       > inline way, I've been warned about this before as well. I'll
>> > >       learn as soon
>> > >       > as possible. I've sent my .config file. You can check it.
>> > >       Ok, now I understand why you are getting the warning. :)
>> > >       In your .config CONFIG_STAGING_BOARD is not selected. So
>> > >       staging/board
>> > >       is not included in the build and as a result the modules on
>> > >       which board
>> > >       is dependent are also not built. So in this scenario when you
>> > >       try to do
>> > >       make M=drivers/staging/board it gives warning. To test properly
>> > >       try with
>> > >       make allmodconfig.
>> > >
>> > >       regards
>> > >       sudip
>> > >
>> > > --
>> > > You received this message because you are subscribed to the Google
>> > > Groups
>> > > "outreachy-kernel" group.
>> > > To unsubscribe from this group and stop receiving emails from it, send
>> > > an
>> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > > To post to this group, send email to
>> > > outreachy-kernel@googlegroups.com.
>> > > To view this discussion on the web
>> > > visithttps://groups.google.com/d/msgid/outreachy-kernel/71611fa2-5d15-4032-bd55-
>> > > b7991ea55a5b%40googlegroups.com.
>> > > For more options, visit https://groups.google.com/d/optout.
>> > >
>> > >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/c6724038-bdcb-4813-b49b-22b9d8f5af2b%40googlegroups.com.
>
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

