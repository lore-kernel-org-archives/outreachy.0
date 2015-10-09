X-GM-THRID: 6201868537095520256
X-Received: by 10.129.109.211 with SMTP id i202mr12149363ywc.16.1444418952986;
        Fri, 09 Oct 2015 12:29:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.112 with SMTP id a103ls1126784qge.94.gmail; Fri, 09 Oct
 2015 12:29:10 -0700 (PDT)
X-Received: by 10.129.146.87 with SMTP id j84mr12503872ywg.18.1444418950787;
        Fri, 09 Oct 2015 12:29:10 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-io0-x235.google.com (mail-io0-x235.google.com. [2607:f8b0:4001:c06::235])
        by gmr-mx.google.com with ESMTPS id j7si71254igu.1.2015.10.09.12.29.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:29:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c06::235 as permitted sender) client-ip=2607:f8b0:4001:c06::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c06::235 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x235.google.com with SMTP id v82so1179760iod.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=BMmsIEkIVpJtPHVd01arPRfNYjfDgpAt6M9djc/+nuA=;
        b=mqgMcXCDkouj/2TgHSU/L13Ex6wllKDigmQAo81R4jIVWsuogKua8zXt5rI4jzTsU5
         w9lckznK3eiMfPglWR0YPsozweh4nqagJ6mq1kvzGI3ayzexr2s/gUi07h0azM+r01am
         2Hca9c+vm+NTDD1pkiCroyOwPbIv/e5prKO0RB7cZKpTNjmu2t5YL/Uyb5JrIGAOZVMt
         GiHix78EPLbYXkOd4nEWw7xS7SLARKmdVylZUZBYmlBVhYrR9Jy6bOkVcPXbQSbmVa8P
         790FX5u7oMSrte+mcPUtyMJM/VueLc68dVF1L6tPqcys+5ceFo7FWJloFIk3uzce9j2b
         MVUQ==
MIME-Version: 1.0
X-Received: by 10.107.163.204 with SMTP id m195mr19086948ioe.65.1444418950666;
 Fri, 09 Oct 2015 12:29:10 -0700 (PDT)
Received: by 10.64.155.6 with HTTP; Fri, 9 Oct 2015 12:29:10 -0700 (PDT)
In-Reply-To: <1444418279-127467-2-git-send-email-cristina.moraru09@gmail.com>
References: <1443984978-87338-1-git-send-email-cristina.moraru09@gmail.com>
	<1444418279-127467-1-git-send-email-cristina.moraru09@gmail.com>
	<1444418279-127467-2-git-send-email-cristina.moraru09@gmail.com>
Date: Fri, 9 Oct 2015 22:29:10 +0300
Message-ID: <CAGZ2q2zzC36cv4M_KAY7ym0QM9vAQqDmD7cG82YSLeR8cLOC-g@mail.gmail.com>
Subject: Re: [PATCH 1/3] staging: octeon: Remove extra line from kernel-doc
From: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Content-Type: multipart/alternative; boundary=001a1140fb707620be0521b0fe38

--001a1140fb707620be0521b0fe38
Content-Type: text/plain; charset=UTF-8

Appearantly I have mistaken something in the git send-email command and my
patchset has been sent into 4 separate emails. I am extremely sorry for the
spam. I will try to figure this out and resend correctly.

2015-10-09 22:17 GMT+03:00 Cristina Moraru <cristina.moraru09@gmail.com>:

> Fix 'bad line' kernel-doc warning
>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/octeon/ethernet.c
> b/drivers/staging/octeon/ethernet.c
> index 7274fda..a8da250 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -368,7 +368,7 @@ static void cvm_oct_common_set_multicast_list(struct
> net_device *dev)
>   * cvm_oct_common_set_mac_address - set the hardware MAC address for a
> device
>   * @dev:    The device in question.
>   * @addr:   Address structure to change it too.
> -
> + *
>   * Returns Zero on success
>   */
>  static int cvm_oct_set_mac_filter(struct net_device *dev)
> --
> 1.9.1
>
>

--001a1140fb707620be0521b0fe38
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Appearantly I have mistaken something in the git send-emai=
l command and my patchset has been sent into 4 separate emails. I am extrem=
ely sorry for the spam. I will try to figure this out and resend correctly.=
<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-10=
-09 22:17 GMT+03:00 Cristina Moraru <span dir=3D"ltr">&lt;<a href=3D"mailto=
:cristina.moraru09@gmail.com" target=3D"_blank">cristina.moraru09@gmail.com=
</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><d=
iv class=3D"h5">Fix &#39;bad line&#39; kernel-doc warning<br>
<br>
Signed-off-by: Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09@gmai=
l.com">cristina.moraru09@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/octeon/ethernet.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/eth=
ernet.c<br>
index 7274fda..a8da250 100644<br>
--- a/drivers/staging/octeon/ethernet.c<br>
+++ b/drivers/staging/octeon/ethernet.c<br>
@@ -368,7 +368,7 @@ static void cvm_oct_common_set_multicast_list(struct ne=
t_device *dev)<br>
=C2=A0 * cvm_oct_common_set_mac_address - set the hardware MAC address for =
a device<br>
=C2=A0 * @dev:=C2=A0 =C2=A0 The device in question.<br>
=C2=A0 * @addr:=C2=A0 =C2=A0Address structure to change it too.<br>
-<br>
+ *<br>
=C2=A0 * Returns Zero on success<br>
=C2=A0 */<br>
=C2=A0static int cvm_oct_set_mac_filter(struct net_device *dev)<br>
--<br>
1.9.1<br>
<br>
</div></div></blockquote></div><br></div>

--001a1140fb707620be0521b0fe38--

