X-GM-THRID: 9903208923136
X-Received: by 10.182.129.166 with SMTP id nx6mr14705477obb.35.1427372415778;
        Thu, 26 Mar 2015 05:20:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.28.8 with SMTP id x8ls648224igg.11.gmail; Thu, 26 Mar 2015
 05:20:15 -0700 (PDT)
X-Received: by 10.50.254.161 with SMTP id aj1mr29757539igd.6.1427372415419;
        Thu, 26 Mar 2015 05:20:15 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-ig0-x22b.google.com (mail-ig0-x22b.google.com. [2607:f8b0:4001:c05::22b])
        by gmr-mx.google.com with ESMTPS id d4si1423396igl.1.2015.03.26.05.20.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 05:20:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:4001:c05::22b as permitted sender) client-ip=2607:f8b0:4001:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:4001:c05::22b as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22b.google.com with SMTP id xg11so51940753igc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 05:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=p7s2SZQ0GTNewIEdcbXCRT1ZL2SvCPOoT7Odowk4wHA=;
        b=Fpk/gNQ9BSzGG3BBV2WDE3hzgciT6WE7Oc31edM/r9x7pHOJ8YCTdIuSsXSEIYrR9i
         b3tH/XoeDwA1rKId2MVeWbhOrImwS98wjy7l33w0t1X9E4QwE51B125MX90/rCPwtIK/
         z5Blg7u4hSClV4P8T13PSyjuwnJevMfPQ/Y5LOVdHp/qfiVlMUAJ2QFKfKIxguQsbCI+
         kjYbdpHtawCPekWE6/DpZ8Z/8c2ZAH3KQyxGB5/Q0eQQiejJtb6sTCMlvjSeJPO/K6rr
         U4QX4VH+pyuP2gM7DWPVDFtMIyVuq5i5PhgOEVZUyjrrtkmkjeiM+xqOCHP2aXSmVN3L
         CuhA==
X-Received: by 10.43.29.208 with SMTP id rz16mr38643083icb.89.1427372415284;
 Thu, 26 Mar 2015 05:20:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.82.85 with HTTP; Thu, 26 Mar 2015 05:19:54 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1503260730190.2066@localhost6.localdomain6>
References: <1427328593-6576-1-git-send-email-helen.fornazier@gmail.com> <alpine.DEB.2.02.1503260730190.2066@localhost6.localdomain6>
From: Helen Fornazier <helen.fornazier@gmail.com>
Date: Thu, 26 Mar 2015 09:19:54 -0300
Message-ID: <CAPW4XYbbeESj6tyXdzXp4pvc=gRr-7DShOrfXYns4Y6KB5YRJA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Replace printk with pr_err
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=bcaec5186582c678e60512300969

--bcaec5186582c678e60512300969
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 26, 2015 at 3:31 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 25 Mar 2015, Helen Fornazier wrote:
>
> > This patch fixes the following checkpatch.pl warning:
> >
> > WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev, ... then
> dev_err(dev, ... then pr_err(...  to printk(KERN_ERR ...
> > +               printk(KERN_ERR "DGNC: sysfs driver_create_file
> failed!\n");
> >
> > Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> > ---
> >  drivers/staging/dgnc/dgnc_sysfs.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/dgnc/dgnc_sysfs.c
> b/drivers/staging/dgnc/dgnc_sysfs.c
> > index 2df889e..65551d1 100644
> > --- a/drivers/staging/dgnc/dgnc_sysfs.c
> > +++ b/drivers/staging/dgnc/dgnc_sysfs.c
> > @@ -75,7 +75,7 @@ void dgnc_create_driver_sysfiles(struct pci_driver
> *dgnc_driver)
> >       rc |= driver_create_file(driverfs, &driver_attr_maxboards);
> >       rc |= driver_create_file(driverfs, &driver_attr_pollrate);
> >       if (rc)
> > -             printk(KERN_ERR "DGNC: sysfs driver_create_file
> failed!\n");
> > +             pr_err("DGNC: sysfs driver_create_file failed!\n");
>
> The dgnc_driver should give you access to a device-typed field so you can
> use dev_err.
>
> julia
>
>
I though about that and I saw that other parts of the code uses dev_err,
but inside the dgnc_create_driver_sysfiles function I couldn't figure it
out how to get the "structure device" object to use inside the dev_err
function.


> >  }
> >
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
> https://groups.google.com/d/msgid/outreachy-kernel/1427328593-6576-1-git-send-email-helen.fornazier%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>



-- 
Helen Fornazier

--bcaec5186582c678e60512300969
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Mar 26, 2015 at 3:31 AM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204)=
;border-left-style:solid;padding-left:1ex"><div class=3D""><div class=3D"h5=
"><br>
<br>
On Wed, 25 Mar 2015, Helen Fornazier wrote:<br>
<br>
&gt; This patch fixes the following <a href=3D"http://checkpatch.pl" target=
=3D"_blank">checkpatch.pl</a> warning:<br>
&gt;<br>
&gt; WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev, ... then de=
v_err(dev, ... then pr_err(...=C2=A0 to printk(KERN_ERR ...<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ER=
R &quot;DGNC: sysfs driver_create_file failed!\n&quot;);<br>
&gt;<br>
&gt; Signed-off-by: Helen Fornazier &lt;<a href=3D"mailto:helen.fornazier@g=
mail.com">helen.fornazier@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/dgnc/dgnc_sysfs.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/=
dgnc_sysfs.c<br>
&gt; index 2df889e..65551d1 100644<br>
&gt; --- a/drivers/staging/dgnc/dgnc_sysfs.c<br>
&gt; +++ b/drivers/staging/dgnc/dgnc_sysfs.c<br>
&gt; @@ -75,7 +75,7 @@ void dgnc_create_driver_sysfiles(struct pci_driver *=
dgnc_driver)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rc |=3D driver_create_file(driverfs, &amp;dr=
iver_attr_maxboards);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rc |=3D driver_create_file(driverfs, &amp;dr=
iver_attr_pollrate);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR &quot=
;DGNC: sysfs driver_create_file failed!\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_err(&quot;DGNC: sy=
sfs driver_create_file failed!\n&quot;);<br>
<br>
</div></div>The dgnc_driver should give you access to a device-typed field =
so you can<br>
use dev_err.<br>
<br>
julia<br>
<br></blockquote><div><br></div><div>I though about that and I saw that oth=
er parts of the code uses dev_err, but inside the=C2=A0dgnc_create_driver_s=
ysfiles function I couldn&#39;t figure it out how to get the &quot;structur=
e device&quot; object to use inside the dev_err function.</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">
&gt;=C2=A0 }<br>
&gt;<br>
<span class=3D""><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1427328593-6576-1-git-send-email-helen.for=
nazier%40gmail.com" target=3D"_blank">https://groups.google.com/d/msgid/out=
reachy-kernel/1427328593-6576-1-git-send-email-helen.fornazier%40gmail.com<=
/a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature">Helen Fornazier<br></div>
</div></div>

--bcaec5186582c678e60512300969--

