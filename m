X-GM-THRID: 6211498487054336000
X-Received: by 10.194.203.33 with SMTP id kn1mr1990940wjc.3.1446227190145;
        Fri, 30 Oct 2015 10:46:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.90.18 with SMTP id o18ls221600lfb.98.gmail; Fri, 30 Oct
 2015 10:46:29 -0700 (PDT)
X-Received: by 10.112.162.169 with SMTP id yb9mr1945817lbb.15.1446227189346;
        Fri, 30 Oct 2015 10:46:29 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id m135si136885wmb.0.2015.10.30.10.46.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 10:46:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicfv8 with SMTP id fv8so15710736wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 10:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=7QHkwrr8dKIL9HqE5cbeYLblSVA2SS1QBrGH/Pp05U8=;
        b=chXmk/jiq+Wvq870aIMhYJLRnKXeYmSKmQKiZmZlMjx8wCPG6iR59xo+pfrvOpixPx
         MI2FkY83LnOyb+yL2YD1tkKRZumfzNgAI7AUtq9hiUUvRmwymsNiKQUeXYVTTdSZWTrw
         MBwk+TjVgZ7bZPcPTEQydL16pnT4zSDYYm3BAHDRqtxdSYDgq/328a2A5+mDNIdgLZGn
         ETCPT5bYeQMRmmTbGub/qi0PtR5mVk6loAks0NlE8fF6IGCrUwZDUYUT0FiHeyC4Uyjj
         qM++Kj4bAy0ldl+k8s5IAcY63o32A2O6tI3H0wcJ7KslrHCrHhOnkYXSyRQZ9dLr40Ac
         jIyA==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr10029814wjb.86.1446227189209;
 Fri, 30 Oct 2015 10:46:29 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Fri, 30 Oct 2015 10:46:29 -0700 (PDT)
Date: Fri, 30 Oct 2015 23:16:29 +0530
Message-ID: <CAKHNQQG6GJWTStPeSVEJOsTAqNbetQPeF3KR90WibZ=Ns+5RMA@mail.gmail.com>
Subject: Help needed with debugfs functions
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1130cf26e0a6800523560142

--001a1130cf26e0a6800523560142
Content-Type: text/plain; charset=UTF-8

Hi,

While working on removal of irrelevant wrapper functions, I came across a
function lustre_insert_debugfs() in the following file.
drivers/staging/lustre/lnet/lnet/router_proc.c

However, after some searching, I found out that lnet router debugfs was
enabled in this patch:
http://lkml.iu.edu/hypermail/linux/kernel/1509.1/04202.html

So, my focus is on two functions:
1. void lnet_proc_init(void) which was converted to void
lnet_router_debugfs_init(void)
2. void lnet_proc_fini(void) which was converted to void
lnet_router_debugfs_fini(void)

Now, the first function that is, lnet_router_debugfs_init() acts as a
wrapper for the function lustre_insert_debugfs() which is defined in
drivers/staging/lustre/lustre/libcfs/module.c.

But, the second function, that is, lnet_router_debugfs_fini() has got
nothing in its definition but it is still called at many places which
implies that it does simply nothing when called. So, I thought of adding
lustre_remove_debugfs() in its definition because that is what it is
supposed to do. (Please correct me if I am wrong here)

So, I added lustre_remove_debugfs() as a prototype in the header file
drivers/staging/lustre/include/linux/libcfs/libcfs.h so that it can easily
be called from inside of lnet_router_debugfs_fini().

Now, if the above mentioned is the right thing to do, then I'd like to know
what role does EXPORT_SYMBOL_GPL() play. Please explain with any of the
above functions as example. I'm asking this because lustre_insert_debugfs
has been defined and then exported with EXPORT_SYMBOL_GPL, but no matter
whether I do that with lustre_remove_debugfs or not, it does not throw any
errors. So, what is it exactly doing here?

Thank you
Shivani

--001a1130cf26e0a6800523560142
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div>Hi,<br><br></=
div>While working on removal of irrelevant wrapper functions, I came across=
 a function lustre_insert_debugfs() in the following file.<br>drivers/stagi=
ng/lustre/lnet/lnet/router_proc.c<br><br></div>However, after some searchin=
g, I found out that lnet router debugfs was enabled in this patch: <a href=
=3D"http://lkml.iu.edu/hypermail/linux/kernel/1509.1/04202.html">http://lkm=
l.iu.edu/hypermail/linux/kernel/1509.1/04202.html</a><br><br></div>So, my f=
ocus is on two functions:<br>1. void lnet_proc_init(void) which was convert=
ed to void lnet_router_debugfs_init(void)<br>2. void lnet_proc_fini(void) w=
hich was converted to void lnet_router_debugfs_fini(void)<br><br></div>Now,=
 the first function that is, lnet_router_debugfs_init() acts as a wrapper f=
or the function lustre_insert_debugfs() which is defined in drivers/staging=
/lustre/lustre/libcfs/module.c.<br><br></div>But, the second function, that=
 is, lnet_router_debugfs_fini() has got nothing in its definition but it is=
 still called at many places which implies that it does simply nothing when=
 called. So, I thought of adding lustre_remove_debugfs() in its definition =
because that is what it is supposed to do. (Please correct me if I am wrong=
 here)<br><br></div>So, I added lustre_remove_debugfs() as a prototype in t=
he header file drivers/staging/lustre/include/linux/libcfs/libcfs.h so that=
 it can easily be called from inside of lnet_router_debugfs_fini().<br><br>=
</div>Now, if the above mentioned is the right thing to do, then I&#39;d li=
ke to know what role does EXPORT_SYMBOL_GPL() play. Please explain with any=
 of the above functions as example. I&#39;m asking this because lustre_inse=
rt_debugfs has been defined and then exported with EXPORT_SYMBOL_GPL, but n=
o matter whether I do that with lustre_remove_debugfs or not, it does not t=
hrow any errors. So, what is it exactly doing here?<br><br></div>Thank you<=
br></div>Shivani<br></div>

--001a1130cf26e0a6800523560142--

