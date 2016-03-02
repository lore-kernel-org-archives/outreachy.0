X-GM-THRID: 6256392971161174016
Date: Wed, 2 Mar 2016 10:46:40 -0800 (PST)
From: sandhya bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <1e97ae68-d895-4d11-a71c-ed3b24e2be62@googlegroups.com>
In-Reply-To: <20160228092006.GA3627@sandhya>
References: <20160228092006.GA3627@sandhya>
Subject: Re: [PATCH 2/2] Staging: lustre: lnet: Remove int typecast of
 offsetof().
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_206_1351310777.1456944400545"
X-Google-Token: EJDq3LYF378mC3xN3dY0
X-Google-IP: 59.161.35.125

------=_Part_206_1351310777.1456944400545
Content-Type: multipart/alternative; 
	boundary="----=_Part_207_409879394.1456944400545"

------=_Part_207_409879394.1456944400545
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



Thanks.!! I will send fresh patch for the same.


On Sunday, February 28, 2016 at 10:50:02 PM UTC+5:30, sandhya bankar wrote:
>
> Remove int typecast of offsetof(). 
> As per below coccinelle rule: 
>
> @@ 
> type T; 
> expression E; 
> @@ 
>
> - (int)(offsetof(T,E)) 
> + offsetof(T,E) 
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com> 
> --- 
>  drivers/staging/lustre/lnet/lnet/api-ni.c | 54 
> +++++++++++++++---------------- 
>  1 file changed, 27 insertions(+), 27 deletions(-) 
>
> diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c 
> b/drivers/staging/lustre/lnet/lnet/api-ni.c 
> index 3ecc96a..c3fe782 100644 
> --- a/drivers/staging/lustre/lnet/lnet/api-ni.c 
> +++ b/drivers/staging/lustre/lnet/lnet/api-ni.c 
> @@ -197,75 +197,75 @@ static void lnet_assert_wire_constants(void) 
>          CLASSERT((int)sizeof(lnet_handle_wire_t) == 16); 
>          CLASSERT((int)offsetof(lnet_handle_wire_t, wh_interface_cookie) 
> == 0); 
>          CLASSERT((int)sizeof(((lnet_handle_wire_t 
> *)0)->wh_interface_cookie) == 8); 
> -        CLASSERT((int)offsetof(lnet_handle_wire_t, wh_object_cookie) == 
> 8); 
> +        CLASSERT(offsetof(lnet_handle_wire_t, wh_object_cookie) == 8); 
>          CLASSERT((int)sizeof(((lnet_handle_wire_t *)0)->wh_object_cookie) 
> == 8); 
>   
>          /* Checks for struct lnet_magicversion_t */ 
>          CLASSERT((int)sizeof(lnet_magicversion_t) == 8); 
>          CLASSERT((int)offsetof(lnet_magicversion_t, magic) == 0); 
>          CLASSERT((int)sizeof(((lnet_magicversion_t *)0)->magic) == 4); 
> -        CLASSERT((int)offsetof(lnet_magicversion_t, version_major) == 4); 
> +        CLASSERT(offsetof(lnet_magicversion_t, version_major) == 4); 
>          CLASSERT((int)sizeof(((lnet_magicversion_t *)0)->version_major) 
> == 2); 
> -        CLASSERT((int)offsetof(lnet_magicversion_t, version_minor) == 6); 
> +        CLASSERT(offsetof(lnet_magicversion_t, version_minor) == 6); 
>          CLASSERT((int)sizeof(((lnet_magicversion_t *)0)->version_minor) 
> == 2); 
>   
>          /* Checks for struct lnet_hdr_t */ 
>          CLASSERT((int)sizeof(lnet_hdr_t) == 72); 
>          CLASSERT((int)offsetof(lnet_hdr_t, dest_nid) == 0); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->dest_nid) == 8); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, src_nid) == 8); 
> +        CLASSERT(offsetof(lnet_hdr_t, src_nid) == 8); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->src_nid) == 8); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, dest_pid) == 16); 
> +        CLASSERT(offsetof(lnet_hdr_t, dest_pid) == 16); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->dest_pid) == 4); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, src_pid) == 20); 
> +        CLASSERT(offsetof(lnet_hdr_t, src_pid) == 20); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->src_pid) == 4); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, type) == 24); 
> +        CLASSERT(offsetof(lnet_hdr_t, type) == 24); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->type) == 4); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, payload_length) == 28); 
> +        CLASSERT(offsetof(lnet_hdr_t, payload_length) == 28); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->payload_length) == 4); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg) == 32); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg) == 32); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg) == 40); 
>   
>          /* Ack */ 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.ack.dst_wmd) == 32); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.ack.dst_wmd) == 32); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.ack.dst_wmd) == 16); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.ack.match_bits) == 48); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.ack.match_bits) == 48); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.ack.match_bits) == 
> 8); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.ack.mlength) == 56); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.ack.mlength) == 56); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.ack.mlength) == 4); 
>   
>          /* Put */ 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.put.ack_wmd) == 32); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.put.ack_wmd) == 32); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.put.ack_wmd) == 16); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.put.match_bits) == 48); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.put.match_bits) == 48); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.put.match_bits) == 
> 8); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.put.hdr_data) == 56); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.put.hdr_data) == 56); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.put.hdr_data) == 8); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.put.ptl_index) == 64); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.put.ptl_index) == 64); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.put.ptl_index) == 4); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.put.offset) == 68); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.put.offset) == 68); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.put.offset) == 4); 
>   
>          /* Get */ 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.get.return_wmd) == 32); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.get.return_wmd) == 32); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.get.return_wmd) == 
> 16); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.get.match_bits) == 48); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.get.match_bits) == 48); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.get.match_bits) == 
> 8); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.get.ptl_index) == 56); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.get.ptl_index) == 56); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.get.ptl_index) == 4); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.get.src_offset) == 60); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.get.src_offset) == 60); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.get.src_offset) == 
> 4); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.get.sink_length) == 64); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.get.sink_length) == 64); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.get.sink_length) == 
> 4); 
>   
>          /* Reply */ 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.reply.dst_wmd) == 32); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.reply.dst_wmd) == 32); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.reply.dst_wmd) == 
> 16); 
>   
>          /* Hello */ 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.hello.incarnation) == 32); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.hello.incarnation) == 32); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.hello.incarnation) == 
> 8); 
> -        CLASSERT((int)offsetof(lnet_hdr_t, msg.hello.type) == 40); 
> +        CLASSERT(offsetof(lnet_hdr_t, msg.hello.type) == 40); 
>          CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.hello.type) == 4); 
>  } 
>   
> @@ -2266,7 +2266,7 @@ static int lnet_ping(lnet_process_id_t id, int 
> timeout_ms, 
>   
>          if (nob < offsetof(lnet_ping_info_t, pi_ni[0])) { 
>                  CERROR("%s: Short reply %d(%d min)\n", libcfs_id2str(id), 
> -                       nob, (int)offsetof(lnet_ping_info_t, pi_ni[0])); 
> +                       nob, offsetof(lnet_ping_info_t, pi_ni[0])); 
>                  goto out_1; 
>          } 
>   
> @@ -2275,7 +2275,7 @@ static int lnet_ping(lnet_process_id_t id, int 
> timeout_ms, 
>   
>          if (nob < offsetof(lnet_ping_info_t, pi_ni[n_ids])) { 
>                  CERROR("%s: Short reply %d(%d expected)\n", 
> libcfs_id2str(id), 
> -                       nob, (int)offsetof(lnet_ping_info_t, 
> pi_ni[n_ids])); 
> +                       nob, offsetof(lnet_ping_info_t, pi_ni[n_ids])); 
>                  goto out_1; 
>          } 
>   
> -- 
> 1.8.3.4 
>
>
------=_Part_207_409879394.1456944400545
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>Thanks.!! I will send fresh patch for the same.<br=
><br><br>On Sunday, February 28, 2016 at 10:50:02 PM UTC+5:30, sandhya bank=
ar wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: =
0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Remove int typecast o=
f offsetof().=20
<br>As per below coccinelle rule:
<br>
<br>@@
<br>type T;
<br>expression E;
<br>@@
<br>
<br>- (int)(offsetof(T,E))
<br>+ offsetof(T,E)=20
<br>
<br>Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@gm=
ail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39=
;mailto:bankarsandhya512@gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;mailto:bankarsandhya512@gmail.com&#39;;return true;">bankarsandhya5=
12@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/lustre/lnet/<wbr>lnet/api-ni.c | 54 +++++++++++++=
++---------------<wbr>-
<br>=C2=A01 file changed, 27 insertions(+), 27 deletions(-)
<br>
<br>diff --git a/drivers/staging/lustre/lnet/<wbr>lnet/api-ni.c b/drivers/s=
taging/lustre/lnet/<wbr>lnet/api-ni.c
<br>index 3ecc96a..c3fe782 100644
<br>--- a/drivers/staging/lustre/lnet/<wbr>lnet/api-ni.c
<br>+++ b/drivers/staging/lustre/lnet/<wbr>lnet/api-ni.c
<br>@@ -197,75 +197,75 @@ static void lnet_assert_wire_constants(<wbr>void)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>lnet_handle_wire_t) =3D=3D 16);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wb=
r>offsetof(lnet_handle_wire_t, wh_interface_cookie) =3D=3D 0);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_handle_wire_t *)0)-&gt;wh_interface_cookie) =3D=3D 8);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_handle_wire_t, wh_object_cookie) =3D=3D 8);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_handle_wire_t, wh_object_cookie) =3D=3D 8);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_handle_wire_t *)0)-&gt;wh_object_cookie) =3D=3D 8);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Checks for str=
uct lnet_magicversion_t */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>lnet_magicversion_t) =3D=3D 8);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wb=
r>offsetof(lnet_magicversion_t, magic) =3D=3D 0);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_magicversion_t *)0)-&gt;magic) =3D=3D 4);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_magicversion_t, version_major) =3D=3D 4);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_magicversion_t, version_major) =3D=3D 4);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_magicversion_t *)0)-&gt;version_major) =3D=3D 2);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_magicversion_t, version_minor) =3D=3D 6);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_magicversion_t, version_minor) =3D=3D 6);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_magicversion_t *)0)-&gt;version_minor) =3D=3D 2);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Checks for str=
uct lnet_hdr_t */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>lnet_hdr_t) =3D=3D 72);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wb=
r>offsetof(lnet_hdr_t, dest_nid) =3D=3D 0);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;dest_nid) =3D=3D 8);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, src_nid) =3D=3D 8);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, src_nid) =3D=3D 8);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;src_nid) =3D=3D 8);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, dest_pid) =3D=3D 16);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, dest_pid) =3D=3D 16);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;dest_pid) =3D=3D 4);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, src_pid) =3D=3D 20);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, src_pid) =3D=3D 20);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;src_pid) =3D=3D 4);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, type) =3D=3D 24);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, type) =3D=3D 24);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;type) =3D=3D 4);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, payload_length) =3D=3D 28);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, payload_length) =3D=3D 28);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;payload_length) =3D=3D 4);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg) =3D=3D 32);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg) =3D=3D 32);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg) =3D=3D 40);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Ack */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.ack.dst_wmd) =3D=3D 32);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.ack.dst_wmd) =3D=3D 32);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.ack.dst_wmd) =3D=3D 16);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.ack.match_bits) =3D=3D 48);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.ack.match_bits) =3D=3D 48);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.ack.match_bits) =3D=3D 8);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.ack.mlength) =3D=3D 56);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.ack.mlength) =3D=3D 56);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.ack.mlength) =3D=3D 4);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Put */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.put.ack_wmd) =3D=3D 32);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.put.ack_wmd) =3D=3D 32);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.put.ack_wmd) =3D=3D 16);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.put.match_bits) =3D=3D 48);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.put.match_bits) =3D=3D 48);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.put.match_bits) =3D=3D 8);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.put.hdr_data) =3D=3D 56);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.put.hdr_data) =3D=3D 56);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.put.hdr_data) =3D=3D 8);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.put.ptl_index) =3D=3D 64);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.put.ptl_index) =3D=3D 64);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.put.ptl_index) =3D=3D 4);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.put.offset) =3D=3D 68);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.put.offset) =3D=3D 68);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.put.offset) =3D=3D 4);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Get */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.get.return_wmd) =3D=3D 32);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.get.return_wmd) =3D=3D 32);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.get.return_wmd) =3D=3D 16);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.get.match_bits) =3D=3D 48);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.get.match_bits) =3D=3D 48);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.get.match_bits) =3D=3D 8);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.get.ptl_index) =3D=3D 56);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.get.ptl_index) =3D=3D 56);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.get.ptl_index) =3D=3D 4);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.get.src_offset) =3D=3D 60);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.get.src_offset) =3D=3D 60);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.get.src_offset) =3D=3D 4);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.get.sink_length) =3D=3D 64);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.get.sink_length) =3D=3D 64);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.get.sink_length) =3D=3D 4);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Reply */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.reply.dst_wmd) =3D=3D 32);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.reply.dst_wmd) =3D=3D 32);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.reply.dst_wmd) =3D=3D 16);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Hello */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.hello.incarnation) =3D=3D 32);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.hello.incarnation) =3D=3D 32);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.hello.incarnation) =3D=3D 8);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)<wbr>off=
setof(lnet_hdr_t, msg.hello.type) =3D=3D 40);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT(offsetof(<wbr=
>lnet_hdr_t, msg.hello.type) =3D=3D 40);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CLASSERT((int)siz=
eof(<wbr>((lnet_hdr_t *)0)-&gt;msg.hello.type) =3D=3D 4);
<br>=C2=A0}
<br>=C2=A0
<br>@@ -2266,7 +2266,7 @@ static int lnet_ping(lnet_process_id_t id, int ti=
meout_ms,
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (nob &lt; offs=
etof(lnet_ping_info_t, pi_ni[0])) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CERROR(&quot;%s: Short reply %d(%d min)\n&=
quot;, libcfs_id2str(id),
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 nob, (int)offsetof(lnet_pi=
ng_info_<wbr>t, pi_ni[0]));
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 nob, offsetof(lnet_ping_in=
fo_t, pi_ni[0]));
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto out_1;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>@@ -2275,7 +2275,7 @@ static int lnet_ping(lnet_process_id_t id, int ti=
meout_ms,
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (nob &lt; offs=
etof(lnet_ping_info_t, pi_ni[n_ids])) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CERROR(&quot;%s: Short reply %d(%d expecte=
d)\n&quot;, libcfs_id2str(id),
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 nob, (int)offsetof(lnet_pi=
ng_info_<wbr>t, pi_ni[n_ids]));
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 nob, offsetof(lnet_ping_in=
fo_t, pi_ni[n_ids]));
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto out_1;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>--=20
<br>1.8.3.4
<br>
<br></blockquote></div>
------=_Part_207_409879394.1456944400545--

------=_Part_206_1351310777.1456944400545--

