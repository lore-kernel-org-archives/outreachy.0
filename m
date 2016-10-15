X-GM-THRID: 6341665121383743488
X-Received: by 10.28.29.195 with SMTP id d186mr132896wmd.12.1476535734337;
        Sat, 15 Oct 2016 05:48:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.194.6 with SMTP id s6ls392917wmf.25.canary; Sat, 15 Oct
 2016 05:48:53 -0700 (PDT)
X-Received: by 10.194.111.229 with SMTP id il5mr503901wjb.1.1476535733794;
        Sat, 15 Oct 2016 05:48:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w63si117964wmf.2.2016.10.15.05.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 05:48:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,497,1473112800"; 
   d="scan'208";a="196881642"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2016 14:48:52 +0200
Date: Sat, 15 Oct 2016 14:48:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: i4l: No assignment in if
 statements
In-Reply-To: <20161015121929.GA17750@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1610151446410.9280@hadrien>
References: <20161015121929.GA17750@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 15 Oct 2016, Mihaela Muraru wrote:

> Does the assignment before the statement  'if'.

Does -> Move.

There are some cases below where a comment got moved around.  This is
perhaps the fault of Coccinelle, but you should put the comments back
where they were.

> Found with Coccinelle:
> @r1@
> identifier ptr;
> expression fn;
> statement S;
> constant c;
> @@
>
> -if ((ptr = fn) < c ) S
> +ptr = fn;
> +if (ptr < c ) S

Actually, this rule could be:

+ptr=fn;
-if ((ptr=fn) < c)
+if (ptr<c)
  S

That is, you don't need toremove and add back S.  This may help with the
comment issue (not sure).

julia


>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/i4l/pcbit/callbacks.c | 37 +++++++++++++++++++----------------
>  1 file changed, 20 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/staging/i4l/pcbit/callbacks.c b/drivers/staging/i4l/pcbit/callbacks.c
> index efb6d6a..7806dbb 100644
> --- a/drivers/staging/i4l/pcbit/callbacks.c
> +++ b/drivers/staging/i4l/pcbit/callbacks.c
> @@ -56,9 +56,8 @@ void cb_out_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	 *     - kfree   when msg has been sent
>  	 */
>
> -	if ((len = capi_conn_req(cbdata->data.setup.CalledPN, &skb,
> -				 chan->proto)) < 0)
> -	{
> +	len = capi_conn_req(cbdata->data.setup.CalledPN, &skb, chan->proto);
> +	if (len < 0) {
>  		printk("capi_conn_req failed\n");
>  		return;
>  	}
> @@ -89,8 +88,8 @@ void cb_out_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	int len;
>  	ushort refnum;
>
> -	if ((len = capi_conn_active_resp(chan, &skb)) < 0)
> -	{
> +	len = capi_conn_active_resp(chan, &skb);
> +	if (len < 0) {
>  		printk("capi_conn_active_req failed\n");
>  		return;
>  	}
> @@ -110,10 +109,11 @@ void cb_out_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
>
>  	/* Select protocol  */
>
> -	if ((len = capi_select_proto_req(chan, &skb, 1 /*outgoing*/)) < 0) {
> +	len = capi_select_proto_req(chan, &skb, 1);
> +	if (len < 0) {
>  		printk("capi_select_proto_req failed\n");
>  		return;
> -	}
> +	} /*outgoing*/
>
>  	refnum = last_ref_num++ & 0x7fffU;
>  	chan->s_refnum = refnum;
> @@ -170,7 +170,8 @@ void cb_in_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	dev->dev_if->statcallb(&ictl);
>
>
> -	if ((len = capi_conn_resp(chan, &skb)) < 0) {
> +	len = capi_conn_resp(chan, &skb);
> +	if (len < 0) {
>  		printk(KERN_DEBUG "capi_conn_resp failed\n");
>  		return;
>  	}
> @@ -194,7 +195,8 @@ void cb_in_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	struct sk_buff *skb;
>  	int len;
>
> -	if ((len = capi_conn_active_req(chan, &skb)) < 0) {
> +	len = capi_conn_active_req(chan, &skb);
> +	if (len < 0) {
>  		printk(KERN_DEBUG "capi_conn_active_req failed\n");
>  		return;
>  	}
> @@ -220,11 +222,11 @@ void cb_in_3(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	struct sk_buff *skb;
>  	int len;
>
> -	if ((len = capi_select_proto_req(chan, &skb, 0 /*incoming*/)) < 0)
> -	{
> +	len = capi_select_proto_req(chan, &skb, 0);
> +	if (len < 0) {
>  		printk("capi_select_proto_req failed\n");
>  		return;
> -	}
> +	} /*incoming*/
>
>  	refnum = last_ref_num++ & 0x7fffU;
>  	chan->s_refnum = refnum;
> @@ -247,7 +249,8 @@ void cb_disc_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	ushort refnum;
>  	isdn_ctrl ictl;
>
> -	if ((len = capi_disc_resp(chan, &skb)) < 0) {
> +	len = capi_disc_resp(chan, &skb);
> +	if (len < 0) {
>  		printk("capi_disc_resp failed\n");
>  		return;
>  	}
> @@ -275,8 +278,8 @@ void cb_disc_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	int len;
>  	ushort refnum;
>
> -	if ((len = capi_disc_req(chan->callref, &skb, CAUSE_NORMAL)) < 0)
> -	{
> +	len = capi_disc_req(chan->callref, &skb, CAUSE_NORMAL);
> +	if (len < 0) {
>  		printk("capi_disc_req failed\n");
>  		return;
>  	}
> @@ -318,8 +321,8 @@ void cb_selp_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
>  	int len;
>  	ushort refnum;
>
> -	if ((len = capi_activate_transp_req(chan, &skb)) < 0)
> -	{
> +	len = capi_activate_transp_req(chan, &skb);
> +	if (len < 0) {
>  		printk("capi_conn_activate_transp_req failed\n");
>  		return;
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161015121929.GA17750%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

