X-GM-THRID: 6250819727244918784
X-Received: by 10.31.168.130 with SMTP id r124mr13646385vke.10.1455498100668;
        Sun, 14 Feb 2016 17:01:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.63.2 with SMTP id m2ls1358809ioa.14.gmail; Sun, 14 Feb
 2016 17:01:40 -0800 (PST)
X-Received: by 10.66.141.102 with SMTP id rn6mr14006866pab.26.1455498100316;
        Sun, 14 Feb 2016 17:01:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x241.google.com (mail-ob0-x241.google.com. [2607:f8b0:4003:c01::241])
        by gmr-mx.google.com with ESMTPS id ug8si751669igb.3.2016.02.14.17.01.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 17:01:40 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::241 as permitted sender) client-ip=2607:f8b0:4003:c01::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::241 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x241.google.com with SMTP id o4so14801340obb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 17:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=hWtMsgQtveh4OIkLpmnMZnixukrn9nm+XgEaigvVidc=;
        b=CIbvhb2ehVesMXdpcyduvH/KXzptPo0yqhX768sdV7i1MORaeab57wd9MXkvWyn7S1
         p4rHGxkcNMYO1M3g0yz+43OvdGHjZV0eM4NrQGyVpvjnkeKOfSPlf344JzTfFu14AGJY
         ltnAalgOZ51Z/SIXUALgB3PeR+9Lzgjbnjk8DLyFfdHg6x4M6QtionXdrCu5a0F6oMud
         Z5nfO0bnQreopXKm4d9si4wGHQeDksL4nZNg8JpHa2HQeKS3MfPideEu+f7u3AQjms3K
         aF46EqNe3+G1ZR5DEm1TVo/S9EY0qXT9JQkfVri2bvPiAoTDWjTpiTae9xx6WlGm6h50
         QadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=hWtMsgQtveh4OIkLpmnMZnixukrn9nm+XgEaigvVidc=;
        b=NA6Z0lwmI1DcHkb2nNE1cxYymbiMdCPyzp5rf3I0Vku5xdKZykcqFoW6X44DejuOi5
         AjLOU6SjoGgiPaA2G9YWCMUXOtx0jtf7psFDipSOUUlRdFgsuNn7zi61D7Xl5FS3c6Bp
         kgyf7LHnk9bSevi5eiMepT7cgrYZpeGFokyrxUWcWZ5tfqpNHbPqrD2MxBqHYHypr7+r
         S0CrtsGNoCc/Y8n8fFg/Q8z2dm6/onm9cWm1QDCVBi2MUPN6B/pBatOWbnOsGmuN43tW
         I49SQ/iEYKmrlpp6mN6anhDP1dAmOnfNwbu2+umZV+0edM+I4oFSaWtdOYzfPJq9WBF/
         JfrA==
X-Gm-Message-State: AG10YOR98eyW4ajOvlkC19yRLNS6kexRqj0p9G4mXzCPRW71MiBGos0LfEUE1uaPwrP0sP73gpiPXZJJSfgk/Q==
MIME-Version: 1.0
X-Received: by 10.202.93.8 with SMTP id r8mr9889444oib.111.1455498100110; Sun,
 14 Feb 2016 17:01:40 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Sun, 14 Feb 2016 17:01:40 -0800 (PST)
In-Reply-To: <20160215004402.GA1579@kroah.com>
References: <20160213220936.GA22396@janani-Inspiron-3521>
	<20160215004402.GA1579@kroah.com>
Date: Sun, 14 Feb 2016 20:01:40 -0500
Message-ID: <CANnt6XkUQUFhTo2OOSi1X03AVHRFWNJYcejVg+3cwM+JWQV_bA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: xgifb: Fix comment style
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113d469c3a7bef052bc48f35

--001a113d469c3a7bef052bc48f35
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 14, 2016 at 7:44 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sat, Feb 13, 2016 at 05:09:36PM -0500, Janani Ravichandran wrote:
> > Fix comments to use trailing */ on separate lines and * on subsequent
> > lines. Found by checkpatch.pl
> >
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> > Changes since v1:
> >  * Corrected accidentally modified comment in line 56 in the previous
> >    patch
>
> Always run your patches through checkpatch so you don't get grumpy
> emails from maintainers telling you to run your patch through
> checkpatch...
>
> I can't take this :(
>
> Greg, sorry about that. Just realized I sent you the wrong one. Sent v3
now.

Janani.

--001a113d469c3a7bef052bc48f35
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Feb 14, 2016 at 7:44 PM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><span class=3D"">On Sat, Feb 13, 2016 at 05:09:36PM -0500, Janan=
i Ravichandran wrote:<br>
&gt; Fix comments to use trailing */ on separate lines and * on subsequent<=
br>
&gt; lines. Found by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" ta=
rget=3D"_blank">checkpatch.pl</a><br>
&gt;<br>
&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchnd=
rn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes since v1:<br>
&gt;=C2=A0 * Corrected accidentally modified comment in line 56 in the prev=
ious<br>
&gt;=C2=A0 =C2=A0 patch<br>
<br>
</span>Always run your patches through checkpatch so you don&#39;t get grum=
py<br>
emails from maintainers telling you to run your patch through<br>
checkpatch...<br>
<br>
I can&#39;t take this :(<br>
<br></blockquote><div>Greg, sorry about that. Just realized I sent you the =
wrong one. Sent v3 now.<br><br></div><div>Janani. <br></div></div><br></div=
></div>

--001a113d469c3a7bef052bc48f35--

