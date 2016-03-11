X-GM-THRID: 6259335772207316992
X-Received: by 10.182.135.169 with SMTP id pt9mr8428708obb.17.1457733131340;
        Fri, 11 Mar 2016 13:52:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.146 with SMTP id c140ls1284738ioe.76.gmail; Fri, 11
 Mar 2016 13:52:10 -0800 (PST)
X-Received: by 10.107.134.68 with SMTP id i65mr8636069iod.33.1457733130941;
        Fri, 11 Mar 2016 13:52:10 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1672662pac.1.2016.03.11.13.52.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:52:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A1F6F898;
	Fri, 11 Mar 2016 21:52:10 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:52:10 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Replace pr_* with
 netdev_*
Message-ID: <20160311215210.GB24400@kroah.com>
References: <20160307153930.GA28121@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160307153930.GA28121@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 07, 2016 at 09:09:30PM +0530, Amitoj Kaur Chawla wrote:
> Replace generic pr_info and pr_err with netdev_info and netdev_err 
> respectively for net devices.
> 
> Found using Coccinelle. The semantic patch used to find this is as
> follows:
> //<smpl>
> @@
> expression e;
> identifier f,i;
> position p;
> @@
> f(...,struct net_device *i,...) {
> ...
> (
> -  pr_debug@p (e)
> +  netdev_dbg(i, e)
> |
> - pr_err@p (e)
> + netdev_err(i, e)
> |
> - pr_info@p (e)
> + netdev_info(i, e)
> )
> ...
> }
> @@
> expression e;
> identifier f,i;
> position p;
> @@
> 
> f(...) {
> ...
> struct net_device *n;
> ...
> (
> -  pr_debug@p (e)
> +  netdev_dbg(n, e)
> |
> - pr_err@p (e)
> + netdev_err(n, e)
> |
> - pr_info@p (e)
> + netdev_info(n, e)
> )
> ...
> }
> @a@
> identifier s,x;
> @@
> struct s {
>  ...
> struct net_device *x;
>  ...
> };
> 
> @b depends on a@
> expression e;
> identifier f,i,a.s,a.x;
> position p;
> @@
> 
> f ( ..., struct s *i, ...) {
>   ...
> (
> -  pr_debug@p (e)
> +  netdev_dbg(i->x, e)
> |
> - pr_err@p (e)
> + netdev_err(i->x, e)
> |
> - pr_info@p (e)
> + netdev_info(i->x, e)
> )
>   ...
> }
> 
> @c depends on a@
> expression e;
> identifier f,i,a.s,a.x;
> position p;
> @@
> 
> f (...) {
>   ...
> struct s *i = ...;
>   ...
> (
> -  pr_debug@p (e)
> +  netdev_dbg(i->x, e)
> |
> - pr_err@p (e)
> + netdev_err(i->x, e)
> |
> - pr_info@p (e)
> + netdev_info(i->x, e)
> )
>   ...
> }
> //</smpl>
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/netlogic/xlr_net.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Doesn't apply to my tree :(

