X-GM-THRID: 7339802361856
X-Received: by 10.112.162.135 with SMTP id ya7mr4191105lbb.14.1425936022623;
        Mon, 09 Mar 2015 14:20:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.25.193 with SMTP id e1ls263845lag.80.gmail; Mon, 09 Mar
 2015 14:20:22 -0700 (PDT)
X-Received: by 10.152.164.171 with SMTP id yr11mr1322898lab.4.1425936022077;
        Mon, 09 Mar 2015 14:20:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id sf8si44650wic.2.2015.03.09.14.20.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 14:20:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,370,1422918000"; 
   d="scan'208";a="125109000"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Mar 2015 22:20:21 +0100
Date: Mon, 9 Mar 2015 22:20:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Remove unnecessary
 macro
In-Reply-To: <20150309204828.GA25299@Inspiron>
Message-ID: <alpine.DEB.2.02.1503092219440.2057@localhost6.localdomain6>
References: <20150309204828.GA25299@Inspiron>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 9 Mar 2015, Cristina Opriceana wrote:

> This patch removes the RTLLIB_PRINT_STR macro definition because it is
> olny defined in the header and it is never referenced.

Small spelling mistake.  Also, the patch also removes several other 
macros, so you may want to mention all of them.

julia

> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib.h | 20 --------------------
>  1 file changed, 20 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
> index cef2dc2..96e9246 100644
> --- a/drivers/staging/rtl8192e/rtllib.h
> +++ b/drivers/staging/rtl8192e/rtllib.h
> @@ -784,26 +784,6 @@ do {								\
>  #define RTLLIB_DEBUG_RX(f, a...)  RTLLIB_DEBUG(RTLLIB_DL_RX, f, ## a)
>  #define RTLLIB_DEBUG_QOS(f, a...)  RTLLIB_DEBUG(RTLLIB_DL_QOS, f, ## a)
>  
> -/* Added by Annie, 2005-11-22. */
> -#define MAX_STR_LEN     64
> -/* I want to see ASCII 33 to 126 only. Otherwise, I print '?'. */
> -#define PRINTABLE(_ch)  (_ch > '!' && _ch < '~')
> -#define RTLLIB_PRINT_STR(_Comp, _TitleString, _Ptr, _Len)		\
> -	if ((_Comp) & level) {					       \
> -		int	     __i;				    \
> -		u8  struct buffer[MAX_STR_LEN];				\
> -		int length = (_Len < MAX_STR_LEN) ? _Len : (MAX_STR_LEN-1) ;\
> -		memset(struct buffer, 0, MAX_STR_LEN);		\
> -		memcpy(struct buffer, (u8 *)_Ptr, length);		\
> -		for (__i = 0; __i < MAX_STR_LEN; __i++) {		\
> -			if (!PRINTABLE(struct buffer[__i]))		\
> -				struct buffer[__i] = '?';		\
> -		}							\
> -		struct buffer[length] = '\0';				\
> -		printk(KERN_INFO "Rtl819x: ");				\
> -		printk(_TitleString);					\
> -		printk(": %d, <%s>\n", _Len, struct buffer);		\
> -	}
>  #ifndef ETH_P_PAE
>  #define ETH_P_PAE 0x888E /* Port Access Entity (IEEE 802.1X) */
>  #define ETH_P_IP	0x0800		/* Internet Protocol packet	*/
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150309204828.GA25299%40Inspiron.
> For more options, visit https://groups.google.com/d/optout.
> 

