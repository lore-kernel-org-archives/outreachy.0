X-GM-THRID: 6334690503118815232
X-Received: by 10.107.132.224 with SMTP id o93mr7730756ioi.74.1474993506674;
        Tue, 27 Sep 2016 09:25:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.17 with SMTP id e17ls3140513ite.21.canary; Tue, 27 Sep
 2016 09:25:03 -0700 (PDT)
X-Received: by 10.66.121.202 with SMTP id lm10mr3870648pab.41.1474993502979;
        Tue, 27 Sep 2016 09:25:02 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si685479pab.2.2016.09.27.09.25.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 09:25:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so933849pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 09:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0DK4LibKT5r7ET0hRikeIy9CZt5LXuex3SU4mVuXGG4=;
        b=ffZ1s1QajcO0xZ8WVF0xLxLNpYtVtMjEk7lCI2rYa5kTdnZVk68easKmhgMOAKBFPS
         iN4QbWC17B0AKMvjOSVCy5Jx6DChxQEBrhWAl2ns+dljYfWtvyBJFEmjr/OfKDaFCzhy
         Bl+zZMiCpdmZLG2YVsCgC1IVzlCVEcnEQdQHfaqCiOlPh4JeZoal7OKD6tmWvxHc/5Qz
         TUwmUPFpXXdBLiFMnmQ44O1wxQxWENdPU7zqgcaQnaabXQy/A47BNM3OCU1WN7OkHsUg
         MIoPPbYCGle+/gT1KMZzMUAZ2GmQh42K4nXYBBJ3D+F4cRRKPmRaIopjq+Sq97RMb84h
         6xLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0DK4LibKT5r7ET0hRikeIy9CZt5LXuex3SU4mVuXGG4=;
        b=TqYBFJ6pzvTaWW+8pZmq0ENc1jPqLYJ4XF4Ik+KGLSedOBW0dAhRx08iLcd66JRMh3
         C23cM6tKrzdWmQ1z2LcsQCYACxjZdwZqe1MDXP++zYzgZeUZE/yzZdOzl0fqZWpFUne+
         Gg/uPj3gBBd/MW1fr3cYm0djRJd9RHndMpEpFJabS0fqVO7PDIF6ZUDw+nU2f/u1ifKE
         FlyOhTJrggZ7mIIXmx1MhooDxQQGhm7CjHye1xDQHTx5VOs1cnlu4cvSqr8iZwlT3VYK
         rEN0vMqL9QSFe0s+0zGZFg81L3r/lhhJhzT62VcrFJzxGd5o7+2pySTbCgt9k0CxHIFF
         nseQ==
X-Gm-Message-State: AE9vXwOB+Ib/D3PkW6w/xg6NPJJ/eymywp0qYMplN3dZkj3hBeF3aikSm/Gt3AiFQuILGg==
X-Received: by 10.98.62.4 with SMTP id l4mr48557362pfa.13.1474993502747;
        Tue, 27 Sep 2016 09:25:02 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id y2sm6085579pan.31.2016.09.27.09.25.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Sep 2016 09:25:02 -0700 (PDT)
Date: Tue, 27 Sep 2016 09:25:01 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, lars@metafoo.de
Subject: Re: [Outreachy kernel] [PATCH v2] iio: temperature:
 maxim_thermocouple: Fix sparse endianness warnings
Message-ID: <20160927162500.GA18152@d830.WORKGROUP>
References: <20160926171404.GA11773@sayli-HP-15-Notebook-PC>
 <20160927060539.GA10769@d830.WORKGROUP>
 <CAKG5xWhp5iZ8Ae6j90m7KVjeAz4KEUcarqJ_R6pu8pL2WaZ5Kg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG5xWhp5iZ8Ae6j90m7KVjeAz4KEUcarqJ_R6pu8pL2WaZ5Kg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Sep 27, 2016 at 08:35:27PM +0530, sayli karnik wrote:
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

You got it.  See more inline below...
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

You'll state the impact of the issue in your changelog.  It's only
an issue on Big Endian systems with one of the supported chips (look
that up)

In regard to the Fix tag: 
I probably didn't need to ask if we should put it a fix tag.
We should just put one in, explain the impact of of the bug, and then
Jonathan can make the decision from there.  To make a fix tag,
we go back in the git log to find when this issue was introduced.  This
one's easy...short history.  Here's the tag.  You will put it after
your Signed off line, but above the ---.  You can see how it's done
in some other logs on in linus-iio email.

Fixes: 1f25ca11d84a ("iio: temperature: add support for Maxim thermocouple chips

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

Your prediction is right. Found with checkpatch --strict option.  
CHECK: No space is necessary after a cast
#132: FILE: maxim_thermocouple.c:132:
+		ret = spi_read(data->spi, (void *) &buf1, storage_bytes);

CHECK: No space is necessary after a cast
#136: FILE: maxim_thermocouple.c:136:
+		ret = spi_read(data->spi, (void *) &buf2, storage_bytes);


I think you're set.  Create a new version and let's get it reviewed by
linux-iio further.

You dropped the 'cc list on this thread.  Adding them back in.

Thanks Sayli,
alisons

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

