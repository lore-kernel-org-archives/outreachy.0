X-GM-THRID: 6391488728330665984
X-Received: by 10.200.37.168 with SMTP id e37mr313601qte.18.1488269604907;
        Tue, 28 Feb 2017 00:13:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.9 with SMTP id l9ls238513ita.1.gmail; Tue, 28 Feb 2017
 00:13:24 -0800 (PST)
X-Received: by 10.99.1.78 with SMTP id 75mr336572pgb.151.1488269604058;
        Tue, 28 Feb 2017 00:13:24 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-io0-x230.google.com (mail-io0-x230.google.com. [2607:f8b0:4001:c06::230])
        by gmr-mx.google.com with ESMTPS id z191si194875itc.0.2017.02.28.00.13.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 00:13:24 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::230 as permitted sender) client-ip=2607:f8b0:4001:c06::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::230 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x230.google.com with SMTP id l7so4650275ioe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 00:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=GBaYC+ac59AeD9JBXD83RNL9veiOEnf4xyljUxFbLrw=;
        b=Vf7lXYD3de3cWxQm3t0hNBUlIPUfhuKmCClaDJZP9+NKpzLD6B3rR7/9Chc2NkRPSG
         a09tiyM4NheNYnzaXRerGzT2Oo/CpbJdvLoEOtuk1uoazGCLdenOwqD8tQmXOj0+yTKi
         JFt06dvqZ+ztkKMO/fbUjmB5Pgwjv8d8M5sh+2hN1knaZvMmjy/kJS7poxcmiSK16g2E
         6tOb0FaNSrTaWRLe9PyNVmPOlL/wmAQhE4EDh7umYCQKYovXOB4uyGgk7XWYcMJUuAwE
         O2mUvHMuj8HdvKNk8Exne06LbWodH9Xs+HYDqk01j44SGNNUg7oMNaGJNuXj9XyaHg3U
         c/BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=GBaYC+ac59AeD9JBXD83RNL9veiOEnf4xyljUxFbLrw=;
        b=k7TeH89hF/AF7WSZg08Tm8wWZnQ10cT4OITi4LzXr/0oMrFDuzQanGSQQrfyifBYnm
         JhTuXxMSPT5fCoeOuLDwaxM5q77ZQkoEgMNO2V8hnpMdEnekoXrF7j2dOsjJ6iE37Xi1
         PVZrYThrs4tCuvCELTWBf3Q7h26VuJHaq3MYH3FuSg8ZvGxdgZ3tmJwVxXwKoHYXAkOI
         QXpECMmQmZBASrr6mct9Ll8jS6p5TuYVpJgq13xrYG3eEw++9QU77WL0gWddUHZziZIo
         Qln9HhqqdBy8XJWNLT2UwXr5sJzOQLMuL/Cug/DfoCpzdtrHM+61rDV3Ixy9s966g1hW
         6q1Q==
X-Gm-Message-State: AMke39kzVym2fzBq6t5gu+T/6knSHpULPu0Pd78taMyXgIw9eayLSPz56+yW2MWycDu8+AtDbkRxLMXq6K9uhg==
X-Received: by 10.107.149.194 with SMTP id x185mr1260483iod.167.1488269603846;
 Tue, 28 Feb 2017 00:13:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.6.203 with HTTP; Tue, 28 Feb 2017 00:13:23 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702280746000.2078@hadrien>
References: <cover.1488250884.git.kdunne@mail.ccsf.edu> <972438f1c7bc46153df933c5861fac91f6793e92.1488250885.git.kdunne@mail.ccsf.edu>
 <alpine.DEB.2.20.1702280746000.2078@hadrien>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 28 Feb 2017 10:13:23 +0200
Message-ID: <CAEnQRZCeK0L4vbpTHOk78QP1iJYMrZSRmJvG=XNL_jo4OkRgZA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: iio: meter: Remove unused definitions
To: Julia Lawall <julia.lawall@lip6.fr>, Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 8:47 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 27 Feb 2017, Katie Dunne wrote:
>
>> Remove definitions not used in kernel code.
>
> Did Alison ask for this?  Normally these kinds of constant definitions are
> kept, because they describe the device in some way.  If you see macros
> that perform more complex computations that are not used, you can get rid
> of those.

Agree with Julia, lets keep this because they could be good documentation.

Daniel.

