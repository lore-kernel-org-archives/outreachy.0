X-GM-THRID: 5465006145536
X-Received: by 10.112.214.234 with SMTP id od10mr3183533lbc.3.1425227509322;
        Sun, 01 Mar 2015 08:31:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls357026lah.23.gmail; Sun, 01 Mar
 2015 08:31:48 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr3252267lbb.11.1425227508883;
        Sun, 01 Mar 2015 08:31:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si508473wid.1.2015.03.01.08.31.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 08:31:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,671,1418079600"; 
   d="scan'208";a="101703666"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 17:31:47 +0100
Date: Sun, 1 Mar 2015 10:31:44 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Remove unneeded
 brackets.
In-Reply-To: <20150301155819.GA6255@akanksha>
Message-ID: <alpine.DEB.2.10.1503011028360.2545@hadrien>
References: <20150301155819.GA6255@akanksha>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Mar 2015, Vatika Harlalka wrote:

> These were detected with this Coccinelle script:
> @@
> identifier f1, f2, f3;
> constant c;
> @@
>
> f1 =
> (
> - (f2 << f3)
> + f2 << f3
> |
> - (f2 >> f3)
> + f2 >> f3
> |
> - (f2 << c)
> + f2 << c
> |
> - (f2 >> c)
> + f2 >> c
> )

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

There is actually no need to limit anything to identifiers.  They can all
be arbitrary expressions.

In your case, if eg f1 and f2 are the same, and if it is a statement
rather than a declaration, you can create eg f1 <<= f3.  However, Aya sent
a lot of patches like that, and I don't think they have been picked up
yet, so you might want to avoid sending patches for that, or at least
don't send patches that include both that change and other things.

Also, the change is valid for other kinds of expressions than f2 << f3 and
f2 >> f3.  You can do other kinds of expressions as well.

julia

> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
> index 2fbb964..7dda904 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
> @@ -131,7 +131,7 @@ static bool PlatformIOCheckPageLegalAndGetRegMask(u32 u4bPage, u8 *pu1bPageMask)
>
>  void write_nic_io_byte(struct net_device *dev, int x, u8 y)
>  {
> -	u32 u4bPage = (x >> 8);
> +	u32 u4bPage = x >> 8;
>  	u8 u1PageMask = 0;
>  	bool	bIsLegalPage = false;
>
> @@ -154,7 +154,7 @@ void write_nic_io_byte(struct net_device *dev, int x, u8 y)
>
>  void write_nic_io_word(struct net_device *dev, int x, u16 y)
>  {
> -	u32 u4bPage = (x >> 8);
> +	u32 u4bPage = x >> 8;
>  	u8 u1PageMask = 0;
>  	bool	bIsLegalPage = false;
>
> @@ -177,7 +177,7 @@ void write_nic_io_word(struct net_device *dev, int x, u16 y)
>
>  void write_nic_io_dword(struct net_device *dev, int x, u32 y)
>  {
> -	u32 u4bPage = (x >> 8);
> +	u32 u4bPage = x >> 8;
>  	u8 u1PageMask = 0;
>  	bool	bIsLegalPage = false;
>
> @@ -199,7 +199,7 @@ void write_nic_io_dword(struct net_device *dev, int x, u32 y)
>
>  u8 read_nic_io_byte(struct net_device *dev, int x)
>  {
> -	u32 u4bPage = (x >> 8);
> +	u32 u4bPage = x >> 8;
>  	u8 u1PageMask = 0;
>  	bool	bIsLegalPage = false;
>  	u8	Data = 0;
> @@ -224,7 +224,7 @@ u8 read_nic_io_byte(struct net_device *dev, int x)
>
>  u16 read_nic_io_word(struct net_device *dev, int x)
>  {
> -	u32 u4bPage = (x >> 8);
> +	u32 u4bPage = x >> 8;
>  	u8 u1PageMask = 0;
>  	bool	bIsLegalPage = false;
>  	u16	Data = 0;
> @@ -250,7 +250,7 @@ u16 read_nic_io_word(struct net_device *dev, int x)
>
>  u32 read_nic_io_dword(struct net_device *dev, int x)
>  {
> -	u32 u4bPage = (x >> 8);
> +	u32 u4bPage = x >> 8;
>  	u8 u1PageMask = 0;
>  	bool	bIsLegalPage = false;
>  	u32	Data = 0;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150301155819.GA6255%40akanksha.
> For more options, visit https://groups.google.com/d/optout.
>

