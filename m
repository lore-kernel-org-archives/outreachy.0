X-GM-THRID: 6947995427572547584
Date: Tue, 6 Apr 2021 04:15:41 -0700 (PDT)
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <dfb16d4a-8d2f-4911-b150-009239420991n@googlegroups.com>
In-Reply-To: <alpine.DEB.2.22.394.2104061258040.2882@hadrien>
References: <cover.1617705825.git.zhansayabagdaulet@gmail.com>
 <5d2db1d233030ececcdd4934ca9c46cb998c0c5b.1617705825.git.zhansayabagdaulet@gmail.com>
 <alpine.DEB.2.22.394.2104061258040.2882@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8712: Rewrite NULL
 comparisons
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_572_157706529.1617707741540"

------=_Part_572_157706529.1617707741540
Content-Type: multipart/alternative; 
	boundary="----=_Part_573_176711562.1617707741540"

------=_Part_573_176711562.1617707741540
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On Tuesday, April 6, 2021 at 4:59:01 PM UTC+6 Julia....@inria.fr wrote:

>
>
> On Tue, 6 Apr 2021, Zhansaya Bagdauletkyzy wrote: 
>
> > Replace NULL comparisons with boolean negation. 
>
> This summarizes concisely what you did, which is helpful, but you could 
> also say why. For example, to make the code more concise or to improve 
> readability or for consistency with the rest of the code base. 
>
> julia 
>
> > Reported by checkpatch. 
> > 
> > Signed-off-by: Zhansaya Bagdauletkyzy <zhansaya...@gmail.com> 
> > --- 
> > drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++----- 
> > 1 file changed, 5 insertions(+), 5 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8712/rtl871x_recv.h 
> b/drivers/staging/rtl8712/rtl871x_recv.h 
> > index 7c9995060a6f..4aa39f4f3b84 100644 
> > --- a/drivers/staging/rtl8712/rtl871x_recv.h 
> > +++ b/drivers/staging/rtl8712/rtl871x_recv.h 
> > @@ -135,7 +135,7 @@ int recv_func(struct _adapter *padapter, void 
> *pcontext); 
> > static inline u8 *get_rxmem(union recv_frame *precvframe) 
> > { 
> > /* always return rx_head... */ 
> > - if (precvframe == NULL) 
> > + if (!precvframe) 
> > return NULL; 
> > return precvframe->u.hdr.rx_head; 
> > } 
> > @@ -143,7 +143,7 @@ static inline u8 *get_rxmem(union recv_frame 
> *precvframe) 
> > static inline u8 *get_recvframe_data(union recv_frame *precvframe) 
> > { 
> > /* always return rx_data */ 
> > - if (precvframe == NULL) 
> > + if (!precvframe) 
> > return NULL; 
> > return precvframe->u.hdr.rx_data; 
> > } 
> > @@ -153,7 +153,7 @@ static inline u8 *recvframe_pull(union recv_frame 
> *precvframe, sint sz) 
> > /* used for extract sz bytes from rx_data, update rx_data and return 
> > * the updated rx_data to the caller 
> > */ 
> > - if (precvframe == NULL) 
> > + if (!precvframe) 
> > return NULL; 
> > precvframe->u.hdr.rx_data += sz; 
> > if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) { 
> > @@ -170,7 +170,7 @@ static inline u8 *recvframe_put(union recv_frame 
> *precvframe, sint sz) 
> > * return the updated rx_tail to the caller 
> > * after putting, rx_tail must be still larger than rx_end. 
> > */ 
> > - if (precvframe == NULL) 
> > + if (!precvframe) 
> > return NULL; 
> > precvframe->u.hdr.rx_tail += sz; 
> > if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) { 
> > @@ -188,7 +188,7 @@ static inline u8 *recvframe_pull_tail(union 
> recv_frame *precvframe, sint sz) 
> > * updated rx_end to the caller 
> > * after pulling, rx_end must be still larger than rx_data. 
> > */ 
> > - if (precvframe == NULL) 
> > + if (!precvframe) 
> > return NULL; 
> > precvframe->u.hdr.rx_tail -= sz; 
> > if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) { 
> > -- 
> > 2.25.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/5d2db1d233030ececcdd4934ca9c46cb998c0c5b.1617705825.git.zhansayabagdaulet%40gmail.com. 
>
> >


Ok, I will resend it as V2. Thank you for your feedback.

------=_Part_573_176711562.1617707741540
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<br><div class="gmail_quote"><div dir="auto" class="gmail_attr">On Tuesday, April 6, 2021 at 4:59:01 PM UTC+6 Julia....@inria.fr wrote:<br></div><blockquote class="gmail_quote" style="margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<br>
<br>On Tue, 6 Apr 2021, Zhansaya Bagdauletkyzy wrote:
<br>
<br>&gt; Replace NULL comparisons with boolean negation.
<br>
<br>This summarizes concisely what you did, which is helpful, but you could
<br>also say why.  For example, to make the code more concise or to improve
<br>readability or for consistency with the rest of the code base.
<br>
<br>julia
<br>
<br>&gt; Reported by checkpatch.
<br>&gt;
<br>&gt; Signed-off-by: Zhansaya Bagdauletkyzy &lt;<a href="" data-email-masked="" rel="nofollow">zhansaya...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt;  drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
<br>&gt;  1 file changed, 5 insertions(+), 5 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
<br>&gt; index 7c9995060a6f..4aa39f4f3b84 100644
<br>&gt; --- a/drivers/staging/rtl8712/rtl871x_recv.h
<br>&gt; +++ b/drivers/staging/rtl8712/rtl871x_recv.h
<br>&gt; @@ -135,7 +135,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
<br>&gt;  static inline u8 *get_rxmem(union recv_frame *precvframe)
<br>&gt;  {
<br>&gt;  	/* always return rx_head... */
<br>&gt; -	if (precvframe == NULL)
<br>&gt; +	if (!precvframe)
<br>&gt;  		return NULL;
<br>&gt;  	return precvframe-&gt;u.hdr.rx_head;
<br>&gt;  }
<br>&gt; @@ -143,7 +143,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
<br>&gt;  static inline u8 *get_recvframe_data(union recv_frame *precvframe)
<br>&gt;  {
<br>&gt;  	/* always return rx_data */
<br>&gt; -	if (precvframe == NULL)
<br>&gt; +	if (!precvframe)
<br>&gt;  		return NULL;
<br>&gt;  	return precvframe-&gt;u.hdr.rx_data;
<br>&gt;  }
<br>&gt; @@ -153,7 +153,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
<br>&gt;  	/* used for extract sz bytes from rx_data, update rx_data and return
<br>&gt;  	 * the updated rx_data to the caller
<br>&gt;  	 */
<br>&gt; -	if (precvframe == NULL)
<br>&gt; +	if (!precvframe)
<br>&gt;  		return NULL;
<br>&gt;  	precvframe-&gt;u.hdr.rx_data += sz;
<br>&gt;  	if (precvframe-&gt;u.hdr.rx_data &gt; precvframe-&gt;u.hdr.rx_tail) {
<br>&gt; @@ -170,7 +170,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
<br>&gt;  	 * return the updated rx_tail to the caller
<br>&gt;  	 * after putting, rx_tail must be still larger than rx_end.
<br>&gt;  	 */
<br>&gt; -	if (precvframe == NULL)
<br>&gt; +	if (!precvframe)
<br>&gt;  		return NULL;
<br>&gt;  	precvframe-&gt;u.hdr.rx_tail += sz;
<br>&gt;  	if (precvframe-&gt;u.hdr.rx_tail &gt; precvframe-&gt;u.hdr.rx_end) {
<br>&gt; @@ -188,7 +188,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
<br>&gt;  	 * updated rx_end to the caller
<br>&gt;  	 * after pulling, rx_end must be still larger than rx_data.
<br>&gt;  	 */
<br>&gt; -	if (precvframe == NULL)
<br>&gt; +	if (!precvframe)
<br>&gt;  		return NULL;
<br>&gt;  	precvframe-&gt;u.hdr.rx_tail -= sz;
<br>&gt;  	if (precvframe-&gt;u.hdr.rx_tail &lt; precvframe-&gt;u.hdr.rx_data) {
<br>&gt; --
<br>&gt; 2.25.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="" data-email-masked="" rel="nofollow">outreachy-kern...@googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/5d2db1d233030ececcdd4934ca9c46cb998c0c5b.1617705825.git.zhansayabagdaulet%40gmail.com" target="_blank" rel="nofollow" data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=https://groups.google.com/d/msgid/outreachy-kernel/5d2db1d233030ececcdd4934ca9c46cb998c0c5b.1617705825.git.zhansayabagdaulet%2540gmail.com&amp;source=gmail&amp;ust=1617793865381000&amp;usg=AFQjCNEx-e53v7ejBN1YZ_Y8-P0Pgep3hA">https://groups.google.com/d/msgid/outreachy-kernel/5d2db1d233030ececcdd4934ca9c46cb998c0c5b.1617705825.git.zhansayabagdaulet%40gmail.com</a>.
<br>&gt;</blockquote><div><br></div><div>Ok, I will resend it as V2. Thank you for your feedback.</div></div>
------=_Part_573_176711562.1617707741540--

------=_Part_572_157706529.1617707741540--

