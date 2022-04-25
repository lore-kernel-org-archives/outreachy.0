Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB14F2562
	for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 15:48:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8EF6C385A4;
	Mon, 25 Apr 2022 15:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1650901711;
	bh=/t9m4/CeRlKdtuZXaz3TIf1SxEIJdA7erFumgZsS0uw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=eOh7UZUkEZo/3ZbQ3PFG7Sonks6El6PeCIN27QpESDKgQAErhvEaXm5KHbAphkzpI
	 DbS3z0A806wbIW0q73FkzHUMYhjAKBeCDh22sXJeY2YzhqKHBIkrAOTHC9v2TOudcQ
	 cnwD6Y+fV1mnE5tfBuHuBckGxp0n4CdDkY99FAwiw/YJLCMLdSsUKXPVdUb6YxF/MJ
	 WtdvWJVvQhKG92F8KUwLIgbkDI6QRXTjwKXys/e3UTkxJ6wwqrn8LRrY7HQmI3at9V
	 N4YKmmmQD26s3s3ouZxl4FixIONGLzDT6vjUa0tao1QuHX5QadQY8M9RZKdf+Qr63O
	 8rWNcE/MfKKyQ==
Date: Mon, 25 Apr 2022 08:48:29 -0700
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
Subject: Re: [PATCH net-next v4 0/2] propagate extack to vxlan_fdb_delete
Message-ID: <20220425084829.4b446748@kernel.org>
In-Reply-To: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 25 Apr 2022 16:25:05 +0200 Alaa Mohamed wrote:
> In order to propagate extack to vxlan_fdb_delete and vxlan_fdb_parse,
> add extack to .ndo_fdb_del and edit all fdb del handelers

Your patches do not apply cleanly to net-next/master. Please rebase and
repost. Please wait 24h between postings to allow additional feedback
to come in.
