X-GM-THRID: 6251650339458514944
X-Received: by 10.194.24.233 with SMTP id x9mr2380807wjf.0.1455632409756;
        Tue, 16 Feb 2016 06:20:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.138.8 with SMTP id m8ls249798lfd.21.gmail; Tue, 16 Feb 2016
 06:20:09 -0800 (PST)
X-Received: by 10.112.204.97 with SMTP id kx1mr2598846lbc.0.1455632409200;
        Tue, 16 Feb 2016 06:20:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w197si800861wmw.3.2016.02.16.06.20.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 06:20:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,455,1449529200"; 
   d="scan'208";a="164921618"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Feb 2016 15:20:08 +0100
Date: Tue, 16 Feb 2016 15:20:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Laura Garcia Liebana <nevola@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: netlogic: Remove blank
 spaces after a cast
In-Reply-To: <f4a17902837b1e533f2155018c548a737df776c2.1455575263.git.nevola@gmail.com>
Message-ID: <alpine.DEB.2.10.1602161519271.2685@hadrien>
References: <cover.1455575263.git.nevola@gmail.com> <f4a17902837b1e533f2155018c548a737df776c2.1455575263.git.nevola@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 15 Feb 2016, Laura Garcia Liebana wrote:

> Remove uneeded blank spaces after a cast. Checkpatch found these issues.
>
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
>  drivers/staging/netlogic/xlr_net.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> index 59fbaba..b3f03b4 100644
> --- a/drivers/staging/netlogic/xlr_net.c
> +++ b/drivers/staging/netlogic/xlr_net.c
> @@ -130,13 +130,13 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
>  	struct xlr_net_priv *priv;
>  	u32 port, length;
>  	unsigned char *addr;
> -	struct xlr_adapter *adapter = (struct xlr_adapter *) arg;
> +	struct xlr_adapter *adapter = (struct xlr_adapter *)arg;
>
>  	length = (msg->msg0 >> 40) & 0x3fff;
>  	if (length == 0) {
>  		addr = bus_to_virt(msg->msg0 & 0xffffffffffULL);
>  		addr = addr - MAC_SKB_BACK_PTR_SIZE;
> -		skb = (struct sk_buff *) *(unsigned long *)addr;
> +		skb = (struct sk_buff *)*(unsigned long *)addr;

I don't know...  Now it looks a lot like a multiplication.  Maybe adding
parentheses would be a good idea.

julia

>  		dev_kfree_skb_any((struct sk_buff *)addr);
>  	} else {
>  		addr = (unsigned char *)
> @@ -144,7 +144,7 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
>  		length = length - BYTE_OFFSET - MAC_CRC_LEN;
>  		port = ((int)msg->msg0) & 0x0f;
>  		addr = addr - MAC_SKB_BACK_PTR_SIZE;
> -		skb = (struct sk_buff *) *(unsigned long *)addr;
> +		skb = (struct sk_buff *)*(unsigned long *)addr;
>  		skb->dev = adapter->netdev[port];
>  		if (skb->dev == NULL)
>  			return;
> @@ -270,7 +270,7 @@ static void xlr_make_tx_desc(struct nlm_fmn_msg *msg, unsigned long addr,
>
>  static void __maybe_unused xlr_wakeup_queue(unsigned long dev)
>  {
> -	struct net_device *ndev = (struct net_device *) dev;
> +	struct net_device *ndev = (struct net_device *)dev;
>  	struct xlr_net_priv *priv = netdev_priv(ndev);
>  	struct phy_device *phydev = xlr_get_phydev(priv);
>
> @@ -663,7 +663,7 @@ static int xlr_phy_write(u32 *base_addr, int phy_addr, int regnum, u16 val)
>  	xlr_nae_wreg(base_addr, R_MII_MGMT_ADDRESS, (phy_addr << 8) | regnum);
>
>  	/* Write the data which starts the write cycle */
> -	xlr_nae_wreg(base_addr, R_MII_MGMT_WRITE_DATA, (u32) val);
> +	xlr_nae_wreg(base_addr, R_MII_MGMT_WRITE_DATA, (u32)val);
>
>  	/* poll for the read cycle to complete */
>  	while (!timedout) {
> --
> 2.7.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f4a17902837b1e533f2155018c548a737df776c2.1455575263.git.nevola%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

