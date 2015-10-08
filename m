X-GM-THRID: 6202672545102036992
X-Received: by 10.112.144.99 with SMTP id sl3mr1007118lbb.12.1444286955894;
        Wed, 07 Oct 2015 23:49:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.73 with SMTP id gc9ls56966wib.27.canary; Wed, 07 Oct
 2015 23:49:15 -0700 (PDT)
X-Received: by 10.180.35.132 with SMTP id h4mr327173wij.5.1444286955470;
        Wed, 07 Oct 2015 23:49:15 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si249467wif.2.2015.10.07.23.49.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 23:49:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,653,1437429600"; 
   d="scan'208";a="181675344"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2015 08:49:13 +0200
Date: Thu, 8 Oct 2015 07:49:07 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/9] staging: iio: adc: properly
 indent to match open paranthesis
In-Reply-To: <CAHWJYFkdtznoTwn_UNd-U09BmfYAkiaHZcmqyk0J9KRcJp3xWw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510080748240.2559@hadrien>
References: <cover.1444241200.git.ciorneiioana@gmail.com> <5db27019c28d1f4d1313654d81e6dc21d562284b.1444241200.git.ciorneiioana@gmail.com> <20151008045556.GA3294@sudip-pc> <alpine.DEB.2.10.1510080639430.2626@hadrien>
 <CAHWJYFkdtznoTwn_UNd-U09BmfYAkiaHZcmqyk0J9KRcJp3xWw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 8 Oct 2015, Ioana Ciornei wrote:

> On Thu, Oct 8, 2015 at 8:40 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Thu, 8 Oct 2015, Sudip Mukherjee wrote:
> >
> >> On Wed, Oct 07, 2015 at 09:13:40PM +0300, Ioana Ciornei wrote:
> >> > Indent parameters ansd arguments passed to function calls to match
> >> > open paranthesis
> >> >
> >> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> >> > ---
> >> This patch will introduce new warning of "line over 80 characters" while
> >> fixing the warning about "Alignment should match open parenthesis".
> >> I am not sure if it is ok to introduce new warnings to fix some other
> >> warnings.
> >
> > It would be best not to, espcially if it is all white space related.
> >
>
> I mentioned in the cover letter that this patch introduces checkpatch
> warnings in order to get your feedback on this.
> From my point of view, the readability has improved significantly with
> this patch but if you consider that it is not necessary
> I will discard those changes that create other warnings.

I don't have the patch in front of me, but can't you just fix the other
warnings too?  If it improves readability, it seems to be too bad ot lose
the change.

julia

>
> Thanks,
>
> Ioana
>
>
>
>
> >
> >> In one of your change in this patch you can do something like:
> >>
> >> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> >> index fe56fb6..c30e1b3 100644
> >> --- a/drivers/staging/iio/adc/ad7192.c
> >> +++ b/drivers/staging/iio/adc/ad7192.c
> >> @@ -359,8 +359,9 @@ static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
> >>               ad7192_read_frequency,
> >>               ad7192_write_frequency);
> >>
> >> -static ssize_t ad7192_show_scale_available(struct device *dev,
> >> -                     struct device_attribute *attr, char *buf)
> >> +static ssize_t
> >> +ad7192_show_scale_available(struct device *dev,
> >> +                         struct device_attribute *attr, char *buf)
> >>  {
> >>       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >>       struct ad7192_state *st = iio_priv(indio_dev);
> >>
> >>
> >> ---
> >> regards
> >> sudip
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151008045556.GA3294%40sudip-pc.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

