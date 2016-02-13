X-GM-THRID: 6250675847475232768
X-Received: by 10.107.11.23 with SMTP id v23mr6566834ioi.13.1455352406332;
        Sat, 13 Feb 2016 00:33:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.133 with SMTP id f5ls1464656qgf.91.gmail; Sat, 13 Feb
 2016 00:33:25 -0800 (PST)
X-Received: by 10.129.27.3 with SMTP id b3mr5607273ywb.0.1455352405351;
        Sat, 13 Feb 2016 00:33:25 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-io0-x22d.google.com (mail-io0-x22d.google.com. [2607:f8b0:4001:c06::22d])
        by gmr-mx.google.com with ESMTPS id kr4si697998igb.0.2016.02.13.00.33.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 00:33:25 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c06::22d as permitted sender) client-ip=2607:f8b0:4001:c06::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c06::22d as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22d.google.com with SMTP id z135so44990729iof.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 00:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=wKjimSOZfe/0Vi2E8yQWQ9c+FpeAr0RV/+8wAhEgRkY=;
        b=H1iK6xQ56gy/9QULVuQ7Fgzk4H4M/qd0VrVlggqA47a91lknirbO1vmd4iLnK7alQG
         YukudFMlQwqsgHGKHpuA/3i9fooR88oPok0PjcEuNFDDc5U/Tf8F4f43ViDmXC6Ua6Xy
         XUBEdeVHwOR3sz49vud4XZPla05GYfR5Qyoa3EUxJL8YysmO96w4bsMNUcgRc7C/sQz3
         j753fXxCRcI1f0cOF8WViPSaPwy/+to4W8bjRS3Jp24LLNGpkZZg6ybPsBkQJp9p8ise
         A51AVs9noQC4fFdnH8a7tAwGIKKQRnkTEGFi+2occIVUUQJPL5mnVpPsPo9QVQf8B3o4
         VtYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=wKjimSOZfe/0Vi2E8yQWQ9c+FpeAr0RV/+8wAhEgRkY=;
        b=mr33r3rcmBmtswBmi2/FtBazxUQjOB1B3IABwYyf8o9tuMRJCtlto0WsagiQITrFvx
         CBp5GssqIDPUr5OfzDzf/TZS7aZIIld4pNEby39eLNBkl0RJ0HWpSnYwDhm5Dd8nrGCM
         nYnw2pJy9/V7Grp3Mdv4jrwhDN3o+TrjOaKc0wadTKh95f+8eCHSuowRESKi7WCbJBoz
         ov4ImT5rTpjqVYdkLs6szE79XTeBefKiWw4Flr4YMIYxTPCgVN8NtiNz2Iisjv7I26//
         72iGsJ7nwaiG5Gop4EpV2S7jAorNcMZ9Hc9KMhThImMdubkJFs/DCHym7x8pZ+8pX8Qs
         6RWQ==
X-Gm-Message-State: AG10YOR+gY34J6qh9KBAJPdLTGCHa6iwZiD/6keMCnTblkGmUtgHCNtb5topXIXLt9ivxd9uFvFKsM5wsyqkMw==
X-Received: by 10.107.164.212 with SMTP id d81mr8091752ioj.169.1455352405145;
 Sat, 13 Feb 2016 00:33:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.134.204 with HTTP; Sat, 13 Feb 2016 00:32:45 -0800 (PST)
In-Reply-To: <CAK-LDb+5MWaympnvwWUC+53Nyg3PV-VLRCupuEeNZYgmoEOOyQ@mail.gmail.com>
References: <1455348872-8892-1-git-send-email-rakhish1994@gmail.com> <CAK-LDb+5MWaympnvwWUC+53Nyg3PV-VLRCupuEeNZYgmoEOOyQ@mail.gmail.com>
From: RAKHI SHARMA <rakhish1994@gmail.com>
Date: Sat, 13 Feb 2016 14:02:45 +0530
Message-ID: <CAMnyiXuW=q1jt=PCgxxd=SM7H6wXWfgXT-ZmkdNMGV+nXso+Vg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Fixed a coding
 style error of preference
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11421ea421c38c052ba2a37c

--001a11421ea421c38c052ba2a37c
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 2:00 PM, Vaishali Thakkar <vthakkar1994@gmail.com>
wrote:

> On Sat, Feb 13, 2016 at 1:04 PM, Rakhi Sharma <rakhish1994@gmail.com>
> wrote:
> > This patch fixes the following warning: __packed is preferred over
> > __attribute__((packed))
>
> Hi,
>
> I think it would be good if you can use more reasonable subject and
> commit log.
>
> For example, for this patch you can use something like this:
>
> " Staging: wilc1000: Use __packed instead of __attribute__((packed))"
>
> Then in the commit log you can explain the reason for the fix. Like what
> you
> have done and why the change is correct. And then to give a credit to the
> tool,
> you can add something like 'Problem found using checkpatch.pl'.
>
> Sorry , I am jsut sending a v2 for this :)

Rakhi

> You can also go for reading this for the better idea:
> http://kernelnewbies.org/PatchPhilosophy
>
> Thank you.
>
> > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> > ---
> >  drivers/staging/wilc1000/linux_mon.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/linux_mon.c
> b/drivers/staging/wilc1000/linux_mon.c
> > index e550027..284dfb0 100644
> > --- a/drivers/staging/wilc1000/linux_mon.c
> > +++ b/drivers/staging/wilc1000/linux_mon.c
> > @@ -15,14 +15,14 @@
> >  struct wilc_wfi_radiotap_hdr {
> >         struct ieee80211_radiotap_header hdr;
> >         u8 rate;
> > -} __attribute__((packed));
> > +} __packed;
> >
> >  struct wilc_wfi_radiotap_cb_hdr {
> >         struct ieee80211_radiotap_header hdr;
> >         u8 rate;
> >         u8 dump;
> >         u16 tx_flags;
> > -} __attribute__((packed));
> > +} __packed;
> >
> >  static struct net_device *wilc_wfi_mon; /* global monitor netdev */
> >
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1455348872-8892-1-git-send-email-rakhish1994%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
>
>
>
> --
> Vaishali
>

--001a11421ea421c38c052ba2a37c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On S=
at, Feb 13, 2016 at 2:00 PM, Vaishali Thakkar <span dir=3D"ltr">&lt;<a href=
=3D"mailto:vthakkar1994@gmail.com" target=3D"_blank">vthakkar1994@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">O=
n Sat, Feb 13, 2016 at 1:04 PM, Rakhi Sharma &lt;<a href=3D"mailto:rakhish1=
994@gmail.com">rakhish1994@gmail.com</a>&gt; wrote:<br>
&gt; This patch fixes the following warning: __packed is preferred over<br>
&gt; __attribute__((packed))<br>
<br>
</span>Hi,<br>
<br>
I think it would be good if you can use more reasonable subject and<br>
commit log.<br>
<br>
For example, for this patch you can use something like this:<br>
<br>
&quot; Staging: wilc1000: Use __packed instead of __attribute__((packed))&q=
uot;<br>
<br>
Then in the commit log you can explain the reason for the fix. Like what yo=
u<br>
have done and why the change is correct. And then to give a credit to the t=
ool,<br>
you can add something like &#39;Problem found using <a href=3D"http://check=
patch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a>&#39;.<br>
<br></blockquote><div>Sorry , I am jsut sending a v2 for this :)<br><br></d=
iv><div>Rakhi <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
You can also go for reading this for the better idea:<br>
<a href=3D"http://kernelnewbies.org/PatchPhilosophy" rel=3D"noreferrer" tar=
get=3D"_blank">http://kernelnewbies.org/PatchPhilosophy</a><br>
<br>
Thank you.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; Signed-off-by: Rakhi Sharma &lt;<a href=3D"mailto:rakhish1994@gmail.co=
m">rakhish1994@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wilc1000/linux_mon.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wi=
lc1000/linux_mon.c<br>
&gt; index e550027..284dfb0 100644<br>
&gt; --- a/drivers/staging/wilc1000/linux_mon.c<br>
&gt; +++ b/drivers/staging/wilc1000/linux_mon.c<br>
&gt; @@ -15,14 +15,14 @@<br>
&gt;=C2=A0 struct wilc_wfi_radiotap_hdr {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct ieee80211_radiotap_header hdr;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 rate;<br>
&gt; -} __attribute__((packed));<br>
&gt; +} __packed;<br>
&gt;<br>
&gt;=C2=A0 struct wilc_wfi_radiotap_cb_hdr {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct ieee80211_radiotap_header hdr;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 rate;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 dump;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u16 tx_flags;<br>
&gt; -} __attribute__((packed));<br>
&gt; +} __packed;<br>
&gt;<br>
&gt;=C2=A0 static struct net_device *wilc_wfi_mon; /* global monitor netdev=
 */<br>
&gt;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1455348872-8892-1-git-send-email-rakhish19=
94%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.=
com/d/msgid/outreachy-kernel/1455348872-8892-1-git-send-email-rakhish1994%4=
0gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
<br>
<br>
<br>
--<br>
Vaishali<br>
</font></span></blockquote></div><br></div></div>

--001a11421ea421c38c052ba2a37c--

