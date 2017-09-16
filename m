X-GM-THRID: 6466340392828665856
X-Received: by 10.46.18.149 with SMTP id 21mr2048840ljs.28.1505564133525;
        Sat, 16 Sep 2017 05:15:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.150.151 with SMTP id y145ls755109wmd.4.gmail; Sat, 16 Sep
 2017 05:15:32 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7EcTtMhfoG+8NkVX0LYT+qd+5TRZYfrybf6BCKdRypjpIFfju7TGiCbaMphteV2eA3UmvC
X-Received: by 10.223.172.196 with SMTP id o62mr1763498wrc.10.1505564132608;
        Sat, 16 Sep 2017 05:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505564132; cv=none;
        d=google.com; s=arc-20160816;
        b=OMnFmtiiORvoRfENqLzUUA5jn1QHLgMHxQ2l4J83LgvwPOWKsc0FjhKmvC8McaziAS
         JvZE0giQV0YB9UQG9ll1zxtMSg3TxkdOe9IyXEnOCPcTc1n+Tr9uTesP9V6E4k7xNpwC
         lPREVjqvyko2uiNRyYXHmb74f5xNQRGNxYK04nn8IEH6tNcEJgnLZstZmKbmOL4gbsgk
         t+mxHVhDda+Q0ytz/Df5/35Au36OLGbNNppEuk/WU/Jwte13k8bBagv9XC9V6gR22/Pp
         thiW60zZLNzLB+AAWbNe0gBHzAiZfBL/L/LwjeFEv0g7SUiZpOT7TJZfd9EtsETbxDaU
         I5TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=6HabDzmP5l5L16lHiiKJfwt2bvnQX54ige+efxPLAgs=;
        b=ce+CLdWbfgoMdieh1ypMDGBX3l9XPiXvnnsPwNaD+nGuNi4rf7bze9b9riG3WjCI1Z
         skAmgRNkmtQNJp8iqMKBVZwLSUS1AXT7w9QW1e95ljeQKIoBfiLcW6JDVSU6FGxFOj2r
         CNKzBknb+whyCDqhzYp3MPYfQguYIa6wIJjkh6LCddYFAvFBRJjxymY3BEEQTVChuHXf
         41CC9uAKDyroBVCiVTRavIYhTC898jR71UaZLSnH6ChBgv+0rjmcaumC8IAP+VFEPWNK
         Ygh26jsxA6Lx13lMeoG63mSUZufbGU3SRxPrrkjIxOc9mwIg2fqnXNurwhokhGWtAjdN
         HyTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si114296wmd.1.2017.09.16.05.15.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:15:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,402,1500933600"; 
   d="scan'208";a="291378760"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 14:15:31 +0200
Date: Sat, 16 Sep 2017 14:15:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Lidza Louina <lidza.louina@gmail.com>, markh@compro.net, 
    Greg KH <gregkh@linuxfoundation.org>, 
    driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Remove unused variables
 from structure definition
In-Reply-To: <CAB3L5oy-yVREBwnbmJnhdnNcTtP4h77=6BGxncynZwMcQoeOsQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709161414010.2943@hadrien>
References: <1505562186-11813-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709161349030.2943@hadrien> <CAB3L5oy-yVREBwnbmJnhdnNcTtP4h77=6BGxncynZwMcQoeOsQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Srishti Sharma wrote:

> On Sat, Sep 16, 2017 at 5:20 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 16 Sep 2017, Srishti Sharma wrote:
> >
> >> Some variables in the structure were unused and hence them and
> >> the comments associated with them can be removed.
> >
> > How did you find these?  The last two can easily be checked with grep, but
> > that is ont the case for type.
>
> I removed them and then compiled the code to see if it still compiles.

This is not 100% reliable because of the possibility of uses inside
ifdefs.  So you need to double check that you have found every occurrence
of the structure type for the type field.  The others seem not dangerous.

julia

> I was using grep earlier to see if the fields in the structure are
> ever accessed by the variables of that structure type, as the TODO of
> the driver says that there is a lot of unneeded code.
> >
> > Actually there are two structures in the file with useless
> > proc_entry_pointer fields.  The other one has a useless
> > dgnc_channel_table.  It could be reasonable to make a series to do both
> > structures.
>
> Okay, I'll send them as a series. Thanks
>
> Regards,
> Srishti
>
> > julia
> >
> >>
> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> >> ---
> >>  drivers/staging/dgnc/dgnc_driver.h | 10 ----------
> >>  1 file changed, 10 deletions(-)
> >>
> >> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> >> index 764d6fe..2b625cc 100644
> >> --- a/drivers/staging/dgnc/dgnc_driver.h
> >> +++ b/drivers/staging/dgnc/dgnc_driver.h
> >> @@ -103,8 +103,6 @@ struct board_ops {
> >>  /**
> >>   * struct dgnc_board - Per board information.
> >>   * @boardnum: Board number (0 - 32).
> >> - *
> >> - * @type: Type of board.
> >>   * @name: Product name.
> >>   * @pdev: Pointer to the pci_dev structure.
> >>   * @bd_flags: Board flags.
> >> @@ -140,13 +138,9 @@ struct board_ops {
> >>   * @dpastatus: Board status as defined by DPA.
> >>   * @bd_dividend: Board/UART's specific dividend.
> >>   * @bd_ops: Pointer to board operations structure.
> >> - * @proc_entry_pointer: Proc/<board> entry
> >> - * @dgnc_board_table: Proc/<board> entry
> >>   */
> >>  struct dgnc_board {
> >>       int             boardnum;
> >> -
> >> -     int             type;
> >>       char            *name;
> >>       struct pci_dev  *pdev;
> >>       unsigned long   bd_flags;
> >> @@ -200,10 +194,6 @@ struct dgnc_board {
> >>       uint            bd_dividend;
> >>
> >>       struct board_ops *bd_ops;
> >> -
> >> -     struct proc_dir_entry *proc_entry_pointer;
> >> -     struct dgnc_proc_entry *dgnc_board_table;
> >> -
> >>  };
> >>
> >>  /* Unit flag definitions for un_flags. */
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505562186-11813-1-git-send-email-srishtishar%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

