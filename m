X-GM-THRID: 6206327457482539008
X-Received: by 10.112.136.99 with SMTP id pz3mr4822038lbb.11.1445078002821;
        Sat, 17 Oct 2015 03:33:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.163.194 with SMTP id m185ls362866lfe.66.gmail; Sat, 17 Oct
 2015 03:33:22 -0700 (PDT)
X-Received: by 10.112.198.33 with SMTP id iz1mr4777490lbc.8.1445078002052;
        Sat, 17 Oct 2015 03:33:22 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id q6si204236wif.2.2015.10.17.03.33.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 03:33:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fv8so20279543wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 03:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=3veE27a8emBHPhm0om0hKhIxlyqEjtGI6AaEDA/37pk=;
        b=sskmA/nYzQtVy5PnPRv/S7BkpF1i4TG1hhckdBd3YET72raBJrfMAxz9uzReDQX7pR
         SKmqqns7g8kKCQ7fucGZOTTJCzwklRJZdCTPeqY2VFRYBoDPTKzQ9hz5JtMGPpY3B2P5
         lHb/A2k/L14lyZscz4wmxhpN+fHinOPtTXj5JNTdUmrtaNtmTaz4OmSIlRGJRN0iLwxD
         i95HyBp6Lj1z7xUjY+PulivEkiOm8KmsvTgwLAMG2Q1zBSR8G3G5b4G45kg0F5km+Zmd
         CAHi3tKZYdT4eK0/TB4W3ASlONgkwm1ykj2tM3Se4rxssoC0YuDu7t21JD+B+QN6uNEm
         ki7A==
MIME-Version: 1.0
X-Received: by 10.180.35.163 with SMTP id i3mr9441008wij.80.1445078001897;
 Sat, 17 Oct 2015 03:33:21 -0700 (PDT)
Received: by 10.28.159.133 with HTTP; Sat, 17 Oct 2015 03:33:21 -0700 (PDT)
In-Reply-To: <20151017050641.GA3052@kroah.com>
References: <1445033073-10154-1-git-send-email-aybuke.147@gmail.com>
	<20151017050641.GA3052@kroah.com>
Date: Sat, 17 Oct 2015 13:33:21 +0300
Message-ID: <CAEAX3JrU=56tg94bo1w6gHNBr9nEtcgRauXfa+GFxa8r477hmw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: sm750fb: Include
 appropriate KERN_ facility level
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=e89a8f83a3f9f9df6e05224a7063

--e89a8f83a3f9f9df6e05224a7063
Content-Type: text/plain; charset=UTF-8

Hi Greg,

I used this command "make drivers/staging/sm750fb/" before applying the
patch.
I sent that I faced no problems. :( command output:

aybuke@kripton:~/git/kernels/staging$ make drivers/staging/sm750fb/
  CHK     include/config/kernel.release
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  CHK     include/generated/bounds.h
  CHK     include/generated/timeconst.h
  CHK     include/generated/asm-offsets.h
  CALL    scripts/checksyscalls.sh
aybuke@kripton:~/git/kernels/staging$

--e89a8f83a3f9f9df6e05224a7063
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Greg,<br><br>I used this command &quot;make drivers/sta=
ging/sm750fb/&quot; <span id=3D"result_box" class=3D"" lang=3D"en"><span cl=
ass=3D"">before applying</span> <span class=3D"">the patch. </span></span><=
br><span id=3D"result_box" class=3D"" lang=3D"en"><span class=3D"">I sent</=
span> <span class=3D"">that I</span> <span class=3D"">faced no problems. :(=
 command output</span></span>:<br><br>aybuke@kripton:~/git/kernels/staging$=
 make drivers/staging/sm750fb/<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 includ=
e/config/kernel.release<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/gener=
ated/uapi/linux/version.h<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/gen=
erated/utsrelease.h<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated=
/bounds.h<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/timeconst=
.h<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/asm-offsets.h<br=
>=C2=A0 CALL=C2=A0=C2=A0=C2=A0 scripts/checksyscalls.sh<br>aybuke@kripton:~=
/git/kernels/staging$<br></div>

--e89a8f83a3f9f9df6e05224a7063--

