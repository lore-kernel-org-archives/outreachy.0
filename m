X-GM-THRID: 6202672545102036992
X-Received: by 10.50.55.71 with SMTP id q7mr15807875igp.7.1444715268239;
        Mon, 12 Oct 2015 22:47:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.4 with SMTP id l4ls1469428iol.105.gmail; Mon, 12 Oct
 2015 22:47:47 -0700 (PDT)
X-Received: by 10.66.102.101 with SMTP id fn5mr27119783pab.38.1444715267917;
        Mon, 12 Oct 2015 22:47:47 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x230.google.com (mail-yk0-x230.google.com. [2607:f8b0:4002:c07::230])
        by gmr-mx.google.com with ESMTPS id t64si83870ywd.2.2015.10.12.22.47.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 22:47:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) client-ip=2607:f8b0:4002:c07::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x230.google.com with SMTP id y125so6851944yke.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 22:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=JfXgaqm/BrGu4lAxxGv0tDMj3mMIGaY/8aZES0CJB7M=;
        b=Kd9XRPyk3znWnW7bGbqoLhnJXJG/83kfVYkJbSGussX6I4eOdMnHvdJQMWC/412NYA
         UPz29Pj15422e7Fo9jAMRrav6oiTXMNajkEe3AmcZVxqSAHg/QtxEa4ZcGFyttlrHBPp
         rgHZWgmCnG8nmOc5jKlg7cHFcjaojz3ixQU1YDJpjzybd1FbJmNjO6wat/5m8aWrZc5I
         FiE0zOZJT0AxeuDaV2MkVcAu0us21UIyyv6awCV54s82Vq6+jGSi9Cr0NJIIp+B3+VKs
         bzm45xpLAc8w4enqpIkdv/TL8OXd4s7zkjwYSG13T9dbJm6WB/CiW9aubh0DksBsQLfb
         mvPw==
MIME-Version: 1.0
X-Received: by 10.129.157.129 with SMTP id u123mr25102820ywg.11.1444715267776;
 Mon, 12 Oct 2015 22:47:47 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Mon, 12 Oct 2015 22:47:47 -0700 (PDT)
In-Reply-To: <20151013000103.GA23613@kroah.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<d94402f948a0d2561ee046fd5fcb56ea562ab1bf.1444419393.git.ciorneiioana@gmail.com>
	<CAEnQRZAZ0f5p3myoNWSdzF=WhxoPWMxNLYn+wcHThYz_YrqKzg@mail.gmail.com>
	<CAHWJYFm8t+=JB7RGOb1xVtFVrn8fDvT0eVyH5jxio2yojcohpQ@mail.gmail.com>
	<20151013000103.GA23613@kroah.com>
Date: Tue, 13 Oct 2015 08:47:47 +0300
Message-ID: <CAHWJYF=Wu7ihsMtQaVn3_UFv93u93FPEtsLVL5yLd1Bpuxit-Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 5/9] staging: iio: adc: add spaces
 around binary operators
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Daniel Baluta <daniel.baluta@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c0bdaa6566bb80521f5fc30

--94eb2c0bdaa6566bb80521f5fc30
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 3:01 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Oct 12, 2015 at 10:00:30PM +0300, Ioana Ciornei wrote:
>> On Mon, Oct 12, 2015 at 7:38 PM, Daniel Baluta <daniel.baluta@gmail.com>
wrote:
>> > On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com>
wrote:
>> >> Add spaces around binary operators like -, +, * etc
>> >> in order to improve readability
>> >>
>> >> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> >> ---
>> >>
>> >> Changes in v2:
>> >>     - nothing
>> >> Changes in v3:
>> >>     - nothing
>> >>
>> >>  drivers/staging/iio/adc/ad7192.c  | 2 +-
>> >>  drivers/staging/iio/adc/ad7280a.c | 4 ++--
>> >>  drivers/staging/iio/adc/ad7816.c  | 2 +-
>> >>  3 files changed, 4 insertions(+), 4 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/iio/adc/ad7192.c
b/drivers/staging/iio/adc/ad7192.c
>> >> index e7212c8..1bae258 100644
>> >> --- a/drivers/staging/iio/adc/ad7192.c
>> >> +++ b/drivers/staging/iio/adc/ad7192.c
>> >> @@ -377,7 +377,7 @@ ad7192_show_scale_available(struct device *dev,
>> >>  }
>> >>
>> >>  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
>> >> -                            in_voltage-voltage_scale_available,
>> >> +                            in_voltage - voltage_scale_available,
>> >
>> > This is not ok :). in_voltage-voltage_scale_available is the name of
>> > an IIO sysfs
>> > attribute exposed to user space. '-' is a part of the name, there is
>> > no binary operator
>> > here.
>> >
>> > If checkpatch complains about this then it's a false positive.
>>
>>
>> Yes, checkpatch generated a warning and also there were no build errors.
>> Sorry about this. I will send a v2.
>
> You mean "v4", right?  This is v3 already...


Yes, I was meaning v4. I will send it right away.

Ioana

--94eb2c0bdaa6566bb80521f5fc30
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tue, Oct 13, 2015 at 3:01 AM, Greg KH &lt;<a hr=
ef=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt;=
 wrote:<br>&gt; On Mon, Oct 12, 2015 at 10:00:30PM +0300, Ioana Ciornei wro=
te:<br>&gt;&gt; On Mon, Oct 12, 2015 at 7:38 PM, Daniel Baluta &lt;<a href=
=3D"mailto:daniel.baluta@gmail.com">daniel.baluta@gmail.com</a>&gt; wrote:<=
br>&gt;&gt; &gt; On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei &lt;<a href=
=3D"mailto:ciorneiioana@gmail.com">ciorneiioana@gmail.com</a>&gt; wrote:<br=
>&gt;&gt; &gt;&gt; Add spaces around binary operators like -, +, * etc<br>&=
gt;&gt; &gt;&gt; in order to improve readability<br>&gt;&gt; &gt;&gt;<br>&g=
t;&gt; &gt;&gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneii=
oana@gmail.com">ciorneiioana@gmail.com</a>&gt;<br>&gt;&gt; &gt;&gt; ---<br>=
&gt;&gt; &gt;&gt;<br>&gt;&gt; &gt;&gt; Changes in v2:<br>&gt;&gt; &gt;&gt; =
=C2=A0 =C2=A0 - nothing<br>&gt;&gt; &gt;&gt; Changes in v3:<br>&gt;&gt; &gt=
;&gt; =C2=A0 =C2=A0 - nothing<br>&gt;&gt; &gt;&gt;<br>&gt;&gt; &gt;&gt; =C2=
=A0drivers/staging/iio/adc/ad7192.c =C2=A0| 2 +-<br>&gt;&gt; &gt;&gt; =C2=
=A0drivers/staging/iio/adc/ad7280a.c | 4 ++--<br>&gt;&gt; &gt;&gt; =C2=A0dr=
ivers/staging/iio/adc/ad7816.c =C2=A0| 2 +-<br>&gt;&gt; &gt;&gt; =C2=A03 fi=
les changed, 4 insertions(+), 4 deletions(-)<br>&gt;&gt; &gt;&gt;<br>&gt;&g=
t; &gt;&gt; diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging=
/iio/adc/ad7192.c<br>&gt;&gt; &gt;&gt; index e7212c8..1bae258 100644<br>&gt=
;&gt; &gt;&gt; --- a/drivers/staging/iio/adc/ad7192.c<br>&gt;&gt; &gt;&gt; =
+++ b/drivers/staging/iio/adc/ad7192.c<br>&gt;&gt; &gt;&gt; @@ -377,7 +377,=
7 @@ ad7192_show_scale_available(struct device *dev,<br>&gt;&gt; &gt;&gt; =
=C2=A0}<br>&gt;&gt; &gt;&gt;<br>&gt;&gt; &gt;&gt; =C2=A0static IIO_DEVICE_A=
TTR_NAMED(in_v_m_v_scale_available,<br>&gt;&gt; &gt;&gt; - =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0in_voltage-voltage_scale_available,<br>&gt;&gt; &gt;&gt; + =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0in_voltage - voltage_scale_available,<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; This is not ok :). in_voltage-voltage_scale_available is the =
name of<br>&gt;&gt; &gt; an IIO sysfs<br>&gt;&gt; &gt; attribute exposed to=
 user space. &#39;-&#39; is a part of the name, there is<br>&gt;&gt; &gt; n=
o binary operator<br>&gt;&gt; &gt; here.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
If checkpatch complains about this then it&#39;s a false positive.<br>&gt;&=
gt;<br>&gt;&gt;<br>&gt;&gt; Yes, checkpatch generated a warning and also th=
ere were no build errors.<br>&gt;&gt; Sorry about this. I will send a v2.<b=
r>&gt;<br>&gt; You mean &quot;v4&quot;, right?=C2=A0 This is v3 already...<=
br><br><br>Yes, I was meaning v4. I will send it right away.<div><br></div>=
<div>Ioana</div></div>

--94eb2c0bdaa6566bb80521f5fc30--

