X-GM-THRID: 6334690503118815232
X-Received: by 10.28.4.200 with SMTP id 191mr281353wme.22.1474993249526;
        Tue, 27 Sep 2016 09:20:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.135 with SMTP id v129ls2006820wmf.3.canary; Tue, 27 Sep
 2016 09:20:48 -0700 (PDT)
X-Received: by 10.28.35.203 with SMTP id j194mr293545wmj.20.1474993248955;
        Tue, 27 Sep 2016 09:20:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a126si201819wmd.1.2016.09.27.09.20.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 09:20:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,405,1470693600"; 
   d="scan'208";a="238484532"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Sep 2016 18:20:48 +0200
Date: Tue, 27 Sep 2016 18:20:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: Alison Schofield <amsfield22@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] iio: temperature: maxim_thermocouple:
 Fix sparse endianness warnings
In-Reply-To: <CAKG5xWhp5iZ8Ae6j90m7KVjeAz4KEUcarqJ_R6pu8pL2WaZ5Kg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609271819450.3044@hadrien>
References: <20160926171404.GA11773@sayli-HP-15-Notebook-PC> <20160927060539.GA10769@d830.WORKGROUP> <CAKG5xWhp5iZ8Ae6j90m7KVjeAz4KEUcarqJ_R6pu8pL2WaZ5Kg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 27 Sep 2016, sayli karnik wrote:

> On Tue, Sep 27, 2016 at 11:35 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Mon, Sep 26, 2016 at 10:44:04PM +0530, sayli karnik wrote:
> >> Fix following endianness warnings using sparse:
> >> warning: cast to restricted __be16
> >> warning: cast to restricted __be32
> >> Use __be16 type for incoming read data when storage_bytes equals 2 and __be32
> >> when storage_bytes equals 4. Since the variable allocated already has the
> >> correct storage size the patch is classified as cosmetic.
> >>
> >> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> >
> > Hi Sayli -
> >
> > v2 code looks like it handles both cases.
> >
> > I think you've made a bug fix!
> >
> > When the storage_bytes == 2, it would work on LE systems but give
> > invalid data on BE systems.  That unsigned int buf points to a location
> > where only 2 bytes of data are placed during spi_read. Those 2 bytes go
> > in the upper bytes. Then when the be16_to_cpu() happens that buf
> > gets cast to 16bits.  We get the upper bytes on LE systems (good bits)
> > but the lower bytes on BE systems (bad bits)
> >
> Yes I agree..so it's a bug fix for storage_bytes=2 and cosmetic for
> storage_bytes=4.
>
> > Lars - Please check my logic and the code too.  If this is a bug
> > let us know if Sayli should include a fix tag.
> >
> > Pending Lars' review, you can update the changelog.
> >
> > Take a further look at storage_bytes and you'll find when it is
> > set to 2 and when it is set to 4.  That would be good information
> > to include in the changelog.  You'll find that this is only a bug
> > in one of the two chips this driver supports.
> >
> > Check your precommit checkpatch hooks.  There are still CHECKs in
> > the spi_read lines of code.
> >
> I did run checkpatch, but no CHECKs were caught.
> This is strange, only errors and warnings were caught when I ran:
> perl scripts/checkpatch.pl -f drivers/iio/temperature/* | less
> I have run checkpatch many times on staging drivers until now.
> I can only predict that the CHECK in my code must be that there
> shouldn't be a space after the type cast.

checkpatch may be less verbose on non-staging files.  Try running
checkpatch on your patch, rather than on the file.

julia

>
> > And, back to the less exciting. It would be good for that commit
> > message to say what you did: replace unsigned int with __be16/32
> > I know you're short of space on that line.  It's ok to drop the
> > subdir (temperature) and just state the driver as in:
> > iio: maxim_thermocouple: commit message.
> >
> > Please 'CC linux-iio on v3 and the module author, from bottom of
> > source file.
> >
> Sure!
>
> > Thanks Sayli,
> > alisons
> >
> >> ---
> >> v2:
> >> Updated the subject line and changelog
> >> Moved the spi_read function call inside respective case statements so that data
> >> is read only once.
> >> Moved the return statement after the switch case
> >>
> >>  drivers/iio/temperature/maxim_thermocouple.c | 16 +++++++++-------
> >>  1 file changed, 9 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
> >> index 39dd202..2683b0f 100644
> >> --- a/drivers/iio/temperature/maxim_thermocouple.c
> >> +++ b/drivers/iio/temperature/maxim_thermocouple.c
> >> @@ -123,22 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
> >>  {
> >>       unsigned int storage_bytes = data->chip->read_size;
> >>       unsigned int shift = chan->scan_type.shift + (chan->address * 8);
> >> -     unsigned int buf;
> >> +     __be16 buf1;
> >> +     __be32 buf2;
> >>       int ret;
> >>
> >> -     ret = spi_read(data->spi, (void *) &buf, storage_bytes);
> >> -     if (ret)
> >> -             return ret;
> >> -
> >>       switch (storage_bytes) {
> >>       case 2:
> >> -             *val = be16_to_cpu(buf);
> >> +             ret = spi_read(data->spi, (void *) &buf1, storage_bytes);
> >> +             *val = be16_to_cpu(buf1);
> >>               break;
> >>       case 4:
> >> -             *val = be32_to_cpu(buf);
> >> +             ret = spi_read(data->spi, (void *) &buf2, storage_bytes);
> >> +             *val = be32_to_cpu(buf2);
> >>               break;
> >>       }
> >>
> >> +     if (ret)
> >> +             return ret;
> >> +
> >>       /* check to be sure this is a valid reading */
> >>       if (*val & data->chip->status_bit)
> >>               return -EINVAL;
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160926171404.GA11773%40sayli-HP-15-Notebook-PC.
> >> For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKG5xWhp5iZ8Ae6j90m7KVjeAz4KEUcarqJ_R6pu8pL2WaZ5Kg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

