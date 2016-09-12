X-GM-THRID: 6329533652034125824
Date: Mon, 12 Sep 2016 13:53:37 -0700 (PDT)
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <9f9c026b-cd7c-41a5-8836-5eca734d331c@googlegroups.com>
In-Reply-To: <20160912194345.GA2666@sandhya>
References: <20160912194345.GA2666@sandhya>
Subject: Re: [PATCH] Staging: bus: Space prohibited before close parenthesis
 ')'.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2050_1946056513.1473713617387"
X-Google-Token: ENGr3L4FsSlmiGMn1gs0
X-Google-IP: 122.170.35.146

------=_Part_2050_1946056513.1473713617387
Content-Type: multipart/alternative; 
	boundary="----=_Part_2051_722989165.1473713617387"

------=_Part_2051_722989165.1473713617387
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Please ignore this patch.

On Tuesday, September 13, 2016 at 1:13:14 AM UTC+5:30, Sandhya Bankar wrote:
>
> Space prohibited before close parenthesis ')'.This patch is found by 
> checkpatch.pl script. 
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com> 
> --- 
>  drivers/bus/arm-cci.c | 2 +- 
>  1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/drivers/bus/arm-cci.c b/drivers/bus/arm-cci.c 
> index 5755907f..9e1020f 100644 
> --- a/drivers/bus/arm-cci.c 
> +++ b/drivers/bus/arm-cci.c 
> @@ -2108,7 +2108,7 @@ asmlinkage void __naked 
> cci_enable_port_for_self(void) 
>          [offsetof_cpu_port_port] "i" (offsetof(struct cpu_port, port)), 
>          [sizeof_struct_cpu_port] "i" (sizeof(struct cpu_port)), 
>          [sizeof_struct_ace_port] "i" (sizeof(struct cci_ace_port)), 
> -        [offsetof_port_phys] "i" (offsetof(struct cci_ace_port, phys)) ); 
> +        [offsetof_port_phys] "i" (offsetof(struct cci_ace_port, phys))); 
>   
>          unreachable(); 
>  } 
> -- 
> 1.8.2.3 
>
>
------=_Part_2051_722989165.1473713617387
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please ignore this patch.<br><br>On Tuesday, September 13,=
 2016 at 1:13:14 AM UTC+5:30, Sandhya Bankar wrote:<blockquote class=3D"gma=
il_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid=
;padding-left: 1ex;">Space prohibited before close parenthesis &#39;)&#39;.=
This patch is found by <a href=3D"http://checkpatch.pl" target=3D"_blank" r=
el=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q=
\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRg=
UgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;htt=
p://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x=
3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkpa=
tch.pl</a> script.
<br>
<br>Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@gm=
ail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39=
;mailto:bankarsandhya512@gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;mailto:bankarsandhya512@gmail.com&#39;;return true;">bankarsandhya5=
12@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/bus/arm-cci.c | 2 +-
<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/bus/arm-cci.c b/drivers/bus/arm-cci.c
<br>index 5755907f..9e1020f 100644
<br>--- a/drivers/bus/arm-cci.c
<br>+++ b/drivers/bus/arm-cci.c
<br>@@ -2108,7 +2108,7 @@ asmlinkage void __naked cci_enable_port_for_self(=
void)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0[offsetof_cpu_por=
t_<wbr>port] &quot;i&quot; (offsetof(struct cpu_port, port)),
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0[sizeof_struct_cp=
u_<wbr>port] &quot;i&quot; (sizeof(struct cpu_port)),
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0[sizeof_struct_ac=
e_<wbr>port] &quot;i&quot; (sizeof(struct cci_ace_port)),
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0[offsetof_port_phys] &=
quot;i&quot; (offsetof(struct cci_ace_port, phys)) );
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0[offsetof_port_phys] &=
quot;i&quot; (offsetof(struct cci_ace_port, phys)));
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unreachable();
<br>=C2=A0}
<br>--=20
<br>1.8.2.3
<br>
<br></blockquote></div>
------=_Part_2051_722989165.1473713617387--

------=_Part_2050_1946056513.1473713617387--

