X-GM-THRID: 6865699209216
X-Received: by 10.112.130.70 with SMTP id oc6mr9517359lbb.13.1426517560628;
        Mon, 16 Mar 2015 07:52:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.80.68 with SMTP id p4ls639933wix.6.gmail; Mon, 16 Mar 2015
 07:52:40 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr6494164wib.6.1426517559941;
        Mon, 16 Mar 2015 07:52:39 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id bz6si699991wib.3.2015.03.16.07.52.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:52:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id j2so45660502wif.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 07:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=pyziYIK4tLwF4tp+rugaB/F5ebboecIr62jz9oAmcSs=;
        b=ayqclogaCRZfb2KXRm5TjeckJ/O6y50/dCsakfj9b+UpSyTvwhVPivyUao7PYAHgKW
         92xiV+/KzS13Jzt4b9ulLZWJQX07bsnVIJ8Zy0PclYGmhEBVBZ+JJu7QQiWFZ//Y3mTb
         LYuWJtD60rFilwOHHBdE0Wv3Zn5WWn+HfvGT5DUnTT1MUDBzF3y6IXH1HAVGfWn3scm1
         CaZedswjaJk6sYLLYzf+KglglqplPUv58uxuXi+jfRdi/mpl+gWVNuL7qaQawrSYIezn
         D5LqMq6q8+kzF7NgVVLf2VTyedmoFSVRo9Ul88aNFlwloGPnnr8QLt0DgY5asVWSLeVo
         KA2g==
MIME-Version: 1.0
X-Received: by 10.194.77.99 with SMTP id r3mr125217679wjw.149.1426517559866;
 Mon, 16 Mar 2015 07:52:39 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Mon, 16 Mar 2015 07:52:39 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Mon, 16 Mar 2015 07:52:39 -0700 (PDT)
In-Reply-To: <20150316144706.GA24906@kroah.com>
References: <cover.1426054595.git.vthakkar1994@gmail.com>
	<20150316144706.GA24906@kroah.com>
Date: Mon, 16 Mar 2015 20:22:39 +0530
Message-ID: <CAK-LDbLeFNsksDmoZvH+FzCDQznC7J0OG5TFAoNOZEkZcwXerA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [RESEND PATCH 0/2] Staging: rtl8712: Use del_timer_sync
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=047d7bfd09186bfb00051169002d

--047d7bfd09186bfb00051169002d
Content-Type: text/plain; charset=UTF-8

On Mar 16, 2015 8:17 PM, "Greg KH" <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 11, 2015 at 11:50:39AM +0530, Vaishali Thakkar wrote:
> > This patch-set introduces the use of timer API function
> > del_timer_sync instead of driver specific functions
> > _cancel_timer_ex and _cancel_timer. Though definition
> > of these functions were returning del_timer, here
> > del_timer_sync is a preferred solution as besides
> > deactivating a timer, it also ensures that the timer is
> > stopped on all CPUs before the driver exists.
> >
> > All of these changes are done using Coccinelle.
> >
> > Vaishali Thakkar (2):
> >   Staging: rtl8712: Eliminate _cancel_timer_ex
> >   Staging: rtl8712: Eliminate use of _cancel_timer
> >
> >  drivers/staging/rtl8712/os_intfs.c        |  14 +--
> >  drivers/staging/rtl8712/osdep_service.h   |  11 ---
> >  drivers/staging/rtl8712/rtl8712_led.c     | 146
+++++++++++++++---------------
> >  drivers/staging/rtl8712/rtl871x_cmd.c     |   3 +-
> >  drivers/staging/rtl8712/rtl871x_mlme.c    |  10 +-
> >  drivers/staging/rtl8712/rtl871x_pwrctrl.c |   2 +-
> >  drivers/staging/rtl8712/rtl871x_sta_mgt.c |   2 +-
> >  drivers/staging/rtl8712/rtl871x_xmit.c    |   5 +-
> >  8 files changed, 88 insertions(+), 105 deletions(-)
>
> Why is this a "resend"?  did I miss the first version?

Yes. First version was not in your patch queue. So, you told me to resend.

--047d7bfd09186bfb00051169002d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><br>
On Mar 16, 2015 8:17 PM, &quot;Greg KH&quot; &lt;<a href=3D"mailto:gregkh@l=
inuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, Mar 11, 2015 at 11:50:39AM +0530, Vaishali Thakkar wrote:<br>
&gt; &gt; This patch-set introduces the use of timer API function<br>
&gt; &gt; del_timer_sync instead of driver specific functions<br>
&gt; &gt; _cancel_timer_ex and _cancel_timer. Though definition<br>
&gt; &gt; of these functions were returning del_timer, here<br>
&gt; &gt; del_timer_sync is a preferred solution as besides<br>
&gt; &gt; deactivating a timer, it also ensures that the timer is<br>
&gt; &gt; stopped on all CPUs before the driver exists.<br>
&gt; &gt;<br>
&gt; &gt; All of these changes are done using Coccinelle.<br>
&gt; &gt;<br>
&gt; &gt; Vaishali Thakkar (2):<br>
&gt; &gt;=C2=A0 =C2=A0Staging: rtl8712: Eliminate _cancel_timer_ex<br>
&gt; &gt;=C2=A0 =C2=A0Staging: rtl8712: Eliminate use of _cancel_timer<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8712/os_intfs.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 14 +--<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8712/osdep_service.h=C2=A0 =C2=A0|=C2=A0=
 11 ---<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8712/rtl8712_led.c=C2=A0 =C2=A0 =C2=A0| =
146 +++++++++++++++---------------<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8712/rtl871x_cmd.c=C2=A0 =C2=A0 =C2=A0|=
=C2=A0 =C2=A03 +-<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8712/rtl871x_mlme.c=C2=A0 =C2=A0 |=C2=A0=
 10 +-<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8712/rtl871x_pwrctrl.c |=C2=A0 =C2=A02 +=
-<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8712/rtl871x_sta_mgt.c |=C2=A0 =C2=A02 +=
-<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8712/rtl871x_xmit.c=C2=A0 =C2=A0 |=C2=A0=
 =C2=A05 +-<br>
&gt; &gt;=C2=A0 8 files changed, 88 insertions(+), 105 deletions(-)<br>
&gt;<br>
&gt; Why is this a &quot;resend&quot;?=C2=A0 did I miss the first version?<=
/p>
<p>Yes. First version was not in your patch queue. So, you told me to resen=
d.</p>

--047d7bfd09186bfb00051169002d--

