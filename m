X-GM-THRID: 6399916000486096896
X-Received: by 10.223.172.11 with SMTP id v11mr412843wrc.22.1490343318272;
        Fri, 24 Mar 2017 01:15:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.55.196 with SMTP id e187ls130489wma.2.gmail; Fri, 24 Mar
 2017 01:15:17 -0700 (PDT)
X-Received: by 10.28.14.129 with SMTP id 123mr71382wmo.11.1490343317431;
        Fri, 24 Mar 2017 01:15:17 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x230.google.com (mail-lf0-x230.google.com. [2a00:1450:4010:c07::230])
        by gmr-mx.google.com with ESMTPS id x188si484615wmx.0.2017.03.24.01.15.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 01:15:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::230 as permitted sender) client-ip=2a00:1450:4010:c07::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::230 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x230.google.com with SMTP id y193so2689188lfd.3
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 01:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=8ffJloXJ8T4mdt+0HmtP9V5DKhL3cFpWUCXmtlxBW2A=;
        b=pHdAqrcovK00gCngGh5Wk1AeJBF6sorx2EtkPlaFWCu97M/dHCFidtv13fbVlML5Fe
         vq3XU8IqzogpOBSLXAJAJaDHhDIXR2sb2yGTE3CKveKkBTmzeeGoNSyWHPw7vI7VHPiZ
         sGFHJClPTyAK5Y0r9P7YGN1t/muNTeT+WCRfUX7uPaeV+ev03/eWxzKBeGAT6VBd7cqt
         bQp2i4axE8laJD3pmU8GSK21rqWLqKD/BhS1waD45Z+ruxZ5iRU0QCFbu667V+lCAhXv
         ouJhlaSPSVaVkiaS95cqMndSqZ2ePp0puBIudx5bpZh/sii77eq7QlmesqpU5dgM1nGc
         ovuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=8ffJloXJ8T4mdt+0HmtP9V5DKhL3cFpWUCXmtlxBW2A=;
        b=HqsZUjOd77jET0Llp7Y279Or3osEEJ6y5Z5mbU3aMHJ3jNlwqhG+Cp8JRLCkbssnou
         wyLd/QOb6zt0/08ocQZbfpQ61nMteDdFkp9OONZZoZ/3yWLuZC8geTwu3G5kTtu9Gm4t
         0dW/knJSMXsJ4ob/qvC7T2aw6/+BR6+M+FjvEuELmlM+TTzV5Nbz/+P4i+RbCKVzHuUC
         bwc83U2cDRYvNy+8urNsP1iNND5dI13Q55lY4oRWk3o5W0DlKBVRbC0zMVMWQqWB9VMD
         OBDGwS8SfB4UKvyxNLQLR6xnKGi8OLLfxMBbnmo7j3ZiHuH75dks9cWaGZtQlWvuYly0
         H+5Q==
X-Gm-Message-State: AFeK/H01t58lFGoF5nG21RLGNXthMWqVI4sdlU8Y1SA763UpiPekPWHKPYApPSSAbDve6ddY17uA5qosF9tudA==
X-Received: by 10.25.15.198 with SMTP id 67mr3190464lfp.53.1490343317194; Fri,
 24 Mar 2017 01:15:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Fri, 24 Mar 2017 01:15:16 -0700 (PDT)
In-Reply-To: <20170323204511.GA9727@kroah.com>
References: <CA+XqjF9fNHFEUopsZH5rfiuha-Pv0WA+8oACvT_cNxwiSX-rjg@mail.gmail.com>
 <20170323204511.GA9727@kroah.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Fri, 24 Mar 2017 13:45:16 +0530
Message-ID: <CA+XqjF-1V0KbHU0Ndy4r_e4q8Nd=otS-E8nUFdz7Hnygijc=qA@mail.gmail.com>
Subject: Re: [RESEND PATCH v2] staging:speakup: Fix alignment with parenthesis.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
	Samuel Thibault <samuel.thibault@ens-lyon.org>, speakup@linux-speakup.org, 
	driverdevel <devel@driverdev.osuosl.org>, LKML <linux-kernel@vger.kernel.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113f89e203d3b7054b7598b7

--001a113f89e203d3b7054b7598b7
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 24, 2017 at 2:15 AM, Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 23, 2017 at 07:15:38PM +0530, Arushi Singhal wrote:
> > Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>
> <snip>
>
> I can't take patches sent in html format :(
>
> please fix your email client.
>
Hi Greg
I will forward it in required format.

>
> thanks,
>
> greg k-h
>

--001a113f89e203d3b7054b7598b7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Mar 24, 2017 at 2:15 AM, Greg Kroah-Hartman <span dir=3D"ltr">&lt;<=
a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linux=
foundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><spa=
n class=3D"">On Thu, Mar 23, 2017 at 07:15:38PM +0530, Arushi Singhal wrote=
:<br>
&gt; Fix checkpatch issues: &quot;CHECK: Alignment should match open parent=
hesis&quot;.<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
<br>
</span>&lt;snip&gt;<br>
<br>
I can&#39;t take patches sent in html format :(<br>
<br>
please fix your email client.<br></blockquote><div>Hi Greg<br></div><div>I =
will forward it in required format. <br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div></div>

--001a113f89e203d3b7054b7598b7--

