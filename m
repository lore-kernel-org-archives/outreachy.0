X-GM-THRID: 6658167413174960128
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a37:6292:: with SMTP id w140mr9694528qkb.2.1550598764406;
        Tue, 19 Feb 2019 09:52:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:e742:: with SMTP id g2ls8554970qvn.3.gmail; Tue, 19 Feb
 2019 09:52:43 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbuWKdna6O86KWsVHkg+mdq9u08Wi+vFmVi8E5RyMumUZxT/NKfHu8yDY4dzR7Riac8suom
X-Received: by 2002:a0c:9dd5:: with SMTP id p21mr17384508qvf.31.1550598763840;
        Tue, 19 Feb 2019 09:52:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550598763; cv=none;
        d=google.com; s=arc-20160816;
        b=nhSUk0Ms+71A6XM+eYDA0qrtKnXvRYqoyXgR4EmwOL+2k1G3JHjAHrHLNebqzJ1kCG
         3CRIrpaiTzQ04M91sna4MiKkyl7Ujf44VdpBRYVl0XYapquq0L6n/nE52r/6jv5rovcV
         +mrkG3AKj/hk9oWuzIfYTeN2j2qLR6FgdV5R5aE8Fd2RQbTlTLD2QDEibDOZ4hmHTgiy
         mz1TaRsMhlXi9bkFpvTsDAcY3orJQGInyPmh6ExnMPjFu3KMaf4meOcl3ePxxRFHi0vU
         Sd68S4r88iSkC24k8v0qzCv070tHffqba0UlK+NGNt6kc0GI0RzeIzMI4hUOkcIEBgLA
         GY0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=R34gLd8HCpTIcVydkjg2UDxK9RGvm+6gLb213CyimEM=;
        b=RIWNDb+Op7omHcxh8cflBTwosUZqEkoXOLMF+6CTw4d6xnIxxuUq9sGiCvBT+QqCS8
         D8Bdj/CH+wgyHVw5O68+pQ5JAjEWxeB3xBRIeSHJCnCgUyArdIB+pi2S1hBagNRWeZd1
         zYMKhEnzraMo+iwjVJl+JMsItokZFzOgLqkXBEc656wEqnfmNmg8H8gJZYca0t0g2nqr
         CeJfUyIgyYme8pZ5z3Cq+czn1svW2sLAIr+thKUvzbg3X9aeB6+gFD6byy8YDA9pHYjm
         U8jugNXUNQQZTiqhblYMETmawoxW8ZaWPt4PFGrWcL/FAiB/2dZtxt7EQfXT4/tUqS5t
         QGjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JqA1Y7HR;
       spf=pass (google.com: domain of supu024135@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=supu024135@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <supu024135@gmail.com>
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com. [2607:f8b0:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id m33si710839qte.5.2019.02.19.09.52.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 09:52:43 -0800 (PST)
Received-SPF: pass (google.com: domain of supu024135@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) client-ip=2607:f8b0:4864:20::32d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JqA1Y7HR;
       spf=pass (google.com: domain of supu024135@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=supu024135@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32d.google.com with SMTP id t7so19277634otk.8
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 09:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R34gLd8HCpTIcVydkjg2UDxK9RGvm+6gLb213CyimEM=;
        b=JqA1Y7HR5fX2Rp3pHaQ1XUdjYY96ftq3meyO4ekpNp+aMXtto5vpWkKPQOBBJttw5J
         lCeAijy2Z9HzRZVouVzrivDeZEocT5pcjxwHOQEP3xVdCP1YoHnZXVaFwGXM4MUgM5yH
         TVwRUH5r7O+nEWktn8/cvODO2wm0XBMRd923UMcYhNABpCb8Y3ystVVQNHaI51jhr/p0
         wY4IaJCvUhGR4k86r9GcJL8Jd9vnCOTI2SMJwZo+76iSkFPZ/0cuT7kSK2m71mDi43Fz
         IQ+qHO6jR1nLtxh79RzBJRyLWAbiXPjF+XUfJXIkJGwg8g4EWsgx4X2ozlKSy8ZgNRXH
         muhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R34gLd8HCpTIcVydkjg2UDxK9RGvm+6gLb213CyimEM=;
        b=eX5TnN1wk8/OHgnJ0gam6fxFvfyG9Xpx3+saRfapoIlIjuj6qet1qc5KZZns4IQ7QC
         YV6c2WryM+xZztwhb7msRXldRc3mubtcT1y7/f0djZAR307WtvzX0rpkWtP2lONRXIp9
         0Fk2ny9BpHby4RAHkN4JPBX+pmwg37h9QKhpMq6z/vfeDIrNhjmT0A8UyP7E/k65CJ9T
         UXRvXNyKw6FPVWKJhknp4WdZGIRIHWbu3vkHi5GTduk3k79VPL4Zja94RbTMNI23sODQ
         n/H4BnI3Wm6sZ9b0x3Ly4gFckKYUyHc2pY1xkR9cK0I79u057xmv2mLRHzOMNqno+l0z
         78wQ==
X-Gm-Message-State: AHQUAuaA3XLUEerkOx4xFUl+OGQ3OLsi0LtyKdkjlpAFVUPyny8zLRhs
	7zOZb/Isl6jr9pPjceeThq+HKP/SraX8mCsj/1RY9/mU
X-Received: by 2002:aca:3c83:: with SMTP id j125mr3347291oia.34.1550598763124;
 Tue, 19 Feb 2019 09:52:43 -0800 (PST)
MIME-Version: 1.0
References: <8f0752e6-39e1-4047-8899-19866fdfe045@googlegroups.com>
 <20190219155942.GB18454@himanshu-Vostro-3559> <alpine.DEB.2.20.1902191703400.3588@hadrien>
 <20190219162019.GD18454@himanshu-Vostro-3559> <20190219163539.GA19366@himanshu-Vostro-3559>
In-Reply-To: <20190219163539.GA19366@himanshu-Vostro-3559>
From: supriya supugade <supu024135@gmail.com>
Date: Tue, 19 Feb 2019 23:22:29 +0530
Message-ID: <CAFDeA1iH7jA-Rg-CyVC5FH1b-6zJVr5=4n8sy1xokYhAT9DCvw@mail.gmail.com>
Subject: Re: [Outreachy kernel] I didnt get message in log like "I can modify
 the Linux kernel!"
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000771d7d058242e891"

--000000000000771d7d058242e891
Content-Type: text/plain; charset="UTF-8"

Thank you so much for help. I will try this and let you know.

Thank and regards,
Supriya Supugade

On Tue, Feb 19, 2019, 10:05 PM Himanshu Jha <himanshujha199640@gmail.com
wrote:

> +Cc Bharath Vedartham[1]
>
> On Tue, Feb 19, 2019 at 09:50:19PM +0530, Himanshu Jha wrote:
> > On Tue, Feb 19, 2019 at 05:04:53PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Tue, 19 Feb 2019, Himanshu Jha wrote:
> > >
> > > > On Fri, Feb 15, 2019 at 02:10:04AM -0800, supriya supugade wrote:
> > > > >
> > > > > I am following the link "
> https://kernelnewbies.org/FirstKernelPatch"
> > > > >
> > > > > and modifying the driver in native Linux. I made a change in the
> > > > > e1000_main.c file i.e inserted the line
> > > > >
> > > > > "printk(KERN_DEBUG "I can modify the Linux kernel!\n");" After
> recompiling
> > > > > the kernel and rebooting it, I don't get the
> > > > >
> > > > > message "I can modify the Linux kernel!\" in the log files on
> typing "dmesg
> > > > > | less". I am getting following error during installing changes.
> > > > >
> > > > > Makefile:1281: recipe for target '_modinst_' failed
> > > > > make[1]: *** [_modinst_] Error 2
> > > > > Makefile:296: recipe for target '__build_one_by_one' failed
> > > > > make: *** [__build_one_by_one] Error 2
> > > > >
> > > > > How should I proceed further?
> > > >
> > > > Post your .config and full logs using pastebin.
> > > >
> > > > I saw one more fellow struggling with this on kernelnewbies.
> > >
> > > Did you see the discussion here:
> > >
> > >
> https://www.linuxquestions.org/questions/linux-software-2/kernel-building-install-error-4175608377/
> >
> > I just googled "make: *** [__build_one_by_one] Error 2" and
> > this pops up as the very first link.
> >
> > If this is the solution you guys are looking, then it very
> > sad :(
> >
> > I didn't check this becuase I saw this question atleast posted
> > thrice and assumed some new issue has popped up.
> >
> > > It concludes with:
> > >
> > > I suggest you go through the building process in separate steps
> instead of
> > > "make ... install" in one go.
>
> Julia, I think you are absolutely correct on this and all of them had
> followed what is actually written on the HowTo page below:
>
> https://kernelnewbies.org/FirstKernelPatch#Install_your_changes
>
>         sudo make modules_install -jN && sudo make install -jN
>
> should be the clean solution.
>
> Bharat, Supriya: Try this and confirm!
>
>
> [1]
> https://lore.kernel.org/kernelnewbies/20190205060053.GA309@bharath12345-Inspiron-5559/
>
> --
> Himanshu Jha
> Undergraduate Student
> Department of Electronics & Communication
> Guru Tegh Bahadur Institute of Technology
>

--000000000000771d7d058242e891
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you so much for help. I will try this and let you k=
now.<div dir=3D"auto"><br></div><div dir=3D"auto">Thank and regards,</div><=
div dir=3D"auto">Supriya Supugade</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr">On Tue, Feb 19, 2019, 10:05 PM Himanshu Jha &lt;<a href=
=3D"mailto:himanshujha199640@gmail.com">himanshujha199640@gmail.com</a> wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">+Cc Bharath Vedartham[1]<br>
<br>
On Tue, Feb 19, 2019 at 09:50:19PM +0530, Himanshu Jha wrote:<br>
&gt; On Tue, Feb 19, 2019 at 05:04:53PM +0100, Julia Lawall wrote:<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; On Tue, 19 Feb 2019, Himanshu Jha wrote:<br>
&gt; &gt; <br>
&gt; &gt; &gt; On Fri, Feb 15, 2019 at 02:10:04AM -0800, supriya supugade w=
rote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I am following the link &quot;<a href=3D"https://kernel=
newbies.org/FirstKernelPatch" rel=3D"noreferrer noreferrer" target=3D"_blan=
k">https://kernelnewbies.org/FirstKernelPatch</a>&quot;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; and modifying the driver in native Linux. I made a chan=
ge in the<br>
&gt; &gt; &gt; &gt; e1000_main.c file i.e inserted the line<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &quot;printk(KERN_DEBUG &quot;I can modify the Linux ke=
rnel!\n&quot;);&quot; After recompiling<br>
&gt; &gt; &gt; &gt; the kernel and rebooting it, I don&#39;t get the<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; message &quot;I can modify the Linux kernel!\&quot; in =
the log files on typing &quot;dmesg<br>
&gt; &gt; &gt; &gt; | less&quot;. I am getting following error during insta=
lling changes.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Makefile:1281: recipe for target &#39;_modinst_&#39; fa=
iled<br>
&gt; &gt; &gt; &gt; make[1]: *** [_modinst_] Error 2<br>
&gt; &gt; &gt; &gt; Makefile:296: recipe for target &#39;__build_one_by_one=
&#39; failed<br>
&gt; &gt; &gt; &gt; make: *** [__build_one_by_one] Error 2<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; How should I proceed further?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Post your .config and full logs using pastebin.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I saw one more fellow struggling with this on kernelnewbies.=
<br>
&gt; &gt; <br>
&gt; &gt; Did you see the discussion here:<br>
&gt; &gt; <br>
&gt; &gt; <a href=3D"https://www.linuxquestions.org/questions/linux-softwar=
e-2/kernel-building-install-error-4175608377/" rel=3D"noreferrer noreferrer=
" target=3D"_blank">https://www.linuxquestions.org/questions/linux-software=
-2/kernel-building-install-error-4175608377/</a><br>
&gt; <br>
&gt; I just googled &quot;make: *** [__build_one_by_one] Error 2&quot; and<=
br>
&gt; this pops up as the very first link.<br>
&gt; <br>
&gt; If this is the solution you guys are looking, then it very<br>
&gt; sad :(<br>
&gt; <br>
&gt; I didn&#39;t check this becuase I saw this question atleast posted<br>
&gt; thrice and assumed some new issue has popped up.<br>
&gt; <br>
&gt; &gt; It concludes with:<br>
&gt; &gt; <br>
&gt; &gt; I suggest you go through the building process in separate steps i=
nstead of<br>
&gt; &gt; &quot;make ... install&quot; in one go.<br>
<br>
Julia, I think you are absolutely correct on this and all of them had<br>
followed what is actually written on the HowTo page below:<br>
<br>
<a href=3D"https://kernelnewbies.org/FirstKernelPatch#Install_your_changes"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://kernelnewbies.org/=
FirstKernelPatch#Install_your_changes</a><br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sudo make modules_install -jN &amp;&amp; sudo m=
ake install -jN<br>
<br>
should be the clean solution.<br>
<br>
Bharat, Supriya: Try this and confirm!<br>
<br>
<br>
[1] <a href=3D"https://lore.kernel.org/kernelnewbies/20190205060053.GA309@b=
harath12345-Inspiron-5559/" rel=3D"noreferrer noreferrer" target=3D"_blank"=
>https://lore.kernel.org/kernelnewbies/20190205060053.GA309@bharath12345-In=
spiron-5559/</a><br>
<br>
-- <br>
Himanshu Jha<br>
Undergraduate Student<br>
Department of Electronics &amp; Communication<br>
Guru Tegh Bahadur Institute of Technology<br>
</blockquote></div>

--000000000000771d7d058242e891--

