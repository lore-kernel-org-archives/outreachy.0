X-GM-THRID: 6255332250518290432
X-Received: by 10.112.141.33 with SMTP id rl1mr1387157lbb.9.1456433765455;
        Thu, 25 Feb 2016 12:56:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.169.204 with SMTP id s195ls119639lfe.64.gmail; Thu, 25 Feb
 2016 12:56:04 -0800 (PST)
X-Received: by 10.112.151.240 with SMTP id ut16mr5884647lbb.16.1456433764879;
        Thu, 25 Feb 2016 12:56:04 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v197si761wmv.1.2016.02.25.12.56.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 12:56:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="166010816"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 21:56:04 +0100
Date: Thu, 25 Feb 2016 21:55:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Use trailing */ on
 separate line
In-Reply-To: <20160225204356.GA29816@Toblerone>
Message-ID: <alpine.DEB.2.02.1602252155110.2038@localhost6.localdomain6>
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

Maybe the ============ line is not needed at all.  There are lots of other 
examples of comments about the parameters in the Linux kernel, and they 
don't have such a separator.

julia

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

