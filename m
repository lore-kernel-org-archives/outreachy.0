X-GM-THRID: 6388140683581980672
X-Received: by 10.129.160.208 with SMTP id x199mr3109057ywg.7.1487506612209;
        Sun, 19 Feb 2017 04:16:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.77 with SMTP id c74ls2337634ioe.29.gmail; Sun, 19 Feb
 2017 04:16:51 -0800 (PST)
X-Received: by 10.36.50.213 with SMTP id j204mr5747819ita.1.1487506611191;
        Sun, 19 Feb 2017 04:16:51 -0800 (PST)
Received: by 10.55.168.18 with SMTP id r18msqke;
        Sun, 19 Feb 2017 01:43:29 -0800 (PST)
X-Received: by 10.25.169.14 with SMTP id s14mr1574901lfe.3.1487497409285;
        Sun, 19 Feb 2017 01:43:29 -0800 (PST)
Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id q4si567070wma.3.2017.02.19.01.43.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 01:43:29 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Received: from [192.168.0.5] (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 73FDA405E1;
	Sun, 19 Feb 2017 09:43:28 +0000 (GMT)
Date: Sun, 19 Feb 2017 09:43:27 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <alpine.DEB.2.20.1702182017140.2383@hadrien>
References: <20170217180807.GA18849@sayli-HP-15-Notebook-PC> <fc505638-1355-7a14-3853-32210e186df8@kernel.org> <alpine.DEB.2.20.1702182017140.2383@hadrien>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: iio: adis16240_core: Replace symbolic permission with octal permission
To: Julia Lawall <julia.lawall@lip6.fr>,Jonathan Cameron <jic23@kernel.org>
CC: sayli karnik <karniksayli1995@gmail.com>,outreachy-kernel@googlegroups.com,Hartmut Knaack <knaack.h@gmx.de>,Lars-Peter Clausen <lars@metafoo.de>,Peter Meerwald-Stadler <pmeerw@pmeerw.net>,Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <9846643E-C418-45B1-BEF5-95B9F6A626E4@jic23.retrosnub.co.uk>



On 18 February 2017 19:17:36 GMT+00:00, Julia Lawall <julia=2Elawall@lip6=
=2Efr> wrote:
>
>
>On Sat, 18 Feb 2017, Jonathan Cameron wrote:
>
>> On 17/02/17 18:08, sayli karnik wrote:
>> > The patch resolves following checkpatch issue:
>> > WARNING: Symbolic permissions 'S_IRUGO' are not preferred=2E Consider
>using
>> > octal permissions '0444'=2E
>> >
>> > Signed-off-by: sayli karnik <karniksayli1995@gmail=2Ecom>
>> Applied to the togreg branch of iio=2Egit=2E Pushed out as testing
>initially to let
>> the autobuilders play with it=2E
>>
>> One request though, please post iio related patches to
>linux-iio@vger=2Ekernel=2Eorg even
>> for drivers in staging=2E  That way they are less likely to fall
>through the cracks!
>
>I updates the Outreachy instructions accordingly=2E
Thanks

Jonathan
>
>thanks,
>julia
>
>>
>> Jonathan
>> > ---
>> >  drivers/staging/iio/accel/adis16240_core=2Ec | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/staging/iio/accel/adis16240_core=2Ec
>b/drivers/staging/iio/accel/adis16240_core=2Ec
>> > index d5b99e6=2E=2Ee1bc9fc 100644
>> > --- a/drivers/staging/iio/accel/adis16240_core=2Ec
>> > +++ b/drivers/staging/iio/accel/adis16240_core=2Ec
>> > @@ -65,7 +65,7 @@ static ssize_t adis16240_read_12bit_signed(struct
>device *dev,
>> >  	return ret;
>> >  }
>> >
>> > -static IIO_DEVICE_ATTR(in_accel_xyz_squared_peak_raw, S_IRUGO,
>> > +static IIO_DEVICE_ATTR(in_accel_xyz_squared_peak_raw, 0444,
>> >  		       adis16240_read_12bit_signed, NULL,
>> >  		       ADIS16240_XYZPEAK_OUT);
>> >
>> >
>>
>> --
>> You received this message because you are subscribed to the Google
>Groups "outreachy-kernel" group=2E
>> To unsubscribe from this group and stop receiving emails from it,
>send an email to outreachy-kernel+unsubscribe@googlegroups=2Ecom=2E
>> To post to this group, send email to
>outreachy-kernel@googlegroups=2Ecom=2E
>> To view this discussion on the web visit
>https://groups=2Egoogle=2Ecom/d/msgid/outreachy-kernel/fc505638-1355-7a14=
-3853-32210e186df8%40kernel=2Eorg=2E
>> For more options, visit https://groups=2Egoogle=2Ecom/d/optout=2E
>>

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

