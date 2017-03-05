X-GM-THRID: 6393330913423392768
X-Received: by 10.157.60.72 with SMTP id j8mr4301358ote.52.1488694532499;
        Sat, 04 Mar 2017 22:15:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls9503229otg.18.gmail; Sat, 04 Mar
 2017 22:15:32 -0800 (PST)
X-Received: by 10.237.49.81 with SMTP id 75mr3564077qtg.44.1488694532129;
        Sat, 04 Mar 2017 22:15:32 -0800 (PST)
Received: by 10.55.39.82 with SMTP id n79msqkn;
        Sat, 4 Mar 2017 16:51:47 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr1601847ljb.24.1488675106720;
        Sat, 04 Mar 2017 16:51:46 -0800 (PST)
Return-Path: <jsimmons@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:770:15f::2])
        by gmr-mx.google.com with ESMTPS id p144si55408wme.2.2017.03.04.16.51.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 16:51:46 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of jsimmons@infradead.org designates 2001:770:15f::2 as permitted sender) client-ip=2001:770:15f::2;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org;
       spf=pass (google.com: best guess record for domain of jsimmons@infradead.org designates 2001:770:15f::2 as permitted sender) smtp.mailfrom=jsimmons@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=LymKuCjU51ZDzLLqt2D5ntqXVht4DQYNORLv6yjtHnY=; b=IQNsyFWgE3+8Er59ptV34243n
	LFhT64cucqQMUctkASbTOPbRmPp9YL9NW7lacFgU3ZozhzhVf7bN3RwCpzGcUh4orNHEL8iCWGPlP
	u+ocQj7WZGnEiO/eAM6Ype9h1Dt82tubCHKTxKangPOOpKo3g0llDduSEbn6uwgkEvQeixtq7AzFV
	GJyyDUMVEdy6oKze0PsKubRU49P46zwIUqAXmuw/W9O11qdx78fOBv/MkygDP83dzwF399ZJHLNCZ
	pAYo9ncc4rnQ732+noDoqY8kC4qS8vCJk9Bib+McLUvI7C/Fze3tn9fHdhT05FvC0f1MToVNGhLuc
	PBh06jQ/A==;
Received: from jsimmons (helo=localhost)
	by casper.infradead.org with local-esmtp (Exim 4.87 #1 (Red Hat Linux))
	id 1ckKOb-0002yx-OL; Sun, 05 Mar 2017 00:51:35 +0000
Date: Sun, 5 Mar 2017 00:51:33 +0000 (GMT)
From: James Simmons <jsimmons@infradead.org>
To: simran singhal <singhalsimran0@gmail.com>
cc: Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org, 
    florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org, 
    linux-kernel@vger.kernel.org, oleg.drokin@intel.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v5 3/5] staging: lustre: lustre: Remove unnecessary cast
 on void pointer
In-Reply-To: <1488641453-22575-4-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.LFD.2.20.1703050050140.10898@casper.infradead.org>
References: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com> <1488641453-22575-4-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20170305_005133_926159_89F47573 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.1 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 NO_RELAYS              Informational: message was not relayed via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]


> The following Coccinelle script was used to detect this:
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
> (
>   *((T *)e)
> |
>   ((T *)x)[...]
> |
>   ((T*)x)->f
> |
> - (T*)
>   e
> )
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

Reviewed-by: James Simmons <jsimmons@infradead.org>

> ---
> 
>  v5:
>    -Fixed compilation warnings.
> 
>  drivers/staging/lustre/lustre/llite/range_lock.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/range_lock.c b/drivers/staging/lustre/lustre/llite/range_lock.c
> index 14148a0..161391b 100644
> --- a/drivers/staging/lustre/lustre/llite/range_lock.c
> +++ b/drivers/staging/lustre/lustre/llite/range_lock.c
> @@ -174,7 +174,7 @@ void range_unlock(struct range_lock_tree *tree, struct range_lock *lock)
>   */
>  static enum interval_iter range_lock_cb(struct interval_node *node, void *arg)
>  {
> -	struct range_lock *lock = (struct range_lock *)arg;
> +	struct range_lock *lock = arg;
>  	struct range_lock *overlap = node2rangelock(node);
>  
>  	lock->rl_blocking_ranges += overlap->rl_lock_count + 1;
> -- 
> 2.7.4
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
> 

