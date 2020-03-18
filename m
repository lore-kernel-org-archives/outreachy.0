X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:906:2787:: with SMTP id j7mr4999241ejc.23.1584548900247;
        Wed, 18 Mar 2020 09:28:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:17f6:: with SMTP id t22ls1946300edy.6.gmail; Wed,
 18 Mar 2020 09:28:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs0EO/EkS0/jZ+504A/nKnTguWvmr+Je0yyWPh48bTQtmu3/+pNgABOxpTP3Fu1Kjj0RLim
X-Received: by 2002:a50:e68e:: with SMTP id z14mr4867657edm.307.1584548898642;
        Wed, 18 Mar 2020 09:28:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584548898; cv=none;
        d=google.com; s=arc-20160816;
        b=xZP10gI91RFDSSWHlhqUI09akjJDjAGcfTc4BxLeLOh+KPXOirR6VCqKzr+w4yty3C
         vBRr/pP5TDVrB4dh5dAB2PB4v0pf4MCqtTDFxawcLTVB8DUL7Xt5xkyloBz77FB4MbMr
         0NLl60ekvsTuoCtVGnDaCk1cbkoi8IuFKteJ8eFnd05DXz6Ue0jjU35ssgSl5+V75TcT
         EtWhrexlmAX1ZfvkCE5rNpr+9NauAPf/ciBBpRLoIe3Fe8GLwDRXLva4GzoPn7PF+6hF
         85+TaZfYfTMlIaKUeXVxGdzufiYFt8uc8QGZBks118jnQLZLTCyD4yGX5O5Nh/SZgr/N
         dPKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=p2ojnIcXdEHpV0mQnjyomikDzHllQMXGosvk7x/CPQg=;
        b=KDEPiTolQkQ9O5R89NX9m4XzJzNLLiiEUpOuKAUkmqPK4aknbx5bisXlsmYFLJBAgR
         vcs2YvwF1SRXeAwBEnzyXijZcynVNkGOr8ZgfkkDpqOOhV50jjRF4HYZ2uSwU7R1N/p5
         IIHUsy5JyqJjRVwaTCfJcs9S0Ql/CnYDleSLss77352Wio1WXgKsN4wTcHNs5VQfmZ/S
         Xp0wBhDV3Ugu0P+REC9UZV/gGUTSkL5q4cq14eCiU5P+QqCfJ37wKt7NMeysi45UUyRM
         jIJMuA9dTkwlPG4ElPCWQdMgyxU0YlX1du2el5BWKeM0R+hRIaRSMXmpou//TxVa9X8n
         xgnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e19si359254edr.3.2020.03.18.09.28.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 09:28:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,568,1574118000"; 
   d="scan'208";a="441015163"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2020 17:28:17 +0100
Date: Wed, 18 Mar 2020 17:28:17 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: DEEPAK VARMA <mh12gx2825@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, Lars-Peter Clausen <lars@metafoo.de>, 
    outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com, 
    kieran.bingham@ideasonboard.com, Michael.Hennerich@analog.com, 
    jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net, 
    linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: iio: adc: ad7280a:
 Add spaces around operators
In-Reply-To: <20200318162353.GA23226@deeUbuntu>
Message-ID: <alpine.DEB.2.21.2003181727440.2979@hadrien>
References: <cover.1584505215.git.mh12gx2825@gmail.com> <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com> <20200318060038.GB1594471@kroah.com> <35afdc4b-bd59-7851-aa4f-3d8807668931@metafoo.de> <20200318151924.GB2862853@kroah.com>
 <20200318162353.GA23226@deeUbuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 18 Mar 2020, DEEPAK VARMA wrote:

> On Wed, Mar 18, 2020 at 04:19:24PM +0100, Greg KH wrote:
> > On Wed, Mar 18, 2020 at 04:12:28PM +0100, Lars-Peter Clausen wrote:
> > > On 3/18/20 7:00 AM, Greg KH wrote:
> > > > On Wed, Mar 18, 2020 at 09:58:13AM +0530, Deepak R Varma wrote:
> > > > > Add spaces around operator symbols to improve readability. Warning
> > > > > flagged by checkpatch script.
> > > > >
> > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > ---
> > > > >   drivers/staging/iio/adc/ad7280a.c | 4 ++--
> > > > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > > > > index 19a5f244dcae..34ca0d09db85 100644
> > > > > --- a/drivers/staging/iio/adc/ad7280a.c
> > > > > +++ b/drivers/staging/iio/adc/ad7280a.c
> > > > > @@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> > > > >   }
> > > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > > > > -			     in_voltage-voltage_thresh_low_value,
> > > > > +			     in_voltage - voltage_thresh_low_value,
> > > > >   			     0644,
> > > > >   			     ad7280_read_channel_config,
> > > > >   			     ad7280_write_channel_config,
> > > > >   			     AD7280A_CELL_UNDERVOLTAGE);
> > > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > > > > -			     in_voltage-voltage_thresh_high_value,
> > > > > +			     in_voltage - voltage_thresh_high_value,
> > > > >   			     0644,
> > > > >   			     ad7280_read_channel_config,
> > > > >   			     ad7280_write_channel_config,
> > > >
> > > > Did you try building this code?
> > > >
> > > > It catches everyone...
> > >
> > > The problem is it builds. The token is stringyfied and
> > > "in_voltage - voltage_thresh_high_value" is a valid string.
> >
> > Ah, I thought it used to break the build when it happened.  Oh well,
> > it's still a great "trick" to see if people understand C or not :)
> >
> Yes, it did build. I am sorry but I am not following you fully. Can you
> please let me know if the change I introduced is not good. You may
> please direct me to a document where I can read more about it.

The code involves a macro, as indicated by the capital letters.  You will
see the issue when you look at the definition of the macro.

julia

>
> Thanks,
> Deepak.
> > thanks,
> >
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200318162353.GA23226%40deeUbuntu.
>

