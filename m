X-GM-THRID: 6401819323480932352
Date: Mon, 27 Mar 2017 12:12:53 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: mawilcox@microsoft.com, gs051095@gmail.com
Message-Id: <24c07b87-b37f-44a2-afcb-f6310b6630fb@googlegroups.com>
In-Reply-To: <38ecc07b35b00ee00b4c90f11e1dd17bffe26d36.1490539466.git.gs051095@gmail.com>
References: <cover.1490539466.git.gs051095@gmail.com>
 <cover.1490539466.git.gs051095@gmail.com>
 <38ecc07b35b00ee00b4c90f11e1dd17bffe26d36.1490539466.git.gs051095@gmail.com>
Subject: Re: [PATCH 2/3] kernel: pid_namespace: Fix line over 80 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4575_1130405277.1490641973358"
X-Google-Token: ELXI5cYFDcd2cwX-Yss0
X-Google-IP: 14.139.82.6

------=_Part_4575_1130405277.1490641973358
Content-Type: multipart/alternative; 
	boundary="----=_Part_4576_810603224.1490641973359"

------=_Part_4576_810603224.1490641973359
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 26, 2017 at 8:18:57 PM UTC+5:30, Gargi Sharma wrote:
>
> Line over 80 characters are split to fix the following checkpatch 
> issue: 
> WARNING: line over 80 characters 
>
> Signed-off-by: Gargi Sharma <gs05...@gmail.com <javascript:>> 
> --- 
>  kernel/pid_namespace.c | 5 +++-- 
>  1 file changed, 3 insertions(+), 2 deletions(-) 
>
> diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c 
> index 6ace1e3..18f5385 100644 
> --- a/kernel/pid_namespace.c 
> +++ b/kernel/pid_namespace.c 
> @@ -92,8 +92,9 @@ static void dec_pid_namespaces(struct ucounts *ucounts) 
>          dec_ucount(ucounts, UCOUNT_PID_NAMESPACES); 
>  } 
>   
> -static struct pid_namespace *create_pid_namespace(struct user_namespace 
> *user_ns, 
> -        struct pid_namespace *parent_pid_ns) 
>
Hi Gargi
I think I have already made this change
 Thanks
Arushi

> +static struct 
> +pid_namespace *create_pid_namespace(struct user_namespace *user_ns, 
> +                                    struct pid_namespace *parent_pid_ns) 
>  { 
>          struct pid_namespace *ns; 
>          unsigned int level = parent_pid_ns->level + 1; 
> -- 
> 2.7.4 
>
>
------=_Part_4576_810603224.1490641973359
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 26, 2017 at 8:18:57 PM UTC+5:30, =
Gargi Sharma wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Line over 8=
0 characters are split to fix the following checkpatch
<br>issue:
<br>WARNING: line over 80 characters
<br>
<br>Signed-off-by: Gargi Sharma &lt;<a href=3D"javascript:" target=3D"_blan=
k" gdf-obfuscated-mailto=3D"r2RHczu0BgAJ" rel=3D"nofollow" onmousedown=3D"t=
his.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;=
javascript:&#39;;return true;">gs05...@gmail.com</a>&gt;
<br>---
<br>=C2=A0kernel/pid_namespace.c | 5 +++--
<br>=C2=A01 file changed, 3 insertions(+), 2 deletions(-)
<br>
<br>diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
<br>index 6ace1e3..18f5385 100644
<br>--- a/kernel/pid_namespace.c
<br>+++ b/kernel/pid_namespace.c
<br>@@ -92,8 +92,9 @@ static void dec_pid_namespaces(struct ucounts *ucount=
s)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dec_ucount(ucount=
s, UCOUNT_PID_NAMESPACES);
<br>=C2=A0}
<br>=C2=A0
<br>-static struct pid_namespace *create_pid_namespace(struct user_namespac=
e *user_ns,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pid_namespace *=
parent_pid_ns)
<br></blockquote><div>Hi Gargi<br>I think I have already made this change<b=
r>=C2=A0Thanks<br>Arushi<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">+static struct
<br>+pid_namespace *create_pid_namespace(struct user_namespace *user_ns,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0struct p=
id_namespace *parent_pid_ns)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pid_namesp=
ace *ns;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned int leve=
l =3D parent_pid_ns-&gt;level + 1;
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div>
------=_Part_4576_810603224.1490641973359--

------=_Part_4575_1130405277.1490641973358--

