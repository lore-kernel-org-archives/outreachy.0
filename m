X-GM-THRID: 6338982763407867904
X-Received: by 10.157.47.4 with SMTP id h4mr218949otb.109.1476277417943;
        Wed, 12 Oct 2016 06:03:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.213 with SMTP id i21ls3404004otd.8.gmail; Wed, 12 Oct
 2016 06:03:37 -0700 (PDT)
X-Received: by 10.159.48.29 with SMTP id h29mr231003uab.19.1476277417532;
        Wed, 12 Oct 2016 06:03:37 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si1382380par.0.2016.10.12.06.03.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 06:03:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id s8so2722467pfj.2
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 06:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=awUdWhuvxQl/OJiNMUYwYKk/6lfKK68EGym8aK6dE/I=;
        b=X6YXKF9dMJUqbW9jt2pX76a+BmxLrcJm4JuXziwGomK7lMMID0TT4ahL6kslX4NQPA
         1XE5QmWNB4hO5uqDgc0vY9hA4zJnYd82/lDau2PHFD5l1+gOqC5ZD4mdbd7RHMe162RS
         RYQXG7OaH9K1Tx+QFgxAYWtlDJygOBZUbAwmQR09ZdBzyZR4yy28SlOr0nbBGFe6z8Y9
         5+A+Rc4bMAJ6xzEbd2RviT134gwdg8IbBecIRxfsc0ZUrZAZukjzDWIMG0BmUFTNF0p8
         ryQScIajHw4qQiD0cutG/omYxiohXiWHdFruUqlm+06alqQPFVcl/TNcqDRaGrzUIYAF
         Oo/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=awUdWhuvxQl/OJiNMUYwYKk/6lfKK68EGym8aK6dE/I=;
        b=j0I1VmHSaf7+peTHhRh8nHoqJvwaSv555J0Y68fyHVi2PmStWbAPe5v7ZZx/4qHL/B
         GsSGIj8pAyatLmrWlQMPKSjyKLWZ52hh/v45IqlzmcufDhuNbWDf7guCuy0SEpSo03Ri
         SxhpsSAlK9EXjF63qH7OXJtgTpPgaP8aa07X9HFqwB9Kyc9Ziraqb/1363DhwigtrwvU
         zIlJVthR37HsP3fU9wbr/B3DACJlBGZFENKgBl89ncREFWASgn0q1KuGGNuIEG39pWuk
         QQ7HHotJXw1hrTCCftJQHeHYb+T+7UIkFOVNNAz5HQ3DitxHBOj3ExglRVcTrfLfPtaG
         oGqA==
X-Gm-Message-State: AA6/9RmXUvjTbFhyuAQ3h91N8OAkM1jJsngRoUEWS4kva1UkuewsZq+b3QOVlNs3OanXLw==
X-Received: by 10.98.152.213 with SMTP id d82mr1562175pfk.105.1476277417310;
        Wed, 12 Oct 2016 06:03:37 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.8])
        by smtp.gmail.com with ESMTPSA id id6sm11794497pad.28.2016.10.12.06.03.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 12 Oct 2016 06:03:36 -0700 (PDT)
Date: Wed, 12 Oct 2016 21:03:33 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com, Michael.Hennerich@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net
Subject: Re: [Outreachy kernel] Re: [PATCH v3 2/2] staging: iio: ad7606: fix
 improper setting of oversampling pins
Message-ID: <20161012130331.GA2726@Socrates-DK>
Mail-Followup-To: Greg KH <gregkh@linuxfoundation.org>,
	Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com, Michael.Hennerich@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net
References: <cover.1475907512.git.eraretuya@gmail.com>
 <9018314d134e3e33f892ad78969e11bf5ffa0950.1475907512.git.eraretuya@gmail.com>
 <39a0c2c4-6fcb-21f2-f9b3-ddb360f58c75@metafoo.de>
 <20161012124217.GA18782@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161012124217.GA18782@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 12, 2016 at 02:42:17PM +0200, Greg KH wrote:
> On Sat, Oct 08, 2016 at 02:21:46PM +0200, Lars-Peter Clausen wrote:
> > On 10/08/2016 08:50 AM, Eva Rachel Retuya wrote:
> > > The oversampling ratio is controlled using the oversampling pins,
> > > OS [2:0] with OS2 being the MSB control bit, and OS0 the LSB control
> > > bit.
> > > 
> > > The gpio connected to the OS2 pin is not being set correctly, only OS0
> > > and OS1 pins are being set. Fix the typo to allow proper control of the
> > > oversampling pins.
> > > 
> > > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> > > Fixes: b9618c0 ("staging: IIO: ADC: New driver for AD7606/AD7606-6/AD7606-4")
> > 
> > Looks good, thanks.
> > 
> > Acked-by: Lars-Peter Clausen <lars@metafoo.de>
> > 
> > Ideally you'd have but the patches in the opposite order, fix first, then
> > rework. As it is right now with the fix after the rework the fix no longer
> > applies cleanly to older versions.
> 
> Yes, please do that, so it can be applied to older kernels properly.
> 
> thanks,
> 
> greg k-h

Lars and Greg:

Thanks for the feedback. I got the v4 accepted using the proper order,
fix first then rework as suggested.

Eva

