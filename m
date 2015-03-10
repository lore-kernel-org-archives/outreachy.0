X-GM-THRID: 6865699209216
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1f5d1c1fbc348787
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.87.141 with SMTP id ay13mr895803lab.3.1426018473920;
        Tue, 10 Mar 2015 13:14:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.100 with SMTP id fn4ls735850wib.24.canary; Tue, 10 Mar
 2015 13:14:33 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr1636972wix.4.1426018473598;
        Tue, 10 Mar 2015 13:14:33 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id bz6si512951wib.3.2015.03.10.13.14.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 13:14:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id x13so4423260wgg.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 13:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=A5SmA9C/B4VyrUHyVkqHl1yigFIUc6baemyPOfGGtW0=;
        b=tXmlbuc1BSVH/LbqRHwFvLyrNlp+igzXgVKFDkJK/GFsAvBySWzlRcAss1caTTyKU0
         ipix3KQ1UfpBWEwTD8vxNgiFqcK44K9B+QYPwbPTBO0VtNFqZ8mFE6QRKqdgWf8Pi4LS
         P8baY+KYFRjcKFhOq4k/q6QHY/BeqzWPTr06uva89PnHIV6wJ+Zqg68gvsV0DlyQX/08
         /10suYttmbog6K73aira8vuuY6jhZkj72xUOrJcMOpagAX+gxHonSsqMRift8Wo3TFsE
         JWIzVlXh1s2Aws6HUO5h6p149ycXFKW4zIlzrg2VolFra4h8KPT+lVoGlgQhWfPnMxoR
         tCQw==
MIME-Version: 1.0
X-Received: by 10.194.110.38 with SMTP id hx6mr70246204wjb.128.1426018473525;
 Tue, 10 Mar 2015 13:14:33 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Tue, 10 Mar 2015 13:14:33 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Tue, 10 Mar 2015 13:14:33 -0700 (PDT)
In-Reply-To: <cover.1425638418.git.vthakkar1994@gmail.com>
References: <cover.1425638418.git.vthakkar1994@gmail.com>
Date: Wed, 11 Mar 2015 01:44:33 +0530
Message-ID: <CAK-LDbLLXT5aQbWTq7QMCk6HS3Sp8TFOJJ=e0ZLb6+saWik=Ew@mail.gmail.com>
Subject: Re: [PATCH 0/2] Staging: rtl8712: Use del_timer_sync
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e010d89f28ec8c10510f4cc6e

--089e010d89f28ec8c10510f4cc6e
Content-Type: text/plain; charset=UTF-8

On Mar 6, 2015 4:23 PM, "Vaishali Thakkar" <vthakkar1994@gmail.com> wrote:
>
> This patch-set introduces the use of timer API function
> del_timer_sync instead of driver specific functions
> _cancel_timer_ex and _cancel_timer. Though definition
> of these functions were returning del_timer, here
> del_timer_sync is a preferred solution as besides
> deactivating a timer, it also ensures that the timer is
> stopped on all CPUs before the driver exists.
>
> All of these changes are done using Coccinelle.
>
> Vaishali Thakkar (2):
>   Staging: rtl8712: Eliminate use of _cancel_timer_ex
>   Staging: rtl8712: Eliminate use of _cancel_timer
>
>  drivers/staging/rtl8712/os_intfs.c        |  13 ++-
>  drivers/staging/rtl8712/osdep_service.h   |  11 ---
>  drivers/staging/rtl8712/rtl8712_led.c     | 146
+++++++++++++++---------------
>  drivers/staging/rtl8712/rtl871x_cmd.c     |   3 +-
>  drivers/staging/rtl8712/rtl871x_mlme.c    |  10 +-
>  drivers/staging/rtl8712/rtl871x_pwrctrl.c |   2 +-
>  drivers/staging/rtl8712/rtl871x_sta_mgt.c |   2 +-
>  drivers/staging/rtl8712/rtl871x_xmit.c    |   3 +-
>  8 files changed, 86 insertions(+), 104 deletions(-)

Hello

Do I need to resend this patch-series as they are not picked by Greg
yesterday[when he caught up the patches]??

I am assuming that this patchset is may be missed by him.

Thank You.

> --
> 1.9.1
>

--089e010d89f28ec8c10510f4cc6e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><br>
On Mar 6, 2015 4:23 PM, &quot;Vaishali Thakkar&quot; &lt;<a href=3D"mailto:=
vthakkar1994@gmail.com">vthakkar1994@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; This patch-set introduces the use of timer API function<br>
&gt; del_timer_sync instead of driver specific functions<br>
&gt; _cancel_timer_ex and _cancel_timer. Though definition<br>
&gt; of these functions were returning del_timer, here<br>
&gt; del_timer_sync is a preferred solution as besides<br>
&gt; deactivating a timer, it also ensures that the timer is<br>
&gt; stopped on all CPUs before the driver exists.<br>
&gt;<br>
&gt; All of these changes are done using Coccinelle.<br>
&gt;<br>
&gt; Vaishali Thakkar (2):<br>
&gt; =C2=A0 Staging: rtl8712: Eliminate use of _cancel_timer_ex<br>
&gt; =C2=A0 Staging: rtl8712: Eliminate use of _cancel_timer<br>
&gt;<br>
&gt; =C2=A0drivers/staging/rtl8712/os_intfs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 13 ++-<br>
&gt; =C2=A0drivers/staging/rtl8712/osdep_service.h=C2=A0 =C2=A0|=C2=A0 11 -=
--<br>
&gt; =C2=A0drivers/staging/rtl8712/rtl8712_led.c=C2=A0 =C2=A0 =C2=A0| 146 +=
++++++++++++++---------------<br>
&gt; =C2=A0drivers/staging/rtl8712/rtl871x_cmd.c=C2=A0 =C2=A0 =C2=A0|=C2=A0=
 =C2=A03 +-<br>
&gt; =C2=A0drivers/staging/rtl8712/rtl871x_mlme.c=C2=A0 =C2=A0 |=C2=A0 10 +=
-<br>
&gt; =C2=A0drivers/staging/rtl8712/rtl871x_pwrctrl.c |=C2=A0 =C2=A02 +-<br>
&gt; =C2=A0drivers/staging/rtl8712/rtl871x_sta_mgt.c |=C2=A0 =C2=A02 +-<br>
&gt; =C2=A0drivers/staging/rtl8712/rtl871x_xmit.c=C2=A0 =C2=A0 |=C2=A0 =C2=
=A03 +-<br>
&gt; =C2=A08 files changed, 86 insertions(+), 104 deletions(-)</p>
<p>Hello</p>
<p>Do I need to resend this patch-series as they are not picked by Greg yes=
terday[when he caught up the patches]??</p>
<p>I am assuming that this patchset is may be missed by him.</p>
<p>Thank You.</p>
<p>&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</p>

--089e010d89f28ec8c10510f4cc6e--

