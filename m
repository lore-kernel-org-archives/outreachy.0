X-GM-THRID: 6202655737022251008
X-Received: by 10.180.107.167 with SMTP id hd7mr366060wib.6.1444288980546;
        Thu, 08 Oct 2015 00:23:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.166 with SMTP id az6ls64846wib.15.canary; Thu, 08 Oct
 2015 00:23:00 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr361345wic.3.1444288980177;
        Thu, 08 Oct 2015 00:23:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bj4si269595wib.1.2015.10.08.00.23.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 00:23:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,654,1437429600"; 
   d="scan'208";a="181682248"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2015 09:22:59 +0200
Date: Thu, 8 Oct 2015 08:22:56 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Fix return description
 for functions
In-Reply-To: <1444168297-90793-1-git-send-email-cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.10.1510080820180.2559@hadrien>
References: <1444168297-90793-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 7 Oct 2015, Cristina Moraru wrote:

> Clarify return description for functions
>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index a63488e..13ee25d 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -173,7 +173,7 @@ static void cvm_oct_configure_common_hw(void)
>   *
>   * @work_queue_entry: Work queue entry to free
>   *
> - * Returns Zero on success, Negative on failure.
> + * Returns 0 on success or a negative error code.

Is this really true?  I see only one return in this function, and it is a
return 0.

julia

>   */
>  int cvm_oct_free_work(void *work_queue_entry)
>  {
> @@ -248,7 +248,7 @@ static struct net_device_stats *cvm_oct_common_get_stats(struct net_device *dev)
>   * @dev:     Device to change
>   * @new_mtu: The new MTU
>   *
> - * Returns Zero on success
> + * Returns 0 on success or a negative error code.
>   */
>  static int cvm_oct_common_change_mtu(struct net_device *dev, int new_mtu)
>  {
> @@ -411,7 +411,7 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
>   * @dev:    The device in question.
>   * @addr:   Socket address.
>   *
> - * Returns Zero on success
> + * Returns 0 on success or a negative error code.
>   */
>  static int cvm_oct_common_set_mac_address(struct net_device *dev, void *addr)
>  {
> @@ -426,7 +426,7 @@ static int cvm_oct_common_set_mac_address(struct net_device *dev, void *addr)
>   * cvm_oct_common_init - per network device initialization
>   * @dev:    Device to initialize
>   *
> - * Returns Zero on success
> + * Returns 0 on success or a negative error code.
>   */
>  int cvm_oct_common_init(struct net_device *dev)

This function also seems to contain only a return 0.

julia

>  {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444168297-90793-1-git-send-email-cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

