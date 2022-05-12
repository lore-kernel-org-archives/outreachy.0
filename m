Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F152F45
	for <outreachy@lists.linux.dev>; Thu, 12 May 2022 16:47:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EB6DC34100;
	Thu, 12 May 2022 16:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1652374065;
	bh=lNnph2yAG9EuWp4xn4hkmL7beGBLq1ZnZACZsxjp9KM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Nbj40Iz88D0V+BmUzUcGlmi2umj/JPseAGp8ve9p9adbnxhMIw5o5HKqqoIgzjAlC
	 DeUV2ehaeFQOlKrd7fd7Y924wISPgj2/8F5tR6bUc4uWovrrSf9hBp82erK2Jc4pc3
	 A4dvpcTJPE43CwXIJjA1f53t9Qmg/baB3Xz3eECBLToqkBjUwQtS+/U8lrFmzS9ZJF
	 xFo9qPHnCW8oDT4cJt7i1K/uVJr3VfpJM1NVURE1DALzcdaqRWCOMKFmXZ2JhDLCCA
	 jGdWnL/FQw+dFHr7np3Ga08IwoHGfZt8RyzjJwGfQHb8dVidzC4m5NOHQJ45+fOx4b
	 IhinxXtkEOXFQ==
Date: Thu, 12 May 2022 09:47:43 -0700
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
Message-ID: <20220512094743.79f36d81@kernel.org>
In-Reply-To: <c5ec2677-3047-8a70-9769-d48a79703220@nvidia.com>
References: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
	<c6069fb695b25dc2f33e8017023ddd47c58caa8d.1652348962.git.eng.alaamohamedsoliman.am@gmail.com>
	<c5ec2677-3047-8a70-9769-d48a79703220@nvidia.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 May 2022 09:22:17 -0700 Roopa Prabhu wrote:
> On 5/12/22 02:55, Alaa Mohamed wrote:
> > This patch adds extack msg support to vxlan_fdb_delete and vxlan_fdb_parse.
> > extack is used to propagate meaningful error msgs to the user of vxlan
> > fdb netlink api
> >
> > Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>

Also the patches don't apply to net-next, again.
