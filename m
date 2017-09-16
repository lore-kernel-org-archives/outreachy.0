X-GM-THRID: 6466340392828665856
X-Received: by 10.36.125.206 with SMTP id b197mr3741522itc.42.1505563711572;
        Sat, 16 Sep 2017 05:08:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.92.200 with SMTP id q191ls2652366itb.4.gmail; Sat, 16 Sep
 2017 05:08:30 -0700 (PDT)
X-Received: by 10.176.72.173 with SMTP id x42mr17527403uac.102.1505563710863;
        Sat, 16 Sep 2017 05:08:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505563710; cv=none;
        d=google.com; s=arc-20160816;
        b=uUXajGu3La+xU1OxyHmBFBIf5LeGm526H3+wdYZv80fLaO80m9Mbzx669Xd2ysZLJ6
         NxZjfkXD2VCCUu8Qo2nMZBkQdWSat2Td6Tk4guhekDhSqzYRc4s/1TXWqb4st9JstC7u
         USW/zYHqMXx472tod403BtIGh4cFxbMqlCIliGA344dMTEATl11Eqig+hQVrBGyj/Ux8
         OVZhmN4e2ZBqq8CMa2309LILMZ2GHIWBgjDkUDPaJtH0+QI8SW/34b0XLfPSZop8OkS/
         Ojg1fsEobeq4lKiIaUxDWaDlURfMnqVM7kbJvBLeFSNCO40zcCFIBv/5O0pvSLxSrdNT
         pUKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=nAyucg+KZGj0i2c4LppDZQiKzt0FLa0eRta77Lq8KTI=;
        b=tGTYEQ1SZ0yLNHh6yM617DxUlZiRG90Ts65UrYMFMcW6d7v3Il9k4JDkbfA8ukmH2n
         MpadUFSYWbGB7XHtUgFxbcsTF2ejDmDtNQlVCivMcI7ELRqNPuUvtmWWWWmGIiuOhnlB
         20fg0ICwHY1CMcZsHkTkJt7gy/u1HJnwju0XVGFR2TTdhDuO5tq0Bu6mRk8uCfeK3nic
         UH0Po35lzKj/N8d3Xu74/IvUAo/Mi6/F/SGwqr598S2c3oT+xHeocBeGUN/LcvEXOhPR
         sWzjyBfcSqTebIphs+1keMdFAzjt4SvmpxDD8kFobWuzBB7xC/89b73OxpuZhmzLcjHd
         acmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hPSBe6Vn;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id t84si150009ywf.14.2017.09.16.05.08.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:08:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hPSBe6Vn;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id f24so3028970qte.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 05:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=nAyucg+KZGj0i2c4LppDZQiKzt0FLa0eRta77Lq8KTI=;
        b=hPSBe6Vnf2Hyd1N0vZ9hMyeavsErUtu9U/gmsymysWADCtEIbpCNfZb9In1VyGAEM1
         6LvjXegUrwCh3Q+/Nz9xv0QHxco7MiFhGbPPH+8bRwURPn6toFizPguxaLqxMX4xMYNU
         Datf0nEK8ttZuQ4dbFoEyizbyEjve5g9lssjWGUdCPWFBQ5IWTkM+TOM7VqKmaSOfaLz
         R1n09u0g0ZmBtTuff9E6VA4GLgJmd3hWZwkDgNTJ1llj3JvukKhGlqQMynWp15TDsvfx
         2Gls9eiYIDJVNxa73oMwXSQfLAJi4n716nPnacdIfotHbmr0D9AH47agWPuJKQlYFLyL
         G+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=nAyucg+KZGj0i2c4LppDZQiKzt0FLa0eRta77Lq8KTI=;
        b=VXDsq4gpxnSlbeDnhDkiLymNHS8HzGXY+c97ToABrJnYwTExRtWvSO+Xt/3B5pVev6
         1YsgQaMTu97b+W5EqIkoI7T7yXMQ4enpV30Gpo5iaN9J2A1TEWBblst7P21Y3mY+hUPr
         9G5jokTBLtgcCbtgqrsqMVCf5qy32elG6BxF4wp7ck3qFExYlN5vVxt/eFFPJPJy1O1A
         aYFUwG+vZf+jF+BIw+sHvvCPiCPrCNi/dSyuSYldqG45KLAfrhdrbDqAop6Q24n7NZJ9
         zzIZRfGgkeKM0vhG2Wy5bJoB0kwLz4ZfYcztnqm0Nbrb2TH92RLIfk7Ntvw7zzx1wyB5
         NwpQ==
X-Gm-Message-State: AHPjjUik6i1KPSlnYUI6F37FNaKE/WlRZj6GXcHd+zz0kRaYFaj+L2cR
	camdioyUXMmGAsX2NzXvbkgwJPFgrGjOi1eo+aA=
X-Google-Smtp-Source: AOwi7QAL/cAqhMkWQrhKrX6NOEWFxFEWupiAxX58J2eG8rR2208MX3gnJ3EuVvw+HT+Tv48Dt3g3qTlm3eRkmbXomQ8=
X-Received: by 10.200.63.2 with SMTP id c2mr16687783qtk.194.1505563710545;
 Sat, 16 Sep 2017 05:08:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Sat, 16 Sep 2017 05:08:30 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709161349030.2943@hadrien>
References: <1505562186-11813-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709161349030.2943@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 16 Sep 2017 17:38:30 +0530
Message-ID: <CAB3L5oy-yVREBwnbmJnhdnNcTtP4h77=6BGxncynZwMcQoeOsQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Remove unused variables
 from structure definition
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Lidza Louina <lidza.louina@gmail.com>, markh@compro.net, 
	Greg KH <gregkh@linuxfoundation.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 16, 2017 at 5:20 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 16 Sep 2017, Srishti Sharma wrote:
>
>> Some variables in the structure were unused and hence them and
>> the comments associated with them can be removed.
>
> How did you find these?  The last two can easily be checked with grep, but
> that is ont the case for type.

I removed them and then compiled the code to see if it still compiles.
I was using grep earlier to see if the fields in the structure are
ever accessed by the variables of that structure type, as the TODO of
the driver says that there is a lot of unneeded code.
>
> Actually there are two structures in the file with useless
> proc_entry_pointer fields.  The other one has a useless
> dgnc_channel_table.  It could be reasonable to make a series to do both
> structures.

Okay, I'll send them as a series. Thanks

Regards,
Srishti

> julia
>
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>>  drivers/staging/dgnc/dgnc_driver.h | 10 ----------
>>  1 file changed, 10 deletions(-)
>>
>> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
>> index 764d6fe..2b625cc 100644
>> --- a/drivers/staging/dgnc/dgnc_driver.h
>> +++ b/drivers/staging/dgnc/dgnc_driver.h
>> @@ -103,8 +103,6 @@ struct board_ops {
>>  /**
>>   * struct dgnc_board - Per board information.
>>   * @boardnum: Board number (0 - 32).
>> - *
>> - * @type: Type of board.
>>   * @name: Product name.
>>   * @pdev: Pointer to the pci_dev structure.
>>   * @bd_flags: Board flags.
>> @@ -140,13 +138,9 @@ struct board_ops {
>>   * @dpastatus: Board status as defined by DPA.
>>   * @bd_dividend: Board/UART's specific dividend.
>>   * @bd_ops: Pointer to board operations structure.
>> - * @proc_entry_pointer: Proc/<board> entry
>> - * @dgnc_board_table: Proc/<board> entry
>>   */
>>  struct dgnc_board {
>>       int             boardnum;
>> -
>> -     int             type;
>>       char            *name;
>>       struct pci_dev  *pdev;
>>       unsigned long   bd_flags;
>> @@ -200,10 +194,6 @@ struct dgnc_board {
>>       uint            bd_dividend;
>>
>>       struct board_ops *bd_ops;
>> -
>> -     struct proc_dir_entry *proc_entry_pointer;
>> -     struct dgnc_proc_entry *dgnc_board_table;
>> -
>>  };
>>
>>  /* Unit flag definitions for un_flags. */
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505562186-11813-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

