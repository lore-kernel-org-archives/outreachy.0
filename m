X-GM-THRID: 6674934716958769152
Date: Mon, 1 Apr 2019 22:40:57 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <d03d6766-b3db-4a0b-9d2c-568122207b58@googlegroups.com>
In-Reply-To: <20190402044908.3159-1-sanjana99reddy99@gmail.com>
References: <20190402044908.3159-1-sanjana99reddy99@gmail.com>
Subject: Re: [PATCH] staging: vc04_services: Remove unnecessary casts.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_170_1997750602.1554183657528"
X-Google-Token: EOnri-UFB6WR2r0Y8fs0
X-Google-IP: 123.201.165.14

------=_Part_170_1997750602.1554183657528
Content-Type: multipart/alternative; 
	boundary="----=_Part_171_22620538.1554183657529"

------=_Part_171_22620538.1554183657529
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 Please ignore this patch. Build is broken
 Thank you
 Sanjana

On Tuesday, April 2, 2019 at 10:19:21 AM UTC+5:30, Sanjana Sanikommu wrote:
>
> Explicit type casting of variable, with same type as 
> that of variable, is not required. 
> Issue found using coccinelle. 
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com> 
> --- 
>  .../vc04_services/interface/vchiq_arm/vchiq_arm.c    | 12 ++++++------ 
>  1 file changed, 6 insertions(+), 6 deletions(-) 
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c 
> b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c 
> index 804daf83be35..bd24ef9bc1cb 100644 
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c 
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c 
> @@ -417,13 +417,13 @@ vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle, 
> const void *data, 
>          switch (mode) { 
>          case VCHIQ_BULK_MODE_NOCALLBACK: 
>          case VCHIQ_BULK_MODE_CALLBACK: 
> -                status = vchiq_bulk_transfer(handle, (void *)data, size, 
> +                status = vchiq_bulk_transfer(handle, data, size, 
>                                               userdata, mode, 
>                                               VCHIQ_BULK_TRANSMIT); 
>                  break; 
>          case VCHIQ_BULK_MODE_BLOCKING: 
>                  status = vchiq_blocking_bulk_transfer(handle, 
> -                        (void *)data, size, VCHIQ_BULK_TRANSMIT); 
> +                        data, size, VCHIQ_BULK_TRANSMIT); 
>                  break; 
>          default: 
>                  return VCHIQ_ERROR; 
> @@ -447,7 +447,7 @@ vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T handle, void 
> *data, 
>                  break; 
>          case VCHIQ_BULK_MODE_BLOCKING: 
>                  status = vchiq_blocking_bulk_transfer(handle, 
> -                        (void *)data, size, VCHIQ_BULK_RECEIVE); 
> +                        data, size, VCHIQ_BULK_RECEIVE); 
>                  break; 
>          default: 
>                  return VCHIQ_ERROR; 
> @@ -1381,7 +1381,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, 
> unsigned long arg) 
>                  else if (header->size <= args.bufsize) { 
>                          /* Copy to user space if msgbuf is not NULL */ 
>                          if ((args.buf == NULL) || 
> -                                (copy_to_user((void __user *)args.buf, 
> +                                (copy_to_user(args.buf, 
>                                  header->data, 
>                                  header->size) == 0)) { 
>                                  ret = header->size; 
> @@ -2113,7 +2113,7 @@ static int vchiq_release(struct inode *inode, struct 
> file *file) 
>  void 
>  vchiq_dump(void *dump_context, const char *str, int len) 
>  { 
> -        struct dump_context *context = (struct dump_context 
> *)dump_context; 
> +        struct dump_context *context = dump_context; 
>   
>          if (context->actual < context->space) { 
>                  int copy_bytes; 
> @@ -2322,7 +2322,7 @@ vchiq_keepalive_vchiq_callback(VCHIQ_REASON_T 
> reason, 
>  static int 
>  vchiq_keepalive_thread_func(void *v) 
>  { 
> -        struct vchiq_state *state = (struct vchiq_state *)v; 
> +        struct vchiq_state *state = v; 
>          struct vchiq_arm_state *arm_state = 
> vchiq_platform_get_arm_state(state); 
>   
>          VCHIQ_STATUS_T status; 
> -- 
> 2.17.1 
>
>
------=_Part_171_22620538.1554183657529
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0Please ignore this patch. Build is broken<div>=C2=A0=
Thank you</div><div>=C2=A0Sanjana<br><br>On Tuesday, April 2, 2019 at 10:19=
:21 AM UTC+5:30, Sanjana Sanikommu wrote:<blockquote class=3D"gmail_quote" =
style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-l=
eft: 1ex;">Explicit type casting of variable, with same type as
<br>that of variable, is not required.
<br>Issue found using coccinelle.
<br>
<br>Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"mailto:sanjana99reddy99=
@gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&=
#39;mailto:sanjana99reddy99@gmail.com&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;mailto:sanjana99reddy99@gmail.com&#39;;return true;">sanjana99red=
dy99@gmail.com</a>&gt;
<br>---
<br>=C2=A0.../vc04_services/interface/<wbr>vchiq_arm/vchiq_arm.c =C2=A0 =C2=
=A0| 12 ++++++------
<br>=C2=A01 file changed, 6 insertions(+), 6 deletions(-)
<br>
<br>diff --git a/drivers/staging/vc04_<wbr>services/interface/vchiq_arm/<wb=
r>vchiq_arm.c b/drivers/staging/vc04_<wbr>services/interface/vchiq_arm/<wbr=
>vchiq_arm.c
<br>index 804daf83be35..bd24ef9bc1cb 100644
<br>--- a/drivers/staging/vc04_<wbr>services/interface/vchiq_arm/<wbr>vchiq=
_arm.c
<br>+++ b/drivers/staging/vc04_<wbr>services/interface/vchiq_arm/<wbr>vchiq=
_arm.c
<br>@@ -417,13 +417,13 @@ vchiq_bulk_transmit(VCHIQ_<wbr>SERVICE_HANDLE_T h=
andle, const void *data,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (mode) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case VCHIQ_BULK_M=
ODE_NOCALLBACK:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case VCHIQ_BULK_M=
ODE_CALLBACK:
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D vchiq_bulk_transfer(handle, (void *)d=
ata, size,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D vchiq_bulk_transfer(handle, data, siz=
e,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 userdata, mode,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 VCHIQ_BULK_TRANSMIT);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case VCHIQ_BULK_M=
ODE_BLOCKING:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D vchiq_blocking_bulk_transfer(<w=
br>handle,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
(void *)data, size, VCHIQ_BULK_TRANSMIT);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
data, size, VCHIQ_BULK_TRANSMIT);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0default:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return VCHIQ_ERROR;
<br>@@ -447,7 +447,7 @@ vchiq_bulk_receive(VCHIQ_<wbr>SERVICE_HANDLE_T hand=
le, void *data,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case VCHIQ_BULK_M=
ODE_BLOCKING:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D vchiq_blocking_bulk_transfer(<w=
br>handle,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
(void *)data, size, VCHIQ_BULK_RECEIVE);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
data, size, VCHIQ_BULK_RECEIVE);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0default:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return VCHIQ_ERROR;
<br>@@ -1381,7 +1381,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, =
unsigned long arg)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else if (header-&gt;size &lt;=3D args.bufs=
ize) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0/* Copy to user space if msgbuf is not NULL */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if ((args.buf =3D=3D NULL) ||
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0(copy_to_user((void __=
user *)args.buf,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0(copy_to_user(args.buf=
,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0header-&gt;data,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0header-&gt;size)=
 =3D=3D 0)) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0ret =3D header-&=
gt;size;
<br>@@ -2113,7 +2113,7 @@ static int vchiq_release(struct inode *inode, str=
uct file *file)
<br>=C2=A0void
<br>=C2=A0vchiq_dump(void *dump_context, const char *str, int len)
<br>=C2=A0{
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct dump_context *c=
ontext =3D (struct dump_context *)dump_context;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct dump_context *c=
ontext =3D dump_context;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (context-&gt;a=
ctual &lt; context-&gt;space) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int copy_bytes;
<br>@@ -2322,7 +2322,7 @@ vchiq_keepalive_vchiq_<wbr>callback(VCHIQ_REASON_=
T reason,
<br>=C2=A0static int
<br>=C2=A0vchiq_keepalive_thread_func(<wbr>void *v)
<br>=C2=A0{
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vchiq_state *st=
ate =3D (struct vchiq_state *)v;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vchiq_state *st=
ate =3D v;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vchiq_arm_=
state *arm_state =3D vchiq_platform_get_arm_state(<wbr>state);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VCHIQ_STATUS_T st=
atus;
<br>--=20
<br>2.17.1
<br>
<br></blockquote></div></div>
------=_Part_171_22620538.1554183657529--

------=_Part_170_1997750602.1554183657528--

