X-GM-THRID: 6463425318244843520
Date: Fri, 8 Sep 2017 08:42:09 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <a7241b8b-d8a0-46de-8b43-3448b7ba1690@googlegroups.com>
In-Reply-To: <1504883469-8127-1-git-send-email-srishtishar@gmail.com>
References: <1504883469-8127-1-git-send-email-srishtishar@gmail.com>
Subject: Re: [PATCH] Staging: media: imx: Prefer using BIT macro
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5495_2114609655.1504885329287"
X-Google-Token: ENH0ys0F7CYst61AjEI0
X-Google-IP: 171.61.9.172

------=_Part_5495_2114609655.1504885329287
Content-Type: multipart/alternative; 
	boundary="----=_Part_5496_838711837.1504885329287"

------=_Part_5496_838711837.1504885329287
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, September 8, 2017 at 8:41:17 PM UTC+5:30, Srishti Sharma wrote:
>
> Use BIT(x) instead of (1<<x). 
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com> 
> --- 
>  drivers/staging/media/imx/imx-media.h | 16 ++++++++-------- 
>  1 file changed, 8 insertions(+), 8 deletions(-) 
>
> diff --git a/drivers/staging/media/imx/imx-media.h 
> b/drivers/staging/media/imx/imx-media.h 
> index d409170..e5b8d29 100644 
> --- a/drivers/staging/media/imx/imx-media.h 
> +++ b/drivers/staging/media/imx/imx-media.h 
> @@ -310,16 +310,16 @@ void imx_media_capture_device_set_format(struct 
> imx_media_video_dev *vdev, 
>  void imx_media_capture_device_error(struct imx_media_video_dev *vdev); 
>
>  /* subdev group ids */ 
> -#define IMX_MEDIA_GRP_ID_SENSOR    (1 << 8) 
> -#define IMX_MEDIA_GRP_ID_VIDMUX    (1 << 9) 
> -#define IMX_MEDIA_GRP_ID_CSI2      (1 << 10) 
> +#define IMX_MEDIA_GRP_ID_SENSOR    BIT(8) 
> +#define IMX_MEDIA_GRP_ID_VIDMUX    BIT(9) 
> +#define IMX_MEDIA_GRP_ID_CSI2      BIT(10) 
>  #define IMX_MEDIA_GRP_ID_CSI_BIT   11 
>  #define IMX_MEDIA_GRP_ID_CSI       (0x3 << IMX_MEDIA_GRP_ID_CSI_BIT) 
> -#define IMX_MEDIA_GRP_ID_CSI0      (1 << IMX_MEDIA_GRP_ID_CSI_BIT) 
> +#define IMX_MEDIA_GRP_ID_CSI0      BIT(IMX_MEDIA_GRP_ID_CSI_BIT) 
>  #define IMX_MEDIA_GRP_ID_CSI1      (2 << IMX_MEDIA_GRP_ID_CSI_BIT) 
> -#define IMX_MEDIA_GRP_ID_VDIC      (1 << 13) 
> -#define IMX_MEDIA_GRP_ID_IC_PRP    (1 << 14) 
> -#define IMX_MEDIA_GRP_ID_IC_PRPENC (1 << 15) 
> -#define IMX_MEDIA_GRP_ID_IC_PRPVF  (1 << 16) 
> +#define IMX_MEDIA_GRP_ID_VDIC      BIT(13) 
> +#define IMX_MEDIA_GRP_ID_IC_PRP    BIT(14) 
> +#define IMX_MEDIA_GRP_ID_IC_PRPENC BIT(15) 
> +#define IMX_MEDIA_GRP_ID_IC_PRPVF  BIT(16) 
>
>  #endif 
> -- 
> 2.7.4 
>

  Hey,
  Thanks for pointing that out . This patch can be dropped .
  Regards,
  Srishti 

------=_Part_5496_838711837.1504885329287
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, September 8, 2017 at 8:41:17 PM UTC+5:3=
0, Srishti Sharma wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Use BI=
T(x) instead of (1&lt;&lt;x).
<br>
<br>Signed-off-by: Srishti Sharma &lt;<a href=3D"mailto:srishtishar@gmail.c=
om" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mail=
to:srishtishar@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;mai=
lto:srishtishar@gmail.com&#39;;return true;">srishtishar@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/media/imx/<wbr>imx-media.h | 16 ++++++++--------
<br>=C2=A01 file changed, 8 insertions(+), 8 deletions(-)
<br>
<br>diff --git a/drivers/staging/media/imx/<wbr>imx-media.h b/drivers/stagi=
ng/media/imx/<wbr>imx-media.h
<br>index d409170..e5b8d29 100644
<br>--- a/drivers/staging/media/imx/<wbr>imx-media.h
<br>+++ b/drivers/staging/media/imx/<wbr>imx-media.h
<br>@@ -310,16 +310,16 @@ void imx_media_capture_device_set_<wbr>format(str=
uct imx_media_video_dev *vdev,
<br>=C2=A0void imx_media_capture_device_<wbr>error(struct imx_media_video_d=
ev *vdev);
<br>
<br>=C2=A0/* subdev group ids */
<br>-#define IMX_MEDIA_GRP_ID_SENSOR =C2=A0 =C2=A0(1 &lt;&lt; 8)
<br>-#define IMX_MEDIA_GRP_ID_VIDMUX =C2=A0 =C2=A0(1 &lt;&lt; 9)
<br>-#define IMX_MEDIA_GRP_ID_CSI2 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 10)
<br>+#define IMX_MEDIA_GRP_ID_SENSOR =C2=A0 =C2=A0BIT(8)
<br>+#define IMX_MEDIA_GRP_ID_VIDMUX =C2=A0 =C2=A0BIT(9)
<br>+#define IMX_MEDIA_GRP_ID_CSI2 =C2=A0 =C2=A0 =C2=A0BIT(10)
<br>=C2=A0#define IMX_MEDIA_GRP_ID_CSI_BIT =C2=A0 11
<br>=C2=A0#define IMX_MEDIA_GRP_ID_CSI =C2=A0 =C2=A0 =C2=A0 (0x3 &lt;&lt; I=
MX_MEDIA_GRP_ID_CSI_BIT)
<br>-#define IMX_MEDIA_GRP_ID_CSI0 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; IMX_MEDI=
A_GRP_ID_CSI_BIT)
<br>+#define IMX_MEDIA_GRP_ID_CSI0 =C2=A0 =C2=A0 =C2=A0BIT(IMX_MEDIA_GRP_ID=
_CSI_BIT)
<br>=C2=A0#define IMX_MEDIA_GRP_ID_CSI1 =C2=A0 =C2=A0 =C2=A0(2 &lt;&lt; IMX=
_MEDIA_GRP_ID_CSI_BIT)
<br>-#define IMX_MEDIA_GRP_ID_VDIC =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 13)
<br>-#define IMX_MEDIA_GRP_ID_IC_PRP =C2=A0 =C2=A0(1 &lt;&lt; 14)
<br>-#define IMX_MEDIA_GRP_ID_IC_PRPENC (1 &lt;&lt; 15)
<br>-#define IMX_MEDIA_GRP_ID_IC_PRPVF =C2=A0(1 &lt;&lt; 16)
<br>+#define IMX_MEDIA_GRP_ID_VDIC =C2=A0 =C2=A0 =C2=A0BIT(13)
<br>+#define IMX_MEDIA_GRP_ID_IC_PRP =C2=A0 =C2=A0BIT(14)
<br>+#define IMX_MEDIA_GRP_ID_IC_PRPENC BIT(15)
<br>+#define IMX_MEDIA_GRP_ID_IC_PRPVF =C2=A0BIT(16)
<br>
<br>=C2=A0#endif
<br>--
<br>2.7.4
<br></blockquote><div><br></div><div>=C2=A0 Hey,</div><div>=C2=A0 Thanks fo=
r pointing that out . This patch can be dropped .</div><div>=C2=A0 Regards,=
</div><div>=C2=A0 Srishti=C2=A0</div></div>
------=_Part_5496_838711837.1504885329287--

------=_Part_5495_2114609655.1504885329287--

