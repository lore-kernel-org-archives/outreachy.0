X-GM-THRID: 6207871882034675712
X-Received: by 10.140.234.135 with SMTP id f129mr6629230qhc.9.1445416139648;
        Wed, 21 Oct 2015 01:28:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.2 with SMTP id rs2ls1431074igb.24.canary; Wed, 21 Oct
 2015 01:28:59 -0700 (PDT)
X-Received: by 10.68.166.132 with SMTP id zg4mr6634309pbb.7.1445416139393;
        Wed, 21 Oct 2015 01:28:59 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x242.google.com (mail-yk0-x242.google.com. [2607:f8b0:4002:c07::242])
        by gmr-mx.google.com with ESMTPS id d207si547429ywb.4.2015.10.21.01.28.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 01:28:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::242 as permitted sender) client-ip=2607:f8b0:4002:c07::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::242 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by ykdr3 with SMTP id r3so3527765ykd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 01:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ecCV/oFZkREdeURwfY701CGkxsyWMWFhmmOliFxkfgA=;
        b=ag4XHJLDko8HA9Dc20aSPzbv0NqbUd2RZ3h/XYkhK9BKfvYfQj65/ac1FVA7Sr8ogw
         bID9WGpuogx0kpMYn+MN1m/Gb/tMjGjPo/HT0F18+t/TdhQs3+nmo752Im8cCOfY0Fps
         qv6PfYYACohm+17sbzsYwe8ch6YIJWvHFS38c2Kkxx9OGYr2yOKsfC3FEgm8JP8QCXuD
         hkUyKu2rpS1n2aYpSIUCKQQxCRpi9l7g+j5p43bIZLnhCK2bVDmZQdgIGj06tUvXq+uc
         HsGt6vYUUtIus8pVZGjI4Cvi27hPpGKAqchzKW6IuCZMNk45yVrhr6jPDK1ZnrVZg4+Y
         ETQA==
MIME-Version: 1.0
X-Received: by 10.13.232.77 with SMTP id r74mr5467900ywe.283.1445416139255;
 Wed, 21 Oct 2015 01:28:59 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 21 Oct 2015 01:28:59 -0700 (PDT)
In-Reply-To: <CAEnQRZArNAOoCpnPWBxJPjRC13tiYyT-fTVqkfaZVZn3psaFNQ@mail.gmail.com>
References: <cover.1445382697.git.ciorneiioana@gmail.com>
	<6a5c7c89e9bc61382ab763935b0f9b9442f67cb9.1445382697.git.ciorneiioana@gmail.com>
	<CAEnQRZArNAOoCpnPWBxJPjRC13tiYyT-fTVqkfaZVZn3psaFNQ@mail.gmail.com>
Date: Wed, 21 Oct 2015 11:28:59 +0300
Message-ID: <CAHWJYFn2YGAqws+g3kJZ5W3hsqZ6U95oFWzJpAoAizH3P-VhcQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: dgap: properly indent to
 match open paranthesis
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 10:41 AM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Wed, Oct 21, 2015 at 2:13 AM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
>> Indent parameters and arguments passed to function calls to match
>> open paranthesis
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>
> Mostly looking good, two questions. See below:
>> ---
>>  drivers/staging/dgap/dgap.c | 52 ++++++++++++++++++++++-----------------------
>>  1 file changed, 26 insertions(+), 26 deletions(-)
>
> <snip>
>
>> @@ -3538,10 +3538,10 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
>>                 return 0;
>>
>>         spin_lock_irqsave(&ch->ch_lock, lock_flags);
>> -
>
> Why remove this new line?
>
>>         /* Get our space available for the channel from the board */
>>         tmask = ch->ch_tsize - 1;
>>         head = readw(&(bs->tx_head)) & tmask;
>> +
>
> Why add this one here?
>
>>         tail = readw(&(bs->tx_tail)) & tmask;
>>
>
> thanks Ioana!
>
> Daniel.

I don not have the code in front of me but I think they are just my mistakes.
I will take a look shortly.

Thanks,

Ioana

