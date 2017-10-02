X-GM-THRID: 6472300341971910656
Date: Mon, 2 Oct 2017 06:36:18 -0700 (PDT)
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <ae1db421-6943-4276-8d28-702fda3bcd34@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1710021514560.3515@hadrien>
References: <20171002131042.GA12477@manoharreddy>
 <alpine.DEB.2.20.1710021514560.3515@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: use BIT macro
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3034_2025246927.1506951379063"
X-Google-Token: ENKByc4F4SHmGVWvBeY0
X-Google-IP: 202.53.87.190

------=_Part_3034_2025246927.1506951379063
Content-Type: multipart/alternative; 
	boundary="----=_Part_3035_881840937.1506951379063"

------=_Part_3035_881840937.1506951379063
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, October 2, 2017 at 6:45:43 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Mon, 2 Oct 2017, Keerthi Reddy wrote: 
>
> > This commit changes changes left shift operator to use BIT macro 
> > 
> > Signed-off-by: Keerthi Reddy <keerth...@gmail.com <javascript:>> 
> > --- 
> >  .../staging/lustre/include/linux/lnet/lib-types.h  | 26 
> +++++++++++----------- 
> >  1 file changed, 13 insertions(+), 13 deletions(-) 
> > 
> > diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h 
> b/drivers/staging/lustre/include/linux/lnet/lib-types.h 
> > index eea3b8e..15837a3 100644 
> > --- a/drivers/staging/lustre/include/linux/lnet/lib-types.h 
> > +++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h 
> > @@ -160,9 +160,9 @@ struct lnet_libmd { 
> >          } md_iov; 
> >  }; 
> > 
> > -#define LNET_MD_FLAG_ZOMBIE                (1 << 0) 
> > -#define LNET_MD_FLAG_AUTO_UNLINK        (1 << 1) 
> > -#define LNET_MD_FLAG_ABORTED                (1 << 2) 
> > +#define LNET_MD_FLAG_ZOMBIE                BIT(0) 
> > +#define LNET_MD_FLAG_AUTO_UNLINK        BIT(1) 
> > +#define LNET_MD_FLAG_ABORTED                BIT(2) 
> > 
> >  struct lnet_test_peer { 
> >          /* info about peers we are trying to fail */ 
> > @@ -287,9 +287,9 @@ struct lnet_ni { 
> >   * of old LNet, so there shouldn't be any compatibility issue 
> >   */ 
> >  #define LNET_PING_FEAT_INVAL                (0)                /* no 
> feature */ 
> > -#define LNET_PING_FEAT_BASE                (1 << 0)        /* just a 
> ping */ 
> > -#define LNET_PING_FEAT_NI_STATUS        (1 << 1)        /* return NI 
> status */ 
> > -#define LNET_PING_FEAT_RTE_DISABLED        (1 << 2)        /* Routing 
> enabled */ 
> > +#define LNET_PING_FEAT_BASE                BIT(0)        /* just a ping 
> */ 
> > +#define LNET_PING_FEAT_NI_STATUS        BIT(1)        /* return NI 
> status */ 
> > +#define LNET_PING_FEAT_RTE_DISABLED        BIT(2)        /* Routing 
> enabled */ 
> > 
> >  #define LNET_PING_FEAT_MASK                (LNET_PING_FEAT_BASE | \ 
> >                                           LNET_PING_FEAT_NI_STATUS) 
> > @@ -440,21 +440,21 @@ struct lnet_rtrbuf { 
> > 
> >  enum lnet_match_flags { 
> >          /* Didn't match anything */ 
> > -        LNET_MATCHMD_NONE        = (1 << 0), 
> > +        LNET_MATCHMD_NONE        = BIT(0), 
> >          /* Matched OK */ 
> > -        LNET_MATCHMD_OK                = (1 << 1), 
> > +        LNET_MATCHMD_OK                = BIT(1), 
> >          /* Must be discarded */ 
> > -        LNET_MATCHMD_DROP        = (1 << 2), 
> > +        LNET_MATCHMD_DROP        = BIT(2), 
> >          /* match and buffer is exhausted */ 
> > -        LNET_MATCHMD_EXHAUSTED        = (1 << 3), 
> > +        LNET_MATCHMD_EXHAUSTED        = BIT(3), 
> >          /* match or drop */ 
> >          LNET_MATCHMD_FINISH        = (LNET_MATCHMD_OK | 
> LNET_MATCHMD_DROP), 
> >  }; 
> > 
> >  /* Options for lnet_portal::ptl_options */ 
> > -#define LNET_PTL_LAZY                (1 << 0) 
> > -#define LNET_PTL_MATCH_UNIQUE        (1 << 1)        /* unique match, 
> for RDMA */ 
> > -#define LNET_PTL_MATCH_WILDCARD        (1 << 2)        /* wildcard 
> match, 
> > +#define LNET_PTL_LAZY                BIT(0) 
> > +#define LNET_PTL_MATCH_UNIQUE        BIT(1)        /* unique match, for 
> RDMA */ 
> > +#define LNET_PTL_MATCH_WILDCARD        BIT(2)        /* wildcard match, 
> >                                                   * request portal 
> >                                                   */ 
>
> It looks like the final comment could be on only one line? 
>
 
It's a multi line comment style that author has used throughout the file. 
Similarly we 
can see the same style in lines 420, 412 too. 

-Keerthi. 
 

> julia 
>
> > 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20171002131042.GA12477%40manoharreddy. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_3035_881840937.1506951379063
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, October 2, 2017 at 6:45:43 PM UTC+5:30,=
 Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 2 Oct 2017, Keerthi Reddy wrote:
<br>
<br>&gt; This commit changes changes left shift operator to use BIT macro
<br>&gt;
<br>&gt; Signed-off-by: Keerthi Reddy &lt;<a href=3D"javascript:" target=3D=
"_blank" gdf-obfuscated-mailto=3D"wKBG1okoBgAJ" rel=3D"nofollow" onmousedow=
n=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=
=3D&#39;javascript:&#39;;return true;">keerth...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0.../staging/lustre/include/<wbr>linux/lnet/lib-types.h =C2=
=A0| 26 +++++++++++-----------
<br>&gt; =C2=A01 file changed, 13 insertions(+), 13 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/lustre/<wbr>include/linux/lnet/lib-ty=
pes.h b/drivers/staging/lustre/<wbr>include/linux/lnet/lib-types.h
<br>&gt; index eea3b8e..15837a3 100644
<br>&gt; --- a/drivers/staging/lustre/<wbr>include/linux/lnet/lib-types.h
<br>&gt; +++ b/drivers/staging/lustre/<wbr>include/linux/lnet/lib-types.h
<br>&gt; @@ -160,9 +160,9 @@ struct lnet_libmd {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} md_iov;
<br>&gt; =C2=A0};
<br>&gt;
<br>&gt; -#define LNET_MD_FLAG_ZOMBIE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(1 &lt;&lt=
; 0)
<br>&gt; -#define LNET_MD_FLAG_AUTO_UNLINK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0(1 &lt;&lt; 1)
<br>&gt; -#define LNET_MD_FLAG_ABORTED=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(1 &lt;&lt=
; 2)
<br>&gt; +#define LNET_MD_FLAG_ZOMBIE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BIT(0)
<br>&gt; +#define LNET_MD_FLAG_AUTO_UNLINK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0BIT(1)
<br>&gt; +#define LNET_MD_FLAG_ABORTED=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BIT(2)
<br>&gt;
<br>&gt; =C2=A0struct lnet_test_peer {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* info abou=
t peers we are trying to fail */
<br>&gt; @@ -287,9 +287,9 @@ struct lnet_ni {
<br>&gt; =C2=A0 * of old LNet, so there shouldn&#39;t be any compatibility =
issue
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0#define LNET_PING_FEAT_INVAL=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(0)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0/* no feature */
<br>&gt; -#define LNET_PING_FEAT_BASE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(1 &lt;&lt=
; 0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* just a ping */
<br>&gt; -#define LNET_PING_FEAT_NI_STATUS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0(1 &lt;&lt; 1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0/* return NI status */
<br>&gt; -#define LNET_PING_FEAT_RTE_DISABLED=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0(1 &lt;&lt; 2)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0/* Routing enabled */
<br>&gt; +#define LNET_PING_FEAT_BASE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BIT(0)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* just a ping */
<br>&gt; +#define LNET_PING_FEAT_NI_STATUS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0BIT(1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/=
* return NI status */
<br>&gt; +#define LNET_PING_FEAT_RTE_DISABLED=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0BIT(2)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0/* Routing enabled */
<br>&gt;
<br>&gt; =C2=A0#define LNET_PING_FEAT_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(LNET_P=
ING_FEAT_BASE | \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 LNET_PING_FEAT_NI_STATUS)
<br>&gt; @@ -440,21 +440,21 @@ struct lnet_rtrbuf {
<br>&gt;
<br>&gt; =C2=A0enum lnet_match_flags {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Didn&#39;=
t match anything */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LNET_MATCHMD_NONE=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=3D (1 &lt;&lt; 0),
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LNET_MATCHMD_NONE=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=3D BIT(0),
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Matched O=
K */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LNET_MATCHMD_OK=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D (1 &lt;&lt; 1),
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LNET_MATCHMD_OK=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D BIT(1),
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Must be d=
iscarded */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LNET_MATCHMD_DROP=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=3D (1 &lt;&lt; 2),
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LNET_MATCHMD_DROP=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=3D BIT(2),
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* match and=
 buffer is exhausted */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LNET_MATCHMD_<wbr=
>EXHAUSTED=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D (1 &lt;&lt; 3=
),
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LNET_MATCHMD_<wbr=
>EXHAUSTED=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D BIT(3),
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* match or =
drop */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LNET_MATCHMD=
_FINISH=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D (LNET_MATCH=
MD_OK | LNET_MATCHMD_DROP),
<br>&gt; =C2=A0};
<br>&gt;
<br>&gt; =C2=A0/* Options for lnet_portal::ptl_options */
<br>&gt; -#define LNET_PTL_LAZY=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(<wbr>1 &lt;&lt; 0)
<br>&gt; -#define LNET_PTL_MATCH_UNIQUE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0(<wbr>1 &lt;&lt; 1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0/* unique match, for RDMA */
<br>&gt; -#define LNET_PTL_MATCH_WILDCARD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0(1 &lt;&lt; 2)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0/* wildcard match,
<br>&gt; +#define LNET_PTL_LAZY=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>BIT(0)
<br>&gt; +#define LNET_PTL_MATCH_UNIQUE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>BIT(1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* u=
nique match, for RDMA */
<br>&gt; +#define LNET_PTL_MATCH_WILDCARD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0BIT(2)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/=
* wildcard match,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 * request portal
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 */
<br>
<br>It looks like the final comment could be on only one line?
<br></blockquote><div>=C2=A0</div><div>It&#39;s a multi line comment style =
that author has used throughout the file. Similarly we=C2=A0</div><div>can =
see the same style in lines 420, 412 too.=C2=A0</div><div><br></div><div>-K=
eerthi.=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">julia
<br>
<br>&gt;
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"wKBG1okoBgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"wKBG1okoBgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20171002131042.GA12477%40manoharreddy"=
 target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https:/=
/groups.google.com/d/msgid/outreachy-kernel/20171002131042.GA12477%40manoha=
rreddy&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google=
.com/d/msgid/outreachy-kernel/20171002131042.GA12477%40manoharreddy&#39;;re=
turn true;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20=
171002131042.GA12477%<wbr>40manoharreddy</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_3035_881840937.1506951379063--

------=_Part_3034_2025246927.1506951379063--

