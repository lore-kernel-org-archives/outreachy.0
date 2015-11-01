X-GM-THRID: 6212117467213332480
Date: Sun, 1 Nov 2015 01:56:22 -0800 (PST)
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <5d7df772-6955-4a2e-ae3e-3a116020c55a@googlegroups.com>
In-Reply-To: <20151101094822.GA38698@ubuntu>
References: <20151101094822.GA38698@ubuntu>
Subject: Re: [PATCH] Staging: lustre: ldlm_lockd: Remove unused function
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3292_1716477920.1446371782769"
X-Google-Token: EMbD17EFckLlCfX_tfY0
X-Google-IP: 124.124.47.116

------=_Part_3292_1716477920.1446371782769
Content-Type: multipart/alternative; 
	boundary="----=_Part_3293_215829174.1446371782769"

------=_Part_3293_215829174.1446371782769
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, November 1, 2015 at 3:18:28 PM UTC+5:30, Shivani Bhardwaj wrote:
>
> Remove the function cancel_unused_locks_before_replay_show() as it is 
> not called anywhere. 
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com> 
> --- 
>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c | 7 ------- 
>  1 file changed, 7 deletions(-) 
>
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c 
> b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c 
> index ca11511..3af0a73 100644 
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c 
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c 
> @@ -873,13 +873,6 @@ EXPORT_SYMBOL(ldlm_put_ref); 
>   
>  extern unsigned int ldlm_cancel_unused_locks_before_replay; 
>   
> -static ssize_t cancel_unused_locks_before_replay_show(struct kobject 
> *kobj, 
> -                                                      struct attribute 
> *attr, 
> -                                                      char *buf) 
> -{ 
> -        return sprintf(buf, "%d\n", 
> ldlm_cancel_unused_locks_before_replay); 
> -} 
> - 
>  static ssize_t cancel_unused_locks_before_replay_store(struct kobject 
> *kobj, 
>                                                         struct attribute 
> *attr, 
>                                                         const char 
> *buffer, 
> -- 
> 2.1.0 
>
>
This patch does not apply. I'm sorry. This is wrong, I just figured out. 

------=_Part_3293_215829174.1446371782769
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Sunday, November 1, 2015 at 3:18:28 PM UTC+5:30, Shivani Bhardwa=
j wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0=
.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Remove the function ca=
ncel_unused_locks_before_<wbr>replay_show() as it is
<br>not called anywhere.
<br>
<br>Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail=
.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ma=
ilto:shivanib134@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;m=
ailto:shivanib134@gmail.com&#39;;return true;">shivanib134@gmail.com</a>&gt=
;
<br>---
<br>=C2=A0drivers/staging/lustre/<wbr>lustre/ldlm/ldlm_lockd.c | 7 -------
<br>=C2=A01 file changed, 7 deletions(-)
<br>
<br>diff --git a/drivers/staging/lustre/<wbr>lustre/ldlm/ldlm_lockd.c b/dri=
vers/staging/lustre/<wbr>lustre/ldlm/ldlm_lockd.c
<br>index ca11511..3af0a73 100644
<br>--- a/drivers/staging/lustre/<wbr>lustre/ldlm/ldlm_lockd.c
<br>+++ b/drivers/staging/lustre/<wbr>lustre/ldlm/ldlm_lockd.c
<br>@@ -873,13 +873,6 @@ EXPORT_SYMBOL(ldlm_put_ref);
<br>=C2=A0
<br>=C2=A0extern unsigned int ldlm_cancel_unused_locks_<wbr>before_replay;
<br>=C2=A0
<br>-static ssize_t cancel_unused_locks_before_<wbr>replay_show(struct kobj=
ect *kobj,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =C2=A0 =C2=A0 =C2=A0struct attribute *attr,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =C2=A0 =C2=A0 =C2=A0char *buf)
<br>-{
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return sprintf(buf, &q=
uot;%d\n&quot;, ldlm_cancel_unused_locks_<wbr>before_replay);
<br>-}
<br>-
<br>=C2=A0static ssize_t cancel_unused_locks_before_<wbr>replay_store(struc=
t kobject *kobj,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct attribute *attr,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 const char *buffer,
<br>--=20
<br>2.1.0
<br>
<br></blockquote><div><br>This patch does not apply. I&#39;m sorry. This is=
 wrong, I just figured out. <br></div>
------=_Part_3293_215829174.1446371782769--

------=_Part_3292_1716477920.1446371782769--

