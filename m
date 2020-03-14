X-GM-THRID: 6804152716629114880
Date: Sat, 14 Mar 2020 13:47:07 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <44e68705-6d55-4f9e-82b1-4f546339b73e@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.2003142128530.2293@hadrien>
References: <20200314194724.GA2711@deeUbuntu> <alpine.DEB.2.21.2003142054110.2293@hadrien> <facae09d-0a64-4007-af28-d9da637a95c8@googlegroups.com>
 <alpine.DEB.2.21.2003142128530.2293@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_mio_common: Code
 reformat and re-indentation
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2670_957134962.1584218827427"
X-Google-Token: EMuFtfMF8t1yYAcPCIQ0
X-Google-IP: 103.228.147.139

------=_Part_2670_957134962.1584218827427
Content-Type: multipart/alternative; 
	boundary="----=_Part_2671_774110845.1584218827427"

------=_Part_2671_774110845.1584218827427
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, 15 March 2020 02:02:07 UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sat, 14 Mar 2020, Deepak Varma wrote: 
>
> > 
> > 
> > On Sunday, 15 March 2020 01:27:27 UTC+5:30, Julia Lawall wrote: 
> > 
> > 
> >       On Sun, 15 Mar 2020, Deepak R Varma wrote: 
> > 
> >       > Resolve general code indentation problems as detected by 
> checkpatch script. 
> >       > Implement code reformat and re-indentation as per coding style 
> to 
> >       > improve readability. 
> >       > 
> >       > Signed-off-by: Deepak R Varma <mh12g...@gmail.com> 
> >       > --- 
> >       >  .../staging/comedi/drivers/ni_mio_common.c    | 62 
> ++++++++++--------- 
> >       >  1 file changed, 32 insertions(+), 30 deletions(-) 
> >       > 
> >       > diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c 
> b/drivers/staging/comedi/drivers/ni_mio_common.c 
> >       > index b72a40a79930..48e20de3ebcf 100644 
> >       > --- a/drivers/staging/comedi/drivers/ni_mio_common.c 
> >       > +++ b/drivers/staging/comedi/drivers/ni_mio_common.c 
> >       > @@ -2198,10 +2198,10 @@ static int ni_ai_cmd(struct 
> comedi_device *dev, struct comedi_subdevice *s) 
> >       >                             NISTC_AI_TRIG_START1_SEL(0); 
> >       >                  break; 
> >       >          case TRIG_EXT: 
> >       > -                ai_trig |= NISTC_AI_TRIG_START1_SEL( 
> >       > 
> -                        ni_get_reg_value_roffs(CR_CHAN(cmd->start_arg), 
> >       > -                                               
> NI_AI_StartTrigger, 
> >       > -                                               
> &devpriv->routing_tables, 1)); 
> >       > +                ai_trig |= 
> NISTC_AI_TRIG_START1_SEL(ni_get_reg_value_roffs( 
> >       > 
> +                                        CR_CHAN(cmd->start_arg), 
> >       > +                                        NI_AI_StartTrigger, 
> >       > 
> +                                        &devpriv->routing_tables, 1)); 
> > 
> >       These may have been better as they were.  At least the two 
> function calls 
> >       are more visible in the original. 
> > 
> > 
> > I think the reformatting makes it look simpler and more readable. Did 
> you review it in mutt or here on this page? Please confirm if you want me 
> to revert these back. 
>
> It looks strange to have the call to ni_get_reg_value_roffs to the right 
> of its arguments.  It looks like the arguments are the arguments of 
> NISTC_AI_TRIG_START1_SEL. 
>

I understand now. Makes sense. Let me try refining it and resend in v2. 

>
> > 
> >       [...] 
> > 
> >       > @@ -3079,12 +3081,10 @@ static void ni_ao_cmd_set_update(struct 
> comedi_device *dev, 
> >       >           * zero out these bit fields to be set below. Does an 
> ao-reset do this 
> >       >           * automatically? 
> >       >           */ 
> >       > -        devpriv->ao_mode1 &= ~( 
> >       > -          NISTC_AO_MODE1_UI_SRC_MASK         | 
> >       > -          NISTC_AO_MODE1_UI_SRC_POLARITY     | 
> >       > -          NISTC_AO_MODE1_UPDATE_SRC_MASK     | 
> >       > -          NISTC_AO_MODE1_UPDATE_SRC_POLARITY 
> >       > -        ); 
> >       > +        devpriv->ao_mode1 &= ~(NISTC_AO_MODE1_UI_SRC_MASK       
>    | 
> >       > +                                NISTC_AO_MODE1_UI_SRC_POLARITY 
>     | 
> >       > +                                NISTC_AO_MODE1_UPDATE_SRC_MASK 
>     | 
> >       > 
> +                                NISTC_AO_MODE1_UPDATE_SRC_POLARITY); 
> > 
> >       This looks like an improveemnt.  Are the subsequent NISTCs lines 
> up with 
> >       the right side of the (?  It doesn't look like it, but the +s can 
> change 
> >       the appearance of the indentation. 
> > 
> > 
> > sorry, I did not follow this fully. Could you please explain what do you 
> mean by improvement? There is no code change. I only realigned the NISTC* 
> lines so that the "&= ~(" part is clearly visible. It definitely looks 
> different here on the web page 
> > that the vi editor.   
>
> I would expect 
>
>    (NISTC_AO_MODE1... 
>     NISTC_AO_MODE1... 
>     NISTC_AO_MODE1... 
>     NISTC_AO_MODE1... 
>
> As far as I can see, you have 
>
>    (NISTC_AO_MODE1... 
>      NISTC_AO_MODE1... 
>      NISTC_AO_MODE1... 
>      NISTC_AO_MODE1... 
>
> Yeah. I should correct that. Will include in v2. Thank you! 

>
> > 
> > 
> >       >          if (cmd->scan_begin_src == TRIG_TIMER) { 
> >       >                  unsigned int trigvar; 
> >       > @@ -3133,10 +3133,10 @@ static void ni_ao_cmd_set_update(struct 
> comedi_device *dev, 
> >       >          } else { /* TRIG_EXT */ 
> >       >                  /* FIXME:  assert scan_begin_arg != 0, ret 
> failure otherwise */ 
> >       >                  devpriv->ao_cmd2  |= NISTC_AO_CMD2_BC_GATE_ENA; 
> >       > -                devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC( 
> >       > 
> -                        ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg), 
> >       > -                                         NI_AO_SampleClock, 
> >       > -                                         
> &devpriv->routing_tables)); 
> >       > +                devpriv->ao_mode1 |= 
> NISTC_AO_MODE1_UPDATE_SRC(ni_get_reg_value( 
> >       > 
> +                                                CR_CHAN(cmd->scan_begin_arg), 
>
> >       > 
> +                                                NI_AO_SampleClock, 
> >       > 
> +                                                &devpriv->routing_tables)); 
>
> >       >                  if (cmd->scan_begin_arg & CR_INVERT) 
> >       >                          devpriv->ao_mode1 |= 
> NISTC_AO_MODE1_UPDATE_SRC_POLARITY; 
> >       >          } 
> >       > @@ -3672,13 +3672,15 @@ static int ni_cdio_cmd(struct 
> comedi_device *dev, struct comedi_subdevice *s) 
> >       >           */ 
> >       >          cdo_mode_bits = NI_M_CDO_MODE_FIFO_MODE | 
> >       >                          NI_M_CDO_MODE_HALT_ON_ERROR | 
> >       > -                        NI_M_CDO_MODE_SAMPLE_SRC( 
> >       > 
> -                                ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg), 
>
> >       > -                                                 
> NI_DO_SampleClock, 
> >       > -                                                 
> &devpriv->routing_tables)); 
> >       > 
> +                        NI_M_CDO_MODE_SAMPLE_SRC(ni_get_reg_value( 
> >       > 
> +                                                CR_CHAN(cmd->scan_begin_arg), 
>
> >       > 
> +                                                NI_DO_SampleClock, 
> >       > 
> +                                                &devpriv->routing_tables)); 
>
> > 
> >       These like the earlier ones are probably better left as is. 
> > 
> > 
> > Same as above. Please confirm if you want me to revert these. 
> > 
> > 
> >       >          if (cmd->scan_begin_arg & CR_INVERT) 
> >       >                  cdo_mode_bits |= NI_M_CDO_MODE_POLARITY; 
> >       > + 
> >       >          ni_writel(dev, cdo_mode_bits, NI_M_CDO_MODE_REG); 
> >       > + 
> > 
> >       I'm not sure what motivated adding these blank lines, but it 
> doesn't seem 
> >       to be the same issue as what is done in the rest of the patch. 
> > 
> > 
> > I think with the new line in place, it makes it easier to spot the 
> ni_write function call easily. Otherwise it may get overlooked during a 
> quick glace of this area. Let me know if you still think the new line is 
> unnecessary and I will revert it. No 
> > problem. 
>
> It's not so much of whether it is necessary or not.  The point is just 
> that none of the other changes involve adding new blank lines.  So these 
> look like a different kind of change than the rest. 
>

Okay. I will revert it in v2. Thank you.  

>
> julia 
>
> >       julia 
> > 
> >       >          if (s->io_bits) { 
> >       >                  ni_writel(dev, s->state, 
> NI_M_CDO_FIFO_DATA_REG); 
> >       >                  ni_writel(dev, NI_M_CDO_CMD_SW_UPDATE, 
> NI_M_CDIO_CMD_REG); 
> >       > -- 
> >       > 2.17.1 
> >       > 
> >       > -- 
> >       > You received this message because you are subscribed to the 
> Google Groups "outreachy-kernel" group. 
> >       > To unsubscribe from this group and stop receiving emails from 
> it, send an email to outreach...@googlegroups.com. 
> >       > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20200314194724.GA2711%40deeUbuntu. 
>
> >       > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/facae09d-0a64-4007-af28-d9da637a95c8%40googlegroups.com. 
>
> > 
> >


------=_Part_2671_774110845.1584218827427
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, 15 March 2020 02:02:07 UTC+5:30, Julia =
Lawall  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sat, 14 Mar 2020, Deepak Varma wrote:
<br>
<br>&gt;
<br>&gt;
<br>&gt; On Sunday, 15 March 2020 01:27:27 UTC+5:30, Julia Lawall wrote:
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Sun, 15 Mar 2020, Deepak R Varma wrote:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Resolve general code indentation problem=
s as detected by checkpatch script.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Implement code reformat and re-indentati=
on as per coding style to
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; improve readability.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: Deepak R Varma &lt;<a>mh1=
2g...@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0.../staging/comedi/drivers/<wbr>ni=
_mio_common.c =C2=A0 =C2=A0| 62 ++++++++++---------
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A01 file changed, 32 insertions(+), =
30 deletions(-)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/comedi/<wbr=
>drivers/ni_mio_common.c b/drivers/staging/comedi/<wbr>drivers/ni_mio_commo=
n.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index b72a40a79930..48e20de3ebcf 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/comedi/<wbr>driver=
s/ni_mio_common.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/comedi/<wbr>driver=
s/ni_mio_common.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2198,10 +2198,10 @@ static int ni_ai=
_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 NISTC_AI_TRIG_START1_SEL(0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0case TRIG_EXT:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ai_trig |=3D NISTC=
_AI_TRIG_START1_SEL(
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ni_<wbr>get_reg_value_roffs(CR_CHAN(<wbr>cmd-=
&gt;start_arg),
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 NI_AI_StartTrigger,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &amp;devpriv-&gt;routing_tables, 1));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ai_trig |=3D NISTC=
_AI_TRIG_START1_SEL(ni_<wbr>get_reg_value_roffs(
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CR_CHAN(cmd-&gt;st=
art_<wbr>arg),
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NI_AI_StartTrigger=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&amp;devpriv-&gt;r=
outing_<wbr>tables, 1));
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 These may have been better as they were. =C2=
=A0At least the two function calls
<br>&gt; =C2=A0 =C2=A0 =C2=A0 are more visible in the original.
<br>&gt;
<br>&gt;
<br>&gt; I think the reformatting makes it look simpler and more readable. =
Did you review it in mutt or here on this page? Please confirm if you want =
me to revert these back.
<br>
<br>It looks strange to have the call to ni_get_reg_value_roffs to the righ=
t
<br>of its arguments. =C2=A0It looks like the arguments are the arguments o=
f
<br>NISTC_AI_TRIG_START1_SEL.
<br></blockquote><div><br></div><div>I understand now. Makes sense. Let me =
try refining it and resend in v2. <br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;paddin=
g-left: 1ex;">
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 [...]
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -3079,12 +3081,10 @@ static void ni_a=
o_cmd_set_update(struct comedi_device *dev,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 * zero out these bit fields to be set below. Does an ao-res=
et do this
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 * automatically?
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0devpriv-&gt;ao_mode1 &amp;=3D ~(
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0NISTC_AO_MODE1_UI_SRC_MASK =C2=A0 =C2=A0 =C2=A0 =C2=A0 |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0NISTC_AO_MODE1_UI_SRC_<wbr>POLARITY =C2=A0 =C2=A0 |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0NISTC_AO_MODE1_UPDATE_SRC_<wbr>MASK =C2=A0 =C2=A0 |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0NISTC_AO_MODE1_UPDATE_SRC_<wbr>POLARITY
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0devpriv-&gt;ao_mode1 &amp;=3D ~(NISTC_AO_MODE1_UI_SRC_MASK =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0NISTC_AO_MODE1_UI_SRC_<wbr>POLARITY =C2=A0 =C2=A0 |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0NISTC_AO_MODE1_UPDATE_SRC_<wbr>MASK =C2=A0 =C2=A0 |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0NISTC_AO_MODE1_UPDATE_SRC_<wbr>POLARITY);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 This looks like an improveemnt. =C2=A0Are the=
 subsequent NISTCs lines up with
<br>&gt; =C2=A0 =C2=A0 =C2=A0 the right side of the (? =C2=A0It doesn&#39;t=
 look like it, but the +s can change
<br>&gt; =C2=A0 =C2=A0 =C2=A0 the appearance of the indentation.
<br>&gt;
<br>&gt;
<br>&gt; sorry, I did not follow this fully. Could you please explain what =
do you mean by improvement? There is no code change. I only realigned the N=
ISTC* lines so that the &quot;&amp;=3D ~(&quot; part is clearly visible. It=
 definitely looks different here on the web page
<br>&gt; that the vi editor. =C2=A0
<br>
<br>I would expect
<br>
<br>=C2=A0 =C2=A0(NISTC_AO_MODE1...
<br>=C2=A0 =C2=A0 NISTC_AO_MODE1...
<br>=C2=A0 =C2=A0 NISTC_AO_MODE1...
<br>=C2=A0 =C2=A0 NISTC_AO_MODE1...
<br>
<br>As far as I can see, you have
<br>
<br>=C2=A0 =C2=A0(NISTC_AO_MODE1...
<br>=C2=A0 =C2=A0 =C2=A0NISTC_AO_MODE1...
<br>=C2=A0 =C2=A0 =C2=A0NISTC_AO_MODE1...
<br>=C2=A0 =C2=A0 =C2=A0NISTC_AO_MODE1...
<br>
<br></blockquote><div>Yeah. I should correct that. Will include in v2. Than=
k you! <br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margi=
n-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (cmd-&gt;scan_begin_src =3D=3D TRIG_TIMER) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned int=
 trigvar;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -3133,10 +3133,10 @@ static void ni_a=
o_cmd_set_update(struct comedi_device *dev,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0} else { /* TRIG_EXT */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* FIXME: =
=C2=A0assert scan_begin_arg !=3D 0, ret failure otherwise */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0devpriv-&gt;=
ao_<wbr>cmd2 =C2=A0|=3D NISTC_AO_CMD2_BC_GATE_ENA;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0devpriv-&gt;ao_<wb=
r>mode1 |=3D NISTC_AO_MODE1_UPDATE_SRC(
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ni_<wbr>get_reg_value(CR_CHAN(cmd-&gt;<wbr>sc=
an_begin_arg),
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 NI_AO_SampleClock=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &amp;devpriv-&gt;=
routing_tables));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0devpriv-&gt;ao_<wb=
r>mode1 |=3D NISTC_AO_MODE1_UPDATE_SRC(ni_<wbr>get_reg_value(
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CR_CHAN(<wbr>cmd-&gt;scan_begin_arg),
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NI_AO_<wbr>SampleClock,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&amp;devpriv-&gt;<wbr>routing_tables));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (cmd-&gt;=
scan_begin_arg &amp; CR_INVERT)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>devpriv-&gt;ao_mode1 |=3D NISTC_AO=
_MODE1_UPDATE_SRC_<wbr>POLARITY;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -3672,13 +3672,15 @@ static int ni_cd=
io_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0cdo_mode_bits =3D NI_M_CDO_MODE_FIFO_MODE |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NI_M_<wbr>CDO_MODE_HALT_ON_ERROR |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NI_M_<wbr>CDO_MODE_SAMPLE_SRC(
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0ni_get_reg_value(CR_CHAN(<wbr>cmd-&gt;scan_begin_arg),
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 NI_DO_SampleClock,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &amp;devpriv-&gt;routing_tables));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NI_M_<wbr>CDO_MODE_SAMPLE_SRC(ni_get_<wbr>reg=
_value(
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CR_CHAN(<wbr>cmd-&gt;scan_begin_arg),
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NI_DO_<wbr>SampleClock,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&amp;devpriv-&gt;<wbr>routing_tables));
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 These like the earlier ones are probably bett=
er left as is.
<br>&gt;
<br>&gt;
<br>&gt; Same as above. Please confirm if you want me to revert these.
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (cmd-&gt;scan_begin_arg &amp; CR_INVERT)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0cdo_mode_bit=
s |=3D NI_M_CDO_MODE_POLARITY;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0ni_writel(dev, cdo_mode_bits, NI_M_CDO_MODE_REG);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 I&#39;m not sure what motivated adding these =
blank lines, but it doesn&#39;t seem
<br>&gt; =C2=A0 =C2=A0 =C2=A0 to be the same issue as what is done in the r=
est of the patch.
<br>&gt;
<br>&gt;
<br>&gt; I think with the new line in place, it makes it easier to spot the=
 ni_write function call easily. Otherwise it may get overlooked during a qu=
ick glace of this area. Let me know if you still think the new line is unne=
cessary and I will revert it. No
<br>&gt; problem.
<br>
<br>It&#39;s not so much of whether it is necessary or not. =C2=A0The point=
 is just
<br>that none of the other changes involve adding new blank lines. =C2=A0So=
 these
<br>look like a different kind of change than the rest.
<br></blockquote><div><br></div><div>Okay. I will revert it in v2. Thank yo=
u.=C2=A0 <br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>julia
<br>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 julia
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (s-&gt;io_bits) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ni_writel(<w=
br>dev, s-&gt;state, NI_M_CDO_FIFO_DATA_REG);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ni_writel(<w=
br>dev, NI_M_CDO_CMD_SW_UPDATE, NI_M_CDIO_CMD_REG);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; 2.17.1
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; You received this message because you ar=
e subscribed to the Google Groups &quot;outreachy-kernel&quot; group.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To unsubscribe from this group and stop =
receiving emails from it, send an email to <a>outreach...@googlegroups.com<=
/a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To view this discussion on the web visit=
 <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/202003141947=
24.GA2711%40deeUbuntu" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"th=
is.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/202003141=
94724.GA2711%40deeUbuntu&#39;;return true;" onclick=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/msgid/outreachy-kernel/20200314194724.GA2711%40dee=
Ubuntu&#39;;return true;">https://groups.google.com/d/<wbr>msgid/outreachy-=
kernel/<wbr>20200314194724.GA2711%<wbr>40deeUbuntu</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"lbCIO0UZAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/facae09d-0a64-4007-af28-d9da637a95c8%4=
0googlegroups.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.h=
ref=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/facae09d-0a64=
-4007-af28-d9da637a95c8%40googlegroups.com&#39;;return true;" onclick=3D"th=
is.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/facae09d-=
0a64-4007-af28-d9da637a95c8%40googlegroups.com&#39;;return true;">https://g=
roups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>facae09d-0a64-4007-af28=
-<wbr>d9da637a95c8%40googlegroups.<wbr>com</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_2671_774110845.1584218827427--

------=_Part_2670_957134962.1584218827427--

