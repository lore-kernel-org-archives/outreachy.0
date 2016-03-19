X-GM-THRID: 6263750571303370752
X-Received: by 10.140.150.210 with SMTP id 201mr15780812qhw.28.1458399294000;
        Sat, 19 Mar 2016 07:54:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.171.71 with SMTP id as7ls1141976obc.69.gmail; Sat, 19 Mar
 2016 07:54:53 -0700 (PDT)
X-Received: by 10.182.165.200 with SMTP id za8mr16099822obb.38.1458399293524;
        Sat, 19 Mar 2016 07:54:53 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id w69si1186194ywa.3.2016.03.19.07.54.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 07:54:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id s5so4801473qkd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 07:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=rTs3+HA5P7NIJgyak/WNr8uJJFTk8YEVknw1VKq+p0A=;
        b=ZiYlYPLvT+gvgm2wvrbJatBtpsvJF8snpXggct/DGx5LIvp2O6ZaZKVAn/HWVSGs6U
         aTsOriJswSN/Eyj6Pik4hcR9e0nkprDHyuNECCjzhzrCi42jstN1/6gzu3Xue/dWvfys
         WlOUHxrdFS+uIY5zahf1V/tRkVSPn1mrUOmHfN4QdkarFfPH7zupnlmyy6oDacOoS9pM
         JlVCdquH/wE56aDQ8kGkbokYIRDeYbG2uLm5bcMcDNd/T8mVv88xxwSugnl6/yQ90R6u
         vvyMPix41mVR5UdvByH7bGWtW2vkuFF9ZgH9W3bxOkb6kED3Lm4QoSl1osu6zA6PoOxZ
         cohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=rTs3+HA5P7NIJgyak/WNr8uJJFTk8YEVknw1VKq+p0A=;
        b=U0LleCHiGUsS0jN35qju9gjkdQ481Iva7onZlXWKb+8A6cVX2nhTHfZhhYcy0AKxJ7
         Oomh/cDXrDcnyb0QHTLH2SAsjYtAd1Y3gRCp4i1bL+KTDb+DmblB/jYpw2l66SwY52bJ
         VGOPg99T0gXbmL96MLzBUddQ4DvjSlDAJky0UzHJlsUAw916NxTKTk7yWHla5PvI95MZ
         rzcdIs2ix7KiTyk2jPFpp5wI2mDXOcOFiV5Ei3xDLz83fv8mwV3Rx46HCzQ4Bx2FU83S
         Vc/vIvD4xpk+6gCY+bLKbQDe6o8JPqavQINLVcKBMA4c8bdr0BhBrwTEjKoZiTg/TwgB
         m8wA==
X-Gm-Message-State: AD7BkJIe/u+z2+yCeSkmTD19czfQDzijxe1uL/4nK7uTIDLsMhJzPlpzP1h3oT/dATeAta4upvYRM5Dux8sQYw==
MIME-Version: 1.0
X-Received: by 10.55.74.141 with SMTP id x135mr29457133qka.20.1458399293273;
 Sat, 19 Mar 2016 07:54:53 -0700 (PDT)
Received: by 10.140.44.99 with HTTP; Sat, 19 Mar 2016 07:54:53 -0700 (PDT)
In-Reply-To: <CAA3ASzk7TjnS9o6AV6B87HSyALdk6h8BWQqZ08YSvwhKAnKjJg@mail.gmail.com>
References: <cover.1458367377.git.bankarsandhya512@gmail.com>
	<6a66bd13896f6f5e6ff2873e697fbc72af8c8185.1458367377.git.bankarsandhya512@gmail.com>
	<alpine.DEB.2.02.1603191457270.2072@localhost6.localdomain6>
	<CAA3ASzk7TjnS9o6AV6B87HSyALdk6h8BWQqZ08YSvwhKAnKjJg@mail.gmail.com>
Date: Sat, 19 Mar 2016 20:24:53 +0530
Message-ID: <CA+5yK5GCGrNMq5ciLNhWf+JTKBgvVA6NhmzD04Oj5efy7qWpxA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rdma: Remove & from
 function name.
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: bankarsandhya512@gmail.com
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 19, 2016 at 7:56 PM, sandhya bankar
<bankarsandhya512@gmail.com> wrote:
> Hello,
> I have run the following cocci scripts,
>
> ############################################
> //
> //  Remove exceptional & on function name
> //
> // Target: Linux
> // Copyright:  2012 - LIP6/INRIA
> // License:  Licensed under ISC. See LICENSE or
> http://www.isc.org/software/license
> // Author: Julia Lawall <Julia.Lawall@lip6.fr>
> // URL: http://coccinelle.lip6.fr/
> // URL: http://coccinellery.org/
>
> @script:python@
> @@
>
> with_and = 0
> without_and = 0
>
> @r@
> identifier f;
> @@
>
> f(...) { ... }
>
> @addr1@
> identifier r.f;
> position pa;
> @@
>
>  &f@pa
>
> @script:python@
> p << addr1.pa;
> @@
>
> with_and = with_and + 1
>
> @r1@
> identifier r.f;
> position p;
> declarer name  EXPORT_SYMBOL;
> @@
>
> (
> EXPORT_SYMBOL(f@p);
> |
> module_init(f@p);
> |
> module_exit(f@p);
> |
> f@p(...)
> )
>
> @noaddr1@
> identifier r.f;
> position pn != r1.p;
> @@
>
> (
>   &f
> |
>  f@pn
> )
>
> @script:python@
> p << noaddr1.pn;
> @@
>
> without_and = without_and + 1
>
> @script:python@
> @@
>
> choose_without_and = False
> #if (with_and * 25 < without_and):
> #  choose_without_and = True
> if (with_and == 1 and without_and > 9):
>   choose_without_and = True
>
> choose_with_and = False
> #if (without_and * 25 < with_and):
> #  choose_with_and = True
> if (without_and == 1 and with_and > 9):
>   choose_with_and = True
>
> @script:python@
> p << addr1.pa;
> f << r.f;
> @@
>
> if (choose_with_and or not choose_without_and):
>   cocci.include_match(False)
>
> @script:python@
> p << noaddr1.pn;
> f << r.f;
> @@
>
> if (choose_without_and or not choose_with_and):
>   cocci.include_match(False)
>
> @@
> identifier f;
> position addr1.pa;
> position noaddr1.pn;
> @@
>
> (
> - &f@pa
> + f
> |
> - f@pn
> + &f
> )
> #############################################################################################
>
> The cocci file reported above change only. should i remove in other case
> also as these are function names?
>
Try running this with --recursive-includes option added in your spatch command:

// <smpl>
@r@
identifier f;
@@
f(...) { ... }
@@
identifier r.f;
@@
- &f
+ f

@m@
type T;
identifier f;
@@
T f(...);
@@
identifier m.f;
@@
- &f
+ f
// </smpl>

Also, maybe try it only for staging/rdma at first since
--recursive-includes may take quite some time.

I ran into the same issue and with Julia's help, this was the solution
I found. Hope it works for you.


Amitoj

