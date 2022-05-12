Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6ABD33E5
	for <outreachy@lists.linux.dev>; Thu, 12 May 2022 17:58:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB189C385B8;
	Thu, 12 May 2022 17:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1652378324;
	bh=kQnu+lsa2BUbB7erRsO6spXf2F1r4I80WSaklHtS+s0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=d9W+LDq884RVoEBnQEgLuNAGooZLGmPR+72DGXjdQVUCU7f9bd4DTzfLYrjZoq7ZP
	 vVwuvVQs/mptne1Hs5Tx1tP3aG+zmJBI4tdn6PDJsrGdjQOH2QmIyxQ0XfjPGGj8dJ
	 L52GZVxR1y9IRQplwaGlYBGNzOXw+OB4fCPDmqYHMUutjXK006W18FMNBhFzOxEUPQ
	 vr8Yemsd1UmPS0jae+L4/PZ9j4wwqrJ/YN0jAxdle6Y5Be85oWM3PiHK2CpaOLyIVh
	 mBPDZXavBbf875VBqF/KHGFmtxxCkEIgoY/ct7dfL4MXhVoaxN9FXy0o6KnhC5j001
	 Ce7ADn4ZERN+Q==
Date: Thu, 12 May 2022 10:58:42 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>
Cc: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>,
 netdev@vger.kernel.org, outreachy@lists.linux.dev, jdenham@redhat.com,
 sbrivio@redhat.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, pabeni@redhat.com, vladimir.oltean@nxp.com,
 claudiu.manoil@nxp.com, alexandre.belloni@bootlin.com,
 shshaikh@marvell.com, manishc@marvell.com, razor@blackwall.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, GR-Linux-NIC-Dev@marvell.com,
 bridge@lists.linux-foundation.org
Subject: Re: [PATCH net-next v7 2/2] net: vxlan: Add extack support to
 vxlan_fdb_delete
Message-ID: <20220512105842.68716894@kernel.org>
In-Reply-To: <c6b41db9-78e7-e752-3945-29c70a3d8cb4@nvidia.com>
References: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
	<c6069fb695b25dc2f33e8017023ddd47c58caa8d.1652348962.git.eng.alaamohamedsoliman.am@gmail.com>
	<c5ec2677-3047-8a70-9769-d48a79703220@nvidia.com>
	<20220512094743.79f36d81@kernel.org>
	<c6b41db9-78e7-e752-3945-29c70a3d8cb4@nvidia.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 May 2022 10:17:13 -0700 Roopa Prabhu wrote:
> On 5/12/22 09:47, Jakub Kicinski wrote:
> > Also the patches don't apply to net-next, again.  
> 
> that's probably because the patches were already applied. Ido just told 
> me abt it also
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=5dd6da25255a9d64622c693b99d7668da939a980
> 
> I have requested Alaa send an incremental fix (offline).

Oh, I see, sorry about the confusion.
