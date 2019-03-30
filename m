X-GM-THRID: 6674273164554403840
X-Received: by 2002:a25:660d:: with SMTP id a13mr610539ybc.0.1553976900700;
        Sat, 30 Mar 2019 13:15:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3d0e:: with SMTP id k14ls2015643ywa.4.gmail; Sat, 30 Mar
 2019 13:14:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjZLWS+XWIBHvNZHUna7jR7DMVKOnXQ0Ki5d7h3g1iqluz62rBFm16pOheCkMVnupwh3Mo
X-Received: by 2002:a81:dd0:: with SMTP id 199mr4957470ywn.21.1553976899786;
        Sat, 30 Mar 2019 13:14:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553976899; cv=none;
        d=google.com; s=arc-20160816;
        b=Pz7SQQvfX0v6pQLrFb1/vQfrhKk+xgic4rJPT28a3AJosRvJw0FIQVSamCj8gv3wMs
         oihFwLpeSMje9blUnkbyo/yr2S3GV5rnDa35BIIkfiFHYEchnOmipgsr2e+rL6EjsQLe
         3O2nfwTytZuSr5S2mcBEQTbboFVcbH5+ZnSCP2LpSmqP2ytdNACXsu4CUjnpPk6ESget
         uAPj+qC3CkTkYTAYBPBFHox45crKyOZ9VkYnuwHnLAH0YF2k0AhILHe4rn6chKHmAyb1
         rt1oNoVVGtn2Vgec6fVoFW6lkm4CRC/73K+2blnkzQPnedwtGWijW7UIYIeDe1Ut6C3G
         bc8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=aESofMGhKh5TAtqHOA5iexe+mu7QWwq6VlHt0BCZRM8=;
        b=AuzWGJ6Ukmui4fyXflJLDlBSqa+RNllKjyefLeiq2JWxdVLWRGNHj9abH1ncsnDzcH
         92VcnhPG9ayTgh0N0Faea5xLPCDQwJ5GvijwvXI3KzoQMiGnUN6cey4suS2WoQaSlya7
         Dpa9Rd7/naSvlctgzGptwNUMtiRvY7b7puixSZHfATCeK44z1xpt7jjs+mCuWuch6Uhh
         nt4egLhb9pzbhmgpf3A6uctJ4hFVsuIZ81sVj6s1gsQ+Mw2+W0IoZcd5oTD+kLTfGU0v
         mDuJFjqLe+aH48BsKi+5MkrjqSBUkXLA/sbdU7hCrTFgmIWUXUqUCtAi4x5af50PtM/R
         gUWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b="QN4a/477";
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id s11si324129ywg.3.2019.03.30.13.14.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 13:14:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b="QN4a/477";
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-qt1-x82d.google.com with SMTP id d13so6543261qth.5
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 13:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=aESofMGhKh5TAtqHOA5iexe+mu7QWwq6VlHt0BCZRM8=;
        b=QN4a/477qUI2brOEeCd7JXRbYH8g21JR+0SH5993AGLCNsKC4Pb2Tt6mzpxNVZ3yI9
         hddJQ5Q/WIZt2EbFUK+7Ndd1isEnG7A39kIlgmMelU2C4qAViBOe9Pam97oCqfXI5axd
         IISuSezAQkbexdZY14iYeyCnfLESXKOKMxI14=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=aESofMGhKh5TAtqHOA5iexe+mu7QWwq6VlHt0BCZRM8=;
        b=Yybw+JWreU5rpBz5rwAxjCzyOIj4qTB8o8l3DAWwIVCICUhf/4Zs5nfu0PnWkvfqwO
         nYH8jH6hbFr/JQv0vi/asuYMnh7XsWfPGnWdDrKsGYt/yBlfRhvi6Scpb27pMZ8qk4yB
         lWX1loMzgcG8a7nct5TzH7p5PXvk4nggcvkscXJ9QY0jZIKc5bdD0Imptyca4SltmT2M
         mZHr9qw6900Q1Ol4DCrtm34s9YzenH5KYWvDhRNxVxMwTbiB3QmlKW4AC2D9ZUYUxZqG
         +Ux/a7FhE0ldqeuyGVGq1fNDjnwfIvoLL/zHyFOMadnrARO3YFHVzcQ7PJM3BF7sDNy8
         BSSQ==
X-Gm-Message-State: APjAAAWpjtav8IH/K7ZL3Eh+0WPQEk7LBFni/aGU4jhM/z47xZqUBwH5
	lWOE4D1Mqborur8qnhdQJ/+w4H5T2QiLxP1v3nfNtA==
X-Received: by 2002:ac8:3821:: with SMTP id q30mr46232057qtb.73.1553976899315;
 Sat, 30 Mar 2019 13:14:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:938c:0:0:0:0:0 with HTTP; Sat, 30 Mar 2019 13:14:58
 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.21.1903302112460.2608@hadrien>
References: <cover.1553974929.git.nishka.dasgupta@yahoo.com> <alpine.DEB.2.21.1903302112460.2608@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Sun, 31 Mar 2019 01:44:58 +0530
Message-ID: <CAC4++KAoS2Ha1jVO=CDsjgV3oeWc-ecNK90gBKhrmRbgU13hQQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2 v6] staging: rtlwifi: phydm:
 Simplify expressions
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: "'Nishka Dasgupta' via outreachy-kernel" <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000012c2600585557170"

--00000000000012c2600585557170
Content-Type: text/plain; charset="UTF-8"

On Sunday, March 31, 2019, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 31 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
>
> > Simplify expressions to make code more readable.
> >
> > Nishka Dasgupta (2):
> >   staging: rtlwifi: phydm: Move operator to left hand side
> >   staging: rtlwifi: phydm: Move function arguments to previous line
>
> So the one removing the parentheses was already applied?


Yes, it was.
- Nishka


>
> julia
>
> >
> >  drivers/staging/rtlwifi/phydm/phydm_debug.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > --
> > Changes in v6:
> > - Split the patch into two.
> >
> > 2.19.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/cover.1553974929.git.nishka.dasgupta%40yahoo.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/alpine.DEB.2.21.1903302112460.2608%40hadrien.
> For more options, visit https://groups.google.com/d/optout.
>


-- 
*Nishka Dasgupta*
*B.Sc in Computer Science, Ashoka University*

*ASP Class of 2019, Ashoka University*

--00000000000012c2600585557170
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Sunday, March 31, 2019, Julia Lawall &lt;<a href=3D"mailto:julia=
.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
On Sun, 31 Mar 2019, &#39;Nishka Dasgupta&#39; via outreachy-kernel wrote:<=
br>
<br>
&gt; Simplify expressions to make code more readable.<br>
&gt;<br>
&gt; Nishka Dasgupta (2):<br>
&gt;=C2=A0 =C2=A0staging: rtlwifi: phydm: Move operator to left hand side<b=
r>
&gt;=C2=A0 =C2=A0staging: rtlwifi: phydm: Move function arguments to previo=
us line<br>
<br>
So the one removing the parentheses was already applied?</blockquote><div><=
br></div><div>Yes, it was.=C2=A0</div><div>- Nishka=C2=A0</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/rtlwifi/phydm/<wbr>phydm_debug.c | 8 ++------<br=
>
&gt;=C2=A0 1 file changed, 2 insertions(+), 6 deletions(-)<br>
&gt;<br>
&gt; --<br>
&gt; Changes in v6:<br>
&gt; - Split the patch into two.<br>
&gt;<br>
&gt; 2.19.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel+unsubscribe@googlegroups.co=
m">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/cover.1553974929.git.nishka.dasgupta%40yah=
oo.com" target=3D"_blank">https://groups.google.com/d/<wbr>msgid/outreachy-=
kernel/cover.<wbr>1553974929.git.nishka.<wbr>dasgupta%40yahoo.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel+unsubscribe@googlegroups.com">ou=
treachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903302112460.2608%40hadrien" t=
arget=3D"_blank">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/al=
pine.<wbr>DEB.2.21.1903302112460.2608%<wbr>40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" targ=
et=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.<br>
</blockquote><br><br>-- <br><div dir=3D"ltr"><div><div dir=3D"ltr"><font si=
ze=3D"2" face=3D"georgia, serif" color=3D"#351c75"><b>Nishka Dasgupta</b></=
font><div><font size=3D"1" face=3D"georgia, serif" color=3D"#ff0000"><b>B.S=
c in Computer Science,=C2=A0Ashoka University</b></font></div><div><font si=
ze=3D"1" face=3D"georgia, serif" color=3D"#ff0000"><b>ASP Class of 2019, As=
hoka University<br></b></font></div></div></div></div><br>

--00000000000012c2600585557170--

