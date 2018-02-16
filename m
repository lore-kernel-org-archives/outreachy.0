X-GM-THRID: 6523255029551333376
Date: Fri, 16 Feb 2018 13:26:57 -0800 (PST)
From: Ishita Tripathi <sakurakhadag@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <50576300-68a8-4dae-94d6-6452639c5c9d@googlegroups.com>
In-Reply-To: <20180216204100.GA76452@ubuntu>
References: <20180216204100.GA76452@ubuntu>
Subject: Re: [PATCH] Fix checkpatch issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5079_109241472.1518816417315"
X-Google-Token: EKGZndQFcNqAMYQtXmo0
X-Google-IP: 171.79.78.116

------=_Part_5079_109241472.1518816417315
Content-Type: multipart/alternative; 
	boundary="----=_Part_5080_1523544061.1518816417316"

------=_Part_5080_1523544061.1518816417316
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi!
I'm very sorry about the horrible quality. I'll try better with v2. 
Thank you very much for the replies.
Ishita

On Saturday, 17 February 2018 02:11:07 UTC+5:30, Ishita Tripathi wrote:
>
> Deleted line break after dereference operator (->) 
>
> Signed-off-by: Ishita Tripathi <sakurakhadag@gmail.com> 
>
> --- 
>  drivers/staging/comedi/drivers/rtd520.c | 5 ++--- 
>  1 file changed, 2 insertions(+), 3 deletions(-) 
>
> diff --git a/drivers/staging/comedi/drivers/rtd520.c 
> b/drivers/staging/comedi/drivers/rtd520.c 
> index bb400e0..47b7093 100644 
> --- a/drivers/staging/comedi/drivers/rtd520.c 
> +++ b/drivers/staging/comedi/drivers/rtd520.c 
> @@ -815,9 +815,8 @@ static int rtd_ai_cmdtest(struct comedi_device *dev, 
>   
>                  if (cmd->scan_begin_src == TRIG_TIMER) { 
>                          arg = cmd->convert_arg * cmd->scan_end_arg; 
> -                        err |= comedi_check_trigger_arg_min(&cmd-> 
> -                                                           
>  scan_begin_arg, 
> -                                                            arg); 
> +                        err |= 
> comedi_check_trigger_arg_min(&cmd->scan_begin_arg, 
> +                                        arg); 
>                  } 
>          } 
>   
> -- 
> 2.7.4 
>
>
------=_Part_5080_1523544061.1518816417316
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<br>I&#39;m very sorry about the horrible quality. I&#3=
9;ll try better with v2. <br>Thank you very much for the replies.<br>Ishita=
<br><br>On Saturday, 17 February 2018 02:11:07 UTC+5:30, Ishita Tripathi  w=
rote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8e=
x;border-left: 1px #ccc solid;padding-left: 1ex;">Deleted line break after =
dereference operator (-&gt;)
<br>
<br>Signed-off-by: Ishita Tripathi &lt;<a href=3D"mailto:sakurakhadag@gmail=
.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ma=
ilto:sakurakhadag@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;=
mailto:sakurakhadag@gmail.com&#39;;return true;">sakurakhadag@gmail.com</a>=
&gt;
<br>
<br>---
<br>=C2=A0drivers/staging/comedi/<wbr>drivers/rtd520.c | 5 ++---
<br>=C2=A01 file changed, 2 insertions(+), 3 deletions(-)
<br>
<br>diff --git a/drivers/staging/comedi/<wbr>drivers/rtd520.c b/drivers/sta=
ging/comedi/<wbr>drivers/rtd520.c
<br>index bb400e0..47b7093 100644
<br>--- a/drivers/staging/comedi/<wbr>drivers/rtd520.c
<br>+++ b/drivers/staging/comedi/<wbr>drivers/rtd520.c
<br>@@ -815,9 +815,8 @@ static int rtd_ai_cmdtest(struct comedi_device *dev=
,
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (cmd-&gt;scan_begin_src =3D=3D TRIG_TIM=
ER) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0arg =3D cmd-&gt;convert_arg * cmd-&gt;scan_end_arg;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
err |=3D comedi_check_trigger_arg_min(&amp;<wbr>cmd-&gt;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0scan_begin_ar=
g,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0arg);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
err |=3D comedi_check_trigger_arg_min(&amp;<wbr>cmd-&gt;scan_begin_arg,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0arg);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div>
------=_Part_5080_1523544061.1518816417316--

------=_Part_5079_109241472.1518816417315--

