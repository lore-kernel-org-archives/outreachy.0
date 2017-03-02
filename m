X-GM-THRID: 6392026082663464960
X-Received: by 10.157.34.87 with SMTP id o81mr5232542ota.67.1488475331995;
        Thu, 02 Mar 2017 09:22:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.218 with SMTP id v87ls2152677iov.10.gmail; Thu, 02 Mar
 2017 09:22:10 -0800 (PST)
X-Received: by 10.107.131.169 with SMTP id n41mr4762796ioi.47.1488475330741;
        Thu, 02 Mar 2017 09:22:10 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x232.google.com (mail-io0-x232.google.com. [2607:f8b0:4001:c06::232])
        by gmr-mx.google.com with ESMTPS id e196si2175145itc.2.2017.03.02.09.22.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:22:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) client-ip=2607:f8b0:4001:c06::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x232.google.com with SMTP id z13so13487400iof.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=N2hZMbS7vrGCRKekY5Q0rtz5na63V0vvkNsyQ/prp5E=;
        b=LxLWzB1sW6bCyoc9B1OZreQdVPIV427TEVg3EH1a4eolE5Os/GkLoA01CFFWVQXv9J
         hGiLOhGlUkgcPX4YLz3VFgnTFX0Zy09vlfHGpzCBTyQ5R4IrPCVwIR/VjN+Ddj7jpfYh
         fbhK4pnvlAMRhtXOv45wdhOx1OR8blsHwF0blC6kjVcSuuqUMVgBTrJEUC12lHUw6FPZ
         KMNBxHntpLFUiRYLX3OF9hEAL9N+BedL1wY+6BsUU8B84ZeXR2NDYpNZQCbYSFJ/v0r/
         Z5m0i7Sxhqgm07R798Kq70lhrlSLE3GwcpvNJvGXItfK7vr8FRB1/SnEABGKsyg6GFfQ
         MuBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=N2hZMbS7vrGCRKekY5Q0rtz5na63V0vvkNsyQ/prp5E=;
        b=HxciLKyMoP4qBhfAvhhRe/zTaLGmRFdFIfspaOvT7K0NVg7W63K/UjKOXxWU7gfM1T
         ttWbG32SI+J0bmavUL6ON+qu/6JA52/wiDa58aZK2ZH7dTHYqcAYtzkO//xOBwuargHd
         qdzkU1k7AvgnKYOlno9+p0trF/QaNxbgAWXQsD+9qZJvYPVgkI6OBFS36c/nJD2qePFX
         w/BG3bB5GFc0UvRFTEMIphX22WR3d0eH70+aVUGrXMSQ0XFczefZb2lQECsq9olxvNlT
         QmMvRNcMeGgqYP4+trrDz8pHWV9DQqT4MjF6T7bV7J0uHj6zHLUOcbJkk1Lh+ROd2uyc
         0cnA==
X-Gm-Message-State: AMke39kfnlloebjawYLRzyISIufXrE6cSTNuCHSb0K25PTiLSgDuwBhg+NQ17X/MX+mNEz+1TZ6BeHxFlep7IA==
X-Received: by 10.107.8.90 with SMTP id 87mr16346196ioi.111.1488475330514;
 Thu, 02 Mar 2017 09:22:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Thu, 2 Mar 2017 09:21:40 -0800 (PST)
In-Reply-To: <5D833EA8-F256-4451-99E0-CF93C70DA617@intel.com>
References: <1488265307-24641-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1702280805150.2078@hadrien> <CAOCi2DEvajT69tumvzBPYQjBBOkVB49FO+paGJSGasY+BZSeyg@mail.gmail.com>
 <20170228081840.GA1035@kroah.com> <5D833EA8-F256-4451-99E0-CF93C70DA617@intel.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Thu, 2 Mar 2017 22:51:40 +0530
Message-ID: <CAOCi2DEwYyqUe0k4YZT-Okf=Udys+g2QuwdcEmqbtgwebFEQyQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Replace typedef
 with struct
To: "Dilger, Andreas" <andreas.dilger@intel.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, "Drokin, Oleg" <oleg.drokin@intel.com>, 
	"jsimmons@infradead.org" <jsimmons@infradead.org>
Content-Type: multipart/alternative; boundary=001a113f3bb85517870549c2ab93

--001a113f3bb85517870549c2ab93
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 2, 2017 at 4:17 PM, Dilger, Andreas <andreas.dilger@intel.com>
wrote:
>
> On Feb 28, 2017, at 01:18, Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Feb 28, 2017 at 01:20:59PM +0530, Gargi Sharma wrote:
> >> On Tue, Feb 28, 2017 at 12:36 PM, Julia Lawall <julia.lawall@lip6.fr>
wrote:
> >>>
> >>>
> >>>
> >>> On Tue, 28 Feb 2017, Gargi Sharma wrote:
> >>>
> >>>> As per the Linux kernel coding style guidelines, using typedef for a
> >>>> structure type is not recommended. Hence, occurences of typedefs have
> >>>> been removed. To find the occurences of the structures grep was used
> >>>> and no uses were found.
> >>>
> >>> Actually, I'm not sure to understand.  No uses of the structures were
> >>> found at all?  If so, they should just be dropped.  Or are there
uses, but
> >>> they already have the word "struct" in front of them?
> >>
> >> The first structure "ext_acl_xattr_entry" is used as one of the fields
in the
> >> other structure "ext_acl_xattr_header". I could not find any uses of
the
> >> structure
> >> "ext_acl_xattr_header" inside the staging directory. Should I drop
these two
> >> structures then?
> >
> > I think so, we shouldn't keep around structures that are not actually
> > used.
> >
> > Unless the Lustre maintainers are hiding something somewhere else that
> > uses these?
>
> Looks like this is left over from 341f1f0affed1c24712f37c95bb654b3b33ab2c6
> "staging: lustre: remove remote client support".  The
ext_acl_xattr_{entry,header}
> structs were accessed from CFS_ACL_XATTR_SIZE() and CFS_ACL_XATTR_COUNT()
macros,
> along with posix_acl_xattr_{entry,header} but it looks like all of that
was deleted
> (and good riddance).  The CFS_ACL_XATTR_* macros should be removed also.
>
Hi,

>
> That leaves the lustre_eacl.h header empty, so it could just be deleted
entirely,
> and removed from llite/llite_internal.h (where posix_acl_xattr.h is
already included)
> and llite/xattr.h (which includes llite_internal.h).

Okay, that makes sense. So should I send a v3 where I delete the header
file and places it
has been referred, or an entirely new patch?

thanks,
gargi

--001a113f3bb85517870549c2ab93
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Mar 2, 2017 at 4:17 PM, Dilger, Andreas &lt;<a hre=
f=3D"mailto:andreas.dilger@intel.com" target=3D"_blank">andreas.dilger@inte=
l.com</a>&gt; wrote:<br>&gt;<br>&gt; On Feb 28, 2017, at 01:18, Greg KH &lt=
;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@lin=
uxfoundation.org</a>&gt; wrote:<br>&gt; &gt;<br>&gt; &gt; On Tue, Feb 28, 2=
017 at 01:20:59PM +0530, Gargi Sharma wrote:<br>&gt; &gt;&gt; On Tue, Feb 2=
8, 2017 at 12:36 PM, Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.f=
r" target=3D"_blank">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt; &gt;&gt;&g=
t;<br>&gt; &gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;<br>&gt; &gt;&gt;&gt; On Tue, 2=
8 Feb 2017, Gargi Sharma wrote:<br>&gt; &gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&g=
t; As per the Linux kernel coding style guidelines, using typedef for a<br>=
&gt; &gt;&gt;&gt;&gt; structure type is not recommended. Hence, occurences =
of typedefs have<br>&gt; &gt;&gt;&gt;&gt; been removed. To find the occuren=
ces of the structures grep was used<br>&gt; &gt;&gt;&gt;&gt; and no uses we=
re found.<br>&gt; &gt;&gt;&gt;<br>&gt; &gt;&gt;&gt; Actually, I&#39;m not s=
ure to understand.=C2=A0 No uses of the structures were<br>&gt; &gt;&gt;&gt=
; found at all?=C2=A0 If so, they should just be dropped.=C2=A0 Or are ther=
e uses, but<br>&gt; &gt;&gt;&gt; they already have the word &quot;struct&qu=
ot; in front of them?<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; The first structure=
 &quot;ext_acl_xattr_entry&quot; is used as one of the fields in the<br>&gt=
; &gt;&gt; other structure &quot;ext_acl_xattr_header&quot;. I could not fi=
nd any uses of the<br>&gt; &gt;&gt; structure<br>&gt; &gt;&gt; &quot;ext_ac=
l_xattr_header&quot; inside the staging directory. Should I drop these two<=
br>&gt; &gt;&gt; structures then?<br>&gt; &gt;<br>&gt; &gt; I think so, we =
shouldn&#39;t keep around structures that are not actually<br>&gt; &gt; use=
d.<br>&gt; &gt;<br>&gt; &gt; Unless the Lustre maintainers are hiding somet=
hing somewhere else that<br>&gt; &gt; uses these?<br>&gt;<br>&gt; Looks lik=
e this is left over from 341f1f0affed1c24712f37c95bb654<wbr>b3b33ab2c6<br>&=
gt; &quot;staging: lustre: remove remote client support&quot;.=C2=A0 The ex=
t_acl_xattr_{entry,header}<br>&gt; structs were accessed from CFS_ACL_XATTR=
_SIZE() and CFS_ACL_XATTR_COUNT() macros,<br>&gt; along with posix_acl_xatt=
r_{entry,header} but it looks like all of that was deleted<br>&gt; (and goo=
d riddance).=C2=A0 The CFS_ACL_XATTR_* macros should be removed also.<br>&g=
t;<br>Hi,<div><br><div>&gt;=C2=A0</div><div>&gt; That leaves the lustre_eac=
l.h header empty, so it could just be deleted entirely,<br>&gt; and removed=
 from llite/llite_internal.h (where posix_acl_xattr.h is already included)<=
br>&gt; and llite/xattr.h (which includes llite_internal.h).<div><br></div>=
<div>Okay, that makes sense. So should I send a v3 where I delete the heade=
r file and places it</div><div>has been referred, or an entirely new patch?=
</div><div><br></div><div>thanks,</div><div>gargi=C2=A0</div><div><br></div=
></div></div></div>

--001a113f3bb85517870549c2ab93--

