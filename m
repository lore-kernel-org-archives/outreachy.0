X-GM-THRID: 6470000031137005568
Date: Tue, 26 Sep 2017 07:47:59 -0700 (PDT)
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <e38ba3e0-6c42-4ea9-ae2a-1cf95ebab6e2@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1709261031590.2925@hadrien>
References: <cover.1506413998.git.keerthigd4990@gmail.com> <f925ac589c9eaeb3815a6e6f537592abb1aa041f.1506413998.git.keerthigd4990@gmail.com>
 <alpine.DEB.2.20.1709261031590.2925@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: vc04_services: add
 spaces around << operator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_11817_413005595.1506437279618"
X-Google-Token: EJ_Rqc4FgtqZtstqBio0
X-Google-IP: 202.53.87.190

------=_Part_11817_413005595.1506437279618
Content-Type: multipart/alternative; 
	boundary="----=_Part_11818_2017655515.1506437279618"

------=_Part_11818_2017655515.1506437279618
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


>Maybe the BIT macro could be used for these instead?
I my humble opinion, the code without BIT macro is more readable I guess.
And also for a casual reader, BIT may not be known. 

On Tuesday, September 26, 2017 at 2:03:34 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Tue, 26 Sep 2017, Keerthi Reddy wrote: 
>
> > Follow coding convention by adding providing space 
> > around << operators 
> > 
> > Signed-off-by: Keerthi Reddy <keerth...@gmail.com <javascript:>> 
> > --- 
> >  .../vc04_services/bcm2835-camera/mmal-msg.h        | 22 
> +++++++++++----------- 
> >  .../vc04_services/bcm2835-camera/mmal-parameters.h | 12 ++++++------ 
> >  2 files changed, 17 insertions(+), 17 deletions(-) 
> > 
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h 
> b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h 
> > index 1144d9d..0dfad29 100644 
> > --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h 
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h 
> > @@ -217,36 +217,36 @@ struct mmal_msg_port_action_reply { 
> >  #define MMAL_VC_SHORT_DATA 128 
> > 
> >  /** Signals that the current payload is the end of the stream of data 
> */ 
> > -#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1<<0) 
> > +#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1 << 0) 
> >  /** Signals that the start of the current payload starts a frame */ 
> > -#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1<<1) 
> > +#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1 << 1) 
> >  /** Signals that the end of the current payload ends a frame */ 
> > -#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1<<2) 
> > +#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1 << 2) 
> >  /** Signals that the current payload contains only complete frames (>1) 
> */ 
> >  #define MMAL_BUFFER_HEADER_FLAG_FRAME                  \ 
> > 
>          (MMAL_BUFFER_HEADER_FLAG_FRAME_START|MMAL_BUFFER_HEADER_FLAG_FRAME_END) 
>
> >  /** Signals that the current payload is a keyframe (i.e. self 
> decodable) */ 
> > -#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1<<3) 
> > +#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1 << 3) 
> >  /** Signals a discontinuity in the stream of data (e.g. after a seek). 
> >   * Can be used for instance by a decoder to reset its state 
> >   */ 
> > -#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1<<4) 
> > +#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1 << 4) 
> >  /** Signals a buffer containing some kind of config data for the 
> component 
> >   * (e.g. codec config data) 
> >   */ 
> > -#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1<<5) 
> > +#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1 << 5) 
> >  /** Signals an encrypted payload */ 
> > -#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1<<6) 
> > +#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1 << 6) 
> >  /** Signals a buffer containing side information */ 
> > -#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1<<7) 
> > +#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1 << 7) 
> >  /** Signals a buffer which is the snapshot/postview image from a stills 
> >   * capture 
> >   */ 
> > -#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1<<8) 
> > +#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1 << 8) 
> >  /** Signals a buffer which contains data known to be corrupted */ 
> > -#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1<<9) 
> > +#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1 << 9) 
> >  /** Signals that a buffer failed to be transmitted */ 
> > -#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1<<10) 
> > +#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1 << 10) 
>
> Maybe the BIT macro could be used for these instead? 
>
> > 
> >  struct mmal_driver_buffer { 
> >          u32 magic; 
> > diff --git 
> a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h 
> b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h 
> > index e730022..c4a2380 100644 
> > --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h 
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h 
> > @@ -22,17 +22,17 @@ 
> >   */ 
> > 
> >  /** Common parameter ID group, used with many types of component. */ 
> > -#define MMAL_PARAMETER_GROUP_COMMON            (0<<16) 
> > +#define MMAL_PARAMETER_GROUP_COMMON            (0 << 16) 
> >  /** Camera-specific parameter ID group. */ 
> > -#define MMAL_PARAMETER_GROUP_CAMERA            (1<<16) 
> > +#define MMAL_PARAMETER_GROUP_CAMERA            (1 << 16) 
> >  /** Video-specific parameter ID group. */ 
> > -#define MMAL_PARAMETER_GROUP_VIDEO             (2<<16) 
> > +#define MMAL_PARAMETER_GROUP_VIDEO             (2 << 16) 
> >  /** Audio-specific parameter ID group. */ 
> > -#define MMAL_PARAMETER_GROUP_AUDIO             (3<<16) 
> > +#define MMAL_PARAMETER_GROUP_AUDIO             (3 << 16) 
> >  /** Clock-specific parameter ID group. */ 
> > -#define MMAL_PARAMETER_GROUP_CLOCK             (4<<16) 
> > +#define MMAL_PARAMETER_GROUP_CLOCK             (4 << 16) 
> >  /** Miracast-specific parameter ID group. */ 
> > -#define MMAL_PARAMETER_GROUP_MIRACAST       (5<<16) 
> > +#define MMAL_PARAMETER_GROUP_MIRACAST       (5 << 16) 
>
> BIT would not be apporpriate for these. 
>
> julia 
>
> > 
> >  /* Common parameters */ 
> >  enum mmal_parameter_common_type { 
> > -- 
> > 2.7.4 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/f925ac589c9eaeb3815a6e6f537592abb1aa041f.1506413998.git.keerthigd4990%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_11818_2017655515.1506437279618
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>&gt;Maybe the BIT macro could be used for these instea=
d?<div>I my humble opinion, the code without BIT macro is more readable I g=
uess.</div><div>And also for a casual reader, BIT may not be known.=C2=A0</=
div><div><br></div><div>On Tuesday, September 26, 2017 at 2:03:34 PM UTC+5:=
30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Tue, 26 Sep 2017, Keerthi Reddy wrote:
<br>
<br>&gt; Follow coding convention by adding providing space
<br>&gt; around &lt;&lt; operators
<br>&gt;
<br>&gt; Signed-off-by: Keerthi Reddy &lt;<a href=3D"javascript:" target=3D=
"_blank" gdf-obfuscated-mailto=3D"WUZcX3LGBwAJ" rel=3D"nofollow" onmousedow=
n=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=
=3D&#39;javascript:&#39;;return true;">keerth...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0.../vc04_services/bcm2835-<wbr>camera/mmal-msg.h =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 22 +++++++++++-----------
<br>&gt; =C2=A0.../vc04_services/bcm2835-<wbr>camera/mmal-parameters.h | 12=
 ++++++------
<br>&gt; =C2=A02 files changed, 17 insertions(+), 17 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/vc04_<wbr>services/bcm2835-camera/mma=
l-<wbr>msg.h b/drivers/staging/vc04_<wbr>services/bcm2835-camera/mmal-<wbr>=
msg.h
<br>&gt; index 1144d9d..0dfad29 100644
<br>&gt; --- a/drivers/staging/vc04_<wbr>services/bcm2835-camera/mmal-<wbr>=
msg.h
<br>&gt; +++ b/drivers/staging/vc04_<wbr>services/bcm2835-camera/mmal-<wbr>=
msg.h
<br>&gt; @@ -217,36 +217,36 @@ struct mmal_msg_port_action_reply {
<br>&gt; =C2=A0#define MMAL_VC_SHORT_DATA 128
<br>&gt;
<br>&gt; =C2=A0/** Signals that the current payload is the end of the strea=
m of data */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAG_EOS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&lt;0)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAG_EOS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 0)
<br>&gt; =C2=A0/** Signals that the start of the current payload starts a f=
rame */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAG_FRAME_<wbr>START =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&lt;1)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAG_FRAME_<wbr>START =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 1)
<br>&gt; =C2=A0/** Signals that the end of the current payload ends a frame=
 */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAG_FRAME_<wbr>END =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&lt;2)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAG_FRAME_<wbr>END =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 2)
<br>&gt; =C2=A0/** Signals that the current payload contains only complete =
frames (&gt;1) */
<br>&gt; =C2=A0#define MMAL_BUFFER_HEADER_FLAG_FRAME =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(MMAL_BUFFER=
_HEADER_<wbr>FLAG_FRAME_START|MMAL_BUFFER_<wbr>HEADER_FLAG_FRAME_END)
<br>&gt; =C2=A0/** Signals that the current payload is a keyframe (i.e. sel=
f decodable) */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAG_<wbr>KEYFRAME =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;3)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAG_<wbr>KEYFRAME =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1 &lt;&lt; 3)
<br>&gt; =C2=A0/** Signals a discontinuity in the stream of data (e.g. afte=
r a seek).
<br>&gt; =C2=A0 * Can be used for instance by a decoder to reset its state
<br>&gt; =C2=A0 */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAG_<wbr>DISCONTINUITY =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0(1&lt;&lt;4)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAG_<wbr>DISCONTINUITY =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 4)
<br>&gt; =C2=A0/** Signals a buffer containing some kind of config data for=
 the component
<br>&gt; =C2=A0 * (e.g. codec config data)
<br>&gt; =C2=A0 */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAG_CONFIG =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;5)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAG_CONFIG =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1 &lt;&lt; 5)
<br>&gt; =C2=A0/** Signals an encrypted payload */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAG_<wbr>ENCRYPTED =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&lt;6)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAG_<wbr>ENCRYPTED =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 6)
<br>&gt; =C2=A0/** Signals a buffer containing side information */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAG_<wbr>CODECSIDEINFO =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0(1&lt;&lt;7)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAG_<wbr>CODECSIDEINFO =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 7)
<br>&gt; =C2=A0/** Signals a buffer which is the snapshot/postview image fr=
om a stills
<br>&gt; =C2=A0 * capture
<br>&gt; =C2=A0 */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAGS_<wbr>SNAPSHOT =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&lt;8)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAGS_<wbr>SNAPSHOT =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 8)
<br>&gt; =C2=A0/** Signals a buffer which contains data known to be corrupt=
ed */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAG_<wbr>CORRUPTED =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&lt;9)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAG_<wbr>CORRUPTED =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 9)
<br>&gt; =C2=A0/** Signals that a buffer failed to be transmitted */
<br>&gt; -#define MMAL_BUFFER_HEADER_FLAG_<wbr>TRANSMISSION_FAILED =C2=A0 =
=C2=A0(1&lt;&lt;10)
<br>&gt; +#define MMAL_BUFFER_HEADER_FLAG_<wbr>TRANSMISSION_FAILED =C2=A0 =
=C2=A0(1 &lt;&lt; 10)
<br>
<br>Maybe the BIT macro could be used for these instead?
<br>
<br>&gt;
<br>&gt; =C2=A0struct mmal_driver_buffer {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 magic;
<br>&gt; diff --git a/drivers/staging/vc04_<wbr>services/bcm2835-camera/mma=
l-<wbr>parameters.h b/drivers/staging/vc04_<wbr>services/bcm2835-camera/mma=
l-<wbr>parameters.h
<br>&gt; index e730022..c4a2380 100644
<br>&gt; --- a/drivers/staging/vc04_<wbr>services/bcm2835-camera/mmal-<wbr>=
parameters.h
<br>&gt; +++ b/drivers/staging/vc04_<wbr>services/bcm2835-camera/mmal-<wbr>=
parameters.h
<br>&gt; @@ -22,17 +22,17 @@
<br>&gt; =C2=A0 */
<br>&gt;
<br>&gt; =C2=A0/** Common parameter ID group, used with many types of compo=
nent. */
<br>&gt; -#define MMAL_PARAMETER_GROUP_COMMON =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(0&lt;&lt;16)
<br>&gt; +#define MMAL_PARAMETER_GROUP_COMMON =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(0 &lt;&lt; 16)
<br>&gt; =C2=A0/** Camera-specific parameter ID group. */
<br>&gt; -#define MMAL_PARAMETER_GROUP_CAMERA =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(1&lt;&lt;16)
<br>&gt; +#define MMAL_PARAMETER_GROUP_CAMERA =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(1 &lt;&lt; 16)
<br>&gt; =C2=A0/** Video-specific parameter ID group. */
<br>&gt; -#define MMAL_PARAMETER_GROUP_VIDEO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (2&lt;&lt;16)
<br>&gt; +#define MMAL_PARAMETER_GROUP_VIDEO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (2 &lt;&lt; 16)
<br>&gt; =C2=A0/** Audio-specific parameter ID group. */
<br>&gt; -#define MMAL_PARAMETER_GROUP_AUDIO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (3&lt;&lt;16)
<br>&gt; +#define MMAL_PARAMETER_GROUP_AUDIO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (3 &lt;&lt; 16)
<br>&gt; =C2=A0/** Clock-specific parameter ID group. */
<br>&gt; -#define MMAL_PARAMETER_GROUP_CLOCK =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (4&lt;&lt;16)
<br>&gt; +#define MMAL_PARAMETER_GROUP_CLOCK =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (4 &lt;&lt; 16)
<br>&gt; =C2=A0/** Miracast-specific parameter ID group. */
<br>&gt; -#define MMAL_PARAMETER_GROUP_MIRACAST =C2=A0 =C2=A0 =C2=A0 (5&lt;=
&lt;16)
<br>&gt; +#define MMAL_PARAMETER_GROUP_MIRACAST =C2=A0 =C2=A0 =C2=A0 (5 &lt=
;&lt; 16)
<br>
<br>BIT would not be apporpriate for these.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; =C2=A0/* Common parameters */
<br>&gt; =C2=A0enum mmal_parameter_common_type {
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"WUZcX3LGBwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"WUZcX3LGBwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/f925ac589c9eaeb3815a6e6f537592abb1aa04=
1f.1506413998.git.keerthigd4990%40gmail.com" target=3D"_blank" rel=3D"nofol=
low" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/outr=
eachy-kernel/f925ac589c9eaeb3815a6e6f537592abb1aa041f.1506413998.git.keerth=
igd4990%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://=
groups.google.com/d/msgid/outreachy-kernel/f925ac589c9eaeb3815a6e6f537592ab=
b1aa041f.1506413998.git.keerthigd4990%40gmail.com&#39;;return true;">https:=
//groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>f925ac589c9eaeb3815a=
6e6f537592<wbr>abb1aa041f.1506413998.git.<wbr>keerthigd4990%40gmail.com</a>=
.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div></div>
------=_Part_11818_2017655515.1506437279618--

------=_Part_11817_413005595.1506437279618--

