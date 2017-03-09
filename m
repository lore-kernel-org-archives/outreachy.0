X-GM-THRID: 6395175324693299200
X-Received: by 10.46.19.1 with SMTP id 1mr2730800ljt.4.1489091252405;
        Thu, 09 Mar 2017 12:27:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls845365lja.48.gmail; Thu, 09 Mar 2017
 12:27:31 -0800 (PST)
X-Received: by 10.46.1.12 with SMTP id 12mr2769600ljb.30.1489091251784;
        Thu, 09 Mar 2017 12:27:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si3443wmg.0.2017.03.09.12.27.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 12:27:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,137,1486422000"; 
   d="scan'208";a="263924764"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 21:27:31 +0100
Date: Thu, 9 Mar 2017 21:27:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Tamara Diaconita <diaconitatamara@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: wilc_spi:
 Rearrange the code
In-Reply-To: <20170309170408.GB1621@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.20.1703092124460.2306@hadrien>
References: <20170308170620.3898-1-diaconita.tamara@gmail.com> <20170308195109.GA3284@d830.WORKGROUP> <20170308211928.GA13352@d830.WORKGROUP> <CALks+gDqojhZqvbO3-5CGNwTKdu-JtGygvnUJoXSmtkqMLTeiw@mail.gmail.com> <20170308213853.GA20175@d830.WORKGROUP>
 <CALks+gCnyeS=or_sySwK9f1DZjt6FJPn9H+gDP_P6TGQTuJVuw@mail.gmail.com> <20170309170408.GB1621@d830.WORKGROUP>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Alison Schofield wrote:

> On Thu, Mar 09, 2017 at 08:24:28AM +0000, Tamara Diaconita wrote:
> > Hi,
> > The problem with the code was when I tried to split the lines with
> > dev_err(...). If I split them, I get errors like "missing terminating "
> >  character" even though this character is on the next line.
> > But if I don't split the line, I get warnings from checkpatch.pl.
> > Is it ok if I ignore these warnings?
>
> Tamara,
>
> I looked at func wilc_spi_read_int() with the intent of changing the line
> over 80 warning on dev_err to see your issue, but..the function is quite
> messy.  There is excessive bracketing {} and indentation going on.
>
> I'm thinking we need to clean up the excessive bracketing and indentation
> first, and then see which lines remain over 80 and deal with them.
>
> Julia - Can you take a look at this func and tell us if you agree that the
> extra brackets are not a desired style?

Definitely agree.  It's OK to declare variable at eg the top of an if
branch if that seems really necessary from a conceptual point of view.
But they shouldn't be declared at all random places, as is done in this
function.  It's fine to just move the variables to the top of the
function.

Kernel goto labels also don't have _ around them.

julia

>
>
> Thanks,
> alisons
>
>
> > On Wed, 8 Mar 2017 at 23:38, Alison Schofield <amsfield22@gmail.com> wrote:
> >
> > > On Wed, Mar 08, 2017 at 09:25:12PM +0000, Tamara Diaconita wrote:
> > > > So should I resend the patch with 3 patches as I did before? Or should I
> > > > resend the patch set with 4 patches and split this patch in 2 patches?
> > >
> > > I'd go for 4, so you can separate the comment repairs. alisons
> > >
> > >
> > > > On Wed, 8 Mar 2017 at 23:19, Alison Schofield <amsfield22@gmail.com>
> > > wrote:
> > > >
> > > > > On Wed, Mar 08, 2017 at 11:51:11AM -0800, Alison Schofield wrote:
> > > > > > On Wed, Mar 08, 2017 at 07:06:20PM +0200, Tamara Diaconita wrote:
> > > > > > > Split lines to have less than 80 characters.
> > > > > > >
> > > > > > > Fix the checkpath.pl issue: line over 80 characters.
> > > > > > >
> > > > > > > Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> > > > > >
> > > > > > Hi Tamara,
> > > > > > You certainly found a file with a lot of opportunity for cleanup!
> > > > > >
> > > > > > This patch didn't apply, and I didn't seen any recent submittals
> > > > > > that would have pre-dated your work.  I got this error message
> > > > > > when trying to apply it:
> > > > > >
> > > > > > Applying: staging: wilc1000: wilc_spi: Rearrange the code
> > > > > > error: patch failed: drivers/staging/wilc1000/wilc_spi.c:855
> > > > > > error: drivers/staging/wilc1000/wilc_spi.c: patch does not apply
> > > > > > Patch failed at 0001 staging: wilc1000: wilc_spi: Rearrange the code
> > > > > >
> > > > > > It could be 'my' problem ;), but since I'm going to ask you to rework
> > > > > > this anyway, please apply the patch and see what is going on there.
> > > > >
> > > > > Sorry, Tamara - it was my problem. I got the patch to apply,
> > > > > but it didn't compile.
> > > > >
> > > > > So, I don't know how to continue checking the other patches.
> > > > > If they are each dependent on the previous, then they are
> > > > > all going to fail.
> > > > >
> > > > > I think it's still best if you cleaned this up and resent
> > > > > before further review on the other patches.
> > > > > It is helpful, at least for me, if you mention in the patch
> > > > > cover letter explicitly if the patches have dependencies.
> > > > >
> > > > > Maybe other reviewers just expect that in a set.
> > > > >
> > > > > Thanks,
> > > > > alisons
> > > > >
> > > > > >
> > > > > > Lines over 80 can be tricky to fix.  I see many related to comments,
> > > > > > so I would suggest to do a patch just for cleaning up the commenting
> > > > > > style and spelling errors.
> > > > > >
> > > > > > The patch would be something like: Use kernel preferred commenting
> > > style
> > > > > > and it could include corrections to
> > > > > > - those block comments throughout the file. See the style guide for
> > > how
> > > > > > they should be formatted.
> > > > > > - spelling corrections
> > > > > > - pulling in those comments that dangle beyond the 80 char line limit
> > > > > >
> > > > > > So - that would be a patch all about the comments.
> > > > > >
> > > > > > Then, you could go back and grab other lines over 80 that were
> > > related
> > > > > > to code wrap in a separate patch.
> > > > > >
> > > > > > Questions, please ask!
> > > > > > Thanks,
> > > > > > alisons
> > > > > >
> > > > > >
> > > > > >
> > > > > > > ---
> > > > > > >  drivers/staging/wilc1000/wilc_spi.c | 54
> > > > > ++++++++++++++++++++++---------------
> > > > > > >  1 file changed, 32 insertions(+), 22 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/staging/wilc1000/wilc_spi.c
> > > > > b/drivers/staging/wilc1000/wilc_spi.c
> > > > > > > index 5e28adc..2464b4c 100644
> > > > > > > --- a/drivers/staging/wilc1000/wilc_spi.c
> > > > > > > +++ b/drivers/staging/wilc1000/wilc_spi.c
> > > > > > > @@ -5,7 +5,7 @@
> > > > > > >  /* Module Name:  wilc_spi.c */
> > > > > > >  /*  */
> > > > > > >  /*  */
> > > > > > > -/*
> > > > >
> > > ////////////////////////////////////////////////////////////////////////////
> > > > > */
> > > > > > > +/*
> > > > >
> > > ///////////////////////////////////////////////////////////////////////// */
> > > > > > >  #include <linux/module.h>
> > > > > > >  #include <linux/init.h>
> > > > > > >  #include <linux/kernel.h>
> > > > > > > @@ -291,7 +291,7 @@ static int spi_cmd_complete(struct wilc *wilc,
> > > u8
> > > > > cmd, u32 adr, u8 *b, u32 sz,
> > > > > > >
> > > > > > >     wb[0] = cmd;
> > > > > > >     switch (cmd) {
> > > > > > > -   case CMD_SINGLE_READ:                           /* single word
> > > (4
> > > > > bytes) read */
> > > > > > > +   case CMD_SINGLE_READ: /* single word (4 bytes) read */
> > > > > > >             wb[1] = (u8)(adr >> 16);
> > > > > > >             wb[2] = (u8)(adr >> 8);
> > > > > > >             wb[3] = (u8)adr;
> > > > > > > @@ -307,21 +307,21 @@ static int spi_cmd_complete(struct wilc
> > > *wilc,
> > > > > u8 cmd, u32 adr, u8 *b, u32 sz,
> > > > > > >             len = 5;
> > > > > > >             break;
> > > > > > >
> > > > > > > -   case CMD_TERMINATE:                                     /*
> > > > > termination */
> > > > > > > +   case CMD_TERMINATE: /* termination */
> > > > > > >             wb[1] = 0x00;
> > > > > > >             wb[2] = 0x00;
> > > > > > >             wb[3] = 0x00;
> > > > > > >             len = 5;
> > > > > > >             break;
> > > > > > >
> > > > > > > -   case CMD_REPEAT:
> > >   /*
> > > > > repeat */
> > > > > > > +   case CMD_REPEAT: /* repeat */
> > > > > > >             wb[1] = 0x00;
> > > > > > >             wb[2] = 0x00;
> > > > > > >             wb[3] = 0x00;
> > > > > > >             len = 5;
> > > > > > >             break;
> > > > > > >
> > > > > > > -   case CMD_RESET:
> > >  /*
> > > > > reset */
> > > > > > > +   case CMD_RESET: /* reset */
> > > > > > >             wb[1] = 0xff;
> > > > > > >             wb[2] = 0xff;
> > > > > > >             wb[3] = 0xff;
> > > > > > > @@ -397,11 +397,12 @@ static int spi_cmd_complete(struct wilc
> > > *wilc,
> > > > > u8 cmd, u32 adr, u8 *b, u32 sz,
> > > > > > >             len2 = len + (NUM_SKIP_BYTES + NUM_RSP_BYTES +
> > > > > NUM_DUMMY_BYTES);
> > > > > > >     } else if ((cmd == CMD_INTERNAL_READ) || (cmd ==
> > > CMD_SINGLE_READ))
> > > > > {
> > > > > > >             if (!g_spi.crc_off) {
> > > > > > > -                   len2 = len + (NUM_RSP_BYTES +
> > > NUM_DATA_HDR_BYTES +
> > > > > NUM_DATA_BYTES
> > > > > > > -                                 + NUM_CRC_BYTES +
> > > NUM_DUMMY_BYTES);
> > > > > > > +                   len2 = len + (NUM_RSP_BYTES +
> > > NUM_DATA_HDR_BYTES +
> > > > > > > +                                 NUM_DATA_BYTES + NUM_CRC_BYTES +
> > > > > > > +                                 NUM_DUMMY_BYTES);
> > > > > > >             } else {
> > > > > > > -                   len2 = len + (NUM_RSP_BYTES +
> > > NUM_DATA_HDR_BYTES +
> > > > > NUM_DATA_BYTES
> > > > > > > -                                 + NUM_DUMMY_BYTES);
> > > > > > > +                   len2 = len + (NUM_RSP_BYTES +
> > > NUM_DATA_HDR_BYTES +
> > > > > > > +                                 NUM_DATA_BYTES +
> > > NUM_DUMMY_BYTES);
> > > > > > >             }
> > > > > > >     } else {
> > > > > > >             len2 = len + (NUM_RSP_BYTES + NUM_DUMMY_BYTES);
> > > > > > > @@ -464,7 +465,8 @@ static int spi_cmd_complete(struct wilc *wilc,
> > > u8
> > > > > cmd, u32 adr, u8 *b, u32 sz,
> > > > > > >              **/
> > > > > > >             retry = 100;
> > > > > > >             do {
> > > > > > > -                   /* ensure there is room in buffer later to read
> > > > > data and crc */
> > > > > > > +                   /* ensure there is room in buffer later to read
> > > > > data
> > > > > > > +                    * and crc */
> > > > > > >                     if (rix < len2) {
> > > > > > >                             rsp = rb[rix++];
> > > > > > >                     } else {
> > > > > > > @@ -549,7 +551,8 @@ static int spi_cmd_complete(struct wilc *wilc,
> > > u8
> > > > > cmd, u32 adr, u8 *b, u32 sz,
> > > > > > >                             sz -= nbytes;
> > > > > > >                     }
> > > > > > >
> > > > > > > -                   /*  if any data in left unread, then read the
> > > rest
> > > > > using normal DMA code.*/
> > > > > > > +                   /*  if any data in left unread, then read the
> > > rest
> > > > > > > +                    *  using normal DMA code.*/
> > > > > > >                     while (sz > 0) {
> > > > > > >                             int nbytes;
> > > > > > >
> > > > > > > @@ -559,9 +562,10 @@ static int spi_cmd_complete(struct wilc
> > > *wilc, u8
> > > > > cmd, u32 adr, u8 *b, u32 sz,
> > > > > > >                                     nbytes = DATA_PKT_SZ;
> > > > > > >
> > > > > > >                             /**
> > > > > > > -                            * read data response only on the next
> > > DMA
> > > > > cycles not
> > > > > > > -                            * the first DMA since data response
> > > > > header is already
> > > > > > > -                            * handled above for the first DMA.
> > > > > > > +                            * read data response only on the next
> > > DMA
> > > > > > > +                            * cycles not the first DMA since data
> > > > > response
> > > > > > > +                            * header is already handled above for
> > > the
> > > > > > > +                            * first DMA.
> > > > > > >                              **/
> > > > > > >                             /**
> > > > > > >                              * Data Respnose header
> > > > > > > @@ -569,7 +573,8 @@ static int spi_cmd_complete(struct wilc *wilc,
> > > u8
> > > > > cmd, u32 adr, u8 *b, u32 sz,
> > > > > > >                             retry = 10;
> > > > > > >                             do {
> > > > > > >                                     if (wilc_spi_rx(wilc, &rsp,
> > > 1)) {
> > > > > > > -                                           dev_err(&spi->dev,
> > > "Failed
> > > > > data response read, bus error...\n");
> > > > > > > +                                           dev_err(&spi->dev,
> > > > > > > +                                                   "Failed data
> > > > > response read, bus error...\n");
> > > > > > >                                             result = N_FAIL;
> > > > > > >                                             break;
> > > > > > >                                     }
> > > > > > > @@ -855,16 +860,18 @@ static int wilc_spi_init(struct wilc *wilc,
> > > bool
> > > > > resume)
> > > > > > >      **/
> > > > > > >     g_spi.crc_off = 0;
> > > > > > >
> > > > > > > -   /* TODO: We can remove the CRC trials if there is a definite
> > > way
> > > > > to reset */
> > > > > > > -   /* the SPI to it's initial value. */
> > > > > > > +   /* TODO: We can remove the CRC trials if there is a definite
> > > way to
> > > > > > > +    * reset the SPI to it's initial value. */
> > > > > > >     if (!spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET, &reg)) {
> > > > > > >             /* Read failed. Try with CRC off. This might happen
> > > when
> > > > > module
> > > > > > >              * is removed but chip isn't reset
> > > > > > >              */
> > > > > > >             g_spi.crc_off = 1;
> > > > > > > -           dev_err(&spi->dev, "Failed internal read protocol with
> > > CRC
> > > > > on, retrying with CRC off...\n");
> > > > > > > +           dev_err(&spi->dev, "Failed internal read protocol with
> > > CRC
> > > > > on,
> > > > > > > +                   retrying with CRC off...\n");
> > > > > > >             if (!spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET,
> > > > > &reg)) {
> > > > > > > -                   /* Reaad failed with both CRC on and off,
> > > > > something went bad */
> > > > > > > +                   /* Reaad failed with both CRC on and off,
> > > something
> > > > > > > +                    * went bad */
> > > > > > >                     dev_err(&spi->dev,
> > > > > > >                             "Failed internal read protocol...\n");
> > > > > > >                     return 0;
> > > > > > > @@ -875,7 +882,8 @@ static int wilc_spi_init(struct wilc *wilc,
> > > bool
> > > > > resume)
> > > > > > >             reg &= ~0x70;
> > > > > > >             reg |= (0x5 << 4);
> > > > > > >             if (!spi_internal_write(wilc, WILC_SPI_PROTOCOL_OFFSET,
> > > > > reg)) {
> > > > > > > -                   dev_err(&spi->dev, "[wilc spi %d]: Failed
> > > internal
> > > > > write protocol reg...\n", __LINE__);
> > > > > > > +                   dev_err(&spi->dev, "[wilc spi %d]: Failed
> > > internal
> > > > > > > +                           write protocol reg...\n", __LINE__);
> > > > > > >                     return 0;
> > > > > > >             }
> > > > > > >             g_spi.crc_off = 1;
> > > > > > > @@ -1002,9 +1010,11 @@ static int wilc_spi_clear_int_ext(struct
> > > wilc
> > > > > *wilc, u32 val)
> > > > > > >
> > > > > > >                     ret = 1;
> > > > > > >                     for (i = 0; i < g_spi.nint; i++) {
> > > > > > > -                           /* No matter what you write 1 or 0, it
> > > > > will clear interrupt. */
> > > > > > > +                           /* No matter what you write 1 or 0, it
> > > will
> > > > > > > +                            * clear interrupt. */
> > > > > > >                             if (flags & 1)
> > > > > > > -                                   ret = wilc_spi_write_reg(wilc,
> > > > > 0x10c8 + i * 4, 1);
> > > > > > > +                                   ret = wilc_spi_write_reg(wilc,
> > > > > 0x10c8 +
> > > > > > > +                                                            i *
> > > 4, 1);
> > > > > > >                             if (!ret)
> > > > > > >                                     break;
> > > > > > >                             flags >>= 1;
> > > > > > > --
> > > > > > > 2.9.3
> > > > > > >
> > > > > > > --
> > > > > > > You received this message because you are subscribed to the Google
> > > > > Groups "outreachy-kernel" group.
> > > > > > > To unsubscribe from this group and stop receiving emails from it,
> > > send
> > > > > an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > > > To post to this group, send email to
> > > outreachy-kernel@googlegroups.com
> > > > > .
> > > > > > > To view this discussion on the web visit
> > > > >
> > > https://groups.google.com/d/msgid/outreachy-kernel/20170308170620.3898-1-diaconita.tamara%40gmail.com
> > > > > .
> > > > > > > For more options, visit https://groups.google.com/d/optout.
> > > > >
> > >
>

