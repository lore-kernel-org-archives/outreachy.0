Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC6F1FAF
	for <outreachy@lists.linux.dev>; Mon,  9 May 2022 22:46:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E47F2C385B3;
	Mon,  9 May 2022 22:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1652136365;
	bh=kUsp5ywapvjh+TIviLfPYdjLx8988YN+fB39xNMI1Hk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=uz2QlAxx3fLtTv+bya49kC8Eyu85O0tp7SNOppx3x1ZCgUqya39mLXLjHuMQTmFOT
	 TFijgu0XUzs94vlLJ7K0fMLiAw4GecyQ4N83nQzZwS4LJNSW6Ci7D88yvimWgO7DKa
	 QvZ9ejOgGfS2N6OSnSwRbDRWtDyOiP7SHR98x2OhSKcnVzgQ2unv4h0CiADObiyo+o
	 JLH7OkFSQb3UEEda+Cv8r3+6ESFQS1cIy3gAPQW26b7aKBMvlDtio/LA+sutQF05DO
	 YNAeOKuVg/U6FVngVsfXr/PNcRQllg64X5YRlh9zKz/PggoljrjiwMA3CMxuqQrG76
	 z+UTXDvApWvXQ==
Date: Mon, 9 May 2022 15:46:03 -0700
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
Subject: Re: [PATCH net-next v6 2/2] net: vxlan: Add extack support to
 vxlan_fdb_delete
Message-ID: <20220509154603.4a7b4243@kernel.org>
In-Reply-To: <ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
	<ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu,  5 May 2022 17:09:58 +0200 Alaa Mohamed wrote:
> +			NL_SET_ERR_MSG(extack,
> +						  "DST, VNI, ifindex and port are mutually exclusive with NH_ID");

This continuation line still does not align with the opening bracket.
Look here if your email client makes it hard to see:

https://lore.kernel.org/all/ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com/

Same story in patch 1:

>  static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>  			       struct net_device *dev,
> -			       const unsigned char *addr, u16 vid)
> +			       const unsigned char *addr, u16 vid,
> +				   struct netlink_ext_ack *extack)

and here:

>  static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>  			    struct net_device *dev,
> -			    const unsigned char *addr, u16 vid)
> +			    const unsigned char *addr, u16 vid,
> +				struct netlink_ext_ack *extack)
