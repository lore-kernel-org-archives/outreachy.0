X-GM-THRID: 6668229306176503808
Date: Thu, 14 Mar 2019 06:07:42 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <fb4ad050-f3b1-4d41-aa03-9c7e92aac0f1@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1903141401060.19170@hadrien>
References: <20190314125517.GA3667@sanjana-Inspiron-5570>
 <alpine.DEB.2.20.1903141401060.19170@hadrien>
Subject: Re: [PATCH 2/5] Staging: rtl8188eu: rtw_recv.c: fix a paranthesis
 issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_325_1178881640.1552568862307"
X-Google-Token: EJ6kqeQFAwi-QCMD89U0
X-Google-IP: 123.201.105.15

------=_Part_325_1178881640.1552568862307
Content-Type: multipart/alternative; 
	boundary="----=_Part_326_653557920.1552568862308"

------=_Part_326_653557920.1552568862308
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, March 14, 2019 at 6:31:43 PM UTC+5:30, Julia Lawall wrote:
>
> Why is this 2/5?  Are more coming? 
> Yes they are coming ;)

 

> You don't need to put me in CC.  I read the mailing list. 
>
 

> Okay I won't from next time.
>
    
    Sanjana 
 

> julia 
>
> On Thu, 14 Mar 2019, Sanjana wrote: 
>
> > This patch fixes the checkpatch.pl CHECK in rtw_recv.c file: 
> > 
> > CHECK: Unnecessary paranthesis around prframe->list 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8188eu/core/rtw_recv.c | 24 +++++++++++------------ 
> >  1 file changed, 12 insertions(+), 12 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c 
> b/drivers/staging/rtl8188eu/core/rtw_recv.c 
> > index cc6f1a23da01..443a62d6ee24 100644 
> > --- a/drivers/staging/rtl8188eu/core/rtw_recv.c 
> > +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c 
> > @@ -64,10 +64,10 @@ int _rtw_init_recv_priv(struct recv_priv *precvpriv, 
> struct adapter *padapter) 
> >          precvframe = PTR_ALIGN(precvpriv->pallocated_frame_buf, 
> RXFRAME_ALIGN_SZ); 
> > 
> >          for (i = 0; i < NR_RECVFRAME; i++) { 
> > -                INIT_LIST_HEAD(&(precvframe->list)); 
> > +                INIT_LIST_HEAD(&precvframe->list); 
> > 
> > -                list_add_tail(&(precvframe->list), 
> > -                                     
> &(precvpriv->free_recv_queue.queue)); 
> > +                list_add_tail(&precvframe->list, 
> > +                                     
> &precvpriv->free_recv_queue.queue); 
> > 
> >                  precvframe->pkt = NULL; 
> > 
> > @@ -134,9 +134,9 @@ int rtw_free_recvframe(struct recv_frame 
> *precvframe, 
> > 
> >          spin_lock_bh(&pfree_recv_queue->lock); 
> > 
> > -        list_del_init(&(precvframe->list)); 
> > +        list_del_init(&precvframe->list); 
> > 
> > -        list_add_tail(&(precvframe->list), 
> get_list_head(pfree_recv_queue)); 
> > +        list_add_tail(&precvframe->list, 
> get_list_head(pfree_recv_queue)); 
> > 
> >          spin_unlock_bh(&pfree_recv_queue->lock); 
> > 
> > @@ -145,8 +145,8 @@ int rtw_free_recvframe(struct recv_frame 
> *precvframe, 
> > 
> >  int _rtw_enqueue_recvframe(struct recv_frame *precvframe, struct 
> __queue *queue) 
> >  { 
> > -        list_del_init(&(precvframe->list)); 
> > -        list_add_tail(&(precvframe->list), get_list_head(queue)); 
> > +        list_del_init(&precvframe->list); 
> > +        list_add_tail(&precvframe->list, get_list_head(queue)); 
> > 
> >          return _SUCCESS; 
> >  } 
> > @@ -1336,7 +1336,7 @@ static struct recv_frame *recvframe_defrag(struct 
> adapter *adapter, 
> >          plist = phead->next; 
> >          pfhdr = list_entry(plist, struct recv_frame, list); 
> >          prframe = pfhdr; 
> > -        list_del_init(&(prframe->list)); 
> > +        list_del_init(&prframe->list); 
> > 
> >          if (curfragnum != pfhdr->attrib.frag_num) { 
> >                  /* the first fragment number must be 0 */ 
> > @@ -1506,7 +1506,7 @@ static int amsdu_to_msdu(struct adapter *padapter, 
> struct recv_frame *prframe) 
> >          struct rx_pkt_attrib *pattrib; 
> >          struct sk_buff *sub_skb, *subframes[MAX_SUBFRAME_COUNT]; 
> >          struct recv_priv *precvpriv = &padapter->recvpriv; 
> > -        struct __queue *pfree_recv_queue = 
> &(precvpriv->free_recv_queue); 
> > +        struct __queue *pfree_recv_queue = &precvpriv->free_recv_queue; 
> > 
> >          nr_subframes = 0; 
> >          pattrib = &prframe->attrib; 
> > @@ -1663,9 +1663,9 @@ static int enqueue_reorder_recvframe(struct 
> recv_reorder_ctrl *preorder_ctrl, 
> >                          break; 
> >          } 
> > 
> > -        list_del_init(&(prframe->list)); 
> > +        list_del_init(&prframe->list); 
> > 
> > -        list_add_tail(&(prframe->list), plist); 
> > +        list_add_tail(&prframe->list, plist); 
> >          return true; 
> >  } 
> > 
> > @@ -1704,7 +1704,7 @@ static int recv_indicatepkts_in_order(struct 
> adapter *padapter, struct recv_reor 
> >                                   ("%s: indicate=%d seq=%d amsdu=%d\n", 
> >                                    __func__, 
> preorder_ctrl->indicate_seq, pattrib->seq_num, pattrib->amsdu)); 
> >                          plist = plist->next; 
> > -                        list_del_init(&(prframe->list)); 
> > +                        list_del_init(&prframe->list); 
> > 
> >                          if (SN_EQUAL(preorder_ctrl->indicate_seq, 
> pattrib->seq_num)) 
> >                                  preorder_ctrl->indicate_seq = 
> (preorder_ctrl->indicate_seq + 1) & 0xFFF; 
> > -- 
> > 2.17.1 
> > 
> > 
>

------=_Part_326_653557920.1552568862308
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, March 14, 2019 at 6:31:43 PM UTC+5:30=
, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Why is th=
is 2/5? =C2=A0Are more coming?
<br>
Yes they are coming ;)</blockquote><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc soli=
d;padding-left: 1ex;">You don&#39;t need to put me in CC. =C2=A0I read the =
mailing list.
<br></blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">Okay I won&#39;t from next time.<br></blockquote><div>=C2=A0 =C2=A0=
=C2=A0</div><div>=C2=A0 =C2=A0 Sanjana=C2=A0</div><div>=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left=
: 1px #ccc solid;padding-left: 1ex;">julia
<br>
<br>On Thu, 14 Mar 2019, Sanjana wrote:
<br>
<br>&gt; This patch fixes the <a href=3D"http://checkpatch.pl" target=3D"_b=
lank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.co=
m/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQ=
jCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&=
#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x2=
6sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">=
checkpatch.pl</a> CHECK in rtw_recv.c file:
<br>&gt;
<br>&gt; CHECK: Unnecessary paranthesis around prframe-&gt;list
<br>&gt;
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"X8YK36P3CgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c | 24 ++++++++=
+++------------
<br>&gt; =C2=A01 file changed, 12 insertions(+), 12 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c b/driv=
ers/staging/rtl8188eu/<wbr>core/rtw_recv.c
<br>&gt; index cc6f1a23da01..443a62d6ee24 100644
<br>&gt; --- a/drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c
<br>&gt; +++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c
<br>&gt; @@ -64,10 +64,10 @@ int _rtw_init_recv_priv(struct recv_priv *prec=
vpriv, struct adapter *padapter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0precvframe =
=3D PTR_ALIGN(precvpriv-&gt;<wbr>pallocated_frame_buf, RXFRAME_ALIGN_SZ);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0=
; i &lt; NR_RECVFRAME; i++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INIT_LIST_<wbr>HEAD(&amp;(precvframe-&gt;l=
ist));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INIT_LIST_<wbr>HEAD(&amp;precvframe-&gt;li=
st);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_add_<wbr>tail(&amp;(precvframe-&gt;li=
st),
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 &=
amp;(precvpriv-&gt;free_recv_queue.<wbr>queue));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_add_<wbr>tail(&amp;precvframe-&gt;lis=
t,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 &=
amp;precvpriv-&gt;free_recv_queue.<wbr>queue);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0precvframe-&gt;<wbr>pkt =3D NULL;
<br>&gt;
<br>&gt; @@ -134,9 +134,9 @@ int rtw_free_recvframe(struct recv_frame *prec=
vframe,
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_lock_bh=
(&amp;pfree_<wbr>recv_queue-&gt;lock);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_del_init(&am=
p;(<wbr>precvframe-&gt;list));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_del_init(&am=
p;<wbr>precvframe-&gt;list);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_add_tail(&am=
p;(<wbr>precvframe-&gt;list), get_list_head(pfree_recv_<wbr>queue));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_add_tail(&am=
p;<wbr>precvframe-&gt;list, get_list_head(pfree_recv_<wbr>queue));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock_=
bh(&amp;<wbr>pfree_recv_queue-&gt;lock);
<br>&gt;
<br>&gt; @@ -145,8 +145,8 @@ int rtw_free_recvframe(struct recv_frame *prec=
vframe,
<br>&gt;
<br>&gt; =C2=A0int _rtw_enqueue_recvframe(struct recv_frame *precvframe, st=
ruct __queue *queue)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_del_init(&am=
p;(<wbr>precvframe-&gt;list));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_add_tail(&am=
p;(<wbr>precvframe-&gt;list), get_list_head(queue));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_del_init(&am=
p;<wbr>precvframe-&gt;list);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_add_tail(&am=
p;<wbr>precvframe-&gt;list, get_list_head(queue));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return _SUCC=
ESS;
<br>&gt; =C2=A0}
<br>&gt; @@ -1336,7 +1336,7 @@ static struct recv_frame *recvframe_defrag(s=
truct adapter *adapter,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0plist =3D ph=
ead-&gt;next;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pfhdr =3D li=
st_entry(plist, struct recv_frame, list);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0prframe =3D =
pfhdr;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_del_init(&am=
p;(<wbr>prframe-&gt;list));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_del_init(&am=
p;<wbr>prframe-&gt;list);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (curfragn=
um !=3D pfhdr-&gt;attrib.frag_num) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* the first fragment number must be 0 =
*/
<br>&gt; @@ -1506,7 +1506,7 @@ static int amsdu_to_msdu(struct adapter *pad=
apter, struct recv_frame *prframe)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct rx_pk=
t_attrib *pattrib;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct sk_bu=
ff *sub_skb, *subframes[MAX_SUBFRAME_COUNT]<wbr>;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct recv_=
priv *precvpriv =3D &amp;padapter-&gt;recvpriv;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct __queue *p=
free_recv_queue =3D &amp;(precvpriv-&gt;free_recv_queue);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct __queue *p=
free_recv_queue =3D &amp;precvpriv-&gt;free_recv_queue;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0nr_subframes=
 =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pattrib =3D =
&amp;prframe-&gt;attrib;
<br>&gt; @@ -1663,9 +1663,9 @@ static int enqueue_reorder_recvframe(<wbr>st=
ruct recv_reorder_ctrl *preorder_ctrl,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_del_init(&am=
p;(<wbr>prframe-&gt;list));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_del_init(&am=
p;<wbr>prframe-&gt;list);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_add_tail(&am=
p;(<wbr>prframe-&gt;list), plist);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_add_tail(&am=
p;<wbr>prframe-&gt;list, plist);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return true;
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; @@ -1704,7 +1704,7 @@ static int recv_indicatepkts_in_order(<wbr>s=
truct adapter *padapter, struct recv_reor
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 (&quot;%s: i=
ndicate=3D%d seq=3D%d amsdu=3D%d\n&quot;,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0__func=
__, preorder_ctrl-&gt;indicate_seq, pattrib-&gt;seq_num, pattrib-&gt;amsdu)=
);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0plist =3D plist-&gt;next;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0list_<wbr>del_init(&amp;(prframe-&gt;list));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0list_<wbr>del_init(&amp;prframe-&gt;list);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (SN_EQUAL(preorder_ctrl-&gt;<wbr>indicate_seq, pattrib-&gt;seq_=
num))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0preorder_ctrl=
-&gt;indicate_seq =3D (preorder_ctrl-&gt;indicate_seq + 1) &amp; 0xFFF;
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt;
<br></blockquote></div>
------=_Part_326_653557920.1552568862308--

------=_Part_325_1178881640.1552568862307--

