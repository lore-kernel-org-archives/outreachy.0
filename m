X-GM-THRID: 6668981360875536384
X-Received: by 2002:a1c:6c15:: with SMTP id h21mr506178wmc.10.1552754539777;
        Sat, 16 Mar 2019 09:42:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:dc0e:: with SMTP id t14ls2373414wri.6.gmail; Sat, 16 Mar
 2019 09:42:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxVu8npnUJmi4x03Jk6iz9R2CPDOtcSj0LqAr+B4DQjA+wihz6FJF6iVFLeMOrBAW+FUVb1
X-Received: by 2002:adf:e551:: with SMTP id z17mr436907wrm.11.1552754538903;
        Sat, 16 Mar 2019 09:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552754538; cv=none;
        d=google.com; s=arc-20160816;
        b=RUtush8xhCvdxOkgTbxry+8ZQnYUx1rBKZqyUC8IMZwinjciFvWLBoD88d7WIDIT2i
         RrVaX8AhEGAsL4Gpo+f0G6Bn184NlgsVtKpR8GvY+PLwv8xqOJ70Cq07uMIaQXXV9RAK
         GJ4sqeNDQjgQ9CpTpmEzz6Bl1uj2Aqa/Jwr01RmuyU9eg5Y974QNInJnhbTWcZGnyK2e
         IYKPUWCzkgLquQ/mxnHrzYCZAqOGGbeNburiF8PquWyf3ew9leqsWSSJHSabdNs1D03T
         UT4pbcMSiDUMR5Cn/0GzLwh+fXWLx95VHwcqkuaBT7R5hToWRMMdB4BKSDUptF2oUp/5
         sv0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=S7E3dWml5AF207le5KEIQ7TazgcFvH+cuvmEngeZHIk=;
        b=aAthRF4BYZ+I7CyDtsip5ypCHIMk4/GA1IlZDrWqmlD5+8A5I8y3F41hBMAe/8r/ZR
         mi2sihP+JEO1ilAUVLaQJrIdxE31YigqpgRCqmHm0efhY5MSHXu14PkZ7xhrkgMTVmx3
         YVaKPW7mSfntYLgj0TmVmlg5ErmPZ3BIwNknOmyKT8+l5wYDGxj9cH8p+LUB6NfQK+/K
         xYi52HR19V0Maxx6Xo+HdHa+OsydaaoK8KnzAnjQijsUXEfo3TQxJ+E4SGmDyNqaGyn4
         k7ti9M9ska+kfE740ylPdemjhaHb2vCeVoKzCYGc7NgaT0MVxOo+3ehledMiXvl9+8Sh
         7tKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n5si293181wrj.0.2019.03.16.09.42.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:42:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="299588850"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 17:42:18 +0100
Date: Sat, 16 Mar 2019 17:42:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] Staging: rtl8188eu: rtw_recv.c:
 fix a paranthesis -> parenthesis issue.
In-Reply-To: <20190316162549.19083-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161741510.2487@hadrien>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com> <20190316162549.19083-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Sanjana Sanikommu wrote:

> Fix a paranthesis -> parenthesis issue which removed check after compiled using
> checkpatch.pl

I don't understand the log message.  The suggestion paranthesis ->
parenthesis was a spelling fix.

julia

>
> CHECK: Remove unnecessary paranthesis -> paranthesis.
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index 0d04057e6cf6..fc72e797f8e5 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -64,9 +64,9 @@ int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
>  	precvframe = PTR_ALIGN(precvpriv->pallocated_frame_buf, RXFRAME_ALIGN_SZ);
>
>  	for (i = 0; i < NR_RECVFRAME; i++) {
> -		INIT_LIST_HEAD(&(precvframe->list));
> +		INIT_LIST_HEAD(&precvframe->list);
>
> -		list_add_tail(&(precvframe->list),
> +		list_add_tail(&precvframe->list,
>  				     &(precvpriv->free_recv_queue.queue));
>
>  		precvframe->pkt = NULL;
> @@ -1336,7 +1336,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
>  	plist = phead->next;
>  	pfhdr = list_entry(plist, struct recv_frame, list);
>  	prframe = pfhdr;
> -	list_del_init(&(prframe->list));
> +	list_del_init(&prframe->list);
>
>  	if (curfragnum != pfhdr->attrib.frag_num) {
>  		/* the first fragment number must be 0 */
> @@ -1663,9 +1663,9 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
>  			break;
>  	}
>
> -	list_del_init(&(prframe->list));
> +	list_del_init(&prframe->list);
>
> -	list_add_tail(&(prframe->list), plist);
> +	list_add_tail(&prframe->list), plist;
>  	return true;
>  }
>
> @@ -1704,7 +1704,7 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
>  				 ("%s: indicate=%d seq=%d amsdu=%d\n",
>  				  __func__, preorder_ctrl->indicate_seq, pattrib->seq_num, pattrib->amsdu));
>  			plist = plist->next;
> -			list_del_init(&(prframe->list));
> +			list_del_init(&prframe->list);
>
>  			if (SN_EQUAL(preorder_ctrl->indicate_seq, pattrib->seq_num))
>  				preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) & 0xFFF;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316162549.19083-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

