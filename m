X-GM-THRID: 6665631422157422592
X-Received: by 2002:a0c:950d:: with SMTP id l13mr10531909qvl.20.1552047933360;
        Fri, 08 Mar 2019 04:25:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:3841:: with SMTP id f62ls640021qka.1.gmail; Fri, 08 Mar
 2019 04:25:32 -0800 (PST)
X-Received: by 2002:a37:408d:: with SMTP id n135mr3697936qka.26.1552047932857;
        Fri, 08 Mar 2019 04:25:32 -0800 (PST)
Received: by 2002:a05:620a:1454:0:0:0:0 with SMTP id i20msqkl;
        Thu, 7 Mar 2019 05:20:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqwjCpQW8xLBixsuYkN0YJhBXfMxrCbDrc0vnOg2brd4Oc6BKqjDIHISh9y/Kz9BtlMoQept
X-Received: by 2002:a50:addd:: with SMTP id b29mr4893268edd.11.1551964820630;
        Thu, 07 Mar 2019 05:20:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551964820; cv=none;
        d=google.com; s=arc-20160816;
        b=fo4NlQo5/suyPfLjF6eJE1rTr+XaoAig9VFLj9p4A444pTXY8w31GSOb5zoQ319cWu
         CeNdVVCjeXXLd07sm4L5jjHLp2xhFOqT3cHT+aozSbyeaKw0rlziVM/SPo2siqCQNxFJ
         n5k4DDRc5nh3LLsILbvPfAyY+3hbIFLuuiFwYaSwUXEjN3J2LVPZFt5VvemrfnCke5v3
         yvxdVLQD7phrKu5xe5WOLlHAdMmMIuALqT4Sz7bMZWaAxNcacRPtuE+PO9KB0kFBIW9g
         46wWUDmkdSaxycBwAv2h9ni+2NL8eTq+LYpIQevEFG5kfTE79QiIsWKwktCgjXwI1zqB
         RsbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=j/QYGckZ9j+1xLnWrg2TSxWP2rHiE07EMb+foUqWLFM=;
        b=M4vSbSZVSvsUDR2si0L8Bp8asvSrR4rlRvLaiLpDycsI293P/b8nlfrUKvmGb/+LeV
         sCxrsRiToaKo0i1lWOji5gccuJQFVGI3sNOAJmVGg969RvgzvCfqxOPGc0FmvZnzhnMq
         GUfKwp+T6IoCYfxmPEOa0bERNQF2h8Uox7oum+Qts8FXlltLQo8mKVVN2exsiLLrAQt3
         L/5iTJh6KxYkmnda910ki/R+lh8f7BY4qNHop2JB9sDRvIepbpvQ9RXljZcNm9AaecoT
         GqIrPc1J3LXRO1BBLKOp6Bc0tK6f3J/wZU2GtlIptc5sYNxRj76n6U+PtAaPCgW/yPL7
         gl1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q1si173530edd.5.2019.03.07.05.20.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 05:20:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,451,1544482800"; 
   d="scan'208";a="372350027"
Received: from wifi-eduroam-85-233.paris.inria.fr ([128.93.85.233])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2019 14:20:20 +0100
Date: Thu, 7 Mar 2019 14:20:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Replace NULL
 comparisons
In-Reply-To: <1551963249-12892-1-git-send-email-daniela.mormocea@gmail.com>
Message-ID: <alpine.DEB.2.20.1903071419460.5181@hadrien>
References: <1551963249-12892-1-git-send-email-daniela.mormocea@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Mar 2019, Daniela Mormocea wrote:

> Replace all NULL comparisons in the file
> to get rid of checkpatch warnings
>
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_recv.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> index 5bf9070..4c3103e 100644
> --- a/drivers/staging/rtl8712/rtl8712_recv.c
> +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> @@ -135,7 +135,7 @@ int r8712_free_recvframe(union recv_frame *precvframe,
>  	spin_lock_irqsave(&pfree_recv_queue->lock, irqL);
>  	list_del_init(&(precvframe->u.hdr.list));
>  	list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
> -	if (padapter != NULL) {
> +	if (padapter) {
>  		if (pfree_recv_queue == &precvpriv->free_recv_queue)
>  			precvpriv->free_recvframe_cnt++;
>  	}
> @@ -273,7 +273,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
>  		/* 0~(n-1) fragment frame
>  		 * enqueue to defraf_g
>  		 */
> -		if (pdefrag_q != NULL) {
> +		if (pdefrag_q) {
>  			if (fragnum == 0) {
>  				/*the first fragment*/
>  				if (!list_empty(&pdefrag_q->queue)) {
> @@ -299,7 +299,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
>  		/* the last fragment frame
>  		 * enqueue the last fragment
>  		 */
> -		if (pdefrag_q != NULL) {
> +		if (pdefrag_q) {
>  			phead = &pdefrag_q->queue;
>  			list_add_tail(&pfhdr->list, phead);
>  			/*call recvframe_defrag to defrag*/
> @@ -313,7 +313,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
>  			prtnframe = NULL;
>  		}
>  	}
> -	if ((prtnframe != NULL) && (prtnframe->u.hdr.attrib.privacy)) {
> +	if ((prtnframe) && (prtnframe->u.hdr.attrib.privacy)) {

You don't need the parentheses on prtnfram either.

julia

>  		/* after defrag we must check tkip mic code */
>  		if (r8712_recvframe_chkmic(padapter, prtnframe) == _FAIL) {
>  			r8712_free_recvframe(prtnframe, pfree_recv_queue);
> @@ -889,7 +889,7 @@ static void process_link_qual(struct _adapter *padapter,
>  	struct rx_pkt_attrib *pattrib;
>  	struct smooth_rssi_data *sqd = &padapter->recvpriv.signal_qual_data;
>
> -	if (prframe == NULL || padapter == NULL)
> +	if (!prframe || !padapter)
>  		return;
>  	pattrib = &prframe->u.hdr.attrib;
>  	if (pattrib->signal_qual != 0) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551963249-12892-1-git-send-email-daniela.mormocea%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

