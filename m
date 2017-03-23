X-GM-THRID: 6400661101399244800
X-Received: by 10.25.234.202 with SMTP id y71mr367758lfi.2.1490272371132;
        Thu, 23 Mar 2017 05:32:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.168.207 with SMTP id r198ls413635lfe.14.gmail; Thu, 23 Mar
 2017 05:32:49 -0700 (PDT)
X-Received: by 10.25.72.71 with SMTP id v68mr369002lfa.9.1490272369949;
        Thu, 23 Mar 2017 05:32:49 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x232.google.com (mail-lf0-x232.google.com. [2a00:1450:4010:c07::232])
        by gmr-mx.google.com with ESMTPS id n128si1677909wmf.2.2017.03.23.05.32.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 05:32:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) client-ip=2a00:1450:4010:c07::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x232.google.com with SMTP id y193so80835965lfd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 05:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=vRmG6kkobegwvw2sLJ+bLQO8oikr4hRcqSFKJvTZ1Bw=;
        b=hxxII+QaEUuHmNcAZk1r2REhus20E/Bk/Hf7mGi1lsnOHHTsgs6rZrerosnPy23qIe
         Z7u09+SZnhplkQaT69CCy059w4omBZboWfgdJIe984B9Vq/j/1FLAalpkwtNGElZQTFg
         jD9/Pp7e/xAjwbec96Cr2AdJ6LgIXfbzePaa1lqgQzJr7TTazNo0vZbBJ2JI7kcWENo8
         kjjS72uAD1TpSjH6ffW8jfX/s8xUmtDvRlayUcA8SPwfAJB0PzfCpFeytkJ3SAc97EUQ
         ND85ysSKlPLgUbuJLG+yuHwTzt3yfAQ8lwHkAAdkYAecJK811YegpS5J+qDTxc2YaRHP
         4acQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=vRmG6kkobegwvw2sLJ+bLQO8oikr4hRcqSFKJvTZ1Bw=;
        b=ZGIv9NriGHYO7/5ZoZ8VfUwhTEJaJXbGBv5Kq2GUocX78yAbaOxWwmuimIYfxlywMc
         pQyitoTN87neUz1A7ao2yGW+e5Aih7kHajpobbFHdAonEszEWh+8FnibGsJkSWGSjqxU
         aFUwHvY8WjLeHHUdFJVoVbO7URyN9GpjebjMKGNMcztq5Ay6yroUVPgpnik0fXjvJ/ao
         7GRafBnEyzYnQSB2JxBWsz/BhscQknB8gTFoV7W1ZQHqB9x9mQwOEr4iTFFnNQ8sSsQS
         uccSYArxPgJOzz+OFzPhRrGA4EjA80CEKOrxQMcbRtWabv21YBg/V4NsnDo++pYyJMqS
         UShQ==
X-Gm-Message-State: AFeK/H0sPEx7/TxaIRnJcALW0Cz1W/UU0su9CqoJLWay6ODdIgecAebkAOYJrZd/OoWUwBnsYDarsYBgwrrElQ==
X-Received: by 10.25.165.7 with SMTP id o7mr1289232lfe.141.1490272369654; Thu,
 23 Mar 2017 05:32:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Thu, 23 Mar 2017 05:32:48 -0700 (PDT)
In-Reply-To: <d432970a-ffea-2cce-de3e-db4f30f0201f@metafoo.de>
References: <20170323115357.GA24360@arushi-HP-Pavilion-Notebook> <d432970a-ffea-2cce-de3e-db4f30f0201f@metafoo.de>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Thu, 23 Mar 2017 18:02:48 +0530
Message-ID: <CA+XqjF81VTZFLWQpdLVXNvLcCXzC5E068kPr3y6=GGiANTij=A@mail.gmail.com>
Subject: Re: [PATCH] staging: tsl2x7x: Moved contents of the header to the
 source file.
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, driverdevel <devel@driverdev.osuosl.org>, 
	LKML <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1140768e36450b054b6513ab

--001a1140768e36450b054b6513ab
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 23, 2017 at 5:29 PM, Lars-Peter Clausen <lars@metafoo.de> wrote:

> On 03/23/2017 12:53 PM, Arushi Singhal wrote:
> > Moved the contents of the header(tsl2x7x.h) into the source file
> > tsl2x7x_core.c with the exception of the platform data struct which is
> > supposed to be used from somewhere else other than the driver.
>
> The platform_data struct uses the other structs though.
>
Hi Lars
Thanks for pointing out the mistake.
Arushi

--001a1140768e36450b054b6513ab
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Mar 23, 2017 at 5:29 PM, Lars-Peter Clausen <span dir=3D"ltr">&=
lt;<a href=3D"mailto:lars@metafoo.de" target=3D"_blank">lars@metafoo.de</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 03=
/23/2017 12:53 PM, Arushi Singhal wrote:<br>
&gt; Moved the contents of the header(tsl2x7x.h) into the source file<br>
&gt; tsl2x7x_core.c with the exception of the platform data struct which is=
<br>
&gt; supposed to be used from somewhere else other than the driver.<br>
<br>
</span>The platform_data struct uses the other structs though.<br></blockqu=
ote><div>Hi Lars<br></div><div>Thanks for pointing out the mistake.<br></di=
v><div>Arushi <br></div></div></div></div>

--001a1140768e36450b054b6513ab--

