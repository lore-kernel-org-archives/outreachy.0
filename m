X-GM-THRID: 6616189865324183552
Date: Thu, 25 Oct 2018 09:08:28 -0700 (PDT)
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <bb4722ef-436f-419c-af36-ea76145ec52a@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1810251515030.2363@hadrien>
References: <20181025071536.GA3274@xubuntu-vm>
 <alpine.DEB.2.21.1810251515030.2363@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Capitalise
 preprocessor variable names
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_467_1566134271.1540483708292"
X-Google-Token: EPzUx94FyUi9x-5-3Lc0
X-Google-IP: 86.167.247.131

------=_Part_467_1566134271.1540483708292
Content-Type: multipart/alternative; 
	boundary="----=_Part_468_1825382454.1540483708293"

------=_Part_468_1825382454.1540483708293
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Thursday, October 25, 2018 at 2:17:15 PM UTC, Julia Lawall wrote:
>
>
>
> On Thu, 25 Oct 2018, Kim Bradley wrote: 
>
> > Capitalise header preprocesser variable names (and all 
> > occurences) to remove checkpatch camelcase warnings. 
>
> If the xD means something for the device, it could be better to leave it 
> as is. 
>
> Changing Sect_Per_Page seems like a good idea. 
>
> julia 
>

You're right. RTS5208 is a card reader and looking into it, there exists
an xD picture card (with camel-case). My bad!

Kim
 

>
> > 
> > Signed-off-by: Kim Bradley <kim.jami...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rts5208/xd.c | 8 ++++---- 
> >  drivers/staging/rts5208/xd.h | 8 ++++---- 
> >  2 files changed, 8 insertions(+), 8 deletions(-) 
> > 
> > diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c 
> > index c5ee04ecd1c9..1187c75d764a 100644 
> > --- a/drivers/staging/rts5208/xd.c 
> > +++ b/drivers/staging/rts5208/xd.c 
> > @@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip) 
> >                          xd_card->zone_cnt = 32; 
> >                          xd_card->capacity = 1024000; 
> >                          break; 
> > -                case xD_1G_X8_512: 
> > +                case XD_1G_X8_512: 
> >                          XD_PAGE_512(xd_card); 
> >                          xd_card->addr_cycle = 4; 
> >                          xd_card->zone_cnt = 64; 
> >                          xd_card->capacity = 2048000; 
> >                          break; 
> > -                case xD_2G_X8_512: 
> > +                case XD_2G_X8_512: 
> >                          XD_PAGE_512(xd_card); 
> >                          xd_card->addr_cycle = 4; 
> >                          xd_card->zone_cnt = 128; 
> > @@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip) 
> >                  return STATUS_FAIL; 
> >          } 
> > 
> > -        retval = xd_read_id(chip, READ_xD_ID, id_buf, 4); 
> > +        retval = xd_read_id(chip, READ_XD_ID, id_buf, 4); 
> >          if (retval != STATUS_SUCCESS) 
> >                  return STATUS_FAIL; 
> > -        dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n", 
> > +        dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n", 
> >                  id_buf[0], id_buf[1], id_buf[2], id_buf[3]); 
> >          if (id_buf[2] != XD_ID_CODE) 
> >                  return STATUS_FAIL; 
> > diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h 
> > index bf21bf0d1616..98c00f268e56 100644 
> > --- a/drivers/staging/rts5208/xd.h 
> > +++ b/drivers/staging/rts5208/xd.h 
> > @@ -36,7 +36,7 @@ 
> >  #define        BLK_ERASE_1                        0x60 
> >  #define        BLK_ERASE_2                        0xD0 
> >  #define READ_STS                        0x70 
> > -#define READ_xD_ID                        0x9A 
> > +#define READ_XD_ID                        0x9A 
> >  #define        COPY_BACK_512                        0x8A 
> >  #define        COPY_BACK_2K                        0x85 
> >  #define        READ1_1_2                        0x30 
> > @@ -72,8 +72,8 @@ 
> >  #define        XD_128M_X16_2048                0xC1 
> >  #define        XD_4M_X8_512_1                        0xE3 
> >  #define        XD_4M_X8_512_2                        0xE5 
> > -#define        xD_1G_X8_512                        0xD3 
> > -#define        xD_2G_X8_512                        0xD5 
> > +#define        XD_1G_X8_512                        0xD3 
> > +#define        XD_2G_X8_512                        0xD5 
> > 
> >  #define        XD_ID_CODE                        0xB5 
> > 
> > @@ -90,7 +90,7 @@ 
> >  #define        NO_OFFSET                        0x0 
> >  #define        WITH_OFFSET                        0x1 
> > 
> > -#define        Sect_Per_Page                        4 
> > +#define        SECT_PER_PAGE                        4 
> >  #define        XD_ADDR_MODE_2C                        XD_ADDR_MODE_2A 
> > 
> >  #define ZONE0_BAD_BLOCK                        23 
> > -- 
> > 2.19.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20181025071536.GA3274%40xubuntu-vm. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

On Thursday, October 25, 2018 at 2:17:15 PM UTC, Julia Lawall wrote:
>
>
>
> On Thu, 25 Oct 2018, Kim Bradley wrote: 
>
> > Capitalise header preprocesser variable names (and all 
> > occurences) to remove checkpatch camelcase warnings. 
>
> If the xD means something for the device, it could be better to leave it 
> as is. 
>
> Changing Sect_Per_Page seems like a good idea. 
>
> julia 
>
> > 
> > Signed-off-by: Kim Bradley <kim.jami...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rts5208/xd.c | 8 ++++---- 
> >  drivers/staging/rts5208/xd.h | 8 ++++---- 
> >  2 files changed, 8 insertions(+), 8 deletions(-) 
> > 
> > diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c 
> > index c5ee04ecd1c9..1187c75d764a 100644 
> > --- a/drivers/staging/rts5208/xd.c 
> > +++ b/drivers/staging/rts5208/xd.c 
> > @@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip) 
> >                          xd_card->zone_cnt = 32; 
> >                          xd_card->capacity = 1024000; 
> >                          break; 
> > -                case xD_1G_X8_512: 
> > +                case XD_1G_X8_512: 
> >                          XD_PAGE_512(xd_card); 
> >                          xd_card->addr_cycle = 4; 
> >                          xd_card->zone_cnt = 64; 
> >                          xd_card->capacity = 2048000; 
> >                          break; 
> > -                case xD_2G_X8_512: 
> > +                case XD_2G_X8_512: 
> >                          XD_PAGE_512(xd_card); 
> >                          xd_card->addr_cycle = 4; 
> >                          xd_card->zone_cnt = 128; 
> > @@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip) 
> >                  return STATUS_FAIL; 
> >          } 
> > 
> > -        retval = xd_read_id(chip, READ_xD_ID, id_buf, 4); 
> > +        retval = xd_read_id(chip, READ_XD_ID, id_buf, 4); 
> >          if (retval != STATUS_SUCCESS) 
> >                  return STATUS_FAIL; 
> > -        dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n", 
> > +        dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n", 
> >                  id_buf[0], id_buf[1], id_buf[2], id_buf[3]); 
> >          if (id_buf[2] != XD_ID_CODE) 
> >                  return STATUS_FAIL; 
> > diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h 
> > index bf21bf0d1616..98c00f268e56 100644 
> > --- a/drivers/staging/rts5208/xd.h 
> > +++ b/drivers/staging/rts5208/xd.h 
> > @@ -36,7 +36,7 @@ 
> >  #define        BLK_ERASE_1                        0x60 
> >  #define        BLK_ERASE_2                        0xD0 
> >  #define READ_STS                        0x70 
> > -#define READ_xD_ID                        0x9A 
> > +#define READ_XD_ID                        0x9A 
> >  #define        COPY_BACK_512                        0x8A 
> >  #define        COPY_BACK_2K                        0x85 
> >  #define        READ1_1_2                        0x30 
> > @@ -72,8 +72,8 @@ 
> >  #define        XD_128M_X16_2048                0xC1 
> >  #define        XD_4M_X8_512_1                        0xE3 
> >  #define        XD_4M_X8_512_2                        0xE5 
> > -#define        xD_1G_X8_512                        0xD3 
> > -#define        xD_2G_X8_512                        0xD5 
> > +#define        XD_1G_X8_512                        0xD3 
> > +#define        XD_2G_X8_512                        0xD5 
> > 
> >  #define        XD_ID_CODE                        0xB5 
> > 
> > @@ -90,7 +90,7 @@ 
> >  #define        NO_OFFSET                        0x0 
> >  #define        WITH_OFFSET                        0x1 
> > 
> > -#define        Sect_Per_Page                        4 
> > +#define        SECT_PER_PAGE                        4 
> >  #define        XD_ADDR_MODE_2C                        XD_ADDR_MODE_2A 
> > 
> >  #define ZONE0_BAD_BLOCK                        23 
> > -- 
> > 2.19.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20181025071536.GA3274%40xubuntu-vm. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_468_1825382454.1540483708293
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thursday, October 25, 2018 at 2:17:15 PM UTC, Julia Law=
all wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Thu, 25 Oct 2018, Kim Bradley wrote:
<br>
<br>&gt; Capitalise header preprocesser variable names (and all
<br>&gt; occurences) to remove checkpatch camelcase warnings.
<br>
<br>If the xD means something for the device, it could be better to leave i=
t
<br>as is.
<br>
<br>Changing Sect_Per_Page seems like a good idea.
<br>
<br>julia
<br></blockquote><div><br></div><div><div>You&#39;re right. RTS5208 is a ca=
rd reader and looking into it, there exists</div>an xD picture card (with c=
amel-case). My bad!</div><div><br></div><div>Kim<br></div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bor=
der-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt;
<br>&gt; Signed-off-by: Kim Bradley &lt;<a href=3D"javascript:" target=3D"_=
blank" gdf-obfuscated-mailto=3D"oMawHNWGBgAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">kim.jami...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rts5208/xd.c | 8 ++++----
<br>&gt; =C2=A0drivers/staging/rts5208/xd.h | 8 ++++----
<br>&gt; =C2=A02 files changed, 8 insertions(+), 8 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts520=
8/xd.c
<br>&gt; index c5ee04ecd1c9..1187c75d764a 100644
<br>&gt; --- a/drivers/staging/rts5208/xd.c
<br>&gt; +++ b/drivers/staging/rts5208/xd.c
<br>&gt; @@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;zone_cnt =3D 32;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;capacity =3D 1024000;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case xD_1G_X8_512:
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case XD_1G_X8_512:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0XD_<wbr>PAGE_512(xd_card);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;addr_cycle =3D 4;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;zone_cnt =3D 64;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;capacity =3D 2048000;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case xD_2G_X8_512:
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case XD_2G_X8_512:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0XD_<wbr>PAGE_512(xd_card);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;addr_cycle =3D 4;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;zone_cnt =3D 128;
<br>&gt; @@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return STATUS_FAIL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0retval =3D xd_rea=
d_id(chip, READ_xD_ID, id_buf, 4);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0retval =3D xd_rea=
d_id(chip, READ_XD_ID, id_buf, 4);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (retval !=
=3D STATUS_SUCCESS)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return STATUS_FAIL;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(rtsx_dev(=
<wbr>chip), &quot;READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n&quot;,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(rtsx_dev(=
<wbr>chip), &quot;READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n&quot;,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0id_buf[0], id_buf[1], id_buf[2], id_buf=
[3]);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (id_buf[2=
] !=3D XD_ID_CODE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return STATUS_FAIL;
<br>&gt; diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts520=
8/xd.h
<br>&gt; index bf21bf0d1616..98c00f268e56 100644
<br>&gt; --- a/drivers/staging/rts5208/xd.h
<br>&gt; +++ b/drivers/staging/rts5208/xd.h
<br>&gt; @@ -36,7 +36,7 @@
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BLK_E=
RASE_1=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A00x60
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BLK_E=
RASE_2=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A00xD0
<br>&gt; =C2=A0#define READ_STS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A00x70
<br>&gt; -#define READ_xD_ID=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A00x9A
<br>&gt; +#define READ_XD_ID=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A00x9A
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0COPY_=
BACK_512=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A00x8A
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0COPY_=
BACK_2K=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A00x85
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0READ1=
_1_2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00x30
<br>&gt; @@ -72,8 +72,8 @@
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_12=
8M_X16_<wbr>2048=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00xC1
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_4M=
_X8_512_<wbr>1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A00xE3
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_4M=
_X8_512_<wbr>2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A00xE5
<br>&gt; -#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0xD_1G_X8_5=
12=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00xD3
<br>&gt; -#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0xD_2G_X8_5=
12=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00xD5
<br>&gt; +#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_1G_X8_5=
12=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00xD3
<br>&gt; +#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_2G_X8_5=
12=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00xD5
<br>&gt;
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_ID=
_CODE=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A00xB5
<br>&gt;
<br>&gt; @@ -90,7 +90,7 @@
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NO_OF=
FSET=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00x0
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0WITH_=
OFFSET=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A00x1
<br>&gt;
<br>&gt; -#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Sect_Per_P=
age=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A04
<br>&gt; +#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0SECT_PER_P=
AGE=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A04
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_AD=
DR_MODE_<wbr>2C=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0XD_<wbr>ADDR_MODE_2A
<br>&gt;
<br>&gt; =C2=A0#define ZONE0_BAD_BLOCK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A023
<br>&gt; --
<br>&gt; 2.19.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"oMawHNWGBgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"oMawHNWGBgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20181025071536.GA3274%40xubuntu-vm" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://gr=
oups.google.com/d/msgid/outreachy-kernel/20181025071536.GA3274%40xubuntu-vm=
&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d=
/msgid/outreachy-kernel/20181025071536.GA3274%40xubuntu-vm&#39;;return true=
;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20181025071=
536.GA3274%<wbr>40xubuntu-vm</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote><br>On Thursday, October 25, 2018 at 2:17:15 PM UTC, Julia=
 Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Thu, 25 Oct 2018, Kim Bradley wrote:
<br>
<br>&gt; Capitalise header preprocesser variable names (and all
<br>&gt; occurences) to remove checkpatch camelcase warnings.
<br>
<br>If the xD means something for the device, it could be better to leave i=
t
<br>as is.
<br>
<br>Changing Sect_Per_Page seems like a good idea.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Kim Bradley &lt;<a href=3D"javascript:" target=3D"_=
blank" gdf-obfuscated-mailto=3D"oMawHNWGBgAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">kim.jami...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rts5208/xd.c | 8 ++++----
<br>&gt; =C2=A0drivers/staging/rts5208/xd.h | 8 ++++----
<br>&gt; =C2=A02 files changed, 8 insertions(+), 8 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts520=
8/xd.c
<br>&gt; index c5ee04ecd1c9..1187c75d764a 100644
<br>&gt; --- a/drivers/staging/rts5208/xd.c
<br>&gt; +++ b/drivers/staging/rts5208/xd.c
<br>&gt; @@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;zone_cnt =3D 32;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;capacity =3D 1024000;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case xD_1G_X8_512:
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case XD_1G_X8_512:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0XD_<wbr>PAGE_512(xd_card);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;addr_cycle =3D 4;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;zone_cnt =3D 64;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;capacity =3D 2048000;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case xD_2G_X8_512:
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case XD_2G_X8_512:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0XD_<wbr>PAGE_512(xd_card);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;addr_cycle =3D 4;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0xd_<wbr>card-&gt;zone_cnt =3D 128;
<br>&gt; @@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return STATUS_FAIL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0retval =3D xd_rea=
d_id(chip, READ_xD_ID, id_buf, 4);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0retval =3D xd_rea=
d_id(chip, READ_XD_ID, id_buf, 4);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (retval !=
=3D STATUS_SUCCESS)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return STATUS_FAIL;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(rtsx_dev(=
<wbr>chip), &quot;READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n&quot;,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(rtsx_dev(=
<wbr>chip), &quot;READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n&quot;,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0id_buf[0], id_buf[1], id_buf[2], id_buf=
[3]);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (id_buf[2=
] !=3D XD_ID_CODE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return STATUS_FAIL;
<br>&gt; diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts520=
8/xd.h
<br>&gt; index bf21bf0d1616..98c00f268e56 100644
<br>&gt; --- a/drivers/staging/rts5208/xd.h
<br>&gt; +++ b/drivers/staging/rts5208/xd.h
<br>&gt; @@ -36,7 +36,7 @@
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BLK_E=
RASE_1=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A00x60
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BLK_E=
RASE_2=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A00xD0
<br>&gt; =C2=A0#define READ_STS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A00x70
<br>&gt; -#define READ_xD_ID=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A00x9A
<br>&gt; +#define READ_XD_ID=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A00x9A
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0COPY_=
BACK_512=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A00x8A
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0COPY_=
BACK_2K=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A00x85
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0READ1=
_1_2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00x30
<br>&gt; @@ -72,8 +72,8 @@
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_12=
8M_X16_<wbr>2048=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00xC1
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_4M=
_X8_512_<wbr>1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A00xE3
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_4M=
_X8_512_<wbr>2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A00xE5
<br>&gt; -#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0xD_1G_X8_5=
12=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00xD3
<br>&gt; -#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0xD_2G_X8_5=
12=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00xD5
<br>&gt; +#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_1G_X8_5=
12=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00xD3
<br>&gt; +#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_2G_X8_5=
12=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00xD5
<br>&gt;
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_ID=
_CODE=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A00xB5
<br>&gt;
<br>&gt; @@ -90,7 +90,7 @@
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NO_OF=
FSET=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00x0
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0WITH_=
OFFSET=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A00x1
<br>&gt;
<br>&gt; -#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Sect_Per_P=
age=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A04
<br>&gt; +#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0SECT_PER_P=
AGE=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A04
<br>&gt; =C2=A0#define=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0XD_AD=
DR_MODE_<wbr>2C=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0XD_<wbr>ADDR_MODE_2A
<br>&gt;
<br>&gt; =C2=A0#define ZONE0_BAD_BLOCK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A023
<br>&gt; --
<br>&gt; 2.19.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"oMawHNWGBgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"oMawHNWGBgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20181025071536.GA3274%40xubuntu-vm" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://gr=
oups.google.com/d/msgid/outreachy-kernel/20181025071536.GA3274%40xubuntu-vm=
&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d=
/msgid/outreachy-kernel/20181025071536.GA3274%40xubuntu-vm&#39;;return true=
;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20181025071=
536.GA3274%<wbr>40xubuntu-vm</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_468_1825382454.1540483708293--

------=_Part_467_1566134271.1540483708292--

