Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889A27B
	for <outreachy@lists.linux.dev>; Sat, 30 Apr 2022 01:46:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C941C385DC;
	Sat, 30 Apr 2022 01:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1651283198;
	bh=8kP/MRpm1KKd3Rl9molXNCPZpQsRev4DC366b3abSJg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=FHOkqeeY341VJtIRkHZ/wFD9kpmdQmlxFxvjQmxtTGNiHWWFY2WQDyFuUj7xUn0QX
	 aa/G+NaZUzfDfYHjIAs+OSETdfW/RThbzraDlNwj81q9LCVO+Ees3IArkGIUur/1Vc
	 mVVFGhaTZovAp7DMr+7+DBRXjNhZzbZI03Lwx6rbZQEBl938YpGI9ajnlftd03djV/
	 i1xar24F3qGUJk01ngzu37vgE7T28CzHWhJCXc4Imryd5zQEAgwhY7J5nr9T2W3BFd
	 IO/XANqI4YZfboz5VJuZFqcrpo+s0KS+9P6Rr9g2E3e5ycbVZseLZz2zFMvwdustxP
	 EBzhOSMg3KlpA==
Date: Fri, 29 Apr 2022 18:46:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Cc: netdev@vger.kernel.org, outreachy@lists.linux.dev, roopa@nvidia.com,
 jdenham@redhat.com, sbrivio@redhat.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, pabeni@redhat.com,
 vladimir.oltean@nxp.com, claudiu.manoil@nxp.com,
 alexandre.belloni@bootlin.com, shshaikh@marvell.com, manishc@marvell.com,
 razor@blackwall.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 GR-Linux-NIC-Dev@marvell.com, bridge@lists.linux-foundation.org
Subject: Re: [PATCH net-next v5 1/2] rtnetlink: add extack support in fdb
 del handlers
Message-ID: <20220429184636.0b869ae7@kernel.org>
In-Reply-To: <26815b6deebef7f02e864ca41714533c7009e7b7.1651236082.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1651236081.git.eng.alaamohamedsoliman.am@gmail.com>
	<26815b6deebef7f02e864ca41714533c7009e7b7.1651236082.git.eng.alaamohamedsoliman.am@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 29 Apr 2022 14:49:06 +0200 Alaa Mohamed wrote:
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index fde839ef0613..3fccac358198 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5678,7 +5678,7 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
>  static int
>  ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
>  	    struct net_device *dev, const unsigned char *addr,
> -	    __always_unused u16 vid)
> +	    __always_unused u16 vid, struct netlink_ext_ack *extack)

You need to update the kdoc on this one.
