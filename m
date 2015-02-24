X-GM-THRID: 3110621675520
X-Received: by 10.180.91.76 with SMTP id cc12mr57854wib.7.1424816720842;
        Tue, 24 Feb 2015 14:25:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.163 with SMTP id gv3ls863013wib.2.canary; Tue, 24 Feb
 2015 14:25:20 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr57852wib.7.1424816720404;
        Tue, 24 Feb 2015 14:25:20 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-lb0-x229.google.com (mail-lb0-x229.google.com. [2a00:1450:4010:c04::229])
        by gmr-mx.google.com with ESMTPS id xl7si4113057lbb.1.2015.02.24.14.25.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 14:25:20 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:4010:c04::229 as permitted sender) client-ip=2a00:1450:4010:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:4010:c04::229 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x229.google.com with SMTP id z11so353lbi.5
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 14:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=VdZJmZMxZU8NFe+BamLZZK5J6YvwAXcM7Y5ooBBav7o=;
        b=rx0sTd8AfmWbguWVI/9tMk+JvT84FalLB1WRhDr+TrC8iGLvQf933QuUCHcMTsxcga
         sVImHiDRiI3WP0VCNiZZQtmeDaikBp0tBs0LQgLtC45eWKqN2ANDgESJBP9qRNUbKrGt
         CuSpPmZLOP0/oPnIhk4REhmwmThuxyfN2pfr4FEhCEsaVbActWvlIJ3JIbcvIaiG/x8a
         4IpPKsKF+7t0DuHed9yV64nQ05d5lh0LWMy3J4P2XVbQlwbvsTRMO05TDrOgBZq/gn/n
         8oHZ976a1mPDVMNZVglOvdj0BuVJmjqXCkOqBBjrRevCVCrQEmgEJ4hxxO2N1umKrmYI
         T7iQ==
MIME-Version: 1.0
X-Received: by 10.112.235.38 with SMTP id uj6mr92345lbc.9.1424816720313; Tue,
 24 Feb 2015 14:25:20 -0800 (PST)
Received: by 10.112.18.112 with HTTP; Tue, 24 Feb 2015 14:25:20 -0800 (PST)
In-Reply-To: <5990540.RBqoLyRtGf@wuerfel>
References: <1424729565-6188-1-git-send-email-aybuke.147@gmail.com>
	<5990540.RBqoLyRtGf@wuerfel>
Date: Wed, 25 Feb 2015 00:25:20 +0200
Message-ID: <CAEAX3Jp0dqFM4AvP8Vhtzj0qPMZQorbnOd=_HBCjoSXdOgqpaw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: Change char * array
 type as static const
From: =?UTF-8?B?YXliw7xrZSDDtnpkZW1pcg==?= <aybuke.147@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c3cf287c03ff050fdcfed1

--001a11c3cf287c03ff050fdcfed1
Content-Type: text/plain; charset=UTF-8

Hi,

I've only changed the pointer, I made it const. I should use it like you
said(static const char *const). Because I can't do const string.

I'll make changes you said and send it again.

Regards

--001a11c3cf287c03ff050fdcfed1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br><span id=3D"result_box" class=3D"" lang=3D"en=
"><span class=3D""><span id=3D"result_box" class=3D"" lang=3D"en"><span cla=
ss=3D""></span><span class=3D""></span><span class=3D""></span><span class=
=3D""></span><span class=3D""></span></span></span><span class=3D""></span>=
<span class=3D""></span></span><span id=3D"result_box" class=3D"" lang=3D"e=
n"><span class=3D""><span id=3D"result_box" class=3D"" lang=3D"en"><span cl=
ass=3D""></span><span class=3D""></span></span></span><span class=3D""></sp=
an><span class=3D""></span><span class=3D""></span><span class=3D""></span>=
<span class=3D""></span><span class=3D""></span></span><span id=3D"result_b=
ox" class=3D"" lang=3D"en"><span class=3D""><span id=3D"result_box" class=
=3D"" lang=3D"en"><span class=3D""></span><span class=3D""></span></span></=
span></span><br><span id=3D"result_box" class=3D"" lang=3D"en"><span class=
=3D""><span id=3D"result_box" class=3D"" lang=3D"en"><span class=3D""><span=
 class=3D""><span>I&#39;ve
 only changed the pointer, I made it const. I should use it like you said(<=
/span></span></span></span></span></span><span id=3D"result_box" class=3D""=
 lang=3D"en"><span class=3D""><span id=3D"result_box" class=3D"" lang=3D"en=
"><span class=3D""><span class=3D""><span>static const char *const).</span>=
</span> </span></span></span></span>Because I can&#39;t do const string.<br=
><span class=3D""><span><br>I&#39;ll make changes you said and send it agai=
n.</span></span></div><span id=3D"result_box" class=3D"" lang=3D"en"><span =
class=3D""><span id=3D"result_box" class=3D"" lang=3D"en"><span class=3D"">=
<br>Regards<br></span></span></span></span></div>

--001a11c3cf287c03ff050fdcfed1--

