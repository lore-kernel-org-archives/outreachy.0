X-GM-THRID: 6341665121383743488
X-Received: by 10.194.69.133 with SMTP id e5mr512949wju.8.1476538195070;
        Sat, 15 Oct 2016 06:29:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.75 with SMTP id l72ls1639935lfi.31.gmail; Sat, 15 Oct
 2016 06:29:53 -0700 (PDT)
X-Received: by 10.25.23.164 with SMTP id 36mr522276lfx.4.1476538193669;
        Sat, 15 Oct 2016 06:29:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h10si164729wmg.0.2016.10.15.06.29.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 06:29:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,497,1473112800"; 
   d="scan'208";a="240902649"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2016 15:29:31 +0200
Date: Sat, 15 Oct 2016 15:29:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: i4l: No assignment in if
 statements
In-Reply-To: <20161015132041.GA20307@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1610151525310.9280@hadrien>
References: <20161015132041.GA20307@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 15 Oct 2016, Mihaela Muraru wrote:

> Move the assignment before the statement 'if'.
> Found with Coccinelle:
> @r1@
> identifier ptr;
> expression fn;
> statement S;
> constant c;
> @@
>
> +ptr=fn;
>  if (
> -	(ptr=fn)
> +	ptr
> 	< c) S
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
> Changes in v2:
> 	- rewrite the semantic patch;
> ---
>  drivers/staging/i4l/pcbit/callbacks.c | 28 ++++++++++++++++++----------
>  1 file changed, 18 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/i4l/pcbit/callbacks.c b/drivers/staging/i4l/pcbit/callbacks.c
> index efb6d6a..6d8d02d 100644
> --- a/drivers/staging/i4l/pcbit/callbacks.c
> +++ b/drivers/staging/i4l/pcbit/callbacks.c
> @@ -56,8 +56,8 @@ void cb_out_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	 *     - kfree   when msg has been sent
>  	 */
>
> -	if ((len = capi_conn_req(cbdata->data.setup.CalledPN, &skb,
> -				 chan->proto)) < 0)
> +	len = capi_conn_req(cbdata->data.setup.CalledPN, &skb, chan->proto);
> +	if (len < 0)
>  	{

Perhaps you could push this { up to the previous line at the same time.

>  		printk("capi_conn_req failed\n");
>  		return;
> @@ -89,7 +89,8 @@ void cb_out_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	int len;
>  	ushort refnum;
>
> -	if ((len = capi_conn_active_resp(chan, &skb)) < 0)
> +	len = capi_conn_active_resp(chan, &skb);
> +	if (len < 0)
>  	{
>  		printk("capi_conn_active_req failed\n");
>  		return;
> @@ -110,7 +111,8 @@ void cb_out_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
>
>  	/* Select protocol  */
>
> -	if ((len = capi_select_proto_req(chan, &skb, 1 /*outgoing*/)) < 0) {
> +	len = capi_select_proto_req(chan, &skb, 1);
> +	if (len /*outgoing*/< 0) {

The outgoing comment really seems to be attached to the argument 1 in the
function call.

>  		printk("capi_select_proto_req failed\n");
>  		return;
>  	}
> @@ -170,7 +172,8 @@ void cb_in_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	dev->dev_if->statcallb(&ictl);
>
>
> -	if ((len = capi_conn_resp(chan, &skb)) < 0) {
> +	len = capi_conn_resp(chan, &skb);
> +	if (len < 0) {
>  		printk(KERN_DEBUG "capi_conn_resp failed\n");
>  		return;
>  	}
> @@ -194,7 +197,8 @@ void cb_in_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	struct sk_buff *skb;
>  	int len;
>
> -	if ((len = capi_conn_active_req(chan, &skb)) < 0) {
> +	len = capi_conn_active_req(chan, &skb);
> +	if (len < 0) {
>  		printk(KERN_DEBUG "capi_conn_active_req failed\n");
>  		return;
>  	}
> @@ -220,7 +224,8 @@ void cb_in_3(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	struct sk_buff *skb;
>  	int len;
>
> -	if ((len = capi_select_proto_req(chan, &skb, 0 /*incoming*/)) < 0)
> +	len = capi_select_proto_req(chan, &skb, 0);
> +	if (len /*incoming*/< 0)

Likewise here the incoming seems to be attached to the 0 argument.

It's a separate issue, but it really looks like this argument should be a
boolean, or an enum that would eliminate the need for the comment.

julia

>  	{
>  		printk("capi_select_proto_req failed\n");
>  		return;
> @@ -247,7 +252,8 @@ void cb_disc_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	ushort refnum;
>  	isdn_ctrl ictl;
>
> -	if ((len = capi_disc_resp(chan, &skb)) < 0) {
> +	len = capi_disc_resp(chan, &skb);
> +	if (len < 0) {
>  		printk("capi_disc_resp failed\n");
>  		return;
>  	}
> @@ -275,7 +281,8 @@ void cb_disc_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	int len;
>  	ushort refnum;
>
> -	if ((len = capi_disc_req(chan->callref, &skb, CAUSE_NORMAL)) < 0)
> +	len = capi_disc_req(chan->callref, &skb, CAUSE_NORMAL);
> +	if (len < 0)
>  	{
>  		printk("capi_disc_req failed\n");
>  		return;
> @@ -318,7 +325,8 @@ void cb_selp_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	int len;
>  	ushort refnum;
>
> -	if ((len = capi_activate_transp_req(chan, &skb)) < 0)
> +	len = capi_activate_transp_req(chan, &skb);
> +	if (len < 0)
>  	{
>  		printk("capi_conn_activate_transp_req failed\n");
>  		return;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161015132041.GA20307%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

