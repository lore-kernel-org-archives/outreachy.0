X-GM-THRID: 6395175324693299200
X-Received: by 10.157.82.78 with SMTP id q14mr5351757otg.80.1489079052049;
        Thu, 09 Mar 2017 09:04:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls549380otd.11.gmail; Thu, 09 Mar
 2017 09:04:11 -0800 (PST)
X-Received: by 10.237.48.72 with SMTP id 66mr2689677qte.77.1489079051549;
        Thu, 09 Mar 2017 09:04:11 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si1311526pfb.2.2017.03.09.09.04.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 09:04:11 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so7386519pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 09:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JKnq0vWxzG/hAUCLV5XWcBMJow8c8zkd6or4nufMZQI=;
        b=HgvslM/Ixh8KL2d3+zvttF1QNbCtZ5W6D1zzYKQPoxpLx2JnVI4p8fA1viyVBHTufV
         g3m4fhWkIGg5+m+KvcWm27nCDYtE4Us4W1gQLhGqBspAP/LzZiC643KtMImbkGFVtD0M
         sfJcSQ3aqv1f2f8wLtL8DZmsyDrvAk7xtLHtyRrpXpsYE3Mxs/Egu5bTlfRnbpOK759n
         gisbvddmYnYI0OnvFQFDUNdL/B3Y3LFgPYaD/x7LUhdvfGSEf5Kid9Oew284huuQ1+0v
         6kTG2QasNTQQ4V2IwSphl2o7F1CxI29wLjivM4Ph4wwpMP0j3qQ71upR5LjstJptjFOm
         TSFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JKnq0vWxzG/hAUCLV5XWcBMJow8c8zkd6or4nufMZQI=;
        b=HRIjWiBrewMWngQTgKE5d1jpafUqCvWNlmjxw/hDTkKvlpVoAH/egYHSY8xHEVpOT3
         QykovDBO5vbS1Lc5lfhx4QzImJhES3jkJ0koWQJrmAFc5Nd1rTZzOSBLSPMei+WooDOm
         sTHB3x2NhlHqRUBlS+5UBPvB7UVpMuAyMe/pukrttu4VrP5XRFySIQp2a++xso82DAh2
         35PB9dm5kA6vqEBk9g7GLCP6asLjbrTFueywkMOYpgg8eum1iG35OdfQOwLJ7CwA+6i+
         nK3kdxDlFzy8LtByCoo7hxdHd1qSiFeLHcKQRiV+6wrsAbaDWkyKih/XHfdewZE3cwu8
         vARg==
X-Gm-Message-State: AMke39nCAnfVXoVsnts1/EBXP/uosnmAPcMhsNrkCWlI8ArKRiIwwJ3+lxFjqrr6lxqySA==
X-Received: by 10.84.231.201 with SMTP id g9mr18582531pln.91.1489079050864;
        Thu, 09 Mar 2017 09:04:10 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id w131sm13601518pfd.34.2017.03.09.09.04.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 09:04:10 -0800 (PST)
Date: Thu, 9 Mar 2017 09:04:09 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>, julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: wilc_spi:
 Rearrange the code
Message-ID: <20170309170408.GB1621@d830.WORKGROUP>
References: <20170308170620.3898-1-diaconita.tamara@gmail.com>
 <20170308195109.GA3284@d830.WORKGROUP>
 <20170308211928.GA13352@d830.WORKGROUP>
 <CALks+gDqojhZqvbO3-5CGNwTKdu-JtGygvnUJoXSmtkqMLTeiw@mail.gmail.com>
 <20170308213853.GA20175@d830.WORKGROUP>
 <CALks+gCnyeS=or_sySwK9f1DZjt6FJPn9H+gDP_P6TGQTuJVuw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALks+gCnyeS=or_sySwK9f1DZjt6FJPn9H+gDP_P6TGQTuJVuw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 09, 2017 at 08:24:28AM +0000, Tamara Diaconita wrote:
> Hi,
> The problem with the code was when I tried to split the lines with
> dev_err(...). If I split them, I get errors like "missing terminating "
>  character" even though this character is on the next line.
> But if I don't split the line, I get warnings from checkpatch.pl.
> Is it ok if I ignore these warnings?

Tamara,

I looked at func wilc_spi_read_int() with the intent of changing the line
over 80 warning on dev_err to see your issue, but..the function is quite
messy.  There is excessive bracketing {} and indentation going on.  

I'm thinking we need to clean up the excessive bracketing and indentation
first, and then see which lines remain over 80 and deal with them.  

Julia - Can you take a look at this func and tell us if you agree that the
extra brackets are not a desired style?


Thanks,
alisons


> On Wed, 8 Mar 2017 at 23:38, Alison Schofield <amsfield22@gmail.com> wrote:
> 
> > On Wed, Mar 08, 2017 at 09:25:12PM +0000, Tamara Diaconita wrote:
> > > So should I resend the patch with 3 patches as I did before? Or should I
> > > resend the patch set with 4 patches and split this patch in 2 patches?
> >
> > I'd go for 4, so you can separate the comment repairs. alisons
> >
> >
> > > On Wed, 8 Mar 2017 at 23:19, Alison Schofield <amsfield22@gmail.com>
> > wrote:
> > >
> > > > On Wed, Mar 08, 2017 at 11:51:11AM -0800, Alison Schofield wrote:
> > > > > On Wed, Mar 08, 2017 at 07:06:20PM +0200, Tamara Diaconita wrote:
> > > > > > Split lines to have less than 80 characters.
> > > > > >
> > > > > > Fix the checkpath.pl issue: line over 80 characters.
> > > > > >
> > > > > > Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> > > > >
> > > > > Hi Tamara,
> > > > > You certainly found a file with a lot of opportunity for cleanup!
> > > > >
> > > > > This patch didn't apply, and I didn't seen any recent submittals
> > > > > that would have pre-dated your work.  I got this error message
> > > > > when trying to apply it:
> > > > >
> > > > > Applying: staging: wilc1000: wilc_spi: Rearrange the code
> > > > > error: patch failed: drivers/staging/wilc1000/wilc_spi.c:855
> > > > > error: drivers/staging/wilc1000/wilc_spi.c: patch does not apply
> > > > > Patch failed at 0001 staging: wilc1000: wilc_spi: Rearrange the code
> > > > >
> > > > > It could be 'my' problem ;), but since I'm going to ask you to rework
> > > > > this anyway, please apply the patch and see what is going on there.
> > > >
> > > > Sorry, Tamara - it was my problem. I got the patch to apply,
> > > > but it didn't compile.
> > > >
> > > > So, I don't know how to continue checking the other patches.
> > > > If they are each dependent on the previous, then they are
> > > > all going to fail.
> > > >
> > > > I think it's still best if you cleaned this up and resent
> > > > before further review on the other patches.
> > > > It is helpful, at least for me, if you mention in the patch
> > > > cover letter explicitly if the patches have dependencies.
> > > >
> > > > Maybe other reviewers just expect that in a set.
> > > >
> > > > Thanks,
> > > > alisons
> > > >
> > > > >
> > > > > Lines over 80 can be tricky to fix.  I see many related to comments,
> > > > > so I would suggest to do a patch just for cleaning up the commenting
> > > > > style and spelling errors.
> > > > >
> > > > > The patch would be something like: Use kernel preferred commenting
> > style
> > > > > and it could include corrections to
> > > > > - those block comments throughout the file. See the style guide for
> > how
> > > > > they should be formatted.
> > > > > - spelling corrections
> > > > > - pulling in those comments that dangle beyond the 80 char line limit
> > > > >
> > > > > So - that would be a patch all about the comments.
> > > > >
> > > > > Then, you could go back and grab other lines over 80 that were
> > related
> > > > > to code wrap in a separate patch.
> > > > >
> > > > > Questions, please ask!
> > > > > Thanks,
> > > > > alisons
> > > > >
> > > > >
> > > > >
> > > > > > ---
> > > > > >  drivers/staging/wilc1000/wilc_spi.c | 54
> > > > ++++++++++++++++++++++---------------
> > > > > >  1 file changed, 32 insertions(+), 22 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/staging/wilc1000/wilc_spi.c
> > > > b/drivers/staging/wilc1000/wilc_spi.c
> > > > > > index 5e28adc..2464b4c 100644
> > > > > > --- a/drivers/staging/wilc1000/wilc_spi.c
> > > > > > +++ b/drivers/staging/wilc1000/wilc_spi.c
> > > > > > @@ -5,7 +5,7 @@
> > > > > >  /* Module Name:  wilc_spi.c */
> > > > > >  /*  */
> > > > > >  /*  */
> > > > > > -/*
> > > >
> > ////////////////////////////////////////////////////////////////////////////
> > > > */
> > > > > > +/*
> > > >
> > ///////////////////////////////////////////////////////////////////////// */
> > > > > >  #include <linux/module.h>
> > > > > >  #include <linux/init.h>
> > > > > >  #include <linux/kernel.h>
> > > > > > @@ -291,7 +291,7 @@ static int spi_cmd_complete(struct wilc *wilc,
> > u8
> > > > cmd, u32 adr, u8 *b, u32 sz,
> > > > > >
> > > > > >     wb[0] = cmd;
> > > > > >     switch (cmd) {
> > > > > > -   case CMD_SINGLE_READ:                           /* single word
> > (4
> > > > bytes) read */
> > > > > > +   case CMD_SINGLE_READ: /* single word (4 bytes) read */
> > > > > >             wb[1] = (u8)(adr >> 16);
> > > > > >             wb[2] = (u8)(adr >> 8);
> > > > > >             wb[3] = (u8)adr;
> > > > > > @@ -307,21 +307,21 @@ static int spi_cmd_complete(struct wilc
> > *wilc,
> > > > u8 cmd, u32 adr, u8 *b, u32 sz,
> > > > > >             len = 5;
> > > > > >             break;
> > > > > >
> > > > > > -   case CMD_TERMINATE:                                     /*
> > > > termination */
> > > > > > +   case CMD_TERMINATE: /* termination */
> > > > > >             wb[1] = 0x00;
> > > > > >             wb[2] = 0x00;
> > > > > >             wb[3] = 0x00;
> > > > > >             len = 5;
> > > > > >             break;
> > > > > >
> > > > > > -   case CMD_REPEAT:
> >   /*
> > > > repeat */
> > > > > > +   case CMD_REPEAT: /* repeat */
> > > > > >             wb[1] = 0x00;
> > > > > >             wb[2] = 0x00;
> > > > > >             wb[3] = 0x00;
> > > > > >             len = 5;
> > > > > >             break;
> > > > > >
> > > > > > -   case CMD_RESET:
> >  /*
> > > > reset */
> > > > > > +   case CMD_RESET: /* reset */
> > > > > >             wb[1] = 0xff;
> > > > > >             wb[2] = 0xff;
> > > > > >             wb[3] = 0xff;
> > > > > > @@ -397,11 +397,12 @@ static int spi_cmd_complete(struct wilc
> > *wilc,
> > > > u8 cmd, u32 adr, u8 *b, u32 sz,
> > > > > >             len2 = len + (NUM_SKIP_BYTES + NUM_RSP_BYTES +
> > > > NUM_DUMMY_BYTES);
> > > > > >     } else if ((cmd == CMD_INTERNAL_READ) || (cmd ==
> > CMD_SINGLE_READ))
> > > > {
> > > > > >             if (!g_spi.crc_off) {
> > > > > > -                   len2 = len + (NUM_RSP_BYTES +
> > NUM_DATA_HDR_BYTES +
> > > > NUM_DATA_BYTES
> > > > > > -                                 + NUM_CRC_BYTES +
> > NUM_DUMMY_BYTES);
> > > > > > +                   len2 = len + (NUM_RSP_BYTES +
> > NUM_DATA_HDR_BYTES +
> > > > > > +                                 NUM_DATA_BYTES + NUM_CRC_BYTES +
> > > > > > +                                 NUM_DUMMY_BYTES);
> > > > > >             } else {
> > > > > > -                   len2 = len + (NUM_RSP_BYTES +
> > NUM_DATA_HDR_BYTES +
> > > > NUM_DATA_BYTES
> > > > > > -                                 + NUM_DUMMY_BYTES);
> > > > > > +                   len2 = len + (NUM_RSP_BYTES +
> > NUM_DATA_HDR_BYTES +
> > > > > > +                                 NUM_DATA_BYTES +
> > NUM_DUMMY_BYTES);
> > > > > >             }
> > > > > >     } else {
> > > > > >             len2 = len + (NUM_RSP_BYTES + NUM_DUMMY_BYTES);
> > > > > > @@ -464,7 +465,8 @@ static int spi_cmd_complete(struct wilc *wilc,
> > u8
> > > > cmd, u32 adr, u8 *b, u32 sz,
> > > > > >              **/
> > > > > >             retry = 100;
> > > > > >             do {
> > > > > > -                   /* ensure there is room in buffer later to read
> > > > data and crc */
> > > > > > +                   /* ensure there is room in buffer later to read
> > > > data
> > > > > > +                    * and crc */
> > > > > >                     if (rix < len2) {
> > > > > >                             rsp = rb[rix++];
> > > > > >                     } else {
> > > > > > @@ -549,7 +551,8 @@ static int spi_cmd_complete(struct wilc *wilc,
> > u8
> > > > cmd, u32 adr, u8 *b, u32 sz,
> > > > > >                             sz -= nbytes;
> > > > > >                     }
> > > > > >
> > > > > > -                   /*  if any data in left unread, then read the
> > rest
> > > > using normal DMA code.*/
> > > > > > +                   /*  if any data in left unread, then read the
> > rest
> > > > > > +                    *  using normal DMA code.*/
> > > > > >                     while (sz > 0) {
> > > > > >                             int nbytes;
> > > > > >
> > > > > > @@ -559,9 +562,10 @@ static int spi_cmd_complete(struct wilc
> > *wilc, u8
> > > > cmd, u32 adr, u8 *b, u32 sz,
> > > > > >                                     nbytes = DATA_PKT_SZ;
> > > > > >
> > > > > >                             /**
> > > > > > -                            * read data response only on the next
> > DMA
> > > > cycles not
> > > > > > -                            * the first DMA since data response
> > > > header is already
> > > > > > -                            * handled above for the first DMA.
> > > > > > +                            * read data response only on the next
> > DMA
> > > > > > +                            * cycles not the first DMA since data
> > > > response
> > > > > > +                            * header is already handled above for
> > the
> > > > > > +                            * first DMA.
> > > > > >                              **/
> > > > > >                             /**
> > > > > >                              * Data Respnose header
> > > > > > @@ -569,7 +573,8 @@ static int spi_cmd_complete(struct wilc *wilc,
> > u8
> > > > cmd, u32 adr, u8 *b, u32 sz,
> > > > > >                             retry = 10;
> > > > > >                             do {
> > > > > >                                     if (wilc_spi_rx(wilc, &rsp,
> > 1)) {
> > > > > > -                                           dev_err(&spi->dev,
> > "Failed
> > > > data response read, bus error...\n");
> > > > > > +                                           dev_err(&spi->dev,
> > > > > > +                                                   "Failed data
> > > > response read, bus error...\n");
> > > > > >                                             result = N_FAIL;
> > > > > >                                             break;
> > > > > >                                     }
> > > > > > @@ -855,16 +860,18 @@ static int wilc_spi_init(struct wilc *wilc,
> > bool
> > > > resume)
> > > > > >      **/
> > > > > >     g_spi.crc_off = 0;
> > > > > >
> > > > > > -   /* TODO: We can remove the CRC trials if there is a definite
> > way
> > > > to reset */
> > > > > > -   /* the SPI to it's initial value. */
> > > > > > +   /* TODO: We can remove the CRC trials if there is a definite
> > way to
> > > > > > +    * reset the SPI to it's initial value. */
> > > > > >     if (!spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET, &reg)) {
> > > > > >             /* Read failed. Try with CRC off. This might happen
> > when
> > > > module
> > > > > >              * is removed but chip isn't reset
> > > > > >              */
> > > > > >             g_spi.crc_off = 1;
> > > > > > -           dev_err(&spi->dev, "Failed internal read protocol with
> > CRC
> > > > on, retrying with CRC off...\n");
> > > > > > +           dev_err(&spi->dev, "Failed internal read protocol with
> > CRC
> > > > on,
> > > > > > +                   retrying with CRC off...\n");
> > > > > >             if (!spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET,
> > > > &reg)) {
> > > > > > -                   /* Reaad failed with both CRC on and off,
> > > > something went bad */
> > > > > > +                   /* Reaad failed with both CRC on and off,
> > something
> > > > > > +                    * went bad */
> > > > > >                     dev_err(&spi->dev,
> > > > > >                             "Failed internal read protocol...\n");
> > > > > >                     return 0;
> > > > > > @@ -875,7 +882,8 @@ static int wilc_spi_init(struct wilc *wilc,
> > bool
> > > > resume)
> > > > > >             reg &= ~0x70;
> > > > > >             reg |= (0x5 << 4);
> > > > > >             if (!spi_internal_write(wilc, WILC_SPI_PROTOCOL_OFFSET,
> > > > reg)) {
> > > > > > -                   dev_err(&spi->dev, "[wilc spi %d]: Failed
> > internal
> > > > write protocol reg...\n", __LINE__);
> > > > > > +                   dev_err(&spi->dev, "[wilc spi %d]: Failed
> > internal
> > > > > > +                           write protocol reg...\n", __LINE__);
> > > > > >                     return 0;
> > > > > >             }
> > > > > >             g_spi.crc_off = 1;
> > > > > > @@ -1002,9 +1010,11 @@ static int wilc_spi_clear_int_ext(struct
> > wilc
> > > > *wilc, u32 val)
> > > > > >
> > > > > >                     ret = 1;
> > > > > >                     for (i = 0; i < g_spi.nint; i++) {
> > > > > > -                           /* No matter what you write 1 or 0, it
> > > > will clear interrupt. */
> > > > > > +                           /* No matter what you write 1 or 0, it
> > will
> > > > > > +                            * clear interrupt. */
> > > > > >                             if (flags & 1)
> > > > > > -                                   ret = wilc_spi_write_reg(wilc,
> > > > 0x10c8 + i * 4, 1);
> > > > > > +                                   ret = wilc_spi_write_reg(wilc,
> > > > 0x10c8 +
> > > > > > +                                                            i *
> > 4, 1);
> > > > > >                             if (!ret)
> > > > > >                                     break;
> > > > > >                             flags >>= 1;
> > > > > > --
> > > > > > 2.9.3
> > > > > >
> > > > > > --
> > > > > > You received this message because you are subscribed to the Google
> > > > Groups "outreachy-kernel" group.
> > > > > > To unsubscribe from this group and stop receiving emails from it,
> > send
> > > > an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > > To post to this group, send email to
> > outreachy-kernel@googlegroups.com
> > > > .
> > > > > > To view this discussion on the web visit
> > > >
> > https://groups.google.com/d/msgid/outreachy-kernel/20170308170620.3898-1-diaconita.tamara%40gmail.com
> > > > .
> > > > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >

