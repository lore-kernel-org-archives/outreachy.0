X-GM-THRID: 6210938115276668928
X-Received: by 10.112.134.129 with SMTP id pk1mr4528996lbb.24.1446098100562;
        Wed, 28 Oct 2015 22:55:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.88.133 with SMTP id m127ls240665wmb.47.canary; Wed, 28 Oct
 2015 22:54:59 -0700 (PDT)
X-Received: by 10.28.55.135 with SMTP id e129mr258764wma.7.1446098099829;
        Wed, 28 Oct 2015 22:54:59 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id t18si181277wme.0.2015.10.28.22.54.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:54:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicfx6 with SMTP id fx6so218091885wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 22:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=KxQOdjRqoV/i2mNsy6L9CVVGw5gSo6lovQyHFfbcACc=;
        b=GWrlqrdCE/2SXuaL/CD1A55PYRSFANA8fFcUbqsy1WO+DcybKd83+Qqwltc7Dk8LiW
         M8lGgnlL8y2Ve4JqdPhO3R0a7Te0gYTWdLbqIixwfmNdRb7d6tZ26i7XC7zZm0NVaLul
         504nzNUI3jPlHPbxkc7uLSm/eOtxw/Lt1wqM9diDnffGonUb9xmGVQMQlPq3wo0uBRQg
         KIzuYmI/1RtiqmL2DAYaKsRcQ92mb+lVyKvyxpHw+kS/a8MZKmZlGqfudkv8ae1H8TeT
         uzNKcL2RvduRL8ecZYmPLSrhwDPlx7jmG2IphG87hBfC8q1KedbvVowmph791jCJFrne
         Ge0w==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr62944926wja.87.1446098099675; Wed,
 28 Oct 2015 22:54:59 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Wed, 28 Oct 2015 22:54:59 -0700 (PDT)
In-Reply-To: <20151029054828.GB16140@sudip-pc>
References: <cover.1446096468.git.shivanib134@gmail.com>
	<add1870ead28913d364e09a1d06f85c5da8c74ed.1446096468.git.shivanib134@gmail.com>
	<20151029054828.GB16140@sudip-pc>
Date: Thu, 29 Oct 2015 11:24:59 +0530
Message-ID: <CAKHNQQF68wTk1v65i+aGEJwTmLsce-HCE0h4fiXsF-wze=_ksw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: console: Remove
 irrelevant return statement
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7b5d86a58aa5eb052337f3bb

--047d7b5d86a58aa5eb052337f3bb
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 29, 2015 at 11:18 AM, Sudip Mukherjee <
sudipm.mukherjee@gmail.com> wrote:

> On Thu, Oct 29, 2015 at 11:02:48AM +0530, Shivani Bhardwaj wrote:
> > Remove return statement from the function lstcon_group_ndlink_move()
> > as its return type is void.
> > Fix checkpatch WARNING: void function return statements are not
> > generally useful
> >
> > Signed-off-by : Shivani Bhardwaj <shivanib134@gmail.com>
>
> checkpatch is complaining about the "Signed-off-by" because of an
> extra space.
>
> regards
> sudip
>

Sending this again. I'm sorry.
Thank you

--047d7b5d86a58aa5eb052337f3bb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Oct 29, 2015 at 11:18 AM, Sudip Mukherjee <span dir=3D"ltr">&lt=
;<a href=3D"mailto:sudipm.mukherjee@gmail.com" target=3D"_blank">sudipm.muk=
herjee@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><s=
pan class=3D"">On Thu, Oct 29, 2015 at 11:02:48AM +0530, Shivani Bhardwaj w=
rote:<br>
&gt; Remove return statement from the function lstcon_group_ndlink_move()<b=
r>
&gt; as its return type is void.<br>
&gt; Fix checkpatch WARNING: void function return statements are not<br>
&gt; generally useful<br>
&gt;<br>
&gt; Signed-off-by : Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gma=
il.com">shivanib134@gmail.com</a>&gt;<br>
<br>
</span>checkpatch is complaining about the &quot;Signed-off-by&quot; becaus=
e of an<br>
extra space.<br>
<br>
regards<br>
<span class=3D"HOEnZb"><font color=3D"#888888">sudip<br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra">Sendi=
ng this again. I&#39;m sorry.<br></div><div class=3D"gmail_extra">Thank you=
<br></div></div>

--047d7b5d86a58aa5eb052337f3bb--

