X-GM-THRID: 6255332250518290432
X-Received: by 10.25.154.129 with SMTP id c123mr5795543lfe.1.1456434059709;
        Thu, 25 Feb 2016 13:00:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.23.94 with SMTP id n91ls131825lfi.99.gmail; Thu, 25 Feb
 2016 13:00:57 -0800 (PST)
X-Received: by 10.112.156.33 with SMTP id wb1mr5856169lbb.7.1456434057456;
        Thu, 25 Feb 2016 13:00:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si2302wmd.0.2016.02.25.13.00.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 13:00:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="204675585"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 22:00:57 +0100
Date: Thu, 25 Feb 2016 22:00:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Use trailing */ on
 separate line
In-Reply-To: <20160225204356.GA29816@Toblerone>
Message-ID: <alpine.DEB.2.02.1602252157450.2038@localhost6.localdomain6>
References: <20160225204356.GA29816@Toblerone>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 26 Feb 2016, Rehas Sachdeva wrote:

> This patch fixes the following checkpatch.pl warning:
> Block comments use a trailing */ on a separate line.
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_tty.c | 6 ++++--

This one touches a file that was touched in another one.  In that case you 
have to make a patch series.

http://kernelnewbies.org/Outreachyfirstpatch#head-e0c4dbf8c60d25ca8e3ae133b6b65560f3c84c09

julia

>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
> index f36ca8c..8a7508a 100644
> --- a/drivers/staging/dgnc/dgnc_tty.c
> +++ b/drivers/staging/dgnc/dgnc_tty.c
> @@ -451,7 +451,8 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
>   *		buf	- Pointer to characters to be moved.
>   *		n	- Number of characters to move.
>   *
> - *=======================================================================*/
> + *=======================================================================
> + */
>  static void dgnc_wmove(struct channel_t *ch, char *buf, uint n)
>  {
>  	int	remain;
> @@ -495,7 +496,8 @@ static void dgnc_wmove(struct channel_t *ch, char *buf, uint n)
>   *
>   *	      ch      - Pointer to channel structure.
>   *
> - *=======================================================================*/
> + *=======================================================================
> + */
>  void dgnc_input(struct channel_t *ch)
>  {
>  	struct dgnc_board *bd;
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225204356.GA29816%40Toblerone.
> For more options, visit https://groups.google.com/d/optout.
> 

