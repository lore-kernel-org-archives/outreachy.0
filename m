X-GM-THRID: 6399916000486096896
Date: Wed, 22 Mar 2017 12:20:23 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, arushisinghal19971997@gmail.com
Message-Id: <6e75c652-f348-4592-a79d-4f290de9bea1@googlegroups.com>
In-Reply-To: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
Subject: Re: [RESEND PATCH 00/11] staging:speakup: Multiple Checkpatch
 issues.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4598_1257669745.1490210423347"
X-Google-Token: EPecy8YFhc5NZOoT05E0
X-Google-IP: 14.139.82.6

------=_Part_4598_1257669745.1490210423347
Content-Type: multipart/alternative; 
	boundary="----=_Part_4599_1516554454.1490210423348"

------=_Part_4599_1516554454.1490210423348
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Tuesday, March 21, 2017 at 5:12:41 PM UTC+5:30, Arushi Singhal wrote:
>
> Improve readability by fixing multiple checkpatch.pl 
> issues in speakup driver. 
>
> Arushi Singhal (11): 
>   staging: speakup: Moved logical to previous line. 
>   staging: speakup: Remove multiple assignments 
>   staging: speakup: Simplify "NULL" comparisons 
>   staging: speakup: fixes braces {} should be used on all arms of this 
>     statement 
>   staging: speakup: Remove multiple assignments 
>   staging: speakup: Moved OR operator to previous line. 
>   staging: speakup: spaces preferred around operator 
>   staging: speakup: Removed Unnecessary parentheses. 
>   staging: speakup: Simplify the NULL comparisons 
>   staging: speakup: Match alignment with open parenthesis. 
>   staging: speakup: Fix alignment with parenthesis. 
>
>  drivers/staging/speakup/fakekey.c        |   2 +- 
>  drivers/staging/speakup/kobjects.c       |   2 +- 
>  drivers/staging/speakup/main.c           | 110 
> +++++++++++++++++-------------- 
>  drivers/staging/speakup/selection.c      |   4 +- 
>  drivers/staging/speakup/serialio.c       |   2 +- 
>  drivers/staging/speakup/speakup.h        |  12 ++-- 
>  drivers/staging/speakup/speakup_acntpc.c |   8 +-- 
>  drivers/staging/speakup/speakup_apollo.c |   2 +- 
>  drivers/staging/speakup/speakup_decext.c |  10 +-- 
>  drivers/staging/speakup/speakup_decpc.c  |  26 ++++---- 
>  drivers/staging/speakup/speakup_dectlk.c |   6 +- 
>  drivers/staging/speakup/speakup_dtlk.c   |   2 +- 
>  drivers/staging/speakup/speakup_keypc.c  |   6 +- 
>  drivers/staging/speakup/speakup_ltlk.c   |   2 +- 
>  drivers/staging/speakup/varhandlers.c    |  18 ++--- 
>  15 files changed, 114 insertions(+), 98 deletions(-) 
>
> Hi 
Any update on these patches?
If something needs to be change or to improve.
Thanks
Arushi 

> -- 
> 2.11.0 
>
>
------=_Part_4599_1516554454.1490210423348
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, March 21, 2017 at 5:12:41 PM UTC+5:30, Arushi =
Singhal wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Improve readabil=
ity by fixing multiple <a href=3D"http://checkpatch.pl" target=3D"_blank" r=
el=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q=
\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRg=
UgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;htt=
p://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x=
3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkpa=
tch.pl</a>
<br>issues in speakup driver.
<br>
<br>Arushi Singhal (11):
<br>=C2=A0 staging: speakup: Moved logical to previous line.
<br>=C2=A0 staging: speakup: Remove multiple assignments
<br>=C2=A0 staging: speakup: Simplify &quot;NULL&quot; comparisons
<br>=C2=A0 staging: speakup: fixes braces {} should be used on all arms of =
this
<br>=C2=A0 =C2=A0 statement
<br>=C2=A0 staging: speakup: Remove multiple assignments
<br>=C2=A0 staging: speakup: Moved OR operator to previous line.
<br>=C2=A0 staging: speakup: spaces preferred around operator
<br>=C2=A0 staging: speakup: Removed Unnecessary parentheses.
<br>=C2=A0 staging: speakup: Simplify the NULL comparisons
<br>=C2=A0 staging: speakup: Match alignment with open parenthesis.
<br>=C2=A0 staging: speakup: Fix alignment with parenthesis.
<br>
<br>=C2=A0drivers/staging/speakup/<wbr>fakekey.c =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| =C2=A0 2 +-
<br>=C2=A0drivers/staging/speakup/<wbr>kobjects.c =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 2 +-
<br>=C2=A0drivers/staging/speakup/main.<wbr>c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | 110 +++++++++++++++++-------------<wbr>-
<br>=C2=A0drivers/staging/speakup/<wbr>selection.c =C2=A0 =C2=A0 =C2=A0| =
=C2=A0 4 +-
<br>=C2=A0drivers/staging/speakup/<wbr>serialio.c =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 2 +-
<br>=C2=A0drivers/staging/speakup/<wbr>speakup.h =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| =C2=A012 ++--
<br>=C2=A0drivers/staging/speakup/<wbr>speakup_acntpc.c | =C2=A0 8 +--
<br>=C2=A0drivers/staging/speakup/<wbr>speakup_apollo.c | =C2=A0 2 +-
<br>=C2=A0drivers/staging/speakup/<wbr>speakup_decext.c | =C2=A010 +--
<br>=C2=A0drivers/staging/speakup/<wbr>speakup_decpc.c =C2=A0| =C2=A026 +++=
+----
<br>=C2=A0drivers/staging/speakup/<wbr>speakup_dectlk.c | =C2=A0 6 +-
<br>=C2=A0drivers/staging/speakup/<wbr>speakup_dtlk.c =C2=A0 | =C2=A0 2 +-
<br>=C2=A0drivers/staging/speakup/<wbr>speakup_keypc.c =C2=A0| =C2=A0 6 +-
<br>=C2=A0drivers/staging/speakup/<wbr>speakup_ltlk.c =C2=A0 | =C2=A0 2 +-
<br>=C2=A0drivers/staging/speakup/<wbr>varhandlers.c =C2=A0 =C2=A0| =C2=A01=
8 ++---
<br>=C2=A015 files changed, 114 insertions(+), 98 deletions(-)
<br>
<br></blockquote><div>Hi <br>Any update on these patches?<br>If something n=
eeds to be change or to improve.<br>Thanks<br>Arushi <br></div><blockquote =
class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1p=
x #ccc solid;padding-left: 1ex;">--=20
<br>2.11.0
<br>
<br></blockquote></div>
------=_Part_4599_1516554454.1490210423348--

------=_Part_4598_1257669745.1490210423347--

