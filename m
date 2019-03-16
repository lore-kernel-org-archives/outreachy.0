X-GM-THRID: 6668981360875536384
X-Received: by 2002:a1c:2dcb:: with SMTP id t194mr500805wmt.8.1552744180074;
        Sat, 16 Mar 2019 06:49:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7dd7:: with SMTP id y206ls1401244wmc.2.gmail; Sat, 16
 Mar 2019 06:49:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyunW8HTViotNKN+kN6+LvBRRIYcw9Somrt+2AAXZ9yQd5eKNqFTR2vAuzAKwcNAGT8maeS
X-Received: by 2002:a1c:150:: with SMTP id 77mr266510wmb.22.1552744179260;
        Sat, 16 Mar 2019 06:49:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552744179; cv=none;
        d=google.com; s=arc-20160816;
        b=Mt77Q0/HY6AczjWY2JVQPF5f+p6ke0MzWOzp7AYbFzu5uOn+K0P7U2g+BCpHllo0cu
         KY+lkHCCMtTAeCu6kB14ekVcBQZ5cvqNc96vK711zVgIj1UtahdClP8APpjo8gISx9R1
         EwXx3McpTtI9qhumlYL7hTDwAvoDRB+ZQJm5Xv6oQGxC0KIHPpOvT98pSmVXWFhEZaQb
         elL8s56nsIBkD8BR20W1VAd/Fi75cOkvDQXeFFOfqMksEPxNaoGF+arsTUrSKMohmWs9
         56v9eQZb5B5bKZzmh5goi/Gnvh8JZEJulIKQbNDRCzrn8ALJj2PBAlXolVNg2n6PwZAn
         +F9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=eNg3Nc/XdFsqSv6vYJ5zlWa1yHevzrsIwfOKVboPeCQ=;
        b=bID2XGZ5+whwpxWSy48rxQ+HD9Qz/EvwN/F6HjoIWXk0et6KGeR0Fvjb7Y0/Sa/rXW
         oaWP0Fb4jw/m12xygqPZhWGXj6O5kBknql8BrznRFB3qT7/YT6L1eWwF+yj39B/1E95Z
         wOLLUlqkKc/Kpe8TN8yVdBu9DKWpvrnk9HzzokZGYw6zjuC1qr4YMwpScypn3CFzvijs
         SiAtNz3wkJZ+/eht7vcJW5Jma5m54Q7+mJPCsqFwRjusiUOxge/4vJ1zqVQvS4fJEhpj
         Ab0giRWtxBemii74B1GDIdwx/V0+JuVGJvjafFexCNaJ0hX1GGbN/i6wMeGPyEsU2Zjh
         vOSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n2si177153wrp.5.2019.03.16.06.49.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:49:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="374014752"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 14:49:38 +0100
Date: Sat, 16 Mar 2019 14:49:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: rtl8188eu: rtw_recv.c:
 fix a paranthesis issue
In-Reply-To: <20190316133711.8968-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161445230.2487@hadrien>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com> <20190316133711.8968-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Sanjana Sanikommu wrote:

> From: Sanjana <sanjana99reddy99@gmail.com>

The normal "From" line on your message is fine.  The goal is that there
should be a From line that is the same as the Signed-off-by line.  You
already have that, so there is no need to put another one, which in this
case is not the same as your Signed-off-by line.

In the subject line and in the message: paranthesis -> parenthesis.

> This patch fixes the checkpatch.pl CHECK in rtw_recv.c file:

The log message should not start with "This patch",  It should start with
an imperative verb.  That would be Fix, in your case.

Try to write a message that explains what you did and why, rather than
just saying that you fixed a warning.  How did you fix it?  Why is it
useful to fix it?

julia

>
> CHECK: Unnecessary paranthesis around prframe->list
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316133711.8968-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

