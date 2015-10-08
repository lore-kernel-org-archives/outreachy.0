X-GM-THRID: 6202672545102036992
X-Received: by 10.107.7.87 with SMTP id 84mr5207468ioh.9.1444287134750;
        Wed, 07 Oct 2015 23:52:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.85 with SMTP id p82ls448687iop.89.gmail; Wed, 07 Oct
 2015 23:52:14 -0700 (PDT)
X-Received: by 10.66.62.228 with SMTP id b4mr4494091pas.10.1444287134357;
        Wed, 07 Oct 2015 23:52:14 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x22f.google.com (mail-yk0-x22f.google.com. [2607:f8b0:4002:c07::22f])
        by gmr-mx.google.com with ESMTPS id j22si3433250ywg.2.2015.10.07.23.52.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 23:52:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22f as permitted sender) client-ip=2607:f8b0:4002:c07::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22f as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22f.google.com with SMTP id g206so40419134ykd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 23:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=qNNFMS6qGxej3NttdiEY9pa5OqtuCepWIM77swCpPL0=;
        b=DBGttEMT8E4amhJeEZ+ALU/tDEBEiMLgzkwA27j2Ylm+ZHBp2K6vMeYDlYT/aBZrZi
         4PLactNcf3o7OkTZjLJCpl092P+dSf05+32ewX7t2s0clc0tCMk8V+a1CCqpmJ3Tju/a
         D3ZgeN4SRnfmI6kr6mvWaTXf+zdxA8ZVQaSLnL7B+paG6Vjjdn1Yf0OGF+CYltvvGQYK
         WarAhYVERpbijlDRhJ7RCC48oHbUBFnfe6ekyq2JxZFtI6L8ghJXWNBPRw+NphS/LRG9
         95oAtv6Ks9hhdU0yi+y4SiWE98E48DQyiP/k/eNsX8T+8Doii0l3sVSEkGhMirqGJx/X
         GWtw==
MIME-Version: 1.0
X-Received: by 10.129.74.138 with SMTP id x132mr3974352ywa.112.1444287134153;
 Wed, 07 Oct 2015 23:52:14 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 7 Oct 2015 23:52:14 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510080748240.2559@hadrien>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
	<5db27019c28d1f4d1313654d81e6dc21d562284b.1444241200.git.ciorneiioana@gmail.com>
	<20151008045556.GA3294@sudip-pc>
	<alpine.DEB.2.10.1510080639430.2626@hadrien>
	<CAHWJYFkdtznoTwn_UNd-U09BmfYAkiaHZcmqyk0J9KRcJp3xWw@mail.gmail.com>
	<alpine.DEB.2.10.1510080748240.2559@hadrien>
Date: Thu, 8 Oct 2015 09:52:14 +0300
Message-ID: <CAHWJYFmWyZiwCHVW0qhex-NLTZudALt3j1fvf3UikYXpeXXHBQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/9] staging: iio: adc: properly
 indent to match open paranthesis
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 8, 2015 at 9:49 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 8 Oct 2015, Ioana Ciornei wrote:
>
>> On Thu, Oct 8, 2015 at 8:40 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Thu, 8 Oct 2015, Sudip Mukherjee wrote:
>> >
>> >> On Wed, Oct 07, 2015 at 09:13:40PM +0300, Ioana Ciornei wrote:
>> >> > Indent parameters ansd arguments passed to function calls to match
>> >> > open paranthesis
>> >> >
>> >> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> >> > ---
>> >> This patch will introduce new warning of "line over 80 characters" while
>> >> fixing the warning about "Alignment should match open parenthesis".
>> >> I am not sure if it is ok to introduce new warnings to fix some other
>> >> warnings.
>> >
>> > It would be best not to, espcially if it is all white space related.
>> >
>>
>> I mentioned in the cover letter that this patch introduces checkpatch
>> warnings in order to get your feedback on this.
>> From my point of view, the readability has improved significantly with
>> this patch but if you consider that it is not necessary
>> I will discard those changes that create other warnings.
>
> I don't have the patch in front of me, but can't you just fix the other
> warnings too?  If it improves readability, it seems to be too bad ot lose
> the change.
>

I will have a try.

Thanks,

Ioana

>>
>>
>>
>> >
>> >> In one of your change in this patch you can do something like:
>> >>
>> >> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
>> >> index fe56fb6..c30e1b3 100644
>> >> --- a/drivers/staging/iio/adc/ad7192.c
>> >> +++ b/drivers/staging/iio/adc/ad7192.c
>> >> @@ -359,8 +359,9 @@ static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
>> >>               ad7192_read_frequency,
>> >>               ad7192_write_frequency);
>> >>
>> >> -static ssize_t ad7192_show_scale_available(struct device *dev,
>> >> -                     struct device_attribute *attr, char *buf)
>> >> +static ssize_t
>> >> +ad7192_show_scale_available(struct device *dev,
>> >> +                         struct device_attribute *attr, char *buf)
>> >>  {
>> >>       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> >>       struct ad7192_state *st = iio_priv(indio_dev);
>> >>
>> >>
>> >> ---
>> >> regards
>> >> sudip
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151008045556.GA3294%40sudip-pc.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>

