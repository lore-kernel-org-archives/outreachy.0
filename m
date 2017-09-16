X-GM-THRID: 6466340392828665856
X-Received: by 10.107.28.142 with SMTP id c136mr4637893ioc.52.1505564761820;
        Sat, 16 Sep 2017 05:26:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.178.208 with SMTP id b199ls8137597iof.8.gmail; Sat, 16 Sep
 2017 05:26:01 -0700 (PDT)
X-Received: by 10.84.215.220 with SMTP id g28mr12469190plj.59.1505564760977;
        Sat, 16 Sep 2017 05:26:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505564760; cv=none;
        d=google.com; s=arc-20160816;
        b=Xd3m7s8QgvEj0GIZKMJjCmGrDvzt2PalPac3jp7AGYlEp2tbmVX8elKTpwWTKUWo5e
         20p9jQf7XSN6p0Oj+sKmWIR34JczWsuKhYXFjlRagzKGstcdyrbRqdpGkFtGzgxrxpz3
         UtHeVUhxV7rCqhh6NbZsHQ7o+LFQY+j7pDjaAuH8V7Bx6NPomyMjhoBpQfz1OdXsSqVt
         XGLSsddkWvmLqP+YTgLvmzjVvC5VfMRWdzpUw8CJRD0m3bVmoelcIi7d9Lq8kcp1Z5ds
         pWCVygKWj8P3ZH3e+KhMyOmrHUYOGJtQbz5EGUMMROMt/eCJIswqBfvm5V02msGk8nAm
         n32Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=hEyZnsFndaDYWGXFa7g3UoTJwcnl5oL85ETZm1dG5og=;
        b=AjZd27Rog+XoCCTO1PCcROzn0g6m4LX53xg5kxw9/0jfphmIoywutUwRmH1X0p+wxw
         LF2/osljErItPwXCczXuH9vamgT8u8oJ2MOUXDFLiAqM17RlW/6xb4QsC7nDEV3oQA3g
         28xl4X7EXewVMi/HYrHbhVn4pyPfCk0FT+c9Epbv7+6cdQT/1E0cKRskDrx45sP49LVK
         GO4Hpy1KmIjQdsmpn49KrjsOq62L+rwQQ/ADNq8qoz7lHtzCUZa93iDq3Wsy141+jogO
         9rjo7HCpfjDDaUsNTdZivJOMWgAFZAO+DNnkvN9MD20178a3E2JpcE8gE7y0yORys5xp
         2ckQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QeTIwakw;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id l129si115158ywg.19.2017.09.16.05.26.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:26:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QeTIwakw;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id c69so2959706qke.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 05:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=hEyZnsFndaDYWGXFa7g3UoTJwcnl5oL85ETZm1dG5og=;
        b=QeTIwakw4m6YSlbObKwsvDcCngglKxM7b3kKcQDxXDy7m7FT6w4m6MS+LUmLmOfEzk
         Kyv1U0YCpr6ULfvyj5hWxN3RAqZpMXf02HYsZB/HUSha+tfmBBrDo/G6gZoKWWKLt1Eq
         50zAqZzB10uGhBJvjWkqGb9ot6b4OyJAFwed4EdPRQS5GjQe21/v/LZq6uQ5O6QPufY0
         tafwjB8T9qemgg2jSCYUZ4CpxbysP0y8DgMt6O8MyKhC0UZOxMWWlPL29eW2sZ/sPqGc
         TkhVE2iYUz6n/Qf/HsbLwBox7W0RWNJb/ya47JM6dXjTSW62k//3ZKsxSfLawIj7inLa
         TXnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=hEyZnsFndaDYWGXFa7g3UoTJwcnl5oL85ETZm1dG5og=;
        b=lB3/YTNr6+A+qYuy8ldKrpfav3zRtuvH3wy/bo+B+F+06g8FRsQPuk6MTO+nXkDyBc
         xRk2E9lQMk4Po1oumzNxuAn5daxTCogupgzBGCfsPuW6Inko9Afc8h93Szm1KT/lOjDh
         wgVFymtJ/BmB1asEZeM7sivulRgtJyTB2ee4i6zLopsDSCjNpzOw2OepfIVE9CfomDvh
         tegRGuU14/qL+s12SRLcSDdJJqXAzjUzSYTgSddIHzL5adcqDu9/DUujAgMzdumZUX16
         qRBv5ntwdMhmxuvquHTlvnAWYQoQZKsisH4M2NHTmqbc7uSY/PmZprDbnjahbKYa+k9q
         4K4Q==
X-Gm-Message-State: AHPjjUi13lZasg39vYTuAqmJwR/6Nemsg6xlLRHXC823SEsTsVLd0acZ
	MeGWHjed4pUN82LzOj8qH6mnKvaK8GIjbZqL1vU=
X-Google-Smtp-Source: AOwi7QAaizAI03g4msGcoNUBbKq2rUoal8q6ZcK1hpLB0wL0LxY+Lj8sLIu5whJXenhetW9Jz3FUbqYRQ4ezKqR22I0=
X-Received: by 10.55.79.65 with SMTP id d62mr12238941qkb.224.1505564760496;
 Sat, 16 Sep 2017 05:26:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Sat, 16 Sep 2017 05:26:00 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709161414010.2943@hadrien>
References: <1505562186-11813-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1709161349030.2943@hadrien> <CAB3L5oy-yVREBwnbmJnhdnNcTtP4h77=6BGxncynZwMcQoeOsQ@mail.gmail.com>
 <alpine.DEB.2.20.1709161414010.2943@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 16 Sep 2017 17:56:00 +0530
Message-ID: <CAB3L5ow8R3=oHYhKoZaeLAgPVUw2j2nYC5qkCZMns=oJs5uEtA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Remove unused variables
 from structure definition
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Lidza Louina <lidza.louina@gmail.com>, markh@compro.net, 
	Greg KH <gregkh@linuxfoundation.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 16, 2017 at 5:45 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 16 Sep 2017, Srishti Sharma wrote:
>
>> On Sat, Sep 16, 2017 at 5:20 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sat, 16 Sep 2017, Srishti Sharma wrote:
>> >
>> >> Some variables in the structure were unused and hence them and
>> >> the comments associated with them can be removed.
>> >
>> > How did you find these?  The last two can easily be checked with grep, but
>> > that is ont the case for type.
>>
>> I removed them and then compiled the code to see if it still compiles.
>
> This is not 100% reliable because of the possibility of uses inside
> ifdefs.  So you need to double check that you have found every occurrence
> of the structure type for the type field.  The others seem not dangerous.

Okay, I'll do that . Thanks

Srishti
>
> julia
>
>> I was using grep earlier to see if the fields in the structure are
>> ever accessed by the variables of that structure type, as the TODO of
>> the driver says that there is a lot of unneeded code.
>> >
>> > Actually there are two structures in the file with useless
>> > proc_entry_pointer fields.  The other one has a useless
>> > dgnc_channel_table.  It could be reasonable to make a series to do both
>> > structures.
>>
>> Okay, I'll send them as a series. Thanks
>>
>> Regards,
>> Srishti
>>
>> > julia
>> >
>> >>
>> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> >> ---
>> >>  drivers/staging/dgnc/dgnc_driver.h | 10 ----------
>> >>  1 file changed, 10 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
>> >> index 764d6fe..2b625cc 100644
>> >> --- a/drivers/staging/dgnc/dgnc_driver.h
>> >> +++ b/drivers/staging/dgnc/dgnc_driver.h
>> >> @@ -103,8 +103,6 @@ struct board_ops {
>> >>  /**
>> >>   * struct dgnc_board - Per board information.
>> >>   * @boardnum: Board number (0 - 32).
>> >> - *
>> >> - * @type: Type of board.
>> >>   * @name: Product name.
>> >>   * @pdev: Pointer to the pci_dev structure.
>> >>   * @bd_flags: Board flags.
>> >> @@ -140,13 +138,9 @@ struct board_ops {
>> >>   * @dpastatus: Board status as defined by DPA.
>> >>   * @bd_dividend: Board/UART's specific dividend.
>> >>   * @bd_ops: Pointer to board operations structure.
>> >> - * @proc_entry_pointer: Proc/<board> entry
>> >> - * @dgnc_board_table: Proc/<board> entry
>> >>   */
>> >>  struct dgnc_board {
>> >>       int             boardnum;
>> >> -
>> >> -     int             type;
>> >>       char            *name;
>> >>       struct pci_dev  *pdev;
>> >>       unsigned long   bd_flags;
>> >> @@ -200,10 +194,6 @@ struct dgnc_board {
>> >>       uint            bd_dividend;
>> >>
>> >>       struct board_ops *bd_ops;
>> >> -
>> >> -     struct proc_dir_entry *proc_entry_pointer;
>> >> -     struct dgnc_proc_entry *dgnc_board_table;
>> >> -
>> >>  };
>> >>
>> >>  /* Unit flag definitions for un_flags. */
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505562186-11813-1-git-send-email-srishtishar%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>

