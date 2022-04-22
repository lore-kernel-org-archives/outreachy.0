Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ED928E4
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 18:37:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ACAEC385A4;
	Fri, 22 Apr 2022 18:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1650652624;
	bh=mfy0/nIY3uSrXgPd/GSoGgYzgDkfynbQTkywpeFjUL8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LPpnyA05mHWBeWQojmYTvZVPbYePSaDuvRsmHGbwAOrOL9LGftzGHv0sKfD4nA7P2
	 xjTBfiJ0zlE5l8mqq+7A48Yxbp0n/5MED1XpH5RZ16riUZTUFjBfp4BzfAg765oS/6
	 uSIkrn/00Zwubi5qqcpgiOGd7BhM9k9A1OmMxJ3PT+X2vxDsegeuuvm343V8V1yD2A
	 50+047pMAfUME8opTeVDQOhtxjbkyF9NdsswQ+vcym65xmyNJUKSzyL48fQzwXjE0b
	 FUW/7IOo8LJNhDxRoNbKMj/NKjxVGg7egeRpjzn+/DYpkYbiYSCX4EFGk0STCOodRV
	 uqoCVsZzlKN1Q==
Date: Fri, 22 Apr 2022 12:37:01 -0600
From: David Ahern <dsahern@kernel.org>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Cc: netdev@vger.kernel.org, outreachy@lists.linux.dev, roopa@nvidia.com,
	roopa.prabhu@gmail.com, jdenham@redhat.com, sbrivio@redhat.com
Subject: Re: [PATCH net-next 2/2] net: vxlan: vxlan_core.c: Add extack
 support to vxlan_fdb_delet
Message-ID: <20220422183701.GA27661@u2004-local>
References: <cover.1650377624.git.eng.alaamohamedsoliman.am@gmail.com>
 <c6765ff1f66cf74ba6f25ba9b1c91dfe410abcfd.1650377624.git.eng.alaamohamedsoliman.am@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c6765ff1f66cf74ba6f25ba9b1c91dfe410abcfd.1650377624.git.eng.alaamohamedsoliman.am@gmail.com>

On Tue, Apr 19, 2022 at 04:37:18PM +0200, Alaa Mohamed wrote:
> diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
> index cf2f60037340..4ecbb5878fe2 100644
> --- a/drivers/net/vxlan/vxlan_core.c
> +++ b/drivers/net/vxlan/vxlan_core.c
> @@ -1129,18 +1129,20 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,
> 
>  static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>  			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
> -			   __be32 *vni, u32 *ifindex, u32 *nhid)
> +			   __be32 *vni, u32 *ifindex, u32 *nhid, struct netlink_ext_ack *extack)
>  {
>  	struct net *net = dev_net(vxlan->dev);
>  	int err;
> 
>  	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
>  	    tb[NDA_PORT]))
> +		NL_SET_ERR_MSG(extack, "Missing required arguments");

That's a misleading error message; I think it should be something like:
		NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");

>  		return -EINVAL;
> 
>  	if (tb[NDA_DST]) {
>  		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
>  		if (err)
> +			NL_SET_ERR_MSG(extack, "Unsupported address family");
>  			return err;
>  	} else {
>  		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;
